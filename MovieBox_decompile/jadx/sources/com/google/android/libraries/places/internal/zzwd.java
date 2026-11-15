package com.google.android.libraries.places.internal;

public final class zzwd extends zzatu implements zzavg {
    private static final zzwd zzb;
    private static volatile zzavn zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private byte zzi = 2;

    static {
        zzwd zzwdVar = new zzwd();
        zzb = zzwdVar;
        zzatu.zzaE(zzwd.class, zzwdVar);
    }

    private zzwd() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return Byte.valueOf(this.zzi);
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001ᔆ\u0000\u0002ᔆ\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i11 == 3) {
            return new zzwd();
        }
        zzwb zzwbVar = null;
        if (i11 == 4) {
            return new zzwc(zzwbVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            this.zzi = obj == null ? (byte) 0 : (byte) 1;
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzwd.class) {
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
