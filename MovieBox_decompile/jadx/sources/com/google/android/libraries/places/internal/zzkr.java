package com.google.android.libraries.places.internal;

import android.os.Parcel;
import android.os.Parcelable;

public enum zzkr implements Parcelable {
    FRAGMENT,
    INTENT;

    public static final Parcelable.Creator<zzkr> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            String string = parcel.readString();
            string.getClass();
            return (zzkr) Enum.valueOf(zzkr.class, string);
        }

        @Override
        public final Object[] newArray(int i10) {
            return new zzkr[i10];
        }
    };

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(name());
    }
}
