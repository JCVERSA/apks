package com.google.android.libraries.places.internal;

public final class zzapp extends zzatu implements zzavg {
    private static final zzapp zzb;
    private static volatile zzavn zze;
    private String zzf = "";
    private String zzg = "";

    static {
        zzapp zzappVar = new zzapp();
        zzb = zzappVar;
        zzatu.zzaE(zzapp.class, zzappVar);
    }

    private zzapp() {
    }

    public static zzapp zzc() {
        return zzb;
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
            return new zzapp();
        }
        zzaok zzaokVar = null;
        if (i11 == 4) {
            return new zzapo(zzaokVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzapp.class) {
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

    public final String zzd() {
        return this.zzg;
    }

    public final String zze() {
        return this.zzf;
    }
}
