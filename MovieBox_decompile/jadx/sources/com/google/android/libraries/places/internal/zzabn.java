package com.google.android.libraries.places.internal;

public final class zzabn extends zzatu implements zzavg {
    private static final zzabn zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private zzabu zzh;
    private zzabh zzi;

    static {
        zzabn zzabnVar = new zzabn();
        zzb = zzabnVar;
        zzatu.zzaE(zzabn.class, zzabnVar);
    }

    private zzabn() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", zzabm.zza, "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzabn();
        }
        zzabf zzabfVar = null;
        if (i11 == 4) {
            return new zzabl(zzabfVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzabn.class) {
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
