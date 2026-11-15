package com.google.android.gms.internal.play_billing;

public final class zziz extends zzex implements zzgd {
    private static final zziz zzb;
    private int zzd;
    private int zze;

    static {
        zziz zzizVar = new zziz();
        zzb = zzizVar;
        zzex.zzp(zziz.class, zzizVar);
    }

    private zziz() {
    }

    public static zziz zzw() {
        return zzb;
    }

    @Override
    protected final Object zzu(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzex.zzm(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zziy.zza});
        }
        if (i11 == 3) {
            return new zziz();
        }
        zziw zziwVar = null;
        if (i11 == 4) {
            return new zzix(zziwVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
