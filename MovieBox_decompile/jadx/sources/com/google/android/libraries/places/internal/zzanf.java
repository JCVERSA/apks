package com.google.android.libraries.places.internal;

public final class zzanf extends zzatu implements zzavg {
    private static final zzanf zzb;
    private static volatile zzavn zze;
    private String zzf = "";
    private zzauc zzg = zzatu.zzax();

    static {
        zzanf zzanfVar = new zzanf();
        zzb = zzanfVar;
        zzatu.zzaE(zzanf.class, zzanfVar);
    }

    private zzanf() {
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzf", "zzg", zzane.class});
        }
        if (i11 == 3) {
            return new zzanf();
        }
        zzamu zzamuVar = null;
        if (i11 == 4) {
            return new zzanc(zzamuVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzanf.class) {
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
