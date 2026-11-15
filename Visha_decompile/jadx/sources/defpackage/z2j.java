package defpackage;

import com.google.android.gms.internal.play_billing.zzhm;
import java.util.Map;

public final class z2j extends kli implements k0j {
    private static final z2j zzb;
    private zzhm zzd = zzhm.zza();

    static {
        z2j z2jVar = new z2j();
        zzb = z2jVar;
        kli.f(z2j.class, z2jVar);
    }

    public static Map A(z2j z2jVar) {
        if (!z2jVar.zzd.zze()) {
            z2jVar.zzd = z2jVar.zzd.zzb();
        }
        return z2jVar.zzd;
    }

    public static q2j y() {
        return (q2j) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new r1j(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"zzd", t2j.a});
        }
        if (i2 == 3) {
            return new z2j();
        }
        w2j w2jVar = null;
        if (i2 == 4) {
            return new q2j(w2jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
