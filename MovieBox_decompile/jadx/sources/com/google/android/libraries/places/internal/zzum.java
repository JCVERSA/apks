package com.google.android.libraries.places.internal;

public final class zzum extends zzatu implements zzavg {
    private static final zzum zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private zzul zzh;

    static {
        zzum zzumVar = new zzum();
        zzb = zzumVar;
        zzatu.zzaE(zzum.class, zzumVar);
    }

    private zzum() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zzf", "zzg", zzui.zza, "zzh"});
        }
        if (i11 == 3) {
            return new zzum();
        }
        zzug zzugVar = null;
        if (i11 == 4) {
            return new zzuh(zzugVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzum.class) {
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
