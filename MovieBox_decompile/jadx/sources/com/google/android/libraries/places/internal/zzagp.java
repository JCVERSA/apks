package com.google.android.libraries.places.internal;

public final class zzagp extends zzatu implements zzavg {
    private static final zzagp zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzauc zzg = zzatu.zzax();
    private int zzh;
    private int zzi;
    private zzaho zzj;

    static {
        zzagp zzagpVar = new zzagp();
        zzb = zzagpVar;
        zzatu.zzaE(zzagp.class, zzagpVar);
    }

    private zzagp() {
    }

    public static zzago zza() {
        return (zzago) zzb.zzar();
    }

    static void zzd(zzagp zzagpVar, int i10) {
        zzagpVar.zzf |= 2;
        zzagpVar.zzi = 1;
    }

    static void zze(zzagp zzagpVar, zzaho zzahoVar) {
        zzahoVar.getClass();
        zzagpVar.zzj = zzahoVar;
        zzagpVar.zzf |= 4;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001a\u0002᠌\u0000\u0003ဋ\u0001\u0004ဉ\u0002", new Object[]{"zzf", "zzg", "zzh", zzaej.zza, "zzi", "zzj"});
        }
        if (i11 == 3) {
            return new zzagp();
        }
        zzadu zzaduVar = null;
        if (i11 == 4) {
            return new zzago(zzaduVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzagp.class) {
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
