package com.google.android.gms.internal.ads;

import defpackage.ioi;
import defpackage.joi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class i9 extends ia implements sti {
    private static final i9 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;

    static {
        i9 i9Var = new i9();
        zza = i9Var;
        ia.F(i9.class, i9Var);
    }

    public static ioi d0() {
        return (ioi) zza.p();
    }

    public static i9 f0() {
        return zza;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new i9();
        }
        joi joiVar = null;
        if (iOrdinal == 4) {
            return new ioi(joiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (i9.class) {
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
        return this.zzd;
    }

    public final zzgsc c0() {
        zzgsc zzgscVar;
        int i = this.zzc;
        if (i == 0) {
            zzgscVar = zzgsc.UNKNOWN_HASH;
        } else if (i == 1) {
            zzgscVar = zzgsc.SHA1;
        } else if (i == 2) {
            zzgscVar = zzgsc.SHA384;
        } else if (i == 3) {
            zzgscVar = zzgsc.SHA256;
        } else if (i != 4) {
            zzgscVar = i != 5 ? null : zzgsc.SHA224;
        } else {
            zzgscVar = zzgsc.SHA512;
        }
        return zzgscVar == null ? zzgsc.UNRECOGNIZED : zzgscVar;
    }
}
