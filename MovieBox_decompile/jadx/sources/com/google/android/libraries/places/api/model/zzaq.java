package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

final class zzaq extends zzf {
    public static final Parcelable.Creator<zzaq> CREATOR = new zzap();

    zzaq(List list) {
        super(list);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeList(asList());
    }
}
