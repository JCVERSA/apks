package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

public final class t02 implements k01.b {
    public static final Parcelable.Creator<t02> CREATOR = new a();
    public final float b;
    public final int c;

    public class a implements Parcelable.Creator<t02> {
        @Override
        public final t02 createFromParcel(Parcel parcel) {
            return new t02(parcel);
        }

        @Override
        public final t02[] newArray(int i) {
            return new t02[i];
        }
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t02.class != obj.getClass()) {
            return false;
        }
        t02 t02Var = (t02) obj;
        return this.b == t02Var.b && this.c == t02Var.c;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.b).hashCode() + 527) * 31) + this.c;
    }

    public final String toString() {
        return "smta: captureFrameRate=" + this.b + ", svcTemporalLayerCount=" + this.c;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.b);
        parcel.writeInt(this.c);
    }

    public t02(int i, float f) {
        this.b = f;
        this.c = i;
    }

    private t02(Parcel parcel) {
        this.b = parcel.readFloat();
        this.c = parcel.readInt();
    }
}
