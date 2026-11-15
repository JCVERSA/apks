package com.google.android.gms.internal.play_billing;

public final class zzii extends zzex implements zzgd {
    private static final zzii zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private String zzf = "";
    private String zzh = "";

    static {
        zzii zziiVar = new zzii();
        zzb = zziiVar;
        zzex.zzp(zzii.class, zziiVar);
    }

    private zzii() {
    }

    static void zzA(zzii zziiVar, int i10) {
        zziiVar.zzg = i10 - 1;
        zziiVar.zzd |= 4;
    }

    public static zzie zzv() {
        return (zzie) zzb.zzg();
    }

    static void zzx(zzii zziiVar, int i10) {
        zziiVar.zzd |= 1;
        zziiVar.zze = i10;
    }

    static void zzy(zzii zziiVar, String str) {
        str.getClass();
        zziiVar.zzd |= 2;
        zziiVar.zzf = str;
    }

    static void zzz(zzii zziiVar, String str) {
        zziiVar.zzd |= 8;
        zziiVar.zzh = str;
    }

    @Override
    protected final Object zzu(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzex.zzm(zzb, "\u0001\u0004\u0000\u0001\u0001\u0005\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0004᠌\u0002\u0005ဈ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", zzig.zza, "zzh"});
        }
        if (i11 == 3) {
            return new zzii();
        }
        zzid zzidVar = null;
        if (i11 == 4) {
            return new zzie(zzidVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
