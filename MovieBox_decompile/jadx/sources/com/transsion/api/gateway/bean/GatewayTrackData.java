package com.transsion.api.gateway.bean;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.api.gateway.utils.GatewayUtils;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GatewayTrackData implements Parcelable {
    public static final Parcelable.Creator<GatewayTrackData> CREATOR = new Parcelable.Creator<GatewayTrackData>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public GatewayTrackData createFromParcel(Parcel parcel) {
            return new GatewayTrackData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public GatewayTrackData[] newArray(int i10) {
            return new GatewayTrackData[i10];
        }
    };
    private JSONObject jsonObject;

    public GatewayTrackData() {
        this.jsonObject = new JSONObject();
    }

    public GatewayTrackData add(String str, String str2) {
        if (str2 == null) {
            str2 = "null";
        }
        try {
            this.jsonObject.put("_" + str.toLowerCase(), str2);
        } catch (Exception unused) {
        }
        return this;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public JSONObject getJsonObject() {
        return this.jsonObject;
    }

    public boolean has(String str) {
        JSONObject jSONObject = this.jsonObject;
        return jSONObject != null && jSONObject.has(str);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.jsonObject.toString());
    }

    public GatewayTrackData(Bundle bundle) {
        this.jsonObject = new JSONObject();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                add(str, String.valueOf(bundle.get(str)));
            }
        }
    }

    public GatewayTrackData add(String str, boolean z10) {
        try {
            this.jsonObject.put("_" + str.toLowerCase(), z10);
        } catch (Exception unused) {
        }
        return this;
    }

    public GatewayTrackData add(String str, int i10) {
        try {
            this.jsonObject.put("_" + str.toLowerCase(), i10);
        } catch (Exception unused) {
        }
        return this;
    }

    public GatewayTrackData add(String str, long j10) {
        try {
            this.jsonObject.put("_" + str.toLowerCase(), j10);
        } catch (Exception unused) {
        }
        return this;
    }

    public GatewayTrackData(Parcel parcel) {
        try {
            this.jsonObject = new JSONObject(parcel.readString());
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public GatewayTrackData add(String str, double d10) {
        try {
            this.jsonObject.put("_" + str.toLowerCase(), d10);
        } catch (Exception unused) {
        }
        return this;
    }

    public GatewayTrackData add(String str, Bundle bundle) {
        if (bundle == null) {
            return this;
        }
        String lowerCase = str.toLowerCase();
        Set<String> setKeySet = bundle.keySet();
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str2 : setKeySet) {
                jSONObject.put(str2, bundle.get(str2));
            }
            this.jsonObject.put(lowerCase, jSONObject);
        } catch (Exception e10) {
            GatewayUtils.L.e(e10);
        }
        return this;
    }

    public GatewayTrackData add(String str, List<Bundle> list) {
        String str2 = "_" + str.toLowerCase();
        try {
            JSONArray jSONArray = new JSONArray();
            for (Bundle bundle : list) {
                Set<String> setKeySet = bundle.keySet();
                JSONObject jSONObject = new JSONObject();
                for (String str3 : setKeySet) {
                    if (bundle.get(str3) instanceof String) {
                        jSONObject.put("_" + str3, bundle.get(str3));
                    } else {
                        jSONObject.put("_" + str3, bundle.get(str3));
                    }
                }
                jSONArray.put(jSONObject);
            }
            this.jsonObject.put(str2, jSONArray);
        } catch (Exception unused) {
        }
        return this;
    }
}
