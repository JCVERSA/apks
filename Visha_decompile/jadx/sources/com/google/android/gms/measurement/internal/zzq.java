package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.pij;
import defpackage.wd8;
import defpackage.z09;
import java.util.List;

public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new pij();

    @Nullable
    public final String zza;

    @Nullable
    public final String zzb;

    @Nullable
    public final String zzc;

    @Nullable
    public final String zzd;
    public final long zze;
    public final long zzf;

    @Nullable
    public final String zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final long zzj;

    @Nullable
    public final String zzk;

    @Deprecated
    public final long zzl;
    public final long zzm;
    public final int zzn;
    public final boolean zzo;
    public final boolean zzp;

    @Nullable
    public final String zzq;

    @Nullable
    public final Boolean zzr;
    public final long zzs;

    @Nullable
    public final List zzt;

    @Nullable
    public final String zzu;
    public final String zzv;
    public final String zzw;

    @Nullable
    public final String zzx;

    public zzq(@Nullable String str, @Nullable String str2, @Nullable String str3, long j, @Nullable String str4, long j2, long j3, @Nullable String str5, boolean z, boolean z2, @Nullable String str6, long j4, long j5, int i, boolean z3, boolean z4, @Nullable String str7, @Nullable Boolean bool, long j6, @Nullable List list, @Nullable String str8, String str9, String str10, @Nullable String str11) {
        wd8.f(str);
        this.zza = str;
        this.zzb = true != TextUtils.isEmpty(str2) ? str2 : null;
        this.zzc = str3;
        this.zzj = j;
        this.zzd = str4;
        this.zze = j2;
        this.zzf = j3;
        this.zzg = str5;
        this.zzh = z;
        this.zzi = z2;
        this.zzk = str6;
        this.zzl = 0L;
        this.zzm = j5;
        this.zzn = i;
        this.zzo = z3;
        this.zzp = z4;
        this.zzq = str7;
        this.zzr = bool;
        this.zzs = j6;
        this.zzt = list;
        this.zzu = null;
        this.zzv = str9;
        this.zzw = str10;
        this.zzx = str11;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 2, this.zza, false);
        z09.D(parcel, 3, this.zzb, false);
        z09.D(parcel, 4, this.zzc, false);
        z09.D(parcel, 5, this.zzd, false);
        z09.w(parcel, 6, this.zze);
        z09.w(parcel, 7, this.zzf);
        z09.D(parcel, 8, this.zzg, false);
        z09.g(parcel, 9, this.zzh);
        z09.g(parcel, 10, this.zzi);
        z09.w(parcel, 11, this.zzj);
        z09.D(parcel, 12, this.zzk, false);
        z09.w(parcel, 13, this.zzl);
        z09.w(parcel, 14, this.zzm);
        z09.s(parcel, 15, this.zzn);
        z09.g(parcel, 16, this.zzo);
        z09.g(parcel, 18, this.zzp);
        z09.D(parcel, 19, this.zzq, false);
        z09.i(parcel, 21, this.zzr, false);
        z09.w(parcel, 22, this.zzs);
        z09.F(parcel, 23, this.zzt, false);
        z09.D(parcel, 24, this.zzu, false);
        z09.D(parcel, 25, this.zzv, false);
        z09.D(parcel, 26, this.zzw, false);
        z09.D(parcel, 27, this.zzx, false);
        z09.b(parcel, iA);
    }

    public zzq(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, long j, long j2, @Nullable String str5, boolean z, boolean z2, long j3, @Nullable String str6, long j4, long j5, int i, boolean z3, boolean z4, @Nullable String str7, @Nullable Boolean bool, long j6, @Nullable List list, @Nullable String str8, String str9, String str10, String str11) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzj = j3;
        this.zzd = str4;
        this.zze = j;
        this.zzf = j2;
        this.zzg = str5;
        this.zzh = z;
        this.zzi = z2;
        this.zzk = str6;
        this.zzl = j4;
        this.zzm = j5;
        this.zzn = i;
        this.zzo = z3;
        this.zzp = z4;
        this.zzq = str7;
        this.zzr = bool;
        this.zzs = j6;
        this.zzt = list;
        this.zzu = str8;
        this.zzv = str9;
        this.zzw = str10;
        this.zzx = str11;
    }
}
