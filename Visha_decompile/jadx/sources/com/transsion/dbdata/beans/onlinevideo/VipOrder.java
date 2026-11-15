package com.transsion.dbdata.beans.onlinevideo;

import com.google.gson.annotations.SerializedName;

public class VipOrder extends TypeBean {

    @SerializedName("acknowledged")
    private Boolean acknowledged;

    @SerializedName("autoRenewing")
    private Boolean autoRenewing;

    @SerializedName("is_subscribe")
    private int isSubscribe;

    @SerializedName("obfuscatedAccountId")
    private String obfuscatedAccountId;

    @SerializedName("obfuscatedProfileId")
    private String obfuscatedProfileId;

    @SerializedName("orderId")
    private String orderId;

    @SerializedName("packageName")
    private String packageName;

    @SerializedName("productId")
    private String productId;

    @SerializedName("purchaseState")
    private Integer purchaseState;

    @SerializedName("purchaseTime")
    private Long purchaseTime;

    @SerializedName("purchaseToken")
    private String purchaseToken;

    @SerializedName("quantity")
    private Integer quantity;

    public Boolean getAcknowledged() {
        return this.acknowledged;
    }

    public Boolean getAutoRenewing() {
        return this.autoRenewing;
    }

    public int getIsSubscribe() {
        return this.isSubscribe;
    }

    public String getObfuscatedAccountId() {
        return this.obfuscatedAccountId;
    }

    public String getObfuscatedProfileId() {
        String str = this.obfuscatedProfileId;
        return str == null ? this.orderId : str;
    }

    public String getOrderId() {
        return this.orderId;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getProductId() {
        return this.productId;
    }

    public Integer getPurchaseState() {
        return this.purchaseState;
    }

    public Long getPurchaseTime() {
        return this.purchaseTime;
    }

    public String getPurchaseToken() {
        return this.purchaseToken;
    }

    public Integer getQuantity() {
        return this.quantity;
    }

    public void setAcknowledged(Boolean bool) {
        this.acknowledged = bool;
    }

    public void setAutoRenewing(Boolean bool) {
        this.autoRenewing = bool;
    }

    public void setIsSubscribe(int i) {
        this.isSubscribe = i;
    }

    public void setObfuscatedAccountId(String str) {
        this.obfuscatedAccountId = str;
    }

    public void setObfuscatedProfileId(String str) {
        this.obfuscatedProfileId = str;
    }

    public void setOrderId(String str) {
        this.orderId = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setProductId(String str) {
        this.productId = str;
    }

    public void setPurchaseState(Integer num) {
        this.purchaseState = num;
    }

    public void setPurchaseTime(Long l) {
        this.purchaseTime = l;
    }

    public void setPurchaseToken(String str) {
        this.purchaseToken = str;
    }

    public void setQuantity(Integer num) {
        this.quantity = num;
    }

    public String toString() {
        return "VipOrder{orderId='" + this.orderId + "', packageName='" + this.packageName + "', productId='" + this.productId + "', purchaseTime=" + this.purchaseTime + ", purchaseState=" + this.purchaseState + ", purchaseToken='" + this.purchaseToken + "', obfuscatedAccountId='" + this.obfuscatedAccountId + "', obfuscatedProfileId='" + this.obfuscatedProfileId + "', quantity=" + this.quantity + ", acknowledged=" + this.acknowledged + ", autoRenewing=" + this.autoRenewing + ", isSubscribe=" + this.isSubscribe + '}';
    }
}
