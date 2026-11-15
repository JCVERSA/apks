package com.google.android.libraries.places.internal;

public final class zzabh extends zzatu implements zzavg {
    private static final zzabh zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;

    static {
        zzabh zzabhVar = new zzabh();
        zzb = zzabhVar;
        zzatu.zzaE(zzabh.class, zzabhVar);
    }

    private zzabh() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001င\u0000", new Object[]{"zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzabh();
        }
        zzabf zzabfVar = null;
        if (i11 == 4) {
            return new zzabg(zzabfVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzabh.class) {
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
