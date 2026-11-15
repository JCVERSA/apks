package com.google.android.libraries.places.internal;

public final class zzaoa extends zzatu implements zzavg {
    private static final zzaoa zzb;
    private static volatile zzavn zze;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";

    static {
        zzaoa zzaoaVar = new zzaoa();
        zzb = zzaoaVar;
        zzatu.zzaE(zzaoa.class, zzaoaVar);
    }

    private zzaoa() {
    }

    public static zzanz zza() {
        return (zzanz) zzb.zzar();
    }

    public static zzaoa zzd() {
        return zzb;
    }

    static void zzf(zzaoa zzaoaVar, String str) {
        str.getClass();
        zzaoaVar.zzi = str;
    }

    static void zzg(zzaoa zzaoaVar, String str) {
        str.getClass();
        zzaoaVar.zzg = str;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new zzaoa();
        }
        zzany zzanyVar = null;
        if (i11 == 4) {
            return new zzanz(zzanyVar);
        }
        if (i11 == 5) {
            return zzb;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zze;
        if (zzatpVar == null) {
            synchronized (zzaoa.class) {
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
