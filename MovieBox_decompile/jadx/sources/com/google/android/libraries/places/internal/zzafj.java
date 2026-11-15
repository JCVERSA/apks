package com.google.android.libraries.places.internal;

public final class zzafj extends zzatu implements zzavg {
    private static final zzafj zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzafe zzi;
    private zzwf zzj;
    private int zzm;
    private int zzn;
    private int zzp;
    private byte zzq = 2;
    private String zzg = "";
    private String zzh = "";
    private int zzk = 1;
    private String zzl = "";
    private String zzo = "";

    static {
        zzafj zzafjVar = new zzafj();
        zzb = zzafjVar;
        zzatu.zzaE(zzafj.class, zzafjVar);
    }

    private zzafj() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return Byte.valueOf(this.zzq);
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0001\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ᐉ\u0003\u0005᠌\u0004\u0006ဈ\u0005\u0007᠌\u0006\bင\u0007\tဈ\b\n᠌\t", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzafg.zza, "zzl", "zzm", zzafi.zza, "zzn", "zzo", "zzp", zzafh.zza});
        }
        if (i11 == 3) {
            return new zzafj();
        }
        zzadu zzaduVar = null;
        if (i11 == 4) {
            return new zzaff(zzaduVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            this.zzq = obj == null ? (byte) 0 : (byte) 1;
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzafj.class) {
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
