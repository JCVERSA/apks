package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import defpackage.c5e;
import defpackage.z09;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

@Deprecated
public final class WakeLockEvent extends StatsEvent {

    @NonNull
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new c5e();
    final int zza;
    private final long zzb;
    private final int zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final int zzg;
    private final List zzh;
    private final String zzi;
    private final long zzj;
    private final int zzk;
    private final String zzl;
    private final float zzm;
    private final long zzn;
    private final boolean zzo;

    public WakeLockEvent(int i, long j, int i2, String str, int i3, List list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5, boolean z) {
        this.zza = i;
        this.zzb = j;
        this.zzc = i2;
        this.zzd = str;
        this.zze = str3;
        this.zzf = str5;
        this.zzg = i3;
        this.zzh = list;
        this.zzi = str2;
        this.zzj = j2;
        this.zzk = i4;
        this.zzl = str4;
        this.zzm = f;
        this.zzn = j3;
        this.zzo = z;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.w(parcel, 2, this.zzb);
        z09.D(parcel, 4, this.zzd, false);
        z09.s(parcel, 5, this.zzg);
        z09.F(parcel, 6, this.zzh, false);
        z09.w(parcel, 8, this.zzj);
        z09.D(parcel, 10, this.zze, false);
        z09.s(parcel, 11, this.zzc);
        z09.D(parcel, 12, this.zzi, false);
        z09.D(parcel, 13, this.zzl, false);
        z09.s(parcel, 14, this.zzk);
        z09.o(parcel, 15, this.zzm);
        z09.w(parcel, 16, this.zzn);
        z09.D(parcel, 17, this.zzf, false);
        z09.g(parcel, 18, this.zzo);
        z09.b(parcel, iA);
    }

    @Override
    public final long zza() {
        return this.zzb;
    }

    @Override
    public final int zzb() {
        return this.zzc;
    }

    @Override
    @NonNull
    public final String zzc() {
        List list = this.zzh;
        String strJoin = list == null ? "" : TextUtils.join(StringUtils.COMMA, list);
        int i = this.zzk;
        String str = this.zze;
        String str2 = this.zzl;
        float f = this.zzm;
        String str3 = this.zzf;
        int i2 = this.zzg;
        String str4 = this.zzd;
        boolean z = this.zzo;
        int length = String.valueOf(str4).length() + 2 + String.valueOf(i2).length() + 1 + String.valueOf(strJoin).length() + 1 + String.valueOf(i).length();
        if (str == null) {
            str = "";
        }
        int length2 = length + 1 + str.length() + 1;
        if (str2 == null) {
            str2 = "";
        }
        int length3 = length2 + str2.length() + 1 + String.valueOf(f).length() + 1;
        String str5 = str3 != null ? str3 : "";
        StringBuilder sb = new StringBuilder(length3 + str5.length() + 1 + String.valueOf(z).length());
        sb.append("\t");
        sb.append(str4);
        sb.append("\t");
        sb.append(i2);
        sb.append("\t");
        sb.append(strJoin);
        sb.append("\t");
        sb.append(i);
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(f);
        sb.append("\t");
        sb.append(str5);
        sb.append("\t");
        sb.append(z);
        return sb.toString();
    }
}
