package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jc7;
import defpackage.z09;
import java.util.ArrayList;
import java.util.List;

public final class zzm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new zzo();
    public final int zza;

    @Deprecated
    public final long zzb;
    public final Bundle zzc;

    @Deprecated
    public final int zzd;
    public final List zze;
    public final boolean zzf;
    public final int zzg;
    public final boolean zzh;
    public final String zzi;
    public final zzft zzj;
    public final Location zzk;
    public final String zzl;
    public final Bundle zzm;
    public final Bundle zzn;
    public final List zzo;
    public final String zzp;
    public final String zzq;

    @Deprecated
    public final boolean zzr;

    @Nullable
    public final zzc zzs;
    public final int zzt;

    @Nullable
    public final String zzu;
    public final List zzv;
    public final int zzw;

    @Nullable
    public final String zzx;
    public final int zzy;
    public final long zzz;

    public zzm(int i, long j, Bundle bundle, int i2, List list, boolean z, int i3, boolean z2, String str, zzft zzftVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List list2, String str3, String str4, boolean z3, @Nullable zzc zzcVar, int i4, @Nullable String str5, List list3, int i5, @Nullable String str6, int i6, long j2) {
        this.zza = i;
        this.zzb = j;
        this.zzc = bundle == null ? new Bundle() : bundle;
        this.zzd = i2;
        this.zze = list;
        this.zzf = z;
        this.zzg = i3;
        this.zzh = z2;
        this.zzi = str;
        this.zzj = zzftVar;
        this.zzk = location;
        this.zzl = str2;
        this.zzm = bundle2 == null ? new Bundle() : bundle2;
        this.zzn = bundle3;
        this.zzo = list2;
        this.zzp = str3;
        this.zzq = str4;
        this.zzr = z3;
        this.zzs = zzcVar;
        this.zzt = i4;
        this.zzu = str5;
        this.zzv = list3 == null ? new ArrayList() : list3;
        this.zzw = i5;
        this.zzx = str6;
        this.zzy = i6;
        this.zzz = j2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzm) {
            return zza(obj) && this.zzz == ((zzm) obj).zzz;
        }
        return false;
    }

    public final int hashCode() {
        return jc7.b(Integer.valueOf(this.zza), Long.valueOf(this.zzb), this.zzc, Integer.valueOf(this.zzd), this.zze, Boolean.valueOf(this.zzf), Integer.valueOf(this.zzg), Boolean.valueOf(this.zzh), this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzo, this.zzp, this.zzq, Boolean.valueOf(this.zzr), Integer.valueOf(this.zzt), this.zzu, this.zzv, Integer.valueOf(this.zzw), this.zzx, Integer.valueOf(this.zzy), Long.valueOf(this.zzz));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.w(parcel, 2, this.zzb);
        z09.j(parcel, 3, this.zzc, false);
        z09.s(parcel, 4, this.zzd);
        z09.F(parcel, 5, this.zze, false);
        z09.g(parcel, 6, this.zzf);
        z09.s(parcel, 7, this.zzg);
        z09.g(parcel, 8, this.zzh);
        z09.D(parcel, 9, this.zzi, false);
        z09.B(parcel, 10, this.zzj, i, false);
        z09.B(parcel, 11, this.zzk, i, false);
        z09.D(parcel, 12, this.zzl, false);
        z09.j(parcel, 13, this.zzm, false);
        z09.j(parcel, 14, this.zzn, false);
        z09.F(parcel, 15, this.zzo, false);
        z09.D(parcel, 16, this.zzp, false);
        z09.D(parcel, 17, this.zzq, false);
        z09.g(parcel, 18, this.zzr);
        z09.B(parcel, 19, this.zzs, i, false);
        z09.s(parcel, 20, this.zzt);
        z09.D(parcel, 21, this.zzu, false);
        z09.F(parcel, 22, this.zzv, false);
        z09.s(parcel, 23, this.zzw);
        z09.D(parcel, 24, this.zzx, false);
        z09.s(parcel, 25, this.zzy);
        z09.w(parcel, 26, this.zzz);
        z09.b(parcel, iA);
    }

    public final boolean zza(Object obj) {
        if (!(obj instanceof zzm)) {
            return false;
        }
        zzm zzmVar = (zzm) obj;
        return this.zza == zzmVar.zza && this.zzb == zzmVar.zzb && com.google.android.gms.ads.internal.util.client.zzp.zza(this.zzc, zzmVar.zzc) && this.zzd == zzmVar.zzd && jc7.a(this.zze, zzmVar.zze) && this.zzf == zzmVar.zzf && this.zzg == zzmVar.zzg && this.zzh == zzmVar.zzh && jc7.a(this.zzi, zzmVar.zzi) && jc7.a(this.zzj, zzmVar.zzj) && jc7.a(this.zzk, zzmVar.zzk) && jc7.a(this.zzl, zzmVar.zzl) && com.google.android.gms.ads.internal.util.client.zzp.zza(this.zzm, zzmVar.zzm) && com.google.android.gms.ads.internal.util.client.zzp.zza(this.zzn, zzmVar.zzn) && jc7.a(this.zzo, zzmVar.zzo) && jc7.a(this.zzp, zzmVar.zzp) && jc7.a(this.zzq, zzmVar.zzq) && this.zzr == zzmVar.zzr && this.zzt == zzmVar.zzt && jc7.a(this.zzu, zzmVar.zzu) && jc7.a(this.zzv, zzmVar.zzv) && this.zzw == zzmVar.zzw && jc7.a(this.zzx, zzmVar.zzx) && this.zzy == zzmVar.zzy;
    }

    public final boolean zzb() {
        return this.zzc.getBoolean("is_sdk_preload", false);
    }
}
