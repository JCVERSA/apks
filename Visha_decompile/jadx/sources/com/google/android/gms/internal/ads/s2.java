package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class s2 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    private static final s2 zzc;
    private static volatile vti zzd;
    private int zze;
    private boolean zzf;
    private int zzg;

    static {
        s2 s2Var = new s2();
        zzc = s2Var;
        ia.F(s2.class, s2Var);
    }

    public void b0(boolean z) {
        this.zze |= 1;
        this.zzf = z;
    }

    public void c0(int i) {
        this.zze |= 2;
        this.zzg = i;
    }

    public static r2 d0() {
        return (r2) zzc.p();
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (iOrdinal == 3) {
            return new s2();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new r2();
        }
        if (iOrdinal == 5) {
            return zzc;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzd;
        if (msiVar == null) {
            synchronized (s2.class) {
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

    public boolean f0() {
        return this.zzf;
    }
}
