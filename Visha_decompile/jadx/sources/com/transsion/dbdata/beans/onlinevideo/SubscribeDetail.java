package com.transsion.dbdata.beans.onlinevideo;

import com.google.gson.annotations.SerializedName;

public class SubscribeDetail extends TypeBean {

    @SerializedName("next_expire_date")
    private long nextExpireDate;

    @SerializedName("price")
    private String price;

    @SerializedName("renewal_way")
    private String renewalWay;

    public long getNextExpireDate() {
        return this.nextExpireDate;
    }

    public String getPrice() {
        return this.price;
    }

    public String getRenewalWay() {
        return this.renewalWay;
    }

    public String toString() {
        return "SubscribeDetail{price=" + this.price + ", nextExpireDate='" + this.nextExpireDate + "', renewalWay=" + this.renewalWay + '}';
    }
}
