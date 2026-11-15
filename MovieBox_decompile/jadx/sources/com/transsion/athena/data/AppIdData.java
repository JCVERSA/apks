package com.transsion.athena.data;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.core.log.ObjectLogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class AppIdData implements Parcelable {
    public static final Parcelable.Creator<AppIdData> CREATOR = new athena();

    public int f41517a;

    public String f41518b;

    public String f41519c;

    public int f41520d;

    public List<anehat> f41521e = new ArrayList();

    public String f41522f;

    class athena implements Parcelable.Creator<AppIdData> {
        athena() {
        }

        @Override
        public AppIdData createFromParcel(Parcel parcel) {
            return new AppIdData(parcel);
        }

        @Override
        public AppIdData[] newArray(int i10) {
            return new AppIdData[i10];
        }
    }

    public AppIdData() {
    }

    public static AppIdData a(Context context, int i10) {
        AppIdData appIdData = new AppIdData();
        appIdData.f41517a = i10;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("pkgName", com.transsion.athena.taaneh.athena.h(context));
            jSONObject.put("versionSDK", "3.1.1.4");
            jSONObject.put("channel", ehanat.g());
            jSONObject.put("installer", com.transsion.athena.taaneh.athena.e(context));
            jSONObject.put("versionName", com.transsion.athena.taaneh.athena.j(context));
            jSONObject.put("versionCode", String.valueOf(com.transsion.athena.taaneh.athena.i(context)));
            appIdData.f41518b = jSONObject.toString();
        } catch (Exception e10) {
            ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f41673a;
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
        return appIdData;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<anehat> it = this.f41521e.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().toString());
        }
        return "AppIdData{appid=" + this.f41517a + ", baseInfo='" + this.f41518b + "', packetUid='" + this.f41519c + "', retryTimes=" + this.f41520d + ", serverUrl='" + this.f41522f + "', tidEventSets='" + ((Object) sb2) + "'}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f41517a);
        parcel.writeString(this.f41518b);
    }

    public AppIdData(Parcel parcel) {
        this.f41517a = parcel.readInt();
        this.f41518b = parcel.readString();
    }
}
