package com.google.android.libraries.places.internal;

public final class zzvi extends zzatu implements zzavg {
    private static final zzvi zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzauc zzg = zzatu.zzax();
    private zzco zzh;

    static {
        zzvi zzviVar = new zzvi();
        zzb = zzviVar;
        zzatu.zzaE(zzvi.class, zzviVar);
    }

    private zzvi() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zzf", "zzg", zzvg.class, "zzh"});
        }
        if (i11 == 3) {
            return new zzvi();
        }
        zzup zzupVar = null;
        if (i11 == 4) {
            return new zzvh(zzupVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzvi.class) {
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
