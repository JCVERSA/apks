package com.transsion.privateroom.api.beans;

import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;

public class PrivateCodeVerifyInfoBean {

    @SerializedName(TrackingKey.CODE)
    public String code;

    @SerializedName("mail")
    public String eMail;

    public PrivateCodeVerifyInfoBean(@NonNull String str, @NonNull String str2) {
        this.eMail = str;
        this.code = str2;
    }

    @NonNull
    public String toString() {
        return "PrivateCodeVerifyInfoBean{eMail=" + this.eMail + ", code=" + this.code + '}';
    }
}
