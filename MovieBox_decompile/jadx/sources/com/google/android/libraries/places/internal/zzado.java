package com.google.android.libraries.places.internal;

public final class zzado extends zzatu implements zzavg {
    private static final zzado zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private long zzh;

    static {
        zzado zzadoVar = new zzado();
        zzb = zzadoVar;
        zzatu.zzaE(zzado.class, zzadoVar);
    }

    private zzado() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဃ\u0001", new Object[]{"zzf", "zzg", zzadn.zza, "zzh"});
        }
        if (i11 == 3) {
            return new zzado();
        }
        zzabf zzabfVar = null;
        if (i11 == 4) {
            return new zzadm(zzabfVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzado.class) {
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
