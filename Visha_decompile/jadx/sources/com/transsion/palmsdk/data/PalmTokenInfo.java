package com.transsion.palmsdk.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.transsion.push.PushConstants;
import defpackage.vj7;
import org.json.JSONObject;

public class PalmTokenInfo extends PalmAuthInfo implements Parcelable {
    public static final Parcelable.Creator<PalmTokenInfo> CREATOR = new Parcelable.Creator<PalmTokenInfo>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmTokenInfo createFromParcel(Parcel parcel) {
            return new PalmTokenInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmTokenInfo[] newArray(int i) {
            return new PalmTokenInfo[i];
        }
    };
    public String access_token;
    public int expires_in;
    public String openid;
    public String refresh_token;
    public String uniqueId;
    private long update_time;

    public PalmTokenInfo(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("token")) {
                this.access_token = jSONObject.optString("token");
                this.refresh_token = jSONObject.optString("refreshToken");
            } else {
                this.access_token = jSONObject.optString("access_token");
                this.refresh_token = jSONObject.optString("refresh_token");
                this.expires_in = jSONObject.optInt("expires_in", 7199);
                this.openid = jSONObject.optString("open_id");
                this.update_time = jSONObject.optLong(PushConstants.PROVIDER_FIELD_UPDATE_TIME);
                this.uniqueId = jSONObject.optString("unique_id");
            }
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public long getExpireTime() {
        return ((long) this.expires_in) * 1000;
    }

    public long getLastUpdateTime() {
        return this.update_time;
    }

    public String toJson() {
        try {
            return new JSONObject().put("access_token", this.access_token).put("refresh_token", this.refresh_token).put("open_id", this.openid).toString();
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
            return null;
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.access_token);
        parcel.writeString(this.refresh_token);
        parcel.writeString(this.openid);
    }

    public PalmTokenInfo(PalmTokenInfo palmTokenInfo) {
        this.access_token = palmTokenInfo.access_token;
        this.expires_in = palmTokenInfo.expires_in;
        this.refresh_token = palmTokenInfo.refresh_token;
        this.openid = palmTokenInfo.openid;
        this.update_time = palmTokenInfo.update_time;
        this.uniqueId = palmTokenInfo.uniqueId;
    }

    public PalmTokenInfo(Parcel parcel) {
        this.access_token = parcel.readString();
        this.refresh_token = parcel.readString();
        this.openid = parcel.readString();
    }
}
