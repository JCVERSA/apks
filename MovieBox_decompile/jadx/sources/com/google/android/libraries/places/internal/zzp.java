package com.google.android.libraries.places.internal;

public final class zzp extends zzatu implements zzavg {
    private static final zzp zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzcd zzg;
    private int zzh;

    static {
        zzp zzpVar = new zzp();
        zzb = zzpVar;
        zzatu.zzaE(zzp.class, zzpVar);
    }

    private zzp() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001", new Object[]{"zzf", "zzg", "zzh", zzo.zza});
        }
        if (i11 == 3) {
            return new zzp();
        }
        zza zzaVar = null;
        if (i11 == 4) {
            return new zzn(zzaVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzp.class) {
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
