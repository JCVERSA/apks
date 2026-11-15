package com.google.android.libraries.places.internal;

public final class zzxm extends zzatu implements zzavg {
    private static final zzxm zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzst zzg;
    private long zzh;
    private long zzi;

    static {
        zzxm zzxmVar = new zzxm();
        zzb = zzxmVar;
        zzatu.zzaE(zzxm.class, zzxmVar);
    }

    private zzxm() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzxm();
        }
        zzwv zzwvVar = null;
        if (i11 == 4) {
            return new zzxl(zzwvVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzxm.class) {
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
