package com.transsion.dbdata.beans.appconfig;

import com.google.gson.annotations.SerializedName;

public class SmartEditApiKeyBean {

    @SerializedName("ascoustIdKey")
    private String acoustIdKey;

    @SerializedName("lastFmKey")
    private String lastFmKey;

    public String getAcoustIdKey() {
        return this.acoustIdKey;
    }

    public String getLastFmKey() {
        return this.lastFmKey;
    }

    public String toString() {
        return "SmartEditApiKeyBean{acoustIdKey='" + this.acoustIdKey + "', lastFmKey='" + this.lastFmKey + "'}";
    }
}
