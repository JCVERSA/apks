package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;

@Deprecated
public enum TypeFilter implements Parcelable {
    ADDRESS,
    CITIES,
    ESTABLISHMENT,
    GEOCODE,
    REGIONS;


    @RecentlyNonNull
    public static final Parcelable.Creator<TypeFilter> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            String string = parcel.readString();
            string.getClass();
            return TypeFilter.valueOf(string);
        }

        @Override
        public final Object[] newArray(int i10) {
            return new TypeFilter[i10];
        }
    };

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i10) {
        parcel.writeString(name());
    }
}
