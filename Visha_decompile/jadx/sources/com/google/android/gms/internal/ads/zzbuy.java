package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.obf;
import defpackage.z09;
import java.util.List;

public final class zzbuy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbuy> CREATOR = new obf();
    public final Bundle zza;
    public final VersionInfoParcel zzb;
    public final ApplicationInfo zzc;
    public final String zzd;
    public final List zze;

    @Nullable
    public final PackageInfo zzf;
    public final String zzg;
    public final String zzh;

    @Nullable
    public zzfdj zzi;

    @Nullable
    public String zzj;
    public final boolean zzk;
    public final boolean zzl;
    public final Bundle zzm;
    public final Bundle zzn;
    public final int zzo;

    public zzbuy(Bundle bundle, VersionInfoParcel versionInfoParcel, ApplicationInfo applicationInfo, String str, List list, @Nullable PackageInfo packageInfo, String str2, String str3, zzfdj zzfdjVar, String str4, boolean z, boolean z2, Bundle bundle2, Bundle bundle3, int i) {
        this.zza = bundle;
        this.zzb = versionInfoParcel;
        this.zzd = str;
        this.zzc = applicationInfo;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = str2;
        this.zzh = str3;
        this.zzi = zzfdjVar;
        this.zzj = str4;
        this.zzk = z;
        this.zzl = z2;
        this.zzm = bundle2;
        this.zzn = bundle3;
        this.zzo = i;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = this.zza;
        int iA = z09.a(parcel);
        z09.j(parcel, 1, bundle, false);
        z09.B(parcel, 2, this.zzb, i, false);
        z09.B(parcel, 3, this.zzc, i, false);
        z09.D(parcel, 4, this.zzd, false);
        z09.F(parcel, 5, this.zze, false);
        z09.B(parcel, 6, this.zzf, i, false);
        z09.D(parcel, 7, this.zzg, false);
        z09.D(parcel, 9, this.zzh, false);
        z09.B(parcel, 10, this.zzi, i, false);
        z09.D(parcel, 11, this.zzj, false);
        z09.g(parcel, 12, this.zzk);
        z09.g(parcel, 13, this.zzl);
        z09.j(parcel, 14, this.zzm, false);
        z09.j(parcel, 15, this.zzn, false);
        z09.s(parcel, 16, this.zzo);
        z09.b(parcel, iA);
    }
}
