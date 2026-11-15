package com.google.android.gms.internal.ads;

import defpackage.koe;
import defpackage.loe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class k extends ia implements sti {
    private static final k zza;
    private static volatile vti zzb;
    private int zzc;
    private boolean zzd;
    private int zze = 5000;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;

    static {
        k kVar = new k();
        zza = kVar;
        ia.F(k.class, kVar);
    }

    public static k d0() {
        return zza;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001ဇ\u0000\u0003င\u0001\u0004ဇ\u0002\u0005ဇ\u0003\u0006ဇ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (iOrdinal == 3) {
            return new k();
        }
        loe loeVar = null;
        if (iOrdinal == 4) {
            return new koe(loeVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (k.class) {
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

    public final boolean e0() {
        return this.zzd;
    }

    public final boolean f0() {
        return this.zzg;
    }

    public final boolean g0() {
        return this.zzf;
    }

    public final boolean h0() {
        return this.zzh;
    }
}
