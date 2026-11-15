package com.google.android.libraries.places.internal;

public final class zzaei extends zzatu implements zzavg {
    private static final zzaei zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;

    static {
        zzaei zzaeiVar = new zzaei();
        zzb = zzaeiVar;
        zzatu.zzaE(zzaei.class, zzaeiVar);
    }

    private zzaei() {
    }

    public static zzaeh zza() {
        return (zzaeh) zzb.zzar();
    }

    static void zzd(zzaei zzaeiVar, int i10) {
        zzaeiVar.zzf |= 1;
        zzaeiVar.zzg = i10;
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
            return new zzaei();
        }
        zzadu zzaduVar = null;
        if (i11 == 4) {
            return new zzaeh(zzaduVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaei.class) {
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
