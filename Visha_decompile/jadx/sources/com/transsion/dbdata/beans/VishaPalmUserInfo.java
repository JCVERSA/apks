package com.transsion.dbdata.beans;

public class VishaPalmUserInfo {
    public String access_token;
    public String avatarUrl;
    public int gender;
    public String mPalmNickName;
    public String mPalmUserName;
    public String nickName;
    public String openId;
    public String uniqueId;
    public String userName;

    public String getAccess_token() {
        return this.access_token;
    }

    public String getAvatarUrl() {
        return this.avatarUrl;
    }

    public int getGender() {
        return this.gender;
    }

    public String getNickName() {
        return this.nickName;
    }

    public String getOpenId() {
        return this.openId;
    }

    public String getPalmNickName() {
        return this.mPalmNickName;
    }

    public String getPalmUserName() {
        return this.mPalmUserName;
    }

    public String getUniqueId() {
        return this.uniqueId;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setAccess_token(String str) {
        this.access_token = str;
    }

    public void setAvatarUrl(String str) {
        this.avatarUrl = str;
    }

    public void setGender(int i) {
        this.gender = i;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setOpenId(String str) {
        this.openId = str;
    }

    public void setPalmNickName(String str) {
        this.mPalmNickName = str;
    }

    public void setPalmUserName(String str) {
        this.mPalmUserName = str;
    }

    public void setUniqueId(String str) {
        this.uniqueId = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public String toString() {
        return "VishaPalmUserInfo{nickName='" + this.nickName + "', userName='" + this.userName + "', avatarUrl='" + this.avatarUrl + "', access_token='" + this.access_token + "', openId='" + this.openId + "', gender=" + this.gender + ", uniqueId='" + this.uniqueId + "'}";
    }
}
