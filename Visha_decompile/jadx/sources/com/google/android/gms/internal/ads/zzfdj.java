package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.aph;
import defpackage.cye;
import defpackage.yoh;
import defpackage.z09;
import defpackage.zoh;

public final class zzfdj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfdj> CREATOR = new aph();
    public final Context zza;
    public final zzfdg zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final String zzf;
    public final int zzg;
    private final zzfdg[] zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int[] zzl;
    private final int[] zzm;

    public zzfdj(int i, int i2, int i3, int i4, String str, int i5, int i6) {
        zzfdg[] zzfdgVarArrValues = zzfdg.values();
        this.zzh = zzfdgVarArrValues;
        int[] iArrA = yoh.a();
        this.zzl = iArrA;
        int[] iArrA2 = zoh.a();
        this.zzm = iArrA2;
        this.zza = null;
        this.zzi = i;
        this.zzb = zzfdgVarArrValues[i];
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = str;
        this.zzj = i5;
        this.zzg = iArrA[i5];
        this.zzk = i6;
        int i7 = iArrA2[i6];
    }

    public static zzfdj zza(zzfdg zzfdgVar, Context context) {
        if (zzfdgVar == zzfdg.Rewarded) {
            return new zzfdj(context, zzfdgVar, ((Integer) zzbd.zzc().b(cye.p6)).intValue(), ((Integer) zzbd.zzc().b(cye.v6)).intValue(), ((Integer) zzbd.zzc().b(cye.x6)).intValue(), (String) zzbd.zzc().b(cye.z6), (String) zzbd.zzc().b(cye.r6), (String) zzbd.zzc().b(cye.t6));
        }
        if (zzfdgVar == zzfdg.Interstitial) {
            return new zzfdj(context, zzfdgVar, ((Integer) zzbd.zzc().b(cye.q6)).intValue(), ((Integer) zzbd.zzc().b(cye.w6)).intValue(), ((Integer) zzbd.zzc().b(cye.y6)).intValue(), (String) zzbd.zzc().b(cye.A6), (String) zzbd.zzc().b(cye.s6), (String) zzbd.zzc().b(cye.u6));
        }
        if (zzfdgVar != zzfdg.AppOpen) {
            return null;
        }
        return new zzfdj(context, zzfdgVar, ((Integer) zzbd.zzc().b(cye.D6)).intValue(), ((Integer) zzbd.zzc().b(cye.F6)).intValue(), ((Integer) zzbd.zzc().b(cye.G6)).intValue(), (String) zzbd.zzc().b(cye.B6), (String) zzbd.zzc().b(cye.C6), (String) zzbd.zzc().b(cye.E6));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zzi;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.s(parcel, 2, this.zzc);
        z09.s(parcel, 3, this.zzd);
        z09.s(parcel, 4, this.zze);
        z09.D(parcel, 5, this.zzf, false);
        z09.s(parcel, 6, this.zzj);
        z09.s(parcel, 7, this.zzk);
        z09.b(parcel, iA);
    }

    private zzfdj(Context context, zzfdg zzfdgVar, int i, int i2, int i3, String str, String str2, String str3) {
        int i4;
        this.zzh = zzfdg.values();
        this.zzl = yoh.a();
        this.zzm = zoh.a();
        this.zza = context;
        this.zzi = zzfdgVar.ordinal();
        this.zzb = zzfdgVar;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = str;
        if ("oldest".equals(str2)) {
            i4 = 1;
        } else {
            i4 = (!"lru".equals(str2) && "lfu".equals(str2)) ? 3 : 2;
        }
        this.zzg = i4;
        this.zzj = i4 - 1;
        "onAdClosed".equals(str3);
        this.zzk = 0;
    }
}
