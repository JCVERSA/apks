package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.noi;
import defpackage.ooi;
import defpackage.sti;
import defpackage.vti;

public final class k9 extends ia implements sti {
    private static final k9 zza;
    private static volatile vti zzb;
    private String zzc = "";
    private zzgwn zzd = zzgwn.zzb;
    private int zze;

    static {
        k9 k9Var = new k9();
        zza = k9Var;
        ia.F(k9.class, k9Var);
    }

    public static noi b0() {
        return (noi) zza.p();
    }

    public static k9 d0() {
        return zza;
    }

    public static k9 e0(byte[] bArr, esi esiVar) {
        return (k9) ia.Q(zza, bArr, esiVar);
    }

    public static void j0(k9 k9Var, String str) {
        str.getClass();
        k9Var.zzc = str;
    }

    public static void k0(k9 k9Var, zzgwn zzgwnVar) {
        zzgwnVar.getClass();
        k9Var.zzd = zzgwnVar;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new k9();
        }
        ooi ooiVar = null;
        if (iOrdinal == 4) {
            return new noi(ooiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (k9.class) {
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

    public final zzgtt f0() {
        zzgtt zzgttVarZzb = zzgtt.zzb(this.zze);
        return zzgttVarZzb == null ? zzgtt.UNRECOGNIZED : zzgttVarZzb;
    }

    public final zzgwn g0() {
        return this.zzd;
    }

    public final String h0() {
        return this.zzc;
    }
}
