package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

final class zzbi extends zzv {
    public static final Parcelable.Creator<zzbi> CREATOR = new zzbh();

    zzbi(String str, int i10, int i11, String str2, @Nullable String str3, @Nullable AuthorAttributions authorAttributions) {
        super(str, i10, i11, str2, str3, authorAttributions);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(getAttributions());
        parcel.writeInt(getHeight());
        parcel.writeInt(getWidth());
        parcel.writeString(zzb());
        if (zza() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(zza());
        }
        parcel.writeParcelable(getAuthorAttributions(), i10);
    }
}
