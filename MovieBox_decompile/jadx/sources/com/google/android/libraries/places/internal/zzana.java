package com.google.android.libraries.places.internal;

public final class zzana extends zzatu implements zzavg {
    private static final zzana zzb;
    private static volatile zzavn zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;

    static {
        zzana zzanaVar = new zzana();
        zzb = zzanaVar;
        zzatu.zzaE(zzana.class, zzanaVar);
    }

    private zzana() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0007\u0002\u0007\u0003\u0007", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzana();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzamz(zzamuVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzana.class) {
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
