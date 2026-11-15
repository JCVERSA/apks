package com.google.android.libraries.places.internal;

public final class zzane extends zzatu implements zzavg {
    private static final zzane zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;

    static {
        zzane zzaneVar = new zzane();
        zzb = zzaneVar;
        zzatu.zzaE(zzane.class, zzaneVar);
    }

    private zzane() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0004", new Object[]{"zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzane();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzand(zzamuVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzane.class) {
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
