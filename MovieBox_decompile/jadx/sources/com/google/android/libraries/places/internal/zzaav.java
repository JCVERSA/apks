package com.google.android.libraries.places.internal;

public final class zzaav extends zzatu implements zzavg {
    private static final zzaav zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private String zzi = "";

    static {
        zzaav zzaavVar = new zzaav();
        zzb = zzaavVar;
        zzatu.zzaE(zzaav.class, zzaavVar);
    }

    private zzaav() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003ဈ\u0002", new Object[]{"zzf", "zzg", zzaau.zza, "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzaav();
        }
        zzzg zzzgVar = null;
        if (i11 == 4) {
            return new zzaat(zzzgVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaav.class) {
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
