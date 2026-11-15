package com.google.android.libraries.places.internal;

public final class zzta extends zzatu implements zzavg {
    private static final zzta zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzte zzg;
    private zztc zzh;
    private zzsw zzi;

    static {
        zzta zztaVar = new zzta();
        zzb = zztaVar;
        zzatu.zzaE(zzta.class, zztaVar);
    }

    private zzta() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzta();
        }
        zzsu zzsuVar = null;
        if (i11 == 4) {
            return new zzsz(zzsuVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzta.class) {
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
