package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class g2 extends ia implements sti {
    public static final int zza = 1;
    private static final g2 zzb;
    private static volatile vti zzc;
    private ysi zzd = ia.u();

    static {
        g2 g2Var = new g2();
        zzb = g2Var;
        ia.F(g2.class, g2Var);
    }

    public static a2 d0() {
        return (a2) zzb.p();
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", z1.class});
        }
        if (iOrdinal == 3) {
            return new g2();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new a2();
        }
        if (iOrdinal == 5) {
            return zzb;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzc;
        if (msiVar == null) {
            synchronized (g2.class) {
                try {
                    msiVar = zzc;
                    if (msiVar == null) {
                        msiVar = new msi(zzb);
                        zzc = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }

    public final void b0(z1 z1Var) {
        z1Var.getClass();
        c0();
        this.zzd.add(z1Var);
    }

    public final void c0() {
        ysi ysiVar = this.zzd;
        if (ysiVar.zzc()) {
            return;
        }
        this.zzd = ia.v(ysiVar);
    }
}
