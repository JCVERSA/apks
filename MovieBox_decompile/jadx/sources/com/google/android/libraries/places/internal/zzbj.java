package com.google.android.libraries.places.internal;

public final class zzbj extends zzatu implements zzavg {
    private static final zzbj zzb;
    private static volatile zzavn zze;
    private int zzf;
    private float zzg;
    private float zzh;
    private float zzi;
    private int zzj;
    private long zzk;
    private float zzl;

    static {
        zzbj zzbjVar = new zzbj();
        zzb = zzbjVar;
        zzatu.zzaE(zzbj.class, zzbjVar);
    }

    private zzbj() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ခ\u0000\u0002ခ\u0001\u0003ခ\u0002\u0004င\u0003\u0005ဂ\u0004\u0006ခ\u0005", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i11 == 3) {
            return new zzbj();
        }
        zzbg zzbgVar = null;
        if (i11 == 4) {
            return new zzbi(zzbgVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzbj.class) {
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
