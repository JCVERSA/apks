package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

final class zzam extends zzc {
    public static final Parcelable.Creator<zzam> CREATOR = new zzal();

    zzam(List list) {
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
