package com.google.android.libraries.places.internal;

public final class zzst extends zzatu implements zzavg {
    private static final zzst zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzh;
    private int zzi;
    private int zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private String zzg = "";
    private String zzj = "";

    static {
        zzst zzstVar = new zzst();
        zzb = zzstVar;
        zzatu.zzaE(zzst.class, zzstVar);
    }

    private zzst() {
    }

    public static zzso zza() {
        return (zzso) zzb.zzar();
    }

    static void zzd(zzst zzstVar, String str) {
        zzstVar.zzf |= 1;
        zzstVar.zzg = str;
    }

    static void zze(zzst zzstVar, int i10) {
        zzstVar.zzf |= 2;
        zzstVar.zzh = i10;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003င\u0002\u0004ဈ\u0003\u0005င\u0004\u0006᠌\u0005\u0007᠌\u0006\b᠌\u0007\t᠌\b", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", zzsp.zza, "zzm", zzsr.zza, "zzn", zzsq.zza, "zzo", zzss.zza});
        }
        if (i11 == 3) {
            return new zzst();
        }
        zzsn zzsnVar = null;
        if (i11 == 4) {
            return new zzso(zzsnVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzst.class) {
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
