package defpackage;

public final class v6j extends kli implements k0j {
    private static final v6j zzb;
    private int zzd;
    private int zzh;
    private long zzi;
    private long zzj;
    private boolean zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private int zzs;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private String zzo = "";
    private String zzp = "";
    private String zzq = "";
    private String zzr = "";

    static {
        v6j v6jVar = new v6j();
        zzb = v6jVar;
        kli.f(v6j.class, v6jVar);
    }

    public static void A(v6j v6jVar, String str) {
        str.getClass();
        v6jVar.zzd |= 1024;
        v6jVar.zzo = str;
    }

    public static void B(v6j v6jVar, String str) {
        str.getClass();
        v6jVar.zzd |= 8192;
        v6jVar.zzr = str;
    }

    public static void C(v6j v6jVar, String str) {
        str.getClass();
        v6jVar.zzd |= 4096;
        v6jVar.zzq = str;
    }

    public static void D(v6j v6jVar, String str) {
        str.getClass();
        v6jVar.zzd |= 2048;
        v6jVar.zzp = str;
    }

    public static void E(v6j v6jVar, int i) {
        v6jVar.zzd |= 16384;
        v6jVar.zzs = i;
    }

    public static void F(v6j v6jVar, boolean z) {
        v6jVar.zzd |= 64;
        v6jVar.zzk = z;
    }

    public static void G(v6j v6jVar, String str) {
        str.getClass();
        v6jVar.zzd |= 1;
        v6jVar.zze = str;
    }

    public static void H(v6j v6jVar, String str) {
        v6jVar.zzd |= 2;
        v6jVar.zzf = str;
    }

    public static r6j I() {
        return (r6j) zzb.o();
    }

    public static void K(v6j v6jVar, int i) {
        v6jVar.zzd |= 128;
        v6jVar.zzl = i;
    }

    public static void L(v6j v6jVar, int i) {
        v6jVar.zzd |= 256;
        v6jVar.zzm = i;
    }

    public static void M(v6j v6jVar, int i) {
        v6jVar.zzd |= 8;
        v6jVar.zzh = i;
    }

    public static void N(v6j v6jVar, long j) {
        v6jVar.zzd |= 16;
        v6jVar.zzi = j;
    }

    public static void O(v6j v6jVar, long j) {
        v6jVar.zzd |= 32;
        v6jVar.zzj = j;
    }

    public static void y(v6j v6jVar, long j) {
        v6jVar.zzd |= 512;
        v6jVar.zzn = 926300087L;
    }

    public static void z(v6j v6jVar, String str) {
        str.getClass();
        v6jVar.zzd |= 4;
        v6jVar.zzg = str;
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0002\u0003င\u0003\u0004ဂ\u0004\u0005ဈ\u0001\u0006ဂ\u0005\u0007ဇ\u0006\bင\u0007\tင\b\nဂ\t\u000bဈ\n\fဈ\u000b\rဈ\f\u000eဈ\r\u000fင\u000e", new Object[]{"zzd", "zze", "zzg", "zzh", "zzi", "zzf", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs"});
        }
        if (i2 == 3) {
            return new v6j();
        }
        u6j u6jVar = null;
        if (i2 == 4) {
            return new r6j(u6jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
