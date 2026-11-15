package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.gpe;
import defpackage.msi;
import defpackage.spe;
import defpackage.sti;
import defpackage.vti;

public final class v extends ia implements sti {
    private static final v zza;
    private static volatile vti zzb;
    private int zzc;
    private zzgwn zzd;
    private zzgwn zze;
    private zzgwn zzf;
    private zzgwn zzg;

    static {
        v vVar = new v();
        zza = vVar;
        ia.F(v.class, vVar);
    }

    public v() {
        zzgwn zzgwnVar = zzgwn.zzb;
        this.zzd = zzgwnVar;
        this.zze = zzgwnVar;
        this.zzf = zzgwnVar;
        this.zzg = zzgwnVar;
    }

    public static gpe b0() {
        return (gpe) zza.p();
    }

    public static v d0(byte[] bArr, esi esiVar) {
        return (v) ia.Q(zza, bArr, esiVar);
    }

    public static void i0(v vVar, zzgwn zzgwnVar) {
        vVar.zzc |= 1;
        vVar.zzd = zzgwnVar;
    }

    public static void j0(v vVar, zzgwn zzgwnVar) {
        vVar.zzc |= 2;
        vVar.zze = zzgwnVar;
    }

    public static void k0(v vVar, zzgwn zzgwnVar) {
        vVar.zzc |= 8;
        vVar.zzg = zzgwnVar;
    }

    public static void l0(v vVar, zzgwn zzgwnVar) {
        vVar.zzc |= 4;
        vVar.zzf = zzgwnVar;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
        }
        if (iOrdinal == 3) {
            return new v();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new gpe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (v.class) {
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

    public final zzgwn e0() {
        return this.zzd;
    }

    public final zzgwn f0() {
        return this.zze;
    }

    public final zzgwn g0() {
        return this.zzg;
    }

    public final zzgwn h0() {
        return this.zzf;
    }
}
