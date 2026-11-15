package com.google.android.libraries.places.internal;

public final class zzaix extends zzatu implements zzavg {
    private static final zzaix zzb;
    private static volatile zzavn zze;
    private int zzf;
    private String zzg = "";
    private int zzh;

    static {
        zzaix zzaixVar = new zzaix();
        zzb = zzaixVar;
        zzatu.zzaE(zzaix.class, zzaixVar);
    }

    private zzaix() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzaix();
        }
        zzadu zzaduVar = null;
        if (i11 == 4) {
            return new zzaiw(zzaduVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaix.class) {
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
