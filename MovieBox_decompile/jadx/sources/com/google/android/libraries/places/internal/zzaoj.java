package com.google.android.libraries.places.internal;

public final class zzaoj extends zzatu implements zzavg {
    private static final zzaoj zzb;
    private static volatile zzavn zze;
    private String zzf = "";
    private String zzg = "";

    static {
        zzaoj zzaojVar = new zzaoj();
        zzb = zzaojVar;
        zzatu.zzaE(zzaoj.class, zzaojVar);
    }

    private zzaoj() {
    }

    public static zzaoj zzc() {
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
            return new zzaoj();
        }
        zzaoh zzaohVar = null;
        if (i11 == 4) {
            return new zzaoi(zzaohVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaoj.class) {
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
}
