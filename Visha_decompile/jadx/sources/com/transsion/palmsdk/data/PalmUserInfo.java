package com.transsion.palmsdk.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import defpackage.vj7;
import org.json.JSONObject;

class PalmUserInfo implements Parcelable {
    public static final Parcelable.Creator<PalmUserInfo> CREATOR = new Parcelable.Creator<PalmUserInfo>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmUserInfo createFromParcel(Parcel parcel) {
            return new PalmUserInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmUserInfo[] newArray(int i) {
            return new PalmUserInfo[i];
        }
    };
    public String avatarUrl;
    public String nickName;
    public String userName;

    public PalmUserInfo() {
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
    }

    public PalmUserInfo(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.nickName = jSONObject.optString("nickName");
            this.userName = jSONObject.optString("userName");
            this.avatarUrl = jSONObject.optString("avatarUrl");
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
        }
    }

    public PalmUserInfo(Parcel parcel) {
        this.nickName = parcel.readString();
        this.userName = parcel.readString();
        this.avatarUrl = parcel.readString();
    }
}
