package com.google.android.libraries.places.internal;

public final class zzamj extends zzatu implements zzavg {
    private static final zzamj zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;

    static {
        zzamj zzamjVar = new zzamj();
        zzb = zzamjVar;
        zzatu.zzaE(zzamj.class, zzamjVar);
    }

    private zzamj() {
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
            return zzatu.zzaB(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0004", new Object[]{"zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzamj();
        }
        zzalz zzalzVar = null;
        if (i11 == 4) {
            return new zzami(zzalzVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzamj.class) {
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
        return this.zzf;
    }
}
