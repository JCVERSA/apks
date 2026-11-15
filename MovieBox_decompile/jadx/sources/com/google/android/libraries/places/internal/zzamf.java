package com.google.android.libraries.places.internal;

import java.util.List;

public final class zzamf extends zzatu implements zzavg {
    private static final zzamf zzb;
    private static volatile zzavn zze;
    private int zzf;
    private zzamd zzi;
    private zzaml zzj;
    private int zzl;
    private String zzg = "";
    private String zzh = "";
    private zzauc zzk = zzatu.zzax();

    static {
        zzamf zzamfVar = new zzamf();
        zzb = zzamfVar;
        zzatu.zzaE(zzamf.class, zzamfVar);
    }

    private zzamf() {
    }

    public static zzamf zze() {
        return zzb;
    }

    public final int zza() {
        return this.zzl;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003ဉ\u0000\u0004ဉ\u0001\u0005Ț\u0006\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i11 == 3) {
            return new zzamf();
        }
        zzalz zzalzVar = null;
        if (i11 == 4) {
            return new zzame(zzalzVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzamf.class) {
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

    public final zzamd zzc() {
        zzamd zzamdVar = this.zzi;
        return zzamdVar == null ? zzamd.zzc() : zzamdVar;
    }

    public final zzaml zzf() {
        zzaml zzamlVar = this.zzj;
        return zzamlVar == null ? zzaml.zze() : zzamlVar;
    }

    public final String zzg() {
        return this.zzh;
    }

    public final List zzh() {
        return this.zzk;
    }
}
