package com.google.android.libraries.places.internal;

public final class zzcy extends zzatu implements zzavg {
    private static final zzcy zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private zzauc zzh = zzatu.zzax();
    private zzauc zzi = zzatu.zzax();
    private zzauc zzj = zzatu.zzax();
    private zzauc zzk = zzatu.zzax();
    private zzauc zzl = zzatu.zzax();
    private zzauc zzm = zzatu.zzax();

    static {
        zzcy zzcyVar = new zzcy();
        zzb = zzcyVar;
        zzatu.zzaE(zzcy.class, zzcyVar);
    }

    private zzcy() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0007\u0000\u0001\u0001✐\u0007\u0000\u0006\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u001b\u0005\u001b\u0006\u001b✐᠌\u0000", new Object[]{"zzf", "zzh", zzdd.class, "zzi", zzdg.class, "zzj", zzdr.class, "zzk", zzdo.class, "zzl", zzdu.class, "zzm", zzdm.class, "zzg", zzcx.zza});
        }
        if (i11 == 3) {
            return new zzcy();
        }
        zzcv zzcvVar = null;
        if (i11 == 4) {
            return new zzcw(zzcvVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzcy.class) {
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
