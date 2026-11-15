package com.google.android.libraries.places.internal;

public final class zzyf extends zzatu implements zzavg {
    private static final zzyf zzb;
    private static volatile zzavn zze;
    private int zzf;
    private long zzg;
    private long zzh;
    private int zzi;
    private int zzj;

    static {
        zzyf zzyfVar = new zzyf();
        zzb = zzyfVar;
        zzatu.zzaE(zzyf.class, zzyfVar);
    }

    private zzyf() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003င\u0002\u0004င\u0003", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i11 == 3) {
            return new zzyf();
        }
        zzwv zzwvVar = null;
        if (i11 == 4) {
            return new zzye(zzwvVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzyf.class) {
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
