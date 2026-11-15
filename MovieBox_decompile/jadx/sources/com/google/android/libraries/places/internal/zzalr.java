package com.google.android.libraries.places.internal;

public final class zzalr extends zzatu implements zzavg {
    private static final zzalr zzb;
    private static volatile zzavn zze;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";

    static {
        zzalr zzalrVar = new zzalr();
        zzb = zzalrVar;
        zzatu.zzaE(zzalr.class, zzalrVar);
    }

    private zzalr() {
    }

    public static zzalr zzc() {
        return zzb;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzalr();
        }
        zzalp zzalpVar = null;
        if (i11 == 4) {
            return new zzalq(zzalpVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzalr.class) {
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

    public final String zzd() {
        return this.zzf;
    }

    public final String zze() {
        return this.zzh;
    }

    public final String zzf() {
        return this.zzg;
    }
}
