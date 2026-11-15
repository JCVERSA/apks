package com.transsion.dbdata.beans;

import androidx.annotation.NonNull;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import defpackage.hb0;
import defpackage.r0a;

public class CountryInfoBean {

    @SerializedName("ip")
    private String ip = "";

    @SerializedName("ipv6")
    private String ipv6 = "";

    @SerializedName("country")
    private String country = "";

    @SerializedName("city")
    private String city = "";

    @SerializedName(TtmlNode.TAG_REGION)
    private String region = "";

    @SerializedName(hb0.KEY_NAME_REGION_ID)
    private int regionId = -1;

    @SerializedName(hb0.KEY_NAME_COUNTRY_CODE)
    private String countryCode = "";

    public String getCity() {
        return this.city;
    }

    public String getCountry() {
        return this.country;
    }

    public String getCountryCode() {
        String str = this.countryCode;
        return str == null ? "" : str;
    }

    public String getIp() {
        return r0a.g(this.ip) ? this.ipv6 : this.ip;
    }

    public String getIpv6() {
        return this.ipv6;
    }

    public String getRegion() {
        return this.region;
    }

    public int getRegionId() {
        return this.regionId;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setCountryCode(String str) {
        this.countryCode = str;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setIpv6(String str) {
        this.ipv6 = str;
    }

    public void setRegion(String str) {
        this.region = str;
    }

    public void setRegionId(int i) {
        this.regionId = i;
    }

    @NonNull
    public String toString() {
        return "CountryInfoBean{ip='" + this.ip + "'ipv6='" + this.ipv6 + "', country='" + this.country + "', city='" + this.city + "', region='" + this.region + "', region_id=" + this.regionId + ", countryCode='" + this.countryCode + "'}";
    }
}
