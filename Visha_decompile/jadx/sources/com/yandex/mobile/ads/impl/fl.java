package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class fl implements Parcelable {
    public static final Parcelable.Creator<fl> CREATOR = new a();
    private final List<ba> b;
    private final h01 c;

    public static final class a implements Parcelable.Creator<fl> {
        @Override
        public final fl createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 != i; i2++) {
                arrayList.add(ba.CREATOR.createFromParcel(parcel));
            }
            return new fl(arrayList, parcel.readInt() == 0 ? null : h01.CREATOR.createFromParcel(parcel));
        }

        @Override
        public final fl[] newArray(int i) {
            return new fl[i];
        }
    }

    public fl(ArrayList arrayList, h01 h01Var) {
        y45.j(arrayList, "adUnitIdBiddingSettingsList");
        this.b = arrayList;
        this.c = h01Var;
    }

    public final List<ba> c() {
        return this.b;
    }

    public final h01 d() {
        return this.c;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fl)) {
            return false;
        }
        fl flVar = (fl) obj;
        return y45.e(this.b, flVar.b) && y45.e(this.c, flVar.c);
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        h01 h01Var = this.c;
        return iHashCode + (h01Var == null ? 0 : h01Var.hashCode());
    }

    public final String toString() {
        return "BiddingSettings(adUnitIdBiddingSettingsList=" + this.b + ", mediationPrefetchSettings=" + this.c + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        List<ba> list = this.b;
        parcel.writeInt(list.size());
        Iterator<ba> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
        h01 h01Var = this.c;
        if (h01Var == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            h01Var.writeToParcel(parcel, i);
        }
    }
}
