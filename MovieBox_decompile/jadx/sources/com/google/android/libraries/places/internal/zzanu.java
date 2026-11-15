package com.google.android.libraries.places.internal;

public final class zzanu extends zzatu implements zzavg {
    private static final zzanu zzb;
    private static volatile zzavn zze;
    private zzauc zzf = zzatu.zzax();

    static {
        zzanu zzanuVar = new zzanu();
        zzb = zzanuVar;
        zzatu.zzaE(zzanu.class, zzanuVar);
    }

    private zzanu() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzf", zzant.class});
        }
        if (i11 == 3) {
            return new zzanu();
        }
        zzanq zzanqVar = null;
        if (i11 == 4) {
            return new zzanr(zzanqVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzanu.class) {
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
