package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class hz0 implements Parcelable {
    public static final Parcelable.Creator<hz0> CREATOR = new a();
    private final List<lz0> b;
    private Map<String, String> c;

    public static final class a implements Parcelable.Creator<hz0> {
        @Override
        public final hz0 createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 != i; i2++) {
                arrayList.add(lz0.CREATOR.createFromParcel(parcel));
            }
            int i3 = parcel.readInt();
            LinkedHashMap linkedHashMap = new LinkedHashMap(i3);
            for (int i4 = 0; i4 != i3; i4++) {
                linkedHashMap.put(parcel.readString(), parcel.readString());
            }
            return new hz0(arrayList, linkedHashMap);
        }

        @Override
        public final hz0[] newArray(int i) {
            return new hz0[i];
        }
    }

    public hz0(ArrayList arrayList, Map map) {
        y45.j(arrayList, "mediationNetworks");
        y45.j(map, "passbackParameters");
        this.b = arrayList;
        this.c = map;
    }

    public final List<lz0> c() {
        return this.b;
    }

    public final Map<String, String> d() {
        return this.c;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        List<lz0> list = this.b;
        parcel.writeInt(list.size());
        Iterator<lz0> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
        Map<String, String> map = this.c;
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }
}
