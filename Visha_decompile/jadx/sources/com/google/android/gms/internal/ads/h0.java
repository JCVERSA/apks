package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.wte;
import defpackage.xte;

public final class h0 extends ia implements sti {
    private static final h0 zza;
    private static volatile vti zzb;
    private int zzc;
    private i0 zzd;
    private zzgwn zze;
    private zzgwn zzf;

    static {
        h0 h0Var = new h0();
        zza = h0Var;
        ia.F(h0.class, h0Var);
    }

    public h0() {
        zzgwn zzgwnVar = zzgwn.zzb;
        this.zze = zzgwnVar;
        this.zzf = zzgwnVar;
    }

    public static h0 c0(zzgwn zzgwnVar, esi esiVar) {
        return (h0) ia.N(zza, zzgwnVar, esiVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new h0();
        }
        xte xteVar = null;
        if (iOrdinal == 4) {
            return new wte(xteVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (h0.class) {
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

    public final i0 d0() {
        i0 i0Var = this.zzd;
        return i0Var == null ? i0.g0() : i0Var;
    }

    public final zzgwn e0() {
        return this.zzf;
    }

    public final zzgwn f0() {
        return this.zze;
    }
}
