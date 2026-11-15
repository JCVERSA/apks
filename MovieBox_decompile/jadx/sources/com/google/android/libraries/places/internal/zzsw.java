package com.google.android.libraries.places.internal;

public final class zzsw extends zzatu implements zzavg {
    private static final zzsw zzb;
    private static volatile zzavn zze;
    private zzauc zzf = zzatu.zzax();

    static {
        zzsw zzswVar = new zzsw();
        zzb = zzswVar;
        zzatu.zzaE(zzsw.class, zzswVar);
    }

    private zzsw() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzf", zzti.class});
        }
        if (i11 == 3) {
            return new zzsw();
        }
        zzsu zzsuVar = null;
        if (i11 == 4) {
            return new zzsv(zzsuVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzsw.class) {
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
