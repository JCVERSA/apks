package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;

public final class oq0 implements Parcelable {
    public static final Parcelable.Creator<oq0> CREATOR = new a();
    private final String b;
    private final String c;
    private final boolean d;

    public static final class a implements Parcelable.Creator<oq0> {
        @Override
        public final oq0 createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new oq0(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
        }

        @Override
        public final oq0[] newArray(int i) {
            return new oq0[i];
        }
    }

    public oq0(String str, String str2, boolean z) {
        y45.j(str, "apiFramework");
        y45.j(str2, "url");
        this.b = str;
        this.c = str2;
        this.d = z;
    }

    public final String c() {
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
        if (!(obj instanceof oq0)) {
            return false;
        }
        oq0 oq0Var = (oq0) obj;
        return y45.e(this.b, oq0Var.b) && y45.e(this.c, oq0Var.c) && this.d == oq0Var.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + v3.a(this.c, this.b.hashCode() * 31, 31);
    }

    public final String toString() {
        return "JavaScriptResource(apiFramework=" + this.b + ", url=" + this.c + ", browserOptional=" + this.d + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeInt(this.d ? 1 : 0);
    }
}
