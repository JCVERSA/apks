package com.google.android.gms.internal.play_billing;

public final class zzis extends zzex implements zzgd {
    private static final zzis zzb;
    private int zzd;
    private int zze;

    static {
        zzis zzisVar = new zzis();
        zzb = zzisVar;
        zzex.zzp(zzis.class, zzisVar);
    }

    private zzis() {
    }

    public static zziq zzv() {
        return (zziq) zzb.zzg();
    }

    static void zzx(zzis zzisVar, int i10) {
        zzisVar.zze = i10 - 1;
        zzisVar.zzd |= 1;
    }

    @Override
    protected final Object zzu(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzex.zzm(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zzir.zza});
        }
        if (i11 == 3) {
            return new zzis();
        }
        zzip zzipVar = null;
        if (i11 == 4) {
            return new zziq(zzipVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
