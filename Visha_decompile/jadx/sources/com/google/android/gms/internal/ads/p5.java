package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.rsh;
import defpackage.ssh;
import defpackage.sti;
import defpackage.vti;

public final class p5 extends ia implements sti {
    private static final p5 zza;
    private static volatile vti zzb;
    private String zzc = "";
    private int zzd;

    static {
        p5 p5Var = new p5();
        zza = p5Var;
        ia.F(p5.class, p5Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0004", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new p5();
        }
        ssh sshVar = null;
        if (iOrdinal == 4) {
            return new rsh(sshVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (p5.class) {
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
