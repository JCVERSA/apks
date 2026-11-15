package com.google.android.gms.internal.play_billing;

public final class zzic extends zzex implements zzgd {
    private static final zzic zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;

    static {
        zzic zzicVar = new zzic();
        zzb = zzicVar;
        zzex.zzp(zzic.class, zzicVar);
    }

    private zzic() {
    }

    public static zzib zzv() {
        return (zzib) zzb.zzg();
    }

    static void zzx(zzic zzicVar, zzis zzisVar) {
        zzisVar.getClass();
        zzicVar.zzf = zzisVar;
        zzicVar.zze = 2;
    }

    static void zzy(zzic zzicVar, int i10) {
        zzicVar.zzg = i10 - 1;
        zzicVar.zzd |= 1;
    }

    @Override
    protected final Object zzu(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzex.zzm(zzb, "\u0001\u0002\u0001\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", zzhz.zza, zzis.class});
        }
        if (i11 == 3) {
            return new zzic();
        }
        zzia zziaVar = null;
        if (i11 == 4) {
            return new zzib(zziaVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
