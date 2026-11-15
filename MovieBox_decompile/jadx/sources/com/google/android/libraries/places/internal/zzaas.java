package com.google.android.libraries.places.internal;

public final class zzaas extends zzatu implements zzavg {
    private static final zzaas zzb;
    private static volatile zzavn zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;

    static {
        zzaas zzaasVar = new zzaas();
        zzb = zzaasVar;
        zzatu.zzaE(zzaas.class, zzaasVar);
    }

    private zzaas() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzaas();
        }
        zzzg zzzgVar = null;
        if (i11 == 4) {
            return new zzaar(zzzgVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaas.class) {
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
