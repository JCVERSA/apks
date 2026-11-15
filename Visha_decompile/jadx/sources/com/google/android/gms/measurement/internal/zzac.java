package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.wd8;
import defpackage.x8e;
import defpackage.z09;

public final class zzac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzac> CREATOR = new x8e();

    @Nullable
    public String zza;
    public String zzb;
    public zzlc zzc;
    public long zzd;
    public boolean zze;

    @Nullable
    public String zzf;

    @Nullable
    public final zzaw zzg;
    public long zzh;

    @Nullable
    public zzaw zzi;
    public final long zzj;

    @Nullable
    public final zzaw zzk;

    public zzac(zzac zzacVar) {
        wd8.l(zzacVar);
        this.zza = zzacVar.zza;
        this.zzb = zzacVar.zzb;
        this.zzc = zzacVar.zzc;
        this.zzd = zzacVar.zzd;
        this.zze = zzacVar.zze;
        this.zzf = zzacVar.zzf;
        this.zzg = zzacVar.zzg;
        this.zzh = zzacVar.zzh;
        this.zzi = zzacVar.zzi;
        this.zzj = zzacVar.zzj;
        this.zzk = zzacVar.zzk;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 2, this.zza, false);
        z09.D(parcel, 3, this.zzb, false);
        z09.B(parcel, 4, this.zzc, i, false);
        z09.w(parcel, 5, this.zzd);
        z09.g(parcel, 6, this.zze);
        z09.D(parcel, 7, this.zzf, false);
        z09.B(parcel, 8, this.zzg, i, false);
        z09.w(parcel, 9, this.zzh);
        z09.B(parcel, 10, this.zzi, i, false);
        z09.w(parcel, 11, this.zzj);
        z09.B(parcel, 12, this.zzk, i, false);
        z09.b(parcel, iA);
    }

    public zzac(@Nullable String str, String str2, zzlc zzlcVar, long j, boolean z, @Nullable String str3, @Nullable zzaw zzawVar, long j2, @Nullable zzaw zzawVar2, long j3, @Nullable zzaw zzawVar3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzlcVar;
        this.zzd = j;
        this.zze = z;
        this.zzf = str3;
        this.zzg = zzawVar;
        this.zzh = j2;
        this.zzi = zzawVar2;
        this.zzj = j3;
        this.zzk = zzawVar3;
    }
}
