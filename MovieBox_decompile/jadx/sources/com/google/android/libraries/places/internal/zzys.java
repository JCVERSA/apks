package com.google.android.libraries.places.internal;

public final class zzys extends zzatu implements zzavg {
    private static final zzys zzb;
    private static volatile zzavn zze;
    private int zzf;
    private long zzg;
    private long zzh;
    private long zzi;

    static {
        zzys zzysVar = new zzys();
        zzb = zzysVar;
        zzatu.zzaE(zzys.class, zzysVar);
    }

    private zzys() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzys();
        }
        zzwv zzwvVar = null;
        if (i11 == 4) {
            return new zzyr(zzwvVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzys.class) {
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
