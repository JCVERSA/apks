package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;

public final class rx1 implements Parcelable {
    public static final Parcelable.Creator<rx1> CREATOR = new a();
    private final String b;

    public static final class a implements Parcelable.Creator<rx1> {
        @Override
        public final rx1 createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new rx1(parcel.readString());
        }

        @Override
        public final rx1[] newArray(int i) {
            return new rx1[i];
        }
    }

    public rx1(String str) {
        y45.j(str, "rewardUrl");
        this.b = str;
    }

    public final String c() {
        return this.b;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof rx1) && y45.e(this.b, ((rx1) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "ServerSideReward(rewardUrl=" + this.b + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeString(this.b);
    }
}
