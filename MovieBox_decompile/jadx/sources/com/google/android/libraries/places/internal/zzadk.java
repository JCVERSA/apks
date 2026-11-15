package com.google.android.libraries.places.internal;

public final class zzadk extends zzatu implements zzavg {
    private static final zzadk zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;

    static {
        zzadk zzadkVar = new zzadk();
        zzb = zzadkVar;
        zzatu.zzaE(zzadk.class, zzadkVar);
    }

    private zzadk() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzf", "zzg", zzadj.zza});
        }
        if (i11 == 3) {
            return new zzadk();
        }
        zzabf zzabfVar = null;
        if (i11 == 4) {
            return new zzadi(zzabfVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzadk.class) {
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
