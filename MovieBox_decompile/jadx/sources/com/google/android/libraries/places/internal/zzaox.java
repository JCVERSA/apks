package com.google.android.libraries.places.internal;

public final class zzaox extends zzatu implements zzavg {
    private static final zzaox zzb;
    private static volatile zzavn zze;
    private String zzf = "";
    private String zzg = "";

    static {
        zzaox zzaoxVar = new zzaox();
        zzb = zzaoxVar;
        zzatu.zzaE(zzaox.class, zzaoxVar);
    }

    private zzaox() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzaox();
        }
        zzaok zzaokVar = null;
        if (i11 == 4) {
            return new zzaow(zzaokVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaox.class) {
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
