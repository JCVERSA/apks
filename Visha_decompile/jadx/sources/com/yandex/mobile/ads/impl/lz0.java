package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class lz0 implements Parcelable {
    public static final Parcelable.Creator<lz0> CREATOR = new a();
    private final String b;
    private final Map<String, String> c;
    private final List<String> d;
    private final List<String> e;
    private final List<String> f;
    private final t4 g;
    private final Map<String, String> h;

    public static final class a implements Parcelable.Creator<lz0> {
        @Override
        public final lz0 createFromParcel(Parcel parcel) {
            LinkedHashMap linkedHashMap;
            y45.j(parcel, "parcel");
            String string = parcel.readString();
            int i = parcel.readInt();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(i);
            for (int i2 = 0; i2 != i; i2++) {
                linkedHashMap2.put(parcel.readString(), parcel.readString());
            }
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            ArrayList<String> arrayListCreateStringArrayList2 = parcel.createStringArrayList();
            ArrayList<String> arrayListCreateStringArrayList3 = parcel.createStringArrayList();
            t4 t4VarCreateFromParcel = parcel.readInt() == 0 ? null : t4.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 0) {
                linkedHashMap = null;
            } else {
                int i3 = parcel.readInt();
                linkedHashMap = new LinkedHashMap(i3);
                for (int i4 = 0; i4 != i3; i4++) {
                    linkedHashMap.put(parcel.readString(), parcel.readString());
                }
            }
            return new lz0(string, linkedHashMap2, arrayListCreateStringArrayList, arrayListCreateStringArrayList2, arrayListCreateStringArrayList3, t4VarCreateFromParcel, linkedHashMap);
        }

        @Override
        public final lz0[] newArray(int i) {
            return new lz0[i];
        }
    }

    public lz0(String str, Map<String, String> map, List<String> list, List<String> list2, List<String> list3, t4 t4Var, Map<String, String> map2) {
        y45.j(str, "adapter");
        y45.j(map, "networkData");
        this.b = str;
        this.c = map;
        this.d = list;
        this.e = list2;
        this.f = list3;
        this.g = t4Var;
        this.h = map2;
    }

    public final t4 c() {
        return this.g;
    }

    public final List<String> d() {
        return this.f;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final String e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lz0)) {
            return false;
        }
        lz0 lz0Var = (lz0) obj;
        return y45.e(this.b, lz0Var.b) && y45.e(this.c, lz0Var.c) && y45.e(this.d, lz0Var.d) && y45.e(this.e, lz0Var.e) && y45.e(this.f, lz0Var.f) && y45.e(this.g, lz0Var.g) && y45.e(this.h, lz0Var.h);
    }

    public final Map<String, String> f() {
        return this.h;
    }

    public final List<String> g() {
        return this.e;
    }

    public final List<String> h() {
        return this.d;
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + (this.b.hashCode() * 31)) * 31;
        List<String> list = this.d;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<String> list2 = this.e;
        int iHashCode3 = (iHashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<String> list3 = this.f;
        int iHashCode4 = (iHashCode3 + (list3 == null ? 0 : list3.hashCode())) * 31;
        t4 t4Var = this.g;
        int iHashCode5 = (iHashCode4 + (t4Var == null ? 0 : t4Var.hashCode())) * 31;
        Map<String, String> map = this.h;
        return iHashCode5 + (map != null ? map.hashCode() : 0);
    }

    public final Map<String, String> i() {
        return this.c;
    }

    public final String toString() {
        return "MediationNetwork(adapter=" + this.b + ", networkData=" + this.c + ", impressionTrackingUrls=" + this.d + ", clickTrackingUrls=" + this.e + ", adResponseTrackingUrls=" + this.f + ", adImpressionData=" + this.g + ", biddingInfo=" + this.h + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeString(this.b);
        Map<String, String> map = this.c;
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
        parcel.writeStringList(this.d);
        parcel.writeStringList(this.e);
        parcel.writeStringList(this.f);
        t4 t4Var = this.g;
        if (t4Var == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            t4Var.writeToParcel(parcel, i);
        }
        Map<String, String> map2 = this.h;
        if (map2 == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(map2.size());
        for (Map.Entry<String, String> entry2 : map2.entrySet()) {
            parcel.writeString(entry2.getKey());
            parcel.writeString(entry2.getValue());
        }
    }
}
