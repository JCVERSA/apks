package com.google.android.gms.internal.ads;

import defpackage.dxi;
import defpackage.exi;
import defpackage.kxi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class ub extends ia implements sti {
    private static final ub zza;
    private static volatile vti zzb;
    private int zzc;
    private boolean zzj;
    private double zzk;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzu;
    private String zzd = "";
    private String zze = "";
    private int zzf = 4;
    private ysi zzg = ia.u();
    private String zzh = "";
    private String zzi = "";
    private ysi zzl = ia.u();

    static {
        ub ubVar = new ub();
        zza = ubVar;
        ia.F(ub.class, ubVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0002\u0003\u001a\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဇ\u0005\u0007က\u0006\b\u001b\tဈ\u0001\n᠌\u0007\u000bဇ\b\fဇ\t\rဇ\n\u000eဇ\u000b", new Object[]{"zzc", "zzd", "zzf", kxi.a, "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", tb.class, "zze", "zzm", exi.a, "zzn", "zzo", "zzp", "zzu"});
        }
        if (iOrdinal == 3) {
            return new ub();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new dxi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (ub.class) {
                try {
                    msiVar = zzb;
                    if (msiVar == null) {
                        msiVar = new msi(zza);
                        zzb = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
