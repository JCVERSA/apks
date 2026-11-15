package com.google.android.libraries.places.internal;

public final class zzwz extends zzatu implements zzavg {
    private static final zzwz zzb;
    private static volatile zzavn zze;
    private zzauc zzf = zzatu.zzax();

    static {
        zzwz zzwzVar = new zzwz();
        zzb = zzwzVar;
        zzatu.zzaE(zzwz.class, zzwzVar);
    }

    private zzwz() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzf", zzyw.class});
        }
        if (i11 == 3) {
            return new zzwz();
        }
        zzwv zzwvVar = null;
        if (i11 == 4) {
            return new zzwy(zzwvVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzwz.class) {
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
