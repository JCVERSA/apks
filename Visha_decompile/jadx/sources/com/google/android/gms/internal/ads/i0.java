package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.yte;
import defpackage.zte;

public final class i0 extends ia implements sti {
    private static final i0 zza;
    private static volatile vti zzb;
    private int zzc;
    private String zzd = "";
    private String zze = "";
    private long zzf;
    private long zzg;
    private long zzh;

    static {
        i0 i0Var = new i0();
        zza = i0Var;
        ia.F(i0.class, i0Var);
    }

    public static yte e0() {
        return (yte) zza.p();
    }

    public static i0 g0() {
        return zza;
    }

    public static i0 h0(zzgwn zzgwnVar) {
        return (i0) ia.L(zza, zzgwnVar);
    }

    public static i0 i0(zzgwn zzgwnVar, esi esiVar) {
        return (i0) ia.N(zza, zzgwnVar, esiVar);
    }

    public static void l0(i0 i0Var, String str) {
        str.getClass();
        i0Var.zzc |= 2;
        i0Var.zze = str;
    }

    public static void m0(i0 i0Var, long j) {
        i0Var.zzc |= 8;
        i0Var.zzg = j;
    }

    public static void n0(i0 i0Var, long j) {
        i0Var.zzc |= 4;
        i0Var.zzf = j;
    }

    public static void o0(i0 i0Var, long j) {
        i0Var.zzc |= 16;
        i0Var.zzh = j;
    }

    public static void p0(i0 i0Var, String str) {
        str.getClass();
        i0Var.zzc |= 1;
        i0Var.zzd = str;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (iOrdinal == 3) {
            return new i0();
        }
        zte zteVar = null;
        if (iOrdinal == 4) {
            return new yte(zteVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (i0.class) {
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

    public final long b0() {
        return this.zzg;
    }

    public final long c0() {
        return this.zzf;
    }

    public final long d0() {
        return this.zzh;
    }

    public final String j0() {
        return this.zze;
    }

    public final String k0() {
        return this.zzd;
    }
}
