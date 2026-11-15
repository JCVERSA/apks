package com.google.android.libraries.places.internal;

public final class zzaqy extends zzatu implements zzavg {
    private static final zzaqy zzb;
    private static volatile zzavn zze;
    private int zzf = 0;
    private Object zzg;

    static {
        zzaqy zzaqyVar = new zzaqy();
        zzb = zzaqyVar;
        zzatu.zzaE(zzaqy.class, zzaqyVar);
    }

    private zzaqy() {
    }

    public static zzaqx zza() {
        return (zzaqx) zzb.zzar();
    }

    static void zzd(zzaqy zzaqyVar, zzamq zzamqVar) {
        zzamqVar.getClass();
        zzaqyVar.zzg = zzamqVar;
        zzaqyVar.zzf = 2;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0005\u0001\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003Ȼ\u0000\u0004<\u0000\u0005Ȼ\u0000", new Object[]{"zzg", "zzf", zzaod.class, zzamq.class, zzaqw.class});
        }
        if (i11 == 3) {
            return new zzaqy();
        }
        zzaqt zzaqtVar = null;
        if (i11 == 4) {
            return new zzaqx(zzaqtVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaqy.class) {
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
