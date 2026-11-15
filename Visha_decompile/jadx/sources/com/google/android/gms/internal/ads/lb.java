package com.google.android.gms.internal.ads;

import defpackage.lxi;
import defpackage.msi;
import defpackage.pwi;
import defpackage.qwi;
import defpackage.sti;
import defpackage.vti;

public final class lb extends ia implements sti {
    private static final lb zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private String zze = "";
    private zzgwn zzf;
    private zzgwn zzg;

    static {
        lb lbVar = new lb();
        zza = lbVar;
        ia.F(lb.class, lbVar);
    }

    public lb() {
        zzgwn zzgwnVar = zzgwn.zzb;
        this.zzf = zzgwnVar;
        this.zzg = zzgwnVar;
    }

    public static pwi b0() {
        return (pwi) zza.p();
    }

    public static void d0(lb lbVar, zzgwn zzgwnVar) {
        zzgwnVar.getClass();
        lbVar.zzc |= 4;
        lbVar.zzf = zzgwnVar;
    }

    public static void e0(lb lbVar, String str) {
        lbVar.zzc |= 2;
        lbVar.zze = "image/png";
    }

    public static void f0(lb lbVar, int i) {
        lbVar.zzd = 1;
        lbVar.zzc = 1 | lbVar.zzc;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzc", "zzd", qwi.a, "zze", "zzf", "zzg"});
        }
        if (iOrdinal == 3) {
            return new lb();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new pwi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (lb.class) {
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
