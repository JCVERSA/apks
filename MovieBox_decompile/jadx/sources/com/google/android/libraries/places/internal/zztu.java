package com.google.android.libraries.places.internal;

public final class zztu extends zzatu implements zzavg {
    private static final zztu zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzauc zzg = zzatu.zzax();
    private int zzh;

    static {
        zztu zztuVar = new zztu();
        zzb = zztuVar;
        zzatu.zzaE(zztu.class, zztuVar);
    }

    private zztu() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002င\u0000", new Object[]{"zzf", "zzg", zztp.class, "zzh"});
        }
        if (i11 == 3) {
            return new zztu();
        }
        zztn zztnVar = null;
        if (i11 == 4) {
            return new zztt(zztnVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zztu.class) {
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
