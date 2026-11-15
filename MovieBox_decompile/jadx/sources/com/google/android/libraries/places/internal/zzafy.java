package com.google.android.libraries.places.internal;

public final class zzafy extends zzatu implements zzavg {
    private static final zzafy zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzafy zzafyVar = new zzafy();
        zzb = zzafyVar;
        zzatu.zzaE(zzafy.class, zzafyVar);
    }

    private zzafy() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဋ\u0001", new Object[]{"zzf", "zzg", zzafx.zza, "zzh"});
        }
        if (i11 == 3) {
            return new zzafy();
        }
        zzadu zzaduVar = null;
        if (i11 == 4) {
            return new zzafw(zzaduVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzafy.class) {
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
