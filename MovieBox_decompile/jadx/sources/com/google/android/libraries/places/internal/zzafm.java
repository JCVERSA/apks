package com.google.android.libraries.places.internal;

public final class zzafm extends zzatu implements zzavg {
    private static final zzafm zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;

    static {
        zzafm zzafmVar = new zzafm();
        zzb = zzafmVar;
        zzatu.zzaE(zzafm.class, zzafmVar);
    }

    private zzafm() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzf", "zzg", zzafl.zza});
        }
        if (i11 == 3) {
            return new zzafm();
        }
        zzadu zzaduVar = null;
        if (i11 == 4) {
            return new zzafk(zzaduVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzafm.class) {
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
}
