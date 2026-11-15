package com.google.android.libraries.places.internal;

public final class zzawl extends zzatu implements zzavg {
    private static final zzawl zzb;
    private static volatile zzavn zze;
    private long zzf;
    private int zzg;

    static {
        zzawl zzawlVar = new zzawl();
        zzb = zzawlVar;
        zzatu.zzaE(zzawl.class, zzawlVar);
    }

    private zzawl() {
    }

    public static zzawk zzf() {
        return (zzawk) zzb.zzar();
    }

    public static zzawl zzh() {
        return zzb;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return new zzavr(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"zzf", "zzg"});
        }
        if (i11 == 3) {
            return new zzawl();
        }
        zzawj zzawjVar = null;
        if (i11 == 4) {
            return new zzawk(zzawjVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzawl.class) {
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
        return this.zzg;
    }

    public final long zze() {
        return this.zzf;
    }
}
