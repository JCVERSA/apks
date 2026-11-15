package com.google.android.libraries.places.internal;

public final class zzafv extends zzatu implements zzavg {
    private static final zzafv zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private int zzh = 1;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private boolean zzs;
    private int zzt;
    private int zzu;
    private int zzv;

    static {
        zzafv zzafvVar = new zzafv();
        zzb = zzafvVar;
        zzatu.zzaE(zzafv.class, zzafvVar);
    }

    private zzafv() {
    }

    public static zzafs zza() {
        return (zzafs) zzb.zzar();
    }

    static void zzd(zzafv zzafvVar, boolean z10) {
        zzafvVar.zzf |= 4;
        zzafvVar.zzi = z10;
    }

    static void zze(zzafv zzafvVar, boolean z10) {
        zzafvVar.zzf |= 8;
        zzafvVar.zzj = z10;
    }

    static void zzf(zzafv zzafvVar, boolean z10) {
        zzafvVar.zzf |= 16;
        zzafvVar.zzk = z10;
    }

    static void zzg(zzafv zzafvVar, int i10) {
        zzafvVar.zzf |= 32;
        zzafvVar.zzl = i10;
    }

    static void zzh(zzafv zzafvVar, int i10) {
        zzafvVar.zzf |= 64;
        zzafvVar.zzm = i10;
    }

    static void zzi(zzafv zzafvVar, int i10) {
        zzafvVar.zzf |= 128;
        zzafvVar.zzn = i10;
    }

    static void zzj(zzafv zzafvVar, int i10) {
        zzafvVar.zzf |= 256;
        zzafvVar.zzo = i10;
    }

    static void zzk(zzafv zzafvVar, int i10) {
        zzafvVar.zzf |= 512;
        zzafvVar.zzp = i10;
    }

    static void zzl(zzafv zzafvVar, int i10) {
        zzafvVar.zzf |= 1024;
        zzafvVar.zzq = i10;
    }

    static void zzm(zzafv zzafvVar, int i10) {
        zzafvVar.zzf |= 2048;
        zzafvVar.zzr = i10;
    }

    static void zzn(zzafv zzafvVar, boolean z10) {
        zzafvVar.zzf |= 4096;
        zzafvVar.zzs = z10;
    }

    static void zzo(zzafv zzafvVar, int i10) {
        zzafvVar.zzf |= 8192;
        zzafvVar.zzt = i10;
    }

    static void zzp(zzafv zzafvVar, int i10) {
        zzafvVar.zzg = i10 - 1;
        zzafvVar.zzf |= 1;
    }

    static void zzq(zzafv zzafvVar, int i10) {
        zzafvVar.zzh = i10;
        zzafvVar.zzf |= 2;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0010\u0000\u0001\u0001\u0011\u0010\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဋ\u0005\u0007ဋ\u0006\bဋ\u0007\nဋ\t\u000bဋ\n\fဋ\u000b\rဇ\f\u000eဋ\r\u000fဋ\b\u0010ဋ\u000e\u0011᠌\u000f", new Object[]{"zzf", "zzg", zzafu.zza, "zzh", zzafr.zza, "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzp", "zzq", "zzr", "zzs", "zzt", "zzo", "zzu", "zzv", zzaft.zza});
        }
        if (i11 == 3) {
            return new zzafv();
        }
        zzadu zzaduVar = null;
        if (i11 == 4) {
            return new zzafs(zzaduVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzafv.class) {
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
