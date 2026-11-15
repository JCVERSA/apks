package defpackage;

import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.q9;
import com.google.android.gms.internal.ads.r9;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgyk;
import java.security.GeneralSecurityException;

public abstract class fdi {
    public static final eri a;
    public static final zii b;
    public static final vii c;
    public static final mhi d;
    public static final ihi e;

    static {
        eri eriVarB = fki.b("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        a = eriVarB;
        b = zii.b(new xii() {
            @Override
            public final yji a(p9i p9iVar) {
                return fdi.d((adi) p9iVar);
            }
        }, adi.class, vji.class);
        c = vii.b(new tii() {
            @Override
            public final p9i a(yji yjiVar) {
                return fdi.b((vji) yjiVar);
            }
        }, eriVarB, vji.class);
        d = mhi.b(new khi() {
            @Override
            public final yji a(b9i b9iVar, t9i t9iVar) {
                return fdi.c((wci) b9iVar, t9iVar);
            }
        }, wci.class, uji.class);
        e = ihi.b(new ehi() {
            @Override
            public final b9i a(yji yjiVar, t9i t9iVar) {
                return fdi.a((uji) yjiVar, t9iVar);
            }
        }, eriVarB, uji.class);
    }

    public static wci a(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        if (!ujiVar.f().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey");
        }
        try {
            q9 q9VarE0 = q9.e0(ujiVar.d(), esi.a());
            if (q9VarE0.b0() == 0) {
                return wci.c(adi.c(q9VarE0.f0().f0(), f(ujiVar.c())), ujiVar.e());
            }
            throw new GeneralSecurityException("KmsAeadKey are only accepted with version 0, got " + String.valueOf(q9VarE0));
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing KmsAeadKey failed: ", e2);
        }
    }

    public static adi b(vji vjiVar) throws GeneralSecurityException {
        if (!vjiVar.c().h0().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: ".concat(String.valueOf(vjiVar.c().h0())));
        }
        try {
            return adi.c(r9.e0(vjiVar.c().g0(), esi.a()).f0(), f(vjiVar.c().f0()));
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing KmsAeadKeyFormat failed: ", e2);
        }
    }

    public static uji c(wci wciVar, t9i t9iVar) {
        api apiVarC0 = q9.c0();
        cpi cpiVarB0 = r9.b0();
        cpiVarB0.v(wciVar.d().d());
        apiVarC0.v((r9) cpiVarB0.q());
        return uji.a("type.googleapis.com/google.crypto.tink.KmsAeadKey", ((q9) apiVarC0.q()).g(), zzgsn.REMOTE, g(wciVar.d().b()), wciVar.e());
    }

    public static vji d(adi adiVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        cpi cpiVarB0 = r9.b0();
        cpiVarB0.v(adiVar.d());
        noiVarB0.x(((r9) cpiVarB0.q()).g());
        noiVarB0.v(g(adiVar.b()));
        return vji.b((k9) noiVarB0.q());
    }

    public static void e(qii qiiVar) {
        qiiVar.i(b);
        qiiVar.h(c);
        qiiVar.g(d);
        qiiVar.f(e);
    }

    public static xci f(zzgtt zzgttVar) throws GeneralSecurityException {
        int iOrdinal = zzgttVar.ordinal();
        if (iOrdinal == 1) {
            return xci.b;
        }
        if (iOrdinal == 3) {
            return xci.c;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgttVar.zza());
    }

    public static zzgtt g(xci xciVar) throws GeneralSecurityException {
        if (xci.b.equals(xciVar)) {
            return zzgtt.TINK;
        }
        if (xci.c.equals(xciVar)) {
            return zzgtt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(xciVar.toString()));
    }
}
