package com.google.android.libraries.places.internal;

public final class zzuf extends zzatu implements zzavg {
    private static final zzuf zzb;
    private static volatile zzavn zze;
    private int zzf;
    private String zzg = "";
    private String zzh = "";
    private boolean zzi;

    static {
        zzuf zzufVar = new zzuf();
        zzb = zzufVar;
        zzatu.zzaE(zzuf.class, zzufVar);
    }

    private zzuf() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဇ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzuf();
        }
        zzud zzudVar = null;
        if (i11 == 4) {
            return new zzue(zzudVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzuf.class) {
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
