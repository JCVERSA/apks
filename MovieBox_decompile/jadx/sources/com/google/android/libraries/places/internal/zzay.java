package com.google.android.libraries.places.internal;

public final class zzay extends zzatu implements zzavg {
    private static final zzay zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzco zzg;
    private zzai zzh;
    private zzbc zzi;

    static {
        zzay zzayVar = new zzay();
        zzb = zzayVar;
        zzatu.zzaE(zzay.class, zzayVar);
    }

    private zzay() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0001\u0002ဉ\u0002\u0003ဉ\u0000", new Object[]{"zzf", "zzh", "zzi", "zzg"});
        }
        if (i11 == 3) {
            return new zzay();
        }
        zzaw zzawVar = null;
        if (i11 == 4) {
            return new zzax(zzawVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzay.class) {
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
