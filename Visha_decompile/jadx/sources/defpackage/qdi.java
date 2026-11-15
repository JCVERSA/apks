package defpackage;

import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.s9;
import com.google.android.gms.internal.ads.t9;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgyk;
import java.security.GeneralSecurityException;

public abstract class qdi {
    public static final eri a;
    public static final zii b;
    public static final vii c;
    public static final mhi d;
    public static final ihi e;

    static {
        eri eriVarB = fki.b("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        a = eriVarB;
        b = zii.b(new xii() {
            @Override
            public final yji a(p9i p9iVar) {
                return qdi.d((ldi) p9iVar);
            }
        }, ldi.class, vji.class);
        c = vii.b(new tii() {
            @Override
            public final p9i a(yji yjiVar) {
                return qdi.b((vji) yjiVar);
            }
        }, eriVarB, vji.class);
        d = mhi.b(new khi() {
            @Override
            public final yji a(b9i b9iVar, t9i t9iVar) {
                return qdi.c((gdi) b9iVar, t9iVar);
            }
        }, gdi.class, uji.class);
        e = ihi.b(new ehi() {
            @Override
            public final b9i a(yji yjiVar, t9i t9iVar) {
                return qdi.a((uji) yjiVar, t9iVar);
            }
        }, eriVarB, uji.class);
    }

    public static gdi a(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        if (!ujiVar.f().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey");
        }
        try {
            s9 s9VarE0 = s9.e0(ujiVar.d(), esi.a());
            if (s9VarE0.b0() == 0) {
                return gdi.c(f(s9VarE0.f0(), ujiVar.c()), ujiVar.e());
            }
            throw new GeneralSecurityException("KmsEnvelopeAeadKeys are only accepted with version 0, got " + String.valueOf(s9VarE0));
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKey failed: ", e2);
        }
    }

    public static ldi b(vji vjiVar) throws GeneralSecurityException {
        if (!vjiVar.c().h0().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: ".concat(String.valueOf(vjiVar.c().h0())));
        }
        try {
            return f(t9.f0(vjiVar.c().g0(), esi.a()), vjiVar.c().f0());
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e2);
        }
    }

    public static uji c(gdi gdiVar, t9i t9iVar) {
        epi epiVarC0 = s9.c0();
        epiVarC0.v(g(gdiVar.d()));
        return uji.a("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", ((s9) epiVarC0.q()).g(), zzgsn.REMOTE, h(gdiVar.d().c()), gdiVar.e());
    }

    public static vji d(ldi ldiVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        noiVarB0.x(g(ldiVar).g());
        noiVarB0.v(h(ldiVar.c()));
        return vji.b((k9) noiVarB0.q());
    }

    public static void e(qii qiiVar) {
        qiiVar.i(b);
        qiiVar.h(c);
        qiiVar.g(d);
        qiiVar.f(e);
    }

    public static ldi f(t9 t9Var, zzgtt zzgttVar) throws GeneralSecurityException {
        idi idiVar;
        jdi jdiVar;
        noi noiVarB0 = k9.b0();
        noiVarB0.w(t9Var.b0().h0());
        noiVarB0.x(t9Var.b0().g0());
        noiVarB0.v(zzgtt.RAW);
        p9i p9iVarA = x9i.a(((k9) noiVarB0.q()).l());
        if (p9iVarA instanceof wbi) {
            idiVar = idi.b;
        } else if (p9iVarA instanceof pci) {
            idiVar = idi.d;
        } else if (p9iVarA instanceof oei) {
            idiVar = idi.c;
        } else if (p9iVarA instanceof bbi) {
            idiVar = idi.e;
        } else if (p9iVarA instanceof lbi) {
            idiVar = idi.f;
        } else {
            if (!(p9iVarA instanceof jci)) {
                throw new GeneralSecurityException("Unsupported DEK parameters when parsing ".concat(p9iVarA.toString()));
            }
            idiVar = idi.g;
        }
        hdi hdiVar = new hdi(null);
        int iOrdinal = zzgttVar.ordinal();
        if (iOrdinal == 1) {
            jdiVar = jdi.b;
        } else {
            if (iOrdinal != 3) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgttVar.zza());
            }
            jdiVar = jdi.c;
        }
        hdiVar.d(jdiVar);
        hdiVar.c(t9Var.g0());
        hdiVar.a((jai) p9iVarA);
        hdiVar.b(idiVar);
        return hdiVar.e();
    }

    public static t9 g(ldi ldiVar) throws GeneralSecurityException {
        try {
            k9 k9VarE0 = k9.e0(x9i.b(ldiVar.b()), esi.a());
            gpi gpiVarC0 = t9.c0();
            gpiVarC0.w(ldiVar.d());
            gpiVarC0.v(k9VarE0);
            return (t9) gpiVarC0.q();
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e2);
        }
    }

    public static zzgtt h(jdi jdiVar) throws GeneralSecurityException {
        if (jdi.b.equals(jdiVar)) {
            return zzgtt.TINK;
        }
        if (jdi.c.equals(jdiVar)) {
            return zzgtt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(jdiVar)));
    }
}
