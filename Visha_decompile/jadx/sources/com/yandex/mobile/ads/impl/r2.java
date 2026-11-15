package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;

public final class r2 implements Parcelable {
    public static final Parcelable.Creator<r2> CREATOR = new a();
    private final String b;
    private final String c;
    private final String d;

    public static final class a implements Parcelable.Creator<r2> {
        @Override
        public final r2 createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new r2(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override
        public final r2[] newArray(int i) {
            return new r2[i];
        }
    }

    public r2(String str, String str2, String str3) {
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.b;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final String e() {
        return this.d;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
    }
}
