package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.sti;
import defpackage.vmi;
import defpackage.vti;
import defpackage.wmi;

public final class r8 extends ia implements sti {
    private static final r8 zza;
    private static volatile vti zzb;
    private int zzc;

    static {
        r8 r8Var = new r8();
        zza = r8Var;
        ia.F(r8.class, r8Var);
    }

    public static vmi c0() {
        return (vmi) zza.p();
    }

    public static r8 e0() {
        return zza;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzc"});
        }
        if (iOrdinal == 3) {
            return new r8();
        }
        wmi wmiVar = null;
        if (iOrdinal == 4) {
            return new vmi(wmiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (r8.class) {
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

    public final int b0() {
        return this.zzc;
    }
}
