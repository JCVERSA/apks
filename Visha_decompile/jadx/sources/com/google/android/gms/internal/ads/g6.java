package com.google.android.gms.internal.ads;

import defpackage.kxh;
import defpackage.lxh;
import defpackage.msi;
import defpackage.mxh;
import defpackage.sti;
import defpackage.vsi;
import defpackage.vti;

public final class g6 extends ia implements sti {
    private static final g6 zza;
    private static volatile vti zzb;
    private int zzc;
    private vsi zzd = ia.q();
    private String zze = "";
    private String zzf = "";
    private String zzg = "";

    static {
        g6 g6Var = new g6();
        zza = g6Var;
        ia.F(g6.class, g6Var);
    }

    public static lxh b0() {
        return (lxh) zza.p();
    }

    public static void d0(g6 g6Var, String str) {
        str.getClass();
        g6Var.zzc |= 1;
        g6Var.zze = str;
    }

    public static void e0(g6 g6Var, int i) {
        vsi vsiVar = g6Var.zzd;
        if (!vsiVar.zzc()) {
            g6Var.zzd = ia.r(vsiVar);
        }
        g6Var.zzd.zzi(2);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ࠞ\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzc", "zzd", kxh.a, "zze", "zzf", "zzg"});
        }
        if (iOrdinal == 3) {
            return new g6();
        }
        mxh mxhVar = null;
        if (iOrdinal == 4) {
            return new lxh(mxhVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (g6.class) {
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
