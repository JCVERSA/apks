package com.google.android.libraries.places.internal;

public final class zzcd extends zzatu implements zzavg {
    private static final zzcd zzb;
    private static volatile zzavn zze;
    private int zzf;
    private String zzg = "";
    private String zzh = "";
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        zzcd zzcdVar = new zzcd();
        zzb = zzcdVar;
        zzatu.zzaE(zzcd.class, zzcdVar);
    }

    private zzcd() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005ဇ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i11 == 3) {
            return new zzcd();
        }
        zzcb zzcbVar = null;
        if (i11 == 4) {
            return new zzcc(zzcbVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzcd.class) {
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
