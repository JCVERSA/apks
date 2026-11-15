package com.google.android.libraries.places.internal;

public final class zzsy extends zzatu implements zzavg {
    private static final zzsy zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zztg zzg;
    private int zzh;

    static {
        zzsy zzsyVar = new zzsy();
        zzb = zzsyVar;
        zzatu.zzaE(zzsy.class, zzsyVar);
    }

    private zzsy() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဋ\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzsy();
        }
        zzsu zzsuVar = null;
        if (i11 == 4) {
            return new zzsx(zzsuVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzsy.class) {
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
