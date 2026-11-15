package com.google.android.gms.internal.play_billing;

public final class zzio extends zzex implements zzgd {
    private static final zzio zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";

    static {
        zzio zzioVar = new zzio();
        zzb = zzioVar;
        zzex.zzp(zzio.class, zzioVar);
    }

    private zzio() {
    }

    public static zzin zzv() {
        return (zzin) zzb.zzg();
    }

    static void zzx(zzio zzioVar, String str) {
        str.getClass();
        zzioVar.zzd |= 1;
        zzioVar.zze = str;
    }

    static void zzy(zzio zzioVar, String str) {
        str.getClass();
        zzioVar.zzd |= 2;
        zzioVar.zzf = str;
    }

    @Override
    protected final Object zzu(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzex.zzm(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i11 == 3) {
            return new zzio();
        }
        zzim zzimVar = null;
        if (i11 == 4) {
            return new zzin(zzimVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
