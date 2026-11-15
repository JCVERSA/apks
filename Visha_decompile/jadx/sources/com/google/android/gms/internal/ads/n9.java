package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.roi;
import defpackage.sti;
import defpackage.vti;
import defpackage.woi;
import defpackage.ysi;
import java.io.InputStream;
import java.util.List;

public final class n9 extends ia implements sti {
    private static final n9 zza;
    private static volatile vti zzb;
    private int zzc;
    private ysi zzd = ia.u();

    static {
        n9 n9Var = new n9();
        zza = n9Var;
        ia.F(n9.class, n9Var);
    }

    public static roi d0() {
        return (roi) zza.p();
    }

    public static n9 g0(InputStream inputStream, esi esiVar) {
        return (n9) ia.O(zza, inputStream, esiVar);
    }

    public static void i0(n9 n9Var, m9 m9Var) {
        m9Var.getClass();
        ysi ysiVar = n9Var.zzd;
        if (!ysiVar.zzc()) {
            n9Var.zzd = ia.v(ysiVar);
        }
        n9Var.zzd.add(m9Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzc", "zzd", m9.class});
        }
        if (iOrdinal == 3) {
            return new n9();
        }
        woi woiVar = null;
        if (iOrdinal == 4) {
            return new roi(woiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (n9.class) {
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
        return this.zzd.size();
    }

    public final int c0() {
        return this.zzc;
    }

    public final m9 e0(int i) {
        return (m9) this.zzd.get(i);
    }

    public final List h0() {
        return this.zzd;
    }
}
