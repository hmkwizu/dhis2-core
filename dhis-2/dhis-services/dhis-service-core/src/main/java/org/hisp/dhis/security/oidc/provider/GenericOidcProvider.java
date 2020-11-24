package org.hisp.dhis.security.oidc.provider;

/*
 * Copyright (c) 2004-2020, University of Oslo
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * Redistributions of source code must retain the above copyright notice, this
 * list of conditions and the following disclaimer.
 *
 * Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 * Neither the name of the HISP project nor the names of its contributors may
 * be used to endorse or promote products derived from this software without
 * specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

import com.google.common.collect.ImmutableList;
import org.apache.commons.lang3.tuple.Pair;
import org.hisp.dhis.security.oidc.DhisOidcClientRegistration;
import org.springframework.security.oauth2.client.registration.ClientRegistration;
import org.springframework.security.oauth2.core.AuthenticationMethod;
import org.springframework.security.oauth2.core.AuthorizationGrantType;
import org.springframework.security.oauth2.core.ClientAuthenticationMethod;
import org.springframework.security.oauth2.core.oidc.IdTokenClaimNames;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @author Morten Svanæs <msvanaes@dhis2.org>
 */
public class GenericOidcProvider extends AbstractOidcProvider
{
    private GenericOidcProvider()
    {
        throw new IllegalStateException( "Utility class" );
    }

    public static DhisOidcClientRegistration build( Map<String, String> config )
    {
        Objects.requireNonNull( config, "DhisConfigurationProvider is missing!" );

        String providerId = config.get( PROVIDER_ID );
        String clientId = config.get( CLIENT_ID );
        String clientSecret = config.get( CLIENT_SECRET );
        String authorizationUri = config.get( AUTHORIZATION_URI );
        String tokenUri = config.get( TOKEN_URI );
        String userInfoUri = config.get( USERINFO_URI );
        String jwkSetUri = config.get( JWK_URI );

        String mappingClaim = Optional.ofNullable( config.get( MAPPING_CLAIM ) ).orElse( DEFAULT_MAPPING_CLAIM );
        String endSessionUri = Optional.ofNullable( config.get( END_SESSION_URI ) ).orElse( "" );
        String displayAlias = Optional.ofNullable( config.get( DISPLAY_ALIAS ) ).orElse( providerId );
        String scopes = Optional.ofNullable( config.get( SCOPES ) ).orElse( "" );
        String logoIcon = Optional.ofNullable( config.get( LOGO_IMAGE ) ).orElse( "" );
        String logoImagePadding = Optional.ofNullable( config.get( LOGO_IMAGE_PADDING ) ).orElse( "0px 0px" );
        boolean enableLogout = Boolean.parseBoolean( config.get( ENABLE_LOGOUT ) );
        boolean enablePkce = Boolean.parseBoolean( config.get( ENABLE_PKCE ) );

        Map<String, String> extraRequestParameters = Arrays
            .stream( Optional.ofNullable( config.get( EXTRA_REQUEST_PARAMETERS ) ).orElse( "" ).split( "," ) )
            .filter( s -> s.trim().split( " " ).length == 2 )
            .map( s -> Pair.of( s.trim().split( " " )[0], s.trim().split( " " )[1] ) )
            .collect( Collectors.toMap( Pair::getLeft, Pair::getRight ) );

        ImmutableList.Builder<String> allScopes = ImmutableList.<String>builder().add( DEFAULT_SCOPE )
            .add( scopes.split( " " ) );

        if ( providerId.isEmpty() )
        {
            return null;
        }

        if ( clientId.isEmpty() )
        {
            return null;
        }

        if ( clientSecret.isEmpty() )
        {
            throw new IllegalArgumentException( providerId + " client secret is missing!" );
        }

        ClientRegistration.Builder builder = ClientRegistration.withRegistrationId( providerId );

        builder.clientName( providerId );
        builder.clientId( clientId );
        builder.clientSecret( clientSecret );
        builder.clientAuthenticationMethod( ClientAuthenticationMethod.BASIC );
        builder.authorizationGrantType( AuthorizationGrantType.AUTHORIZATION_CODE );
        builder.authorizationUri( authorizationUri );
        builder.tokenUri( tokenUri );
        builder.jwkSetUri( jwkSetUri );
        builder.userInfoUri( userInfoUri );
        builder.redirectUriTemplate( DEFAULT_REDIRECT_TEMPLATE_URL );
        builder.userInfoAuthenticationMethod( AuthenticationMethod.HEADER );
        builder.userNameAttributeName( IdTokenClaimNames.SUB );
        builder.scope( allScopes.build() );

        Map<String, Object> metadata = new HashMap<>();
        metadata.put( EXTRA_REQUEST_PARAMETERS, extraRequestParameters );

        if ( enableLogout )
        {
            metadata.put( END_SESSION_URI, endSessionUri );
        }

        if ( enablePkce )
        {
            metadata.put( ENABLE_PKCE, Boolean.TRUE.toString() );
        }

        builder.providerConfigurationMetadata( metadata );

        ClientRegistration clientRegistration = builder.build();

        return DhisOidcClientRegistration.builder()
            .clientRegistration( clientRegistration )
            .mappingClaimKey( mappingClaim )
            .loginIcon( logoIcon )
            .loginIconPadding( logoImagePadding )
            .loginText( displayAlias )
            .build();
    }
}