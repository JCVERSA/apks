package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.location.LocationRequest;
import defpackage.jc7;
import defpackage.z09;
import java.util.Collections;
import java.util.List;

public final class zzba extends AbstractSafeParcelable {
    final LocationRequest zzb;
    final List<ClientIdentity> zzc;

    @Nullable
    final String zzd;
    final boolean zze;
    final boolean zzf;
    final boolean zzg;

    @Nullable
    final String zzh;
    final boolean zzi;
    boolean zzj;

    @Nullable
    String zzk;
    long zzl;
    static final List<ClientIdentity> zza = Collections.emptyList();
    public static final Parcelable.Creator<zzba> CREATOR = new e();

    public zzba(LocationRequest locationRequest, List<ClientIdentity> list, @Nullable String str, boolean z, boolean z2, boolean z3, @Nullable String str2, boolean z4, boolean z5, @Nullable String str3, long j) {
        this.zzb = locationRequest;
        this.zzc = list;
        this.zzd = str;
        this.zze = z;
        this.zzf = z2;
        this.zzg = z3;
        this.zzh = str2;
        this.zzi = z4;
        this.zzj = z5;
        this.zzk = str3;
        this.zzl = j;
    }

    public static zzba zza(@Nullable String str, LocationRequest locationRequest) {
        return new zzba(locationRequest, zza, null, false, false, false, null, false, false, null, Long.MAX_VALUE);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof zzba) {
            zzba zzbaVar = (zzba) obj;
            if (jc7.a(this.zzb, zzbaVar.zzb) && jc7.a(this.zzc, zzbaVar.zzc) && jc7.a(this.zzd, zzbaVar.zzd) && this.zze == zzbaVar.zze && this.zzf == zzbaVar.zzf && this.zzg == zzbaVar.zzg && jc7.a(this.zzh, zzbaVar.zzh) && this.zzi == zzbaVar.zzi && this.zzj == zzbaVar.zzj && jc7.a(this.zzk, zzbaVar.zzk)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.zzb);
        if (this.zzd != null) {
            sb.append(" tag=");
            sb.append(this.zzd);
        }
        if (this.zzh != null) {
            sb.append(" moduleId=");
            sb.append(this.zzh);
        }
        if (this.zzk != null) {
            sb.append(" contextAttributionTag=");
            sb.append(this.zzk);
        }
        sb.append(" hideAppOps=");
        sb.append(this.zze);
        sb.append(" clients=");
        sb.append(this.zzc);
        sb.append(" forceCoarseLocation=");
        sb.append(this.zzf);
        if (this.zzg) {
            sb.append(" exemptFromBackgroundThrottle");
        }
        if (this.zzi) {
            sb.append(" locationSettingsIgnored");
        }
        if (this.zzj) {
            sb.append(" inaccurateLocationsDelayed");
        }
        return sb.toString();
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, this.zzb, i, false);
        z09.H(parcel, 5, this.zzc, false);
        z09.D(parcel, 6, this.zzd, false);
        z09.g(parcel, 7, this.zze);
        z09.g(parcel, 8, this.zzf);
        z09.g(parcel, 9, this.zzg);
        z09.D(parcel, 10, this.zzh, false);
        z09.g(parcel, 11, this.zzi);
        z09.g(parcel, 12, this.zzj);
        z09.D(parcel, 13, this.zzk, false);
        z09.w(parcel, 14, this.zzl);
        z09.b(parcel, iA);
    }

    public final zzba zzb(long j) {
        if (this.zzb.getMaxWaitTime() <= this.zzb.getInterval()) {
            this.zzl = 10000L;
            return this;
        }
        long interval = this.zzb.getInterval();
        long maxWaitTime = this.zzb.getMaxWaitTime();
        StringBuilder sb = new StringBuilder(120);
        sb.append("could not set max age when location batching is requested, interval=");
        sb.append(interval);
        sb.append("maxWaitTime=");
        sb.append(maxWaitTime);
        throw new IllegalArgumentException(sb.toString());
    }

    public final zzba zzc(@Nullable String str) {
        this.zzk = str;
        return this;
    }

    public final zzba zzd(boolean z) {
        this.zzj = true;
        return this;
    }
}
