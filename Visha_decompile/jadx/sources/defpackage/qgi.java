package defpackage;

import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.y9;
import com.google.android.gms.internal.ads.z9;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import java.security.GeneralSecurityException;

public abstract class qgi {
    public static final eri a;
    public static final zii b;
    public static final vii c;
    public static final mhi d;
    public static final ihi e;

    static {
        eri eriVarB = fki.b("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        a = eriVarB;
        b = zii.b(new xii() {
            @Override
            public final yji a(p9i p9iVar) {
                return qgi.d((oei) p9iVar);
            }
        }, oei.class, vji.class);
        c = vii.b(new tii() {
            @Override
            public final p9i a(yji yjiVar) {
                return qgi.b((vji) yjiVar);
            }
        }, eriVarB, vji.class);
        d = mhi.b(new khi() {
            @Override
            public final yji a(b9i b9iVar, t9i t9iVar) {
                return qgi.c((iei) b9iVar, t9iVar);
            }
        }, iei.class, uji.class);
        e = ihi.b(new ehi() {
            @Override
            public final b9i a(yji yjiVar, t9i t9iVar) {
                return qgi.a((uji) yjiVar, t9iVar);
            }
        }, eriVarB, uji.class);
    }

    public static iei a(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        if (!ujiVar.f().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey");
        }
        try {
            y9 y9VarE0 = y9.e0(ujiVar.d(), esi.a());
            if (y9VarE0.b0() == 0) {
                return iei.c(f(ujiVar.c()), fri.b(y9VarE0.f0().zzA(), t9iVar), ujiVar.e());
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzgyk unused) {
            throw new GeneralSecurityException("Parsing XChaCha20Poly1305Key failed");
        }
    }

    public static oei b(vji vjiVar) throws GeneralSecurityException {
        if (!vjiVar.c().h0().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(vjiVar.c().h0())));
        }
        try {
            if (z9.e0(vjiVar.c().g0(), esi.a()).b0() == 0) {
                return oei.c(f(vjiVar.c().f0()));
            }
            throw new GeneralSecurityException("Only version 0 parameters are accepted");
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing XChaCha20Poly1305Parameters failed: ", e2);
        }
    }

    public static uji c(iei ieiVar, t9i t9iVar) {
        spi spiVarC0 = y9.c0();
        byte[] bArrD = ieiVar.e().d(t9iVar);
        spiVarC0.v(zzgwn.zzv(bArrD, 0, bArrD.length));
        return uji.a("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", ((y9) spiVarC0.q()).g(), zzgsn.SYMMETRIC, g(ieiVar.d().b()), ieiVar.f());
    }

    public static vji d(oei oeiVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        noiVarB0.x(z9.d0().g());
        noiVarB0.v(g(oeiVar.b()));
        return vji.b((k9) noiVarB0.q());
    }

    public static void e(qii qiiVar) {
        qiiVar.i(b);
        qiiVar.h(c);
        qiiVar.g(d);
        qiiVar.f(e);
    }

    public static nei f(zzgtt zzgttVar) throws GeneralSecurityException {
        int iOrdinal = zzgttVar.ordinal();
        if (iOrdinal == 1) {
            return nei.b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return nei.d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgttVar.zza());
            }
        }
        return nei.c;
    }

    public static zzgtt g(nei neiVar) throws GeneralSecurityException {
        if (nei.b.equals(neiVar)) {
            return zzgtt.TINK;
        }
        if (nei.c.equals(neiVar)) {
            return zzgtt.CRUNCHY;
        }
        if (nei.d.equals(neiVar)) {
            return zzgtt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(neiVar.toString()));
    }
}
