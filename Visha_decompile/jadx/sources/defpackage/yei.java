package defpackage;

import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.x8;
import com.google.android.gms.internal.ads.y8;
import com.google.android.gms.internal.ads.z8;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import java.security.GeneralSecurityException;

public abstract class yei {
    public static final eri a;
    public static final zii b;
    public static final vii c;
    public static final mhi d;
    public static final ihi e;

    static {
        eri eriVarB = fki.b("type.googleapis.com/google.crypto.tink.AesEaxKey");
        a = eriVarB;
        b = zii.b(new xii() {
            @Override
            public final yji a(p9i p9iVar) {
                return yei.d((lbi) p9iVar);
            }
        }, lbi.class, vji.class);
        c = vii.b(new tii() {
            @Override
            public final p9i a(yji yjiVar) {
                return yei.b((vji) yjiVar);
            }
        }, eriVarB, vji.class);
        d = mhi.b(new khi() {
            @Override
            public final yji a(b9i b9iVar, t9i t9iVar) {
                return yei.c((ebi) b9iVar, t9iVar);
            }
        }, ebi.class, uji.class);
        e = ihi.b(new ehi() {
            @Override
            public final b9i a(yji yjiVar, t9i t9iVar) {
                return yei.a((uji) yjiVar, t9iVar);
            }
        }, eriVarB, uji.class);
    }

    public static ebi a(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        if (!ujiVar.f().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseKey");
        }
        try {
            x8 x8VarE0 = x8.e0(ujiVar.d(), esi.a());
            if (x8VarE0.b0() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            ibi ibiVarD = lbi.d();
            ibiVarD.b(x8VarE0.g0().zzd());
            ibiVarD.a(x8VarE0.f0().b0());
            ibiVarD.c(16);
            ibiVarD.d(f(ujiVar.c()));
            lbi lbiVarE = ibiVarD.e();
            cbi cbiVarC = ebi.c();
            cbiVarC.c(lbiVarE);
            cbiVarC.b(fri.b(x8VarE0.g0().zzA(), t9iVar));
            cbiVarC.a(ujiVar.e());
            return cbiVarC.d();
        } catch (zzgyk unused) {
            throw new GeneralSecurityException("Parsing AesEaxcKey failed");
        }
    }

    public static lbi b(vji vjiVar) throws GeneralSecurityException {
        if (!vjiVar.c().h0().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseParameters: ".concat(String.valueOf(vjiVar.c().h0())));
        }
        try {
            y8 y8VarE0 = y8.e0(vjiVar.c().g0(), esi.a());
            ibi ibiVarD = lbi.d();
            ibiVarD.b(y8VarE0.b0());
            ibiVarD.a(y8VarE0.f0().b0());
            ibiVarD.c(16);
            ibiVarD.d(f(vjiVar.c().f0()));
            return ibiVarD.e();
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing AesEaxParameters failed: ", e2);
        }
    }

    public static uji c(ebi ebiVar, t9i t9iVar) {
        kni kniVarC0 = x8.c0();
        kniVarC0.w(g(ebiVar.d()));
        byte[] bArrD = ebiVar.e().d(t9iVar);
        kniVarC0.v(zzgwn.zzv(bArrD, 0, bArrD.length));
        return uji.a("type.googleapis.com/google.crypto.tink.AesEaxKey", ((x8) kniVarC0.q()).g(), zzgsn.SYMMETRIC, h(ebiVar.d().e()), ebiVar.f());
    }

    public static vji d(lbi lbiVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w("type.googleapis.com/google.crypto.tink.AesEaxKey");
        mni mniVarC0 = y8.c0();
        mniVarC0.w(g(lbiVar));
        mniVarC0.v(lbiVar.c());
        noiVarB0.x(((y8) mniVarC0.q()).g());
        noiVarB0.v(h(lbiVar.e()));
        return vji.b((k9) noiVarB0.q());
    }

    public static void e(qii qiiVar) {
        qiiVar.i(b);
        qiiVar.h(c);
        qiiVar.g(d);
        qiiVar.f(e);
    }

    public static jbi f(zzgtt zzgttVar) throws GeneralSecurityException {
        int iOrdinal = zzgttVar.ordinal();
        if (iOrdinal == 1) {
            return jbi.b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return jbi.d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgttVar.zza());
            }
        }
        return jbi.c;
    }

    public static z8 g(lbi lbiVar) {
        oni oniVarC0 = z8.c0();
        oniVarC0.v(lbiVar.b());
        return (z8) oniVarC0.q();
    }

    public static zzgtt h(jbi jbiVar) throws GeneralSecurityException {
        if (jbi.b.equals(jbiVar)) {
            return zzgtt.TINK;
        }
        if (jbi.c.equals(jbiVar)) {
            return zzgtt.CRUNCHY;
        }
        if (jbi.d.equals(jbiVar)) {
            return zzgtt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(jbiVar)));
    }
}
