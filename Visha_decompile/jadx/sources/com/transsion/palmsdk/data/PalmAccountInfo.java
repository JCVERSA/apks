package com.transsion.palmsdk.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.transsion.livecaption.constant.ICode;
import defpackage.vj7;
import org.json.JSONObject;

class PalmAccountInfo extends PalmUserInfo {
    public static final Parcelable.Creator<PalmAccountInfo> CREATOR = new Parcelable.Creator<PalmAccountInfo>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmAccountInfo createFromParcel(Parcel parcel) {
            return new PalmAccountInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmAccountInfo[] newArray(int i) {
            return new PalmAccountInfo[i];
        }
    };
    public String birthday;
    public String city;
    public String country;
    public String email;
    public boolean existPassword;
    public String fullName;
    public int gender;
    public boolean haveAddress;
    public String openId;
    public String phone;
    public String profession;
    public String signature;
    public String state;
    public boolean states;
    public String uniqueId;
    public int usernameModifyRemainTimes;
    public String xuanniaoId;

    public PalmAccountInfo() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.nickName);
        parcel.writeString(this.userName);
        parcel.writeString(this.avatarUrl);
        parcel.writeString(this.phone);
        parcel.writeString(this.birthday);
        parcel.writeInt(this.gender);
        parcel.writeString(this.state);
        parcel.writeString(this.city);
        parcel.writeString(this.country);
        parcel.writeString(this.profession);
        parcel.writeString(this.email);
        parcel.writeByte(this.states ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.existPassword ? (byte) 1 : (byte) 0);
        parcel.writeString(this.fullName);
        parcel.writeString(this.signature);
        parcel.writeInt(this.usernameModifyRemainTimes);
        parcel.writeString(this.xuanniaoId);
        parcel.writeByte(this.haveAddress ? (byte) 1 : (byte) 0);
    }

    public PalmAccountInfo(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.nickName = jSONObject.optString("nickname");
            this.userName = jSONObject.optString("username");
            this.avatarUrl = jSONObject.optString("avatarUrl");
            this.phone = jSONObject.optString("phone");
            this.birthday = jSONObject.optString("birthday");
            this.gender = jSONObject.optInt("gender");
            this.state = jSONObject.optString(ICode.CALL.CALL_KEY_STATE);
            this.city = jSONObject.optString("city");
            this.country = jSONObject.optString("country");
            this.profession = jSONObject.optString("profession");
            this.email = jSONObject.optString(NotificationCompat.CATEGORY_EMAIL);
            this.states = jSONObject.optBoolean("states");
            this.existPassword = jSONObject.optBoolean("existPassword");
            this.fullName = jSONObject.optString("fullName");
            this.signature = jSONObject.optString("signature");
            this.usernameModifyRemainTimes = jSONObject.optInt("usernameModifyRemainTimes");
            this.xuanniaoId = jSONObject.optString("xuanniaoId");
            this.haveAddress = jSONObject.optBoolean("haveAddress");
            this.openId = jSONObject.optString("openId");
            this.uniqueId = jSONObject.optString("uniqueId");
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
        }
    }

    public PalmAccountInfo(Parcel parcel) {
        this.nickName = parcel.readString();
        this.userName = parcel.readString();
        this.avatarUrl = parcel.readString();
        this.phone = parcel.readString();
        this.birthday = parcel.readString();
        this.gender = parcel.readInt();
        this.state = parcel.readString();
        this.city = parcel.readString();
        this.country = parcel.readString();
        this.profession = parcel.readString();
        this.email = parcel.readString();
        this.states = parcel.readByte() != 0;
        this.existPassword = parcel.readByte() != 0;
        this.fullName = parcel.readString();
        this.signature = parcel.readString();
        this.usernameModifyRemainTimes = parcel.readInt();
        this.xuanniaoId = parcel.readString();
        this.haveAddress = parcel.readByte() != 0;
    }
}
