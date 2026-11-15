package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;

public final class re implements k01.b {
    public static final Parcelable.Creator<re> CREATOR = new a();
    public final int b;
    public final String c;

    public class a implements Parcelable.Creator<re> {
        @Override
        public final re createFromParcel(Parcel parcel) {
            String string = parcel.readString();
            string.getClass();
            return new re(parcel.readInt(), string);
        }

        @Override
        public final re[] newArray(int i) {
            return new re[i];
        }
    }

    public re(int i, String str) {
        this.b = i;
        this.c = str;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "Ait(controlCode=" + this.b + ",url=" + this.c + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c);
        parcel.writeInt(this.b);
    }
}
