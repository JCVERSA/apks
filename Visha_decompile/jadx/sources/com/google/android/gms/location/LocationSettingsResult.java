package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.l5f;
import defpackage.lu8;
import defpackage.z09;

public final class LocationSettingsResult extends AbstractSafeParcelable implements lu8 {

    @NonNull
    public static final Parcelable.Creator<LocationSettingsResult> CREATOR = new l5f();
    private final Status zza;

    @Nullable
    private final LocationSettingsStates zzb;

    public LocationSettingsResult(@NonNull Status status, @Nullable LocationSettingsStates locationSettingsStates) {
        this.zza = status;
        this.zzb = locationSettingsStates;
    }

    @Nullable
    public LocationSettingsStates getLocationSettingsStates() {
        return this.zzb;
    }

    @Override
    @NonNull
    public Status getStatus() {
        return this.zza;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, getStatus(), i, false);
        z09.B(parcel, 2, getLocationSettingsStates(), i, false);
        z09.b(parcel, iA);
    }
}
