package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.xoi;
import defpackage.ysi;
import defpackage.zoi;

public final class p9 extends ia implements sti {
    private static final p9 zza;
    private static volatile vti zzb;
    private int zzc;
    private ysi zzd = ia.u();

    static {
        p9 p9Var = new p9();
        zza = p9Var;
        ia.F(p9.class, p9Var);
    }

    public static xoi b0() {
        return (xoi) zza.p();
    }

    public static void d0(p9 p9Var, o9 o9Var) {
        o9Var.getClass();
        ysi ysiVar = p9Var.zzd;
        if (!ysiVar.zzc()) {
            p9Var.zzd = ia.v(ysiVar);
        }
        p9Var.zzd.add(o9Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzc", "zzd", o9.class});
        }
        if (iOrdinal == 3) {
            return new p9();
        }
        zoi zoiVar = null;
        if (iOrdinal == 4) {
            return new xoi(zoiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (p9.class) {
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
