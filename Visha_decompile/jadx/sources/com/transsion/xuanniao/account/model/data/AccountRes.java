package com.transsion.xuanniao.account.model.data;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;

public class AccountRes extends BaseEncryptRes {
    public String avatarUrl;
    public String base64Avatar;
    public String birthday;
    public String city;
    public String country;
    public String countryCode;
    public String countryName;
    public String email;
    public boolean existPassword;
    public String fullName;
    private Integer gender;
    public boolean haveAddress;

    @SerializedName(alternate = {"nickName"}, value = "nickname")
    public String nickname;
    public String openId;
    public String phone;
    public String profession;
    public String signature;
    public String state;
    public boolean states;
    public String uniqueId;

    @SerializedName(alternate = {"userName"}, value = "username")
    public String username;
    public int usernameModifyRemainTimes;
    public String xuanniaoId;

    public Integer getGender() {
        if (this.gender == null) {
            this.gender = 0;
        }
        return this.gender;
    }

    public int getOlderGender() {
        int iIntValue = getGender().intValue();
        if (iIntValue == 2) {
            return 1;
        }
        if (iIntValue == 1) {
            return 0;
        }
        return iIntValue;
    }

    public boolean havePhoneOrEmail() {
        return (TextUtils.isEmpty(this.phone) && TextUtils.isEmpty(this.email)) ? false : true;
    }

    public void setGender(Integer num) {
        this.gender = num;
    }
}
