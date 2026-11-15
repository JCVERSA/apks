package com.google.android.gms.internal.ads;

import defpackage.ani;
import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.zmi;

public final class t8 extends ia implements sti {
    private static final t8 zza;
    private static volatile vti zzb;
    private int zzc;
    private v8 zzd;
    private h9 zze;

    static {
        t8 t8Var = new t8();
        zza = t8Var;
        ia.F(t8.class, t8Var);
    }

    public static zmi b0() {
        return (zmi) zza.p();
    }

    public static t8 d0(zzgwn zzgwnVar, esi esiVar) {
        return (t8) ia.N(zza, zzgwnVar, esiVar);
    }

    public static void g0(t8 t8Var, v8 v8Var) {
        v8Var.getClass();
        t8Var.zzd = v8Var;
        t8Var.zzc |= 1;
    }

    public static void h0(t8 t8Var, h9 h9Var) {
        h9Var.getClass();
        t8Var.zze = h9Var;
        t8Var.zzc |= 2;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new t8();
        }
        ani aniVar = null;
        if (iOrdinal == 4) {
            return new zmi(aniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (t8.class) {
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

    public final v8 e0() {
        v8 v8Var = this.zzd;
        return v8Var == null ? v8.e0() : v8Var;
    }

    public final h9 f0() {
        h9 h9Var = this.zze;
        return h9Var == null ? h9.f0() : h9Var;
    }
}
