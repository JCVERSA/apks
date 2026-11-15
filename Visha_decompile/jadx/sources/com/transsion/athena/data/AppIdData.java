package com.transsion.athena.data;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.core.log.ObjectLogUtils;
import defpackage.c4d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class AppIdData implements Parcelable {
    public static final Parcelable.Creator<AppIdData> CREATOR = new athena();
    public int a;
    public String b;
    public String c;
    public int d;
    public List<anehat> e = new ArrayList();
    public String f;

    public class athena implements Parcelable.Creator<AppIdData> {
        @Override
        public AppIdData createFromParcel(Parcel parcel) {
            return new AppIdData(parcel);
        }

        @Override
        public AppIdData[] newArray(int i) {
            return new AppIdData[i];
        }
    }

    public AppIdData() {
    }

    public static AppIdData a(Context context, int i) {
        AppIdData appIdData = new AppIdData();
        appIdData.a = i;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("pkgName", com.transsion.athena.taaneh.athena.x(context));
            jSONObject.put("versionSDK", "3.1.1.2");
            jSONObject.put("channel", ehanat.g());
            jSONObject.put("installer", com.transsion.athena.taaneh.athena.u(context));
            jSONObject.put("versionName", com.transsion.athena.taaneh.athena.z(context));
            jSONObject.put("versionCode", String.valueOf(com.transsion.athena.taaneh.athena.y(context)));
            appIdData.b = jSONObject.toString();
        } catch (Exception e) {
            ObjectLogUtils objectLogUtils = c4d.a;
            c4d.d(Log.getStackTraceString(e));
        }
        return appIdData;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<anehat> it = this.e.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
        }
        return "AppIdData{appid=" + this.a + ", baseInfo='" + this.b + "', packetUid='" + this.c + "', retryTimes=" + this.d + ", serverUrl='" + this.f + "', tidEventSets='" + ((Object) sb) + "'}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
    }

    public AppIdData(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readString();
    }
}
