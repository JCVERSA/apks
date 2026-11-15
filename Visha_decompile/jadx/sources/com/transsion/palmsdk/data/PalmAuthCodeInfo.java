package com.transsion.palmsdk.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import org.json.JSONObject;

class PalmAuthCodeInfo extends PalmAuthInfo implements Parcelable {
    public static final Parcelable.Creator<PalmAuthCodeInfo> CREATOR = new Parcelable.Creator<PalmAuthCodeInfo>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmAuthCodeInfo createFromParcel(Parcel parcel) {
            return new PalmAuthCodeInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmAuthCodeInfo[] newArray(int i) {
            return new PalmAuthCodeInfo[i];
        }
    };
    public String authCode;
    public String openid;

    public PalmAuthCodeInfo(Parcel parcel) {
        this.authCode = parcel.readString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.authCode);
        parcel.writeString(this.openid);
    }

    public PalmAuthCodeInfo(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.authCode = jSONObject.optString(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE);
            this.openid = jSONObject.optString("open_id");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
