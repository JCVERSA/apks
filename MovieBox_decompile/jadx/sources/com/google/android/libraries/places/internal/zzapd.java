package com.google.android.libraries.places.internal;

public final class zzapd extends zzatu implements zzavg {
    private static final zzapd zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private zzaxm zzj;
    private boolean zzk;

    static {
        zzapd zzapdVar = new zzapd();
        zzb = zzapdVar;
        zzatu.zzaE(zzapd.class, zzapdVar);
    }

    private zzapd() {
    }

    public static zzapd zzf() {
        return zzb;
    }

    public final int zza() {
        return this.zzg;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0005\u0007\u0006ဉ\u0003", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzk", "zzj"});
        }
        if (i11 == 3) {
            return new zzapd();
        }
        zzaok zzaokVar = null;
        if (i11 == 4) {
            return new zzapc(zzaokVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzapd.class) {
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

    public final int zzc() {
        return this.zzh;
    }

    public final int zzd() {
        return this.zzi;
    }

    public final zzaxm zzg() {
        zzaxm zzaxmVar = this.zzj;
        return zzaxmVar == null ? zzaxm.zzh() : zzaxmVar;
    }

    public final boolean zzh() {
        return this.zzk;
    }

    public final boolean zzi() {
        return (this.zzf & 8) != 0;
    }
}
