package com.google.android.libraries.places.internal;

public final class zzaqw extends zzatu implements zzavg {
    private static final zzaqw zzb;
    private static volatile zzavn zze;
    private zzaub zzf = zzatu.zzaw();

    static {
        zzaqw zzaqwVar = new zzaqw();
        zzb = zzaqwVar;
        zzatu.zzaE(zzaqw.class, zzaqwVar);
    }

    private zzaqw() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001&", new Object[]{"zzf"});
        }
        if (i11 == 3) {
            return new zzaqw();
        }
        zzaqt zzaqtVar = null;
        if (i11 == 4) {
            return new zzaqv(zzaqtVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaqw.class) {
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
