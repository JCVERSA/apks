package com.google.android.libraries.places.internal;

import java.util.List;

public final class zzamd extends zzatu implements zzavg {
    private static final zzamd zzb;
    private static volatile zzavn zze;
    private String zzf = "";
    private zzauc zzg = zzatu.zzax();

    static {
        zzamd zzamdVar = new zzamd();
        zzb = zzamdVar;
        zzatu.zzaE(zzamd.class, zzamdVar);
    }

    private zzamd() {
    }

    public static zzamd zzc() {
        return zzb;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzf", "zzg", zzamj.class});
        }
        if (i11 == 3) {
            return new zzamd();
        }
        zzalz zzalzVar = null;
        if (i11 == 4) {
            return new zzamc(zzalzVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzamd.class) {
                try {
                    zzatpVar = zze;
                    if (zzatpVar == null) {
                        zzatpVar = new zzatp(zzb);
                        zze = zzatpVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return zzatpVar;
    }

    public final String zzd() {
        return this.zzf;
    }

    public final List zze() {
        return this.zzg;
    }
}
