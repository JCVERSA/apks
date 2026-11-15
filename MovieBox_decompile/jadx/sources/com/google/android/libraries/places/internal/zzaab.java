package com.google.android.libraries.places.internal;

public final class zzaab extends zzatu implements zzavg {
    private static final zzaab zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private long zzh;

    static {
        zzaab zzaabVar = new zzaab();
        zzb = zzaabVar;
        zzatu.zzaE(zzaab.class, zzaabVar);
    }

    private zzaab() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001", new Object[]{"zzf", "zzg", zzaaf.zza, "zzh"});
        }
        if (i11 == 3) {
            return new zzaab();
        }
        zzzg zzzgVar = null;
        if (i11 == 4) {
            return new zzaaa(zzzgVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaab.class) {
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
