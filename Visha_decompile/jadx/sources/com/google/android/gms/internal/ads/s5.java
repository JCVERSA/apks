package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysh;
import defpackage.zsh;

public final class s5 extends ia implements sti {
    private static final s5 zza;
    private static volatile vti zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private boolean zzh;
    private String zzc = "";
    private String zzg = "";

    static {
        s5 s5Var = new s5();
        zza = s5Var;
        ia.F(s5.class, s5Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002\u0004\u0003\u0004\u0004\u0007\u0005Ȉ\u0006\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (iOrdinal == 3) {
            return new s5();
        }
        zsh zshVar = null;
        if (iOrdinal == 4) {
            return new ysh(zshVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (s5.class) {
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
}
