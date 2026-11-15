package com.google.android.libraries.places.internal;

public final class zzaho extends zzatu implements zzavg {
    private static final zzaho zzb;
    private static volatile zzavn zze;
    private zzauc zzf = zzatu.zzax();

    static {
        zzaho zzahoVar = new zzaho();
        zzb = zzahoVar;
        zzatu.zzaE(zzaho.class, zzahoVar);
    }

    private zzaho() {
    }

    public static zzahn zza() {
        return (zzahn) zzb.zzar();
    }

    static void zzd(zzaho zzahoVar, Iterable iterable) {
        zzauc zzaucVar = zzahoVar.zzf;
        if (!zzaucVar.zzc()) {
            zzahoVar.zzf = zzatu.zzay(zzaucVar);
        }
        zzart.zzam(iterable, zzahoVar.zzf);
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzf"});
        }
        if (i11 == 3) {
            return new zzaho();
        }
        zzadu zzaduVar = null;
        if (i11 == 4) {
            return new zzahn(zzaduVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaho.class) {
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
