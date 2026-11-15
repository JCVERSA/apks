package com.transsion.vishaplayersdk.netservices.beans;

import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;

public class VideoAuthResult {

    @SerializedName("enable_play")
    public boolean bEnablePlay;

    @SerializedName("user_is_vip")
    public boolean bUserIsVip;

    @SerializedName("video_serial_is_pay")
    public boolean bVideoSerialIsPay;

    @SerializedName("user_auth_status")
    public int userAuthStatus;

    @NonNull
    public String toString() {
        return "VideoAuthResult{bEnablePlay=" + this.bEnablePlay + ", bVideoSerialIsPay=" + this.bVideoSerialIsPay + ", bUserIsVip=" + this.bUserIsVip + ", userAuthStatus=" + this.userAuthStatus + '}';
    }
}
