package com.google.android.libraries.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.libraries.places.api.model.LocationBias;
import com.google.android.libraries.places.api.model.LocationRestriction;
import com.google.android.libraries.places.api.model.TypeFilter;
import com.google.android.libraries.places.widget.model.AutocompleteActivityMode;

final class zzkm extends zzkk {
    public static final Parcelable.Creator<zzkm> CREATOR = new zzkl();

    zzkm(AutocompleteActivityMode autocompleteActivityMode, zznx zznxVar, zzkr zzkrVar, @Nullable String str, @Nullable String str2, @Nullable LocationBias locationBias, @Nullable LocationRestriction locationRestriction, zznx zznxVar2, @Nullable TypeFilter typeFilter, zznx zznxVar3, int i10, int i11, @Nullable String str3) {
        super(autocompleteActivityMode, zznxVar, zzkrVar, str, str2, locationBias, locationRestriction, zznxVar2, typeFilter, zznxVar3, i10, i11, str3);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(zzh(), i10);
        parcel.writeList(zzj());
        parcel.writeParcelable(zzf(), i10);
        if (zzm() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(zzm());
        }
        if (zzl() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(zzl());
        }
        parcel.writeParcelable(zzc(), i10);
        parcel.writeParcelable(zzd(), i10);
        parcel.writeList(zzi());
        parcel.writeParcelable(zze(), i10);
        parcel.writeList(zzk());
        parcel.writeInt(zza());
        parcel.writeInt(zzb());
        if (zzn() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(zzn());
        }
    }
}
