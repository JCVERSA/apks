package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;

public final class hp implements Parcelable {
    public static final Parcelable.Creator<hp> CREATOR = new a();
    private final int b;
    private final String c;

    public static final class a implements Parcelable.Creator<hp> {
        @Override
        public final hp createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new hp(parcel.readInt(), parcel.readString());
        }

        @Override
        public final hp[] newArray(int i) {
            return new hp[i];
        }
    }

    public hp(int i, String str) {
        y45.j(str, "rewardType");
        this.b = i;
        this.c = str;
    }

    public final int c() {
        return this.b;
    }

    public final String d() {
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
        if (!(obj instanceof hp)) {
            return false;
        }
        hp hpVar = (hp) obj;
        return this.b == hpVar.b && y45.e(this.c, hpVar.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (Integer.hashCode(this.b) * 31);
    }

    public final String toString() {
        return "ClientSideReward(rewardAmount=" + this.b + ", rewardType=" + this.c + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
    }
}
