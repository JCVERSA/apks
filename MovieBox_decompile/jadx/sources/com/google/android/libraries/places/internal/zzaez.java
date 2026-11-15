package com.google.android.libraries.places.internal;

public final class zzaez extends zzatu implements zzavg {
    private static final zzaez zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private zzaen zzl;
    private zzaeg zzm;
    private zzaeb zzn;
    private zzaip zzo;
    private zzaei zzp;
    private zzael zzq;
    private zzair zzr;
    private zzaiz zzs;
    private zzaiv zzt;
    private int zzu;

    static {
        zzaez zzaezVar = new zzaez();
        zzb = zzaezVar;
        zzatu.zzaE(zzaez.class, zzaezVar);
    }

    private zzaez() {
    }

    public static zzaeu zza() {
        return (zzaeu) zzb.zzar();
    }

    static void zzd(zzaez zzaezVar, int i10) {
        zzaezVar.zzf |= 4;
        zzaezVar.zzi = i10;
    }

    static void zze(zzaez zzaezVar, zzaen zzaenVar) {
        zzaenVar.getClass();
        zzaezVar.zzl = zzaenVar;
        zzaezVar.zzf |= 32;
    }

    static void zzf(zzaez zzaezVar, zzaeb zzaebVar) {
        zzaebVar.getClass();
        zzaezVar.zzn = zzaebVar;
        zzaezVar.zzf |= 128;
    }

    static void zzg(zzaez zzaezVar, zzaei zzaeiVar) {
        zzaeiVar.getClass();
        zzaezVar.zzp = zzaeiVar;
        zzaezVar.zzf |= 512;
    }

    static void zzh(zzaez zzaezVar, zzaiz zzaizVar) {
        zzaizVar.getClass();
        zzaezVar.zzs = zzaizVar;
        zzaezVar.zzf |= 4096;
    }

    static void zzi(zzaez zzaezVar, int i10) {
        zzaezVar.zzg = i10 - 1;
        zzaezVar.zzf |= 1;
    }

    static void zzj(zzaez zzaezVar, int i10) {
        zzaezVar.zzh = i10 - 1;
        zzaezVar.zzf |= 2;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003င\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဉ\u0007\tဉ\b\nဉ\t\u000bဉ\n\fဉ\u000b\rဉ\f\u000eဉ\r\u000f᠌\u000e", new Object[]{"zzf", "zzg", zzaew.zza, "zzh", zzaey.zza, "zzi", "zzj", zzaev.zza, "zzk", zzaet.zza, "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", zzaex.zza});
        }
        if (i11 == 3) {
            return new zzaez();
        }
        zzadu zzaduVar = null;
        if (i11 == 4) {
            return new zzaeu(zzaduVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaez.class) {
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
