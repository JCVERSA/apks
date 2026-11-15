package com.google.android.libraries.places.internal;

public final class zzarn extends zzatu implements zzavg {
    private static final zzarn zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzapz zzg;
    private int zzh;

    static {
        zzarn zzarnVar = new zzarn();
        zzb = zzarnVar;
        zzatu.zzaE(zzarn.class, zzarnVar);
    }

    private zzarn() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002င\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzarn();
        }
        zzard zzardVar = null;
        if (i11 == 4) {
            return new zzarm(zzardVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzarn.class) {
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
