package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.goi;
import defpackage.hoi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class h9 extends ia implements sti {
    private static final h9 zza;
    private static volatile vti zzb;
    private int zzc;
    private i9 zzd;
    private int zze;
    private int zzf;

    static {
        h9 h9Var = new h9();
        zza = h9Var;
        ia.F(h9.class, h9Var);
    }

    public static goi d0() {
        return (goi) zza.p();
    }

    public static h9 f0() {
        return zza;
    }

    public static h9 g0(zzgwn zzgwnVar, esi esiVar) {
        return (h9) ia.N(zza, zzgwnVar, esiVar);
    }

    public static void j0(h9 h9Var, i9 i9Var) {
        i9Var.getClass();
        h9Var.zzd = i9Var;
        h9Var.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new h9();
        }
        hoi hoiVar = null;
        if (iOrdinal == 4) {
            return new goi(hoiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (h9.class) {
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
        return this.zze;
    }

    public final int c0() {
        return this.zzf;
    }

    public final i9 h0() {
        i9 i9Var = this.zzd;
        return i9Var == null ? i9.f0() : i9Var;
    }
}
