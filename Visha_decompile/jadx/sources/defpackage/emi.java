package defpackage;

import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.p8;
import com.google.android.gms.internal.ads.q8;
import com.google.android.gms.internal.ads.r8;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import java.security.GeneralSecurityException;

public abstract class emi {
    public static final eri a;
    public static final zii b;
    public static final vii c;
    public static final mhi d;
    public static final ihi e;

    static {
        eri eriVarB = fki.b("type.googleapis.com/google.crypto.tink.AesCmacKey");
        a = eriVarB;
        b = zii.b(new xii() {
            @Override
            public final yji a(p9i p9iVar) {
                return emi.b((ski) p9iVar);
            }
        }, ski.class, vji.class);
        c = vii.b(new tii() {
            @Override
            public final p9i a(yji yjiVar) {
                return emi.d((vji) yjiVar);
            }
        }, eriVarB, vji.class);
        d = mhi.b(new khi() {
            @Override
            public final yji a(b9i b9iVar, t9i t9iVar) {
                return emi.a((kki) b9iVar, t9iVar);
            }
        }, kki.class, uji.class);
        e = ihi.b(new ehi() {
            @Override
            public final b9i a(yji yjiVar, t9i t9iVar) {
                return emi.c((uji) yjiVar, t9iVar);
            }
        }, eriVarB, uji.class);
    }

    public static uji a(kki kkiVar, t9i t9iVar) {
        rmi rmiVarC0 = p8.c0();
        rmiVarC0.w(g(kkiVar.d()));
        byte[] bArrD = kkiVar.e().d(t9iVar);
        rmiVarC0.v(zzgwn.zzv(bArrD, 0, bArrD.length));
        return uji.a("type.googleapis.com/google.crypto.tink.AesCmacKey", ((p8) rmiVarC0.q()).g(), zzgsn.SYMMETRIC, h(kkiVar.d().f()), kkiVar.f());
    }

    public static vji b(ski skiVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w("type.googleapis.com/google.crypto.tink.AesCmacKey");
        tmi tmiVarC0 = q8.c0();
        tmiVarC0.w(g(skiVar));
        tmiVarC0.v(skiVar.c());
        noiVarB0.x(((q8) tmiVarC0.q()).g());
        noiVarB0.v(h(skiVar.f()));
        return vji.b((k9) noiVarB0.q());
    }

    public static kki c(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        if (!ujiVar.f().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseKey");
        }
        try {
            p8 p8VarE0 = p8.e0(ujiVar.d(), esi.a());
            if (p8VarE0.b0() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            pki pkiVarE = ski.e();
            pkiVarE.a(p8VarE0.g0().zzd());
            pkiVarE.b(p8VarE0.f0().b0());
            pkiVarE.c(f(ujiVar.c()));
            ski skiVarD = pkiVarE.d();
            gki gkiVarC = kki.c();
            gkiVarC.c(skiVarD);
            gkiVarC.a(fri.b(p8VarE0.g0().zzA(), t9iVar));
            gkiVarC.b(ujiVar.e());
            return gkiVarC.d();
        } catch (zzgyk | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing AesCmacKey failed");
        }
    }

    public static ski d(vji vjiVar) throws GeneralSecurityException {
        if (!vjiVar.c().h0().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseParameters: ".concat(String.valueOf(vjiVar.c().h0())));
        }
        try {
            q8 q8VarE0 = q8.e0(vjiVar.c().g0(), esi.a());
            pki pkiVarE = ski.e();
            pkiVarE.a(q8VarE0.b0());
            pkiVarE.b(q8VarE0.f0().b0());
            pkiVarE.c(f(vjiVar.c().f0()));
            return pkiVarE.d();
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing AesCmacParameters failed: ", e2);
        }
    }

    public static void e(qii qiiVar) {
        qiiVar.i(b);
        qiiVar.h(c);
        qiiVar.g(d);
        qiiVar.f(e);
    }

    public static qki f(zzgtt zzgttVar) throws GeneralSecurityException {
        int iOrdinal = zzgttVar.ordinal();
        if (iOrdinal == 1) {
            return qki.b;
        }
        if (iOrdinal == 2) {
            return qki.d;
        }
        if (iOrdinal == 3) {
            return qki.e;
        }
        if (iOrdinal == 4) {
            return qki.c;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgttVar.zza());
    }

    public static r8 g(ski skiVar) {
        vmi vmiVarC0 = r8.c0();
        vmiVarC0.v(skiVar.b());
        return (r8) vmiVarC0.q();
    }

    public static zzgtt h(qki qkiVar) throws GeneralSecurityException {
        if (qki.b.equals(qkiVar)) {
            return zzgtt.TINK;
        }
        if (qki.c.equals(qkiVar)) {
            return zzgtt.CRUNCHY;
        }
        if (qki.e.equals(qkiVar)) {
            return zzgtt.RAW;
        }
        if (qki.d.equals(qkiVar)) {
            return zzgtt.LEGACY;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(qkiVar)));
    }
}
