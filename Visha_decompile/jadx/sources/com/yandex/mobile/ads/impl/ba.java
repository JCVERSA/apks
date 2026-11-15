package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ba implements Parcelable {
    public static final Parcelable.Creator<ba> CREATOR = new a();
    private final String b;
    private final List<lz0> c;
    private final String d;

    public static final class a implements Parcelable.Creator<ba> {
        @Override
        public final ba createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            String string = parcel.readString();
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 != i; i2++) {
                arrayList.add(lz0.CREATOR.createFromParcel(parcel));
            }
            return new ba(string, parcel.readString(), arrayList);
        }

        @Override
        public final ba[] newArray(int i) {
            return new ba[i];
        }
    }

    public ba(String str, String str2, ArrayList arrayList) {
        y45.j(str, "adUnitId");
        y45.j(arrayList, "mediationNetworks");
        y45.j(str2, "rawData");
        this.b = str;
        this.c = arrayList;
        this.d = str2;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.d;
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
        if (!(obj instanceof ba)) {
            return false;
        }
        ba baVar = (ba) obj;
        return y45.e(this.b, baVar.b) && y45.e(this.c, baVar.c) && y45.e(this.d, baVar.d);
    }

    public final List<lz0> f() {
        return this.c;
    }

    public final int hashCode() {
        return this.d.hashCode() + aa.a(this.c, this.b.hashCode() * 31, 31);
    }

    public final String toString() {
        return "AdUnitIdBiddingSettings(adUnitId=" + this.b + ", mediationNetworks=" + this.c + ", rawData=" + this.d + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeString(this.b);
        List<lz0> list = this.c;
        parcel.writeInt(list.size());
        Iterator<lz0> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
        parcel.writeString(this.d);
    }
}
