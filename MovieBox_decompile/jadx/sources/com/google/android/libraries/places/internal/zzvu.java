package com.google.android.libraries.places.internal;

public final class zzvu extends zzatu implements zzavg {
    private static final zzvu zzb;
    private static volatile zzavn zze;

    static {
        zzvu zzvuVar = new zzvu();
        zzb = zzvuVar;
        zzatu.zzaE(zzvu.class, zzvuVar);
    }

    private zzvu() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        zzvs zzvsVar = null;
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0000", null);
        }
        if (i11 == 3) {
            return new zzvu();
        }
        if (i11 == 4) {
            return new zzvt(zzvsVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzvu.class) {
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
