package com.google.android.libraries.places.internal;

public final class zzaxs extends zzatu implements zzavg {
    private static final zzaxs zzb;
    private static volatile zzavn zze;
    private String zzf = "";
    private String zzg = "";

    static {
        zzaxs zzaxsVar = new zzaxs();
        zzb = zzaxsVar;
        zzatu.zzaE(zzaxs.class, zzaxsVar);
    }

    private zzaxs() {
    }

    public static zzaxs zze() {
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
            return new zzaxs();
        }
        zzaxq zzaxqVar = null;
        if (i11 == 4) {
            return new zzaxr(zzaxqVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaxs.class) {
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

    public final String zzf() {
        return this.zzg;
    }

    public final String zzg() {
        return this.zzf;
    }
}
