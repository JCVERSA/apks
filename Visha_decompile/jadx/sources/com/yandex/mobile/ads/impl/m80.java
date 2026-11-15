package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;

public final class m80 implements Parcelable {
    public static final Parcelable.Creator<m80> CREATOR = new a();
    private final String b;
    private final long c;

    public static final class a implements Parcelable.Creator<m80> {
        @Override
        public final m80 createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new m80(parcel.readString(), parcel.readLong());
        }

        @Override
        public final m80[] newArray(int i) {
            return new m80[i];
        }
    }

    public m80(String str, long j) {
        y45.j(str, "url");
        this.b = str;
        this.c = j;
    }

    public final long c() {
        return this.c;
    }

    public final String d() {
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
        if (!(obj instanceof m80)) {
            return false;
        }
        m80 m80Var = (m80) obj;
        return y45.e(this.b, m80Var.b) && this.c == m80Var.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "FalseClick(url=" + this.b + ", interval=" + this.c + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeString(this.b);
        parcel.writeLong(this.c);
    }
}
