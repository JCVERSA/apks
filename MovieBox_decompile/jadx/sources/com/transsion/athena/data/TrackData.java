package com.transsion.athena.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.ga.AthenaAnalytics;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class TrackData implements Parcelable {
    public static final Parcelable.Creator<TrackData> CREATOR = new athena();
    public static final int TRACK_ADD = 1;
    public static final int TRACK_APPEND = 2;
    public static final int TRACK_NORMAL = 0;

    private JSONObject f41532a;

    private int f41533b;

    private float f41534c;

    class athena implements Parcelable.Creator<TrackData> {
        athena() {
        }

        @Override
        public TrackData createFromParcel(Parcel parcel) {
            return new TrackData(parcel);
        }

        @Override
        public TrackData[] newArray(int i10) {
            return new TrackData[i10];
        }
    }

    public TrackData() {
        this.f41533b = 0;
        this.f41534c = 1.0f;
        this.f41532a = new JSONObject();
    }

    public JSONObject a() {
        return this.f41532a;
    }

    public TrackData add(String str, String str2) {
        if (str2 == null) {
            str2 = "null";
        }
        return add(str, str2, 0);
    }

    public float b() {
        return this.f41534c;
    }

    public int c() {
        try {
            return this.f41532a.toString().getBytes().length + 4;
        } catch (Exception unused) {
            return 4;
        }
    }

    public int d() {
        return this.f41533b;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f41533b);
        parcel.writeString(this.f41532a.toString());
        parcel.writeFloat(this.f41534c);
    }

    public void a(float f10) {
        this.f41534c = f10;
    }

    public TrackData add(String str, String str2, int i10) {
        String str3 = "_" + str;
        if (i10 != 0) {
            this.f41533b = i10;
        }
        try {
            if (i10 == 0) {
                this.f41532a.put(str3, AthenaAnalytics.M().a(str2));
            } else {
                if (i10 == 1) {
                    throw new IllegalArgumentException("json object can not set TRACK_ADD flag");
                }
                if (i10 == 2) {
                    this.f41532a.put(str3 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, AthenaAnalytics.M().a(str2));
                }
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
        return this;
    }

    public TrackData(Bundle bundle) {
        this.f41533b = 0;
        this.f41534c = 1.0f;
        this.f41532a = new JSONObject();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                add(str, String.valueOf(bundle.get(str)));
            }
        }
    }

    public TrackData add(String str, boolean z10) {
        return add(str, z10, 0);
    }

    public TrackData add(String str, boolean z10, int i10) {
        String str2 = "_" + str;
        if (i10 != 0) {
            this.f41533b = i10;
        }
        try {
            if (i10 == 0) {
                this.f41532a.put(str2, z10);
            } else {
                if (i10 == 1) {
                    throw new IllegalArgumentException("json object can not set TRACK_ADD flag");
                }
                if (i10 == 2) {
                    this.f41532a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, z10);
                }
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
        return this;
    }

    public TrackData(int i10, String str) {
        this.f41534c = 1.0f;
        this.f41533b = i10;
        try {
            if (TextUtils.isEmpty(str)) {
                this.f41532a = new JSONObject();
            } else {
                this.f41532a = new JSONObject(str);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public TrackData add(String str, int i10) {
        return add(str, i10, 0);
    }

    public TrackData add(String str, int i10, int i11) {
        String str2 = "_" + str;
        if (i11 != 0) {
            this.f41533b = i11;
        }
        try {
            if (i11 == 0) {
                this.f41532a.put(str2, i10);
            } else {
                if (i11 != 1) {
                    if (i11 == 2) {
                        this.f41532a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, i10);
                    }
                    return this;
                }
                this.f41532a.put(str2 + UrlUtils.AND_MARK + "add", i10);
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
        return this;
    }

    public TrackData(int i10, JSONObject jSONObject) {
        this.f41534c = 1.0f;
        this.f41533b = i10;
        this.f41532a = jSONObject;
    }

    public TrackData add(String str, long j10) {
        return add(str, j10, 0);
    }

    protected TrackData(Parcel parcel) {
        this.f41533b = 0;
        this.f41534c = 1.0f;
        try {
            this.f41533b = parcel.readInt();
            this.f41532a = new JSONObject(parcel.readString());
            this.f41534c = parcel.readFloat();
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public TrackData add(String str, long j10, int i10) {
        String str2 = "_" + str;
        if (i10 != 0) {
            this.f41533b = i10;
        }
        try {
            if (i10 == 0) {
                this.f41532a.put(str2, j10);
            } else {
                if (i10 != 1) {
                    if (i10 == 2) {
                        this.f41532a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, j10);
                    }
                    return this;
                }
                this.f41532a.put(str2 + UrlUtils.AND_MARK + "add", j10);
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
        return this;
    }

    public TrackData add(String str, double d10) {
        return add(str, d10, 0);
    }

    public TrackData add(String str, double d10, int i10) {
        String str2 = "_" + str;
        if (i10 != 0) {
            this.f41533b = i10;
        }
        try {
            if (i10 == 0) {
                this.f41532a.put(str2, d10);
            } else {
                if (i10 != 1) {
                    if (i10 == 2) {
                        this.f41532a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, d10);
                    }
                    return this;
                }
                this.f41532a.put(str2 + UrlUtils.AND_MARK + "add", d10);
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
        return this;
    }

    public TrackData add(String str, Number number) {
        return add(str, number, 0);
    }

    public TrackData add(String str, Number number, int i10) {
        String str2 = "_" + str;
        if (i10 != 0) {
            this.f41533b = i10;
        }
        try {
            if (i10 == 0) {
                this.f41532a.put(str2, number);
            } else {
                if (i10 != 1) {
                    if (i10 == 2) {
                        this.f41532a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, number);
                    }
                    return this;
                }
                this.f41532a.put(str2 + UrlUtils.AND_MARK + "add", number);
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
        return this;
    }

    public TrackData add(String str, Bundle bundle) {
        return add(str, bundle, 0);
    }

    public TrackData add(String str, Bundle bundle, int i10) {
        if (bundle == null) {
            return this;
        }
        String str2 = "_" + str;
        if (i10 != 0) {
            this.f41533b = i10;
        }
        Set<String> setKeySet = bundle.keySet();
        JSONObject jSONObject = new JSONObject();
        try {
            if (i10 == 0) {
                for (String str3 : setKeySet) {
                    if (bundle.get(str3) instanceof String) {
                        jSONObject.put("_" + str3, AthenaAnalytics.M().a((String) bundle.get(str3)));
                    } else {
                        jSONObject.put("_" + str3, bundle.get(str3));
                    }
                }
                this.f41532a.put(str2, jSONObject);
            } else {
                if (i10 == 1) {
                    throw new IllegalArgumentException("json object can not set TRACK_ADD flag");
                }
                if (i10 == 2) {
                    for (String str4 : setKeySet) {
                        if (bundle.get(str4) instanceof String) {
                            jSONObject.put("_" + str4, AthenaAnalytics.M().a((String) bundle.get(str4)));
                        } else {
                            jSONObject.put("_" + str4, bundle.get(str4));
                        }
                    }
                    this.f41532a.put(str2 + UrlUtils.AND_MARK + RequestParameters.SUBRESOURCE_APPEND, jSONObject);
                }
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
        return this;
    }

    public TrackData add(String str, List<Bundle> list) {
        String str2 = "_" + str;
        try {
            JSONArray jSONArray = new JSONArray();
            for (Bundle bundle : list) {
                Set<String> setKeySet = bundle.keySet();
                JSONObject jSONObject = new JSONObject();
                for (String str3 : setKeySet) {
                    if (bundle.get(str3) instanceof String) {
                        jSONObject.put("_" + str3, AthenaAnalytics.M().a((String) bundle.get(str3)));
                    } else {
                        jSONObject.put("_" + str3, bundle.get(str3));
                    }
                }
                jSONArray.put(jSONObject);
            }
            this.f41532a.put(str2, jSONArray);
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
        return this;
    }
}
