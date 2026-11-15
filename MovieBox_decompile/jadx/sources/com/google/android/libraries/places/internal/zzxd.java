package com.google.android.libraries.places.internal;

public final class zzxd extends zzatu implements zzavg {
    private static final zzxd zzb;
    private static volatile zzavn zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;

    static {
        zzxd zzxdVar = new zzxd();
        zzb = zzxdVar;
        zzatu.zzaE(zzxd.class, zzxdVar);
    }

    private zzxd() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003င\u0002\u0004င\u0003", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i11 == 3) {
            return new zzxd();
        }
        zzwv zzwvVar = null;
        if (i11 == 4) {
            return new zzxc(zzwvVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzxd.class) {
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
