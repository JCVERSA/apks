package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.location.zzbe;
import defpackage.jqe;
import defpackage.z09;
import java.util.ArrayList;
import java.util.List;

public class GeofencingRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new jqe();
    public static final int INITIAL_TRIGGER_DWELL = 4;
    public static final int INITIAL_TRIGGER_ENTER = 1;
    public static final int INITIAL_TRIGGER_EXIT = 2;
    private final List<zzbe> zza;
    private final int zzb;
    private final String zzc;

    @Nullable
    private final String zzd;

    public GeofencingRequest(List<zzbe> list, int i, String str, @Nullable String str2) {
        this.zza = list;
        this.zzb = i;
        this.zzc = str;
        this.zzd = str2;
    }

    @NonNull
    public List<Object> getGeofences() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.zza);
        return arrayList;
    }

    public int getInitialTrigger() {
        return this.zzb;
    }

    @NonNull
    public String toString() {
        return "GeofencingRequest[geofences=" + this.zza + ", initialTrigger=" + this.zzb + ", tag=" + this.zzc + ", attributionTag=" + this.zzd + "]";
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.H(parcel, 1, this.zza, false);
        z09.s(parcel, 2, getInitialTrigger());
        z09.D(parcel, 3, this.zzc, false);
        z09.D(parcel, 4, this.zzd, false);
        z09.b(parcel, iA);
    }

    @NonNull
    public final GeofencingRequest zza(@Nullable String str) {
        return new GeofencingRequest(this.zza, this.zzb, this.zzc, str);
    }
}
