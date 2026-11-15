package com.google.android.libraries.places.internal;

public final class zzaxp extends zzatu implements zzavg {
    private static final zzaxp zzb;
    private static volatile zzavn zze;
    private double zzf;
    private double zzg;

    static {
        zzaxp zzaxpVar = new zzaxp();
        zzb = zzaxpVar;
        zzatu.zzaE(zzaxp.class, zzaxpVar);
    }

    private zzaxp() {
    }

    public static zzaxo zzf() {
        return (zzaxo) zzb.zzar();
    }

    public static zzaxp zzh() {
        return zzb;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0000\u0002\u0000", new Object[]{"zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzaxp();
        }
        zzaxn zzaxnVar = null;
        if (i11 == 4) {
            return new zzaxo(zzaxnVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaxp.class) {
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

    public final double zzc() {
        return this.zzf;
    }

    public final double zze() {
        return this.zzg;
    }
}
