package defpackage;

import com.android.billingclient.BuildConfig;

public final class idh extends kli implements k0j {
    private static final idh zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    static {
        idh idhVar = new idh();
        zzb = idhVar;
        kli.f(idh.class, idhVar);
    }

    public static void A(idh idhVar, String str) {
        idhVar.zzd |= 4;
        idhVar.zzg = str;
    }

    public static void B(idh idhVar, String str) {
        str.getClass();
        idhVar.zzd |= 16;
        idhVar.zzi = str;
    }

    public static void C(idh idhVar, String str) {
        str.getClass();
        idhVar.zzd |= 32;
        idhVar.zzj = str;
    }

    public static void D(idh idhVar, String str) {
        idhVar.zzd |= 8;
        idhVar.zzh = BuildConfig.VERSION_NAME;
    }

    public static void E(idh idhVar, int i) {
        idhVar.zzd |= 1;
        idhVar.zze = 24;
    }

    public static ech y() {
        return (ech) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new idh();
        }
        ieh iehVar = null;
        if (i2 == 4) {
            return new ech(iehVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
