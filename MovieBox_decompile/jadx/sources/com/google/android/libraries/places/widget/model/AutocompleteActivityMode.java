package com.google.android.libraries.places.widget.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;

public enum AutocompleteActivityMode implements Parcelable {
    FULLSCREEN,
    OVERLAY;


    @RecentlyNonNull
    public static final Parcelable.Creator<AutocompleteActivityMode> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            String string = parcel.readString();
            string.getClass();
            return AutocompleteActivityMode.valueOf(string);
        }

        @Override
        public final Object[] newArray(int i10) {
            return new AutocompleteActivityMode[i10];
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
