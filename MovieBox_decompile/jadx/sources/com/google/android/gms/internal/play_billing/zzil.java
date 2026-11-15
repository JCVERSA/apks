package com.google.android.gms.internal.play_billing;

public final class zzil extends zzex implements zzgd {
    private static final zzil zzb;
    private int zzd;
    private String zze = "";

    static {
        zzil zzilVar = new zzil();
        zzb = zzilVar;
        zzex.zzp(zzil.class, zzilVar);
    }

    private zzil() {
    }

    @Override
    protected final Object zzu(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzex.zzm(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i11 == 3) {
            return new zzil();
        }
        zzij zzijVar = null;
        if (i11 == 4) {
            return new zzik(zzijVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
