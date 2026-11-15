package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class d2 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    private static final d2 zzc;
    private static volatile vti zzd;
    private int zze;
    private boolean zzf;
    private int zzg;

    static {
        d2 d2Var = new d2();
        zzc = d2Var;
        ia.F(d2.class, d2Var);
    }

    public static c2 d0() {
        return (c2) zzc.p();
    }

    public static d2 f0() {
        return zzc;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဋ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (iOrdinal == 3) {
            return new d2();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new c2();
        }
        if (iOrdinal == 5) {
            return zzc;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzd;
        if (msiVar == null) {
            synchronized (d2.class) {
                try {
                    msiVar = zzd;
                    if (msiVar == null) {
                        msiVar = new msi(zzc);
                        zzd = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }

    public final void b0(boolean z) {
        this.zze |= 1;
        this.zzf = z;
    }

    public final void c0(int i) {
        this.zze |= 2;
        this.zzg = i;
    }
}
