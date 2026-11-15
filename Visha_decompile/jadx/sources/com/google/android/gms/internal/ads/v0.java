package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class v0 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    private static final v0 zzc;
    private static volatile vti zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        v0 v0Var = new v0();
        zzc = v0Var;
        ia.F(v0.class, v0Var);
    }

    public static s0 d0() {
        return (s0) zzc.p();
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zze", "zzf", zzbbn$zzab$zzc.zze(), "zzg", zzbbn$zzab$zzb.zze()});
        }
        if (iOrdinal == 3) {
            return new v0();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new s0();
        }
        if (iOrdinal == 5) {
            return zzc;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzd;
        if (msiVar == null) {
            synchronized (v0.class) {
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

    public final void b0(zzbbn$zzab$zzb zzbbn_zzab_zzb) {
        this.zzg = zzbbn_zzab_zzb.zza();
        this.zze |= 2;
    }

    public final void c0(zzbbn$zzab$zzc zzbbn_zzab_zzc) {
        this.zzf = zzbbn_zzab_zzc.zza();
        this.zze |= 1;
    }
}
