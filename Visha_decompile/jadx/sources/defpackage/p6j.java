package defpackage;

import com.google.android.gms.internal.play_billing.zzjz;

public final class p6j extends kli implements k0j {
    private static final p6j zzb;
    private int zzd;
    private int zzf;
    private v5j zzi;
    private boolean zzj;
    private boolean zzk;
    private u8j zzl;
    private String zze = "";
    private toi zzg = kli.t();
    private npi zzh = kli.u();

    static {
        p6j p6jVar = new p6j();
        zzb = p6jVar;
        kli.f(p6j.class, p6jVar);
    }

    public static void A(p6j p6jVar, zzjz zzjzVar) {
        zzjzVar.getClass();
        toi toiVar = p6jVar.zzg;
        if (!toiVar.zzc()) {
            int size = toiVar.size();
            p6jVar.zzg = toiVar.d(size + size);
        }
        p6jVar.zzg.zzh(zzjzVar.zza());
    }

    public static void B(p6j p6jVar, v5j v5jVar) {
        v5jVar.getClass();
        p6jVar.zzi = v5jVar;
        p6jVar.zzd |= 4;
    }

    public static void C(p6j p6jVar, String str) {
        p6jVar.zzd |= 1;
        p6jVar.zze = "ProxyBillingBroadcastReceiver";
    }

    public static void D(p6j p6jVar, u8j u8jVar) {
        u8jVar.getClass();
        p6jVar.zzl = u8jVar;
        p6jVar.zzd |= 32;
    }

    public static void E(p6j p6jVar, int i) {
        p6jVar.zzf = i - 1;
        p6jVar.zzd |= 2;
    }

    public static k6j y() {
        return (k6j) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ࠬ\u0004\u001b\u0005ဉ\u0002\u0006ဇ\u0003\u0007ဇ\u0004\bဉ\u0005", new Object[]{"zzd", "zze", "zzf", m6j.a, "zzg", d6j.a, "zzh", h8j.class, "zzi", "zzj", "zzk", "zzl"});
        }
        if (i2 == 3) {
            return new p6j();
        }
        o6j o6jVar = null;
        if (i2 == 4) {
            return new k6j(o6jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
