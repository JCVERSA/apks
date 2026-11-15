package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;

public final class ej2 extends dj2 {
    public static final Parcelable.Creator<ej2> CREATOR = new a();

    public class a implements Parcelable.Creator<ej2> {
        @Override
        public final ej2 createFromParcel(Parcel parcel) {
            return new ej2(parcel);
        }

        @Override
        public final ej2[] newArray(int i) {
            return new ej2[i];
        }
    }

    public ej2(Parcel parcel) {
        super(parcel);
    }

    public ej2(String str, String str2) {
        super(str, str2);
    }
}
