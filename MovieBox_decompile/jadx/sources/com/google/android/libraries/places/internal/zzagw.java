package com.google.android.libraries.places.internal;

public final class zzagw extends zzatu implements zzavg {
    private static final zzagw zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzafe zzg;
    private int zzh;
    private int zzi;
    private zzaho zzj;

    static {
        zzagw zzagwVar = new zzagw();
        zzb = zzagwVar;
        zzatu.zzaE(zzagw.class, zzagwVar);
    }

    private zzagw() {
    }

    public static zzagu zza() {
        return (zzagu) zzb.zzar();
    }

    static void zzd(zzagw zzagwVar, int i10) {
        zzagwVar.zzf |= 4;
        zzagwVar.zzi = i10;
    }

    static void zze(zzagw zzagwVar, zzaho zzahoVar) {
        zzahoVar.getClass();
        zzagwVar.zzj = zzahoVar;
        zzagwVar.zzf |= 8;
    }

    static void zzf(zzagw zzagwVar, int i10) {
        zzagwVar.zzh = i10 - 1;
        zzagwVar.zzf |= 2;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003င\u0002\u0004ဉ\u0003", new Object[]{"zzf", "zzg", "zzh", zzagv.zza, "zzi", "zzj"});
        }
        if (i11 == 3) {
            return new zzagw();
        }
        zzadu zzaduVar = null;
        if (i11 == 4) {
            return new zzagu(zzaduVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzagw.class) {
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
