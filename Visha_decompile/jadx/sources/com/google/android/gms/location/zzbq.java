package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.location.zzbs;
import defpackage.wd8;
import defpackage.x8f;
import defpackage.z09;
import java.util.List;

public final class zzbq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbq> CREATOR = new x8f();
    private final List<String> zza;

    @Nullable
    private final PendingIntent zzb;
    private final String zzc;

    public zzbq(@Nullable List<String> list, @Nullable PendingIntent pendingIntent, String str) {
        this.zza = list == null ? zzbs.zzi() : zzbs.zzj(list);
        this.zzb = pendingIntent;
        this.zzc = str;
    }

    public static zzbq zza(List<String> list) {
        wd8.m(list, "geofence can't be null.");
        wd8.b(!list.isEmpty(), "Geofences must contains at least one id.");
        return new zzbq(list, null, "");
    }

    public static zzbq zzb(PendingIntent pendingIntent) {
        wd8.m(pendingIntent, "PendingIntent can not be null.");
        return new zzbq(null, pendingIntent, "");
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.F(parcel, 1, this.zza, false);
        z09.B(parcel, 2, this.zzb, i, false);
        z09.D(parcel, 3, this.zzc, false);
        z09.b(parcel, iA);
    }
}
