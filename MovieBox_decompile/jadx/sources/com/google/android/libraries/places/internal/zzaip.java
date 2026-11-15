package com.google.android.libraries.places.internal;

public final class zzaip extends zzatu implements zzavg {
    private static final zzaip zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzaip zzaipVar = new zzaip();
        zzb = zzaipVar;
        zzatu.zzaE(zzaip.class, zzaipVar);
    }

    private zzaip() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzaip();
        }
        zzadu zzaduVar = null;
        if (i11 == 4) {
            return new zzaio(zzaduVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaip.class) {
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
