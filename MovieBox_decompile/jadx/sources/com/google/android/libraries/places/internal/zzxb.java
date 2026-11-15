package com.google.android.libraries.places.internal;

public final class zzxb extends zzatu implements zzavg {
    private static final zzxb zzb;
    private static volatile zzavn zze;
    private int zzf;
    private long zzg;
    private long zzh;

    static {
        zzxb zzxbVar = new zzxb();
        zzb = zzxbVar;
        zzatu.zzaE(zzxb.class, zzxbVar);
    }

    private zzxb() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzxb();
        }
        zzwv zzwvVar = null;
        if (i11 == 4) {
            return new zzxa(zzwvVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzxb.class) {
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
