package com.hunantv.imgo.log.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.mgtv.downloader.free.FreePhoneInfo;
import com.mgtv.task.http.MultiParts;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

public class ReportParamsData implements Parcelable {
    public static Parcelable.Creator<ReportParamsData> a = new Parcelable.Creator<ReportParamsData>() {
        @Override
        public ReportParamsData createFromParcel(Parcel parcel) {
            return new ReportParamsData(parcel);
        }

        @Override
        public ReportParamsData[] newArray(int i) {
            return new ReportParamsData[i];
        }
    };
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private int q;
    private String r;
    private String s;
    private String t;
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;

    public MultiParts a() {
        MultiParts multiParts = new MultiParts();
        if (!TextUtils.isEmpty(this.b)) {
            multiParts.put("appVersion", this.b);
        }
        if (!TextUtils.isEmpty(this.c)) {
            multiParts.put(FreePhoneInfo.KEY_DEVICEID, this.c);
        }
        if (!TextUtils.isEmpty(this.d)) {
            multiParts.put("company", this.d);
        }
        if (!TextUtils.isEmpty(this.e)) {
            multiParts.put("platformType", this.e);
        }
        if (!TextUtils.isEmpty(this.f)) {
            multiParts.put("platformVersion", this.f);
        }
        if (!TextUtils.isEmpty(this.g)) {
            multiParts.put("account", this.g);
        }
        if (!TextUtils.isEmpty(this.h)) {
            multiParts.put("uid", this.h);
        }
        if (!TextUtils.isEmpty(this.i)) {
            multiParts.put("cpuInfo", this.i);
        }
        if (!TextUtils.isEmpty(this.j)) {
            multiParts.put(CommonUrlParts.MODEL, this.j);
        }
        if (!TextUtils.isEmpty(this.k)) {
            multiParts.put("networkType", this.k);
        }
        if (!TextUtils.isEmpty(this.l)) {
            multiParts.put("playHistory", this.l);
        }
        if (!TextUtils.isEmpty(this.m)) {
            multiParts.put("questionInfo", this.m);
        }
        if (!TextUtils.isEmpty(this.n)) {
            multiParts.put("questionDesc", this.n);
        }
        if (!TextUtils.isEmpty(this.o)) {
            multiParts.put("contactInfo", this.o);
        }
        if (!TextUtils.isEmpty(this.r)) {
            multiParts.put("sdk_version", this.r);
        }
        if (!TextUtils.isEmpty(this.s)) {
            multiParts.put("mp_type", this.s);
        }
        if (!TextUtils.isEmpty(this.t)) {
            multiParts.put("mp_version", this.t);
        }
        if (!TextUtils.isEmpty(this.v)) {
            multiParts.put("decoder_type", this.v);
        }
        multiParts.put("is_soft", this.u);
        if (!TextUtils.isEmpty(this.w)) {
            multiParts.put("chip", this.w);
        }
        if (!TextUtils.isEmpty(this.x)) {
            multiParts.put("subType", this.x);
        }
        if (!TextUtils.isEmpty(this.y)) {
            multiParts.put("src", this.y);
        }
        return multiParts;
    }

    public byte[] b() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.setDataPosition(0);
        writeToParcel(parcelObtain, 1);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }

    public String c() {
        return this.p;
    }

    public int d() {
        return this.q;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "ReportParamsData{appVersion='" + this.b + "', deviceId='" + this.c + "', company='" + this.d + "', platformType='" + this.e + "', platformVersion='" + this.f + "', account='" + this.g + "', uid='" + this.h + "', cpuInfo='" + this.i + "', model='" + this.j + "', networkType='" + this.k + "', playHistory='" + this.l + "', questionInfo='" + this.m + "', questionDesc='" + this.n + "', contactInfo='" + this.o + "', filePath='" + this.p + "', retryTime=" + this.q + ", sdk_version='" + this.r + "', mp_type='" + this.s + "', mp_version='" + this.t + "', is_soft='" + this.u + "', decoder_type='" + this.v + "', chip='" + this.w + "', subType='" + this.x + "', src='" + this.y + "'}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
        parcel.writeString(this.j);
        parcel.writeString(this.k);
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        parcel.writeString(this.o);
        parcel.writeString(this.p);
        parcel.writeInt(this.q);
        parcel.writeString(this.r);
        parcel.writeString(this.s);
        parcel.writeString(this.t);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeString(this.w);
        parcel.writeString(this.x);
        parcel.writeString(this.y);
    }

    private ReportParamsData(Parcel parcel) {
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.j = parcel.readString();
        this.k = parcel.readString();
        this.l = parcel.readString();
        this.m = parcel.readString();
        this.n = parcel.readString();
        this.o = parcel.readString();
        this.p = parcel.readString();
        this.q = parcel.readInt();
        this.r = parcel.readString();
        this.s = parcel.readString();
        this.t = parcel.readString();
        this.u = parcel.readString();
        this.v = parcel.readString();
        this.w = parcel.readString();
        this.x = parcel.readString();
        this.y = parcel.readString();
    }

    public ReportParamsData() {
    }

    public static ReportParamsData a(byte[] bArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        ReportParamsData reportParamsDataCreateFromParcel = a.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return reportParamsDataCreateFromParcel;
    }

    public void a(String str) {
        this.p = str;
    }

    public void a(int i) {
        this.q = i;
    }
}
