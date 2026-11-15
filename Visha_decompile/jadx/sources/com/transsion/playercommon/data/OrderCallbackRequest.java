package com.transsion.playercommon.data;

import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import com.transsion.utils.deviceinfo.a;

public class OrderCallbackRequest extends TypeBean {

    @SerializedName("is_subscribe")
    private int isSubscribe;

    @SerializedName("language")
    private String language = a.l();

    @SerializedName("packageName")
    private String packageName;

    @SerializedName("productId")
    private String productId;

    @SerializedName("profileId")
    private String profileId;

    @SerializedName("token")
    private String token;

    public OrderCallbackRequest(String str, String str2, String str3, String str4, int i) {
        this.productId = str;
        this.profileId = str2;
        this.packageName = str3;
        this.token = str4;
        this.isSubscribe = i;
    }

    public int getIsSubscribe() {
        return this.isSubscribe;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getProductId() {
        return this.productId;
    }

    public String getProfileId() {
        return this.profileId;
    }

    public String getToken() {
        return this.token;
    }

    public void setIsSubscribe(int i) {
        this.isSubscribe = i;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setProductId(String str) {
        this.productId = str;
    }

    public void setProfileId(String str) {
        this.profileId = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String toString() {
        return "OrderCallbackRequest{productId='" + this.productId + "', profileId='" + this.profileId + "', language='" + this.language + "', packageName='" + this.packageName + "', token='" + this.token + "', isSubscribe=" + this.isSubscribe + '}';
    }
}
