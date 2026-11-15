package com.transsion.dbdata.beans;

import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import defpackage.r0a;

public class VishaOauthData {

    @SerializedName("access_token")
    private String accessToken;

    @SerializedName("expires_in")
    private String expiresInDate;

    @SerializedName("jti")
    private String jti;

    @SerializedName("refresh_token")
    private String refreshToken;

    @SerializedName("scope")
    private String scope;

    @SerializedName("token_type")
    private String tokenType;

    public void clear() {
        this.accessToken = "";
        this.tokenType = "";
        this.refreshToken = "";
        this.expiresInDate = "";
        this.scope = "";
        this.jti = "";
    }

    public String getAccessToken() {
        return r0a.g(this.accessToken) ? "" : this.accessToken;
    }

    public String getExpiresInDate() {
        return this.expiresInDate;
    }

    public String getRefreshToken() {
        return r0a.g(this.refreshToken) ? "" : this.refreshToken;
    }

    public String getScope() {
        return this.scope;
    }

    public String getTokenType() {
        if (r0a.g(this.tokenType)) {
            return "";
        }
        return this.tokenType + " ";
    }

    public void setAccessToken(String str) {
        this.accessToken = str;
    }

    public void setExpiresInDate(String str) {
        this.expiresInDate = str;
    }

    public void setRefreshToken(String str) {
        this.refreshToken = str;
    }

    public void setScope(String str) {
        this.scope = str;
    }

    public void setTokenType(String str) {
        this.tokenType = str;
    }

    @NonNull
    public String toString() {
        return "VishaTokenBean{accessToken='" + this.accessToken + "', tokenType='" + this.tokenType + "', refreshToken='" + this.refreshToken + "', expiresInDate='" + this.expiresInDate + "', scope='" + this.scope + "', jti='" + this.jti + "'}";
    }
}
