package com.transsion.xuanniao.account.auth.data;

import java.io.Serializable;

public class AuthTokenReq implements Serializable {
    private String clientId;
    private String code;
    private String grantType;
    private String redirectUri;
    private String refreshToken;
    private String scope;

    public String getClientId() {
        return this.clientId;
    }

    public String getCode() {
        return this.code;
    }

    public String getGrantType() {
        return this.grantType;
    }

    public String getRedirectUri() {
        return this.redirectUri;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public String getScope() {
        return this.scope;
    }

    public void setClientId(String str) {
        this.clientId = str;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setGrantType(String str) {
        this.grantType = str;
    }

    public void setRedirectUri(String str) {
        this.redirectUri = str;
    }

    public void setRefreshToken(String str) {
        this.refreshToken = str;
    }

    public void setScope(String str) {
        this.scope = str;
    }
}
