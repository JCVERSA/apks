package com.google.android.libraries.places.internal;

public final class zzte extends zzatu implements zzavg {
    private static final zzte zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzsy zzg;
    private zztk zzh;
    private zztm zzi;
    private zzwl zzj;
    private int zzk;

    static {
        zzte zzteVar = new zzte();
        zzb = zzteVar;
        zzatu.zzaE(zzte.class, zzteVar);
    }

    private zzte() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဋ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i11 == 3) {
            return new zzte();
        }
        zzsu zzsuVar = null;
        if (i11 == 4) {
            return new zztd(zzsuVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzte.class) {
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
