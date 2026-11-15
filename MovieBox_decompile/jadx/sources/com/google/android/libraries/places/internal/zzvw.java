package com.google.android.libraries.places.internal;

public final class zzvw extends zzatu implements zzavg {
    private static final zzvw zzb;
    private static volatile zzavn zze;
    private int zzf = 0;
    private Object zzg;

    static {
        zzvw zzvwVar = new zzvw();
        zzb = zzvwVar;
        zzatu.zzaE(zzvw.class, zzvwVar);
    }

    private zzvw() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000", new Object[]{"zzg", "zzf", zzwa.class, zzvu.class, zzvy.class});
        }
        if (i11 == 3) {
            return new zzvw();
        }
        zzvs zzvsVar = null;
        if (i11 == 4) {
            return new zzvv(zzvsVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzvw.class) {
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
