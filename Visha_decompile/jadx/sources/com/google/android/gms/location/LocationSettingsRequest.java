package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.z09;
import defpackage.z4f;
import java.util.Collections;
import java.util.List;

public final class LocationSettingsRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new z4f();
    private final List<LocationRequest> zza;
    private final boolean zzb;
    private final boolean zzc;

    @Nullable
    private zzbj zzd;

    public LocationSettingsRequest(List<LocationRequest> list, boolean z, boolean z2, @Nullable zzbj zzbjVar) {
        this.zza = list;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = zzbjVar;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.H(parcel, 1, Collections.unmodifiableList(this.zza), false);
        z09.g(parcel, 2, this.zzb);
        z09.g(parcel, 3, this.zzc);
        z09.B(parcel, 5, this.zzd, i, false);
        z09.b(parcel, iA);
    }
}
