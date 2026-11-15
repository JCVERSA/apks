package com.google.android.libraries.places.internal;

import java.util.List;

public final class zzarr extends zzatu implements zzavg {
    private static final zzarr zzb;
    private static volatile zzavn zze;
    private zzauc zzf = zzatu.zzax();
    private zzauc zzg = zzatu.zzax();
    private zzauc zzh = zzatu.zzax();
    private String zzi = "";

    static {
        zzarr zzarrVar = new zzarr();
        zzb = zzarrVar;
        zzatu.zzaE(zzarr.class, zzarrVar);
    }

    private zzarr() {
    }

    public static zzarr zzc() {
        return zzb;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0003\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004Ȉ", new Object[]{"zzf", zzaps.class, "zzg", zzaqs.class, "zzh", zzani.class, "zzi"});
        }
        if (i11 == 3) {
            return new zzarr();
        }
        zzarp zzarpVar = null;
        if (i11 == 4) {
            return new zzarq(zzarpVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzarr.class) {
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

    public final List zzd() {
        return this.zzf;
    }
}
