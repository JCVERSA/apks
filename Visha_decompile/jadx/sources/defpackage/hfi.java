package defpackage;

import com.google.android.gms.internal.ads.a9;
import com.google.android.gms.internal.ads.b9;
import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import java.security.GeneralSecurityException;

public abstract class hfi {
    public static final eri a;
    public static final zii b;
    public static final vii c;
    public static final mhi d;
    public static final ihi e;

    static {
        eri eriVarB = fki.b("type.googleapis.com/google.crypto.tink.AesGcmKey");
        a = eriVarB;
        b = zii.b(new xii() {
            @Override
            public final yji a(p9i p9iVar) {
                return hfi.d((wbi) p9iVar);
            }
        }, wbi.class, vji.class);
        c = vii.b(new tii() {
            @Override
            public final p9i a(yji yjiVar) {
                return hfi.b((vji) yjiVar);
            }
        }, eriVarB, vji.class);
        d = mhi.b(new khi() {
            @Override
            public final yji a(b9i b9iVar, t9i t9iVar) {
                return hfi.c((obi) b9iVar, t9iVar);
            }
        }, obi.class, uji.class);
        e = ihi.b(new ehi() {
            @Override
            public final b9i a(yji yjiVar, t9i t9iVar) {
                return hfi.a((uji) yjiVar, t9iVar);
            }
        }, eriVarB, uji.class);
    }

    public static obi a(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        if (!ujiVar.f().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseKey");
        }
        try {
            a9 a9VarE0 = a9.e0(ujiVar.d(), esi.a());
            if (a9VarE0.b0() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            tbi tbiVarC = wbi.c();
            tbiVarC.b(a9VarE0.f0().zzd());
            tbiVarC.a(12);
            tbiVarC.c(16);
            tbiVarC.d(f(ujiVar.c()));
            wbi wbiVarE = tbiVarC.e();
            mbi mbiVarC = obi.c();
            mbiVarC.c(wbiVarE);
            mbiVarC.b(fri.b(a9VarE0.f0().zzA(), t9iVar));
            mbiVarC.a(ujiVar.e());
            return mbiVarC.d();
        } catch (zzgyk unused) {
            throw new GeneralSecurityException("Parsing AesGcmKey failed");
        }
    }

    public static wbi b(vji vjiVar) throws GeneralSecurityException {
        if (!vjiVar.c().h0().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(vjiVar.c().h0())));
        }
        try {
            b9 b9VarF0 = b9.f0(vjiVar.c().g0(), esi.a());
            if (b9VarF0.c0() != 0) {
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            }
            tbi tbiVarC = wbi.c();
            tbiVarC.b(b9VarF0.b0());
            tbiVarC.a(12);
            tbiVarC.c(16);
            tbiVarC.d(f(vjiVar.c().f0()));
            return tbiVarC.e();
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing AesGcmParameters failed: ", e2);
        }
    }

    public static uji c(obi obiVar, t9i t9iVar) {
        qni qniVarC0 = a9.c0();
        byte[] bArrD = obiVar.e().d(t9iVar);
        qniVarC0.v(zzgwn.zzv(bArrD, 0, bArrD.length));
        return uji.a("type.googleapis.com/google.crypto.tink.AesGcmKey", ((a9) qniVarC0.q()).g(), zzgsn.SYMMETRIC, g(obiVar.d().d()), obiVar.f());
    }

    public static vji d(wbi wbiVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w("type.googleapis.com/google.crypto.tink.AesGcmKey");
        sni sniVarD0 = b9.d0();
        sniVarD0.v(wbiVar.b());
        noiVarB0.x(((b9) sniVarD0.q()).g());
        noiVarB0.v(g(wbiVar.d()));
        return vji.b((k9) noiVarB0.q());
    }

    public static void e(qii qiiVar) {
        qiiVar.i(b);
        qiiVar.h(c);
        qiiVar.g(d);
        qiiVar.f(e);
    }

    public static ubi f(zzgtt zzgttVar) throws GeneralSecurityException {
        int iOrdinal = zzgttVar.ordinal();
        if (iOrdinal == 1) {
            return ubi.b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return ubi.d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgttVar.zza());
            }
        }
        return ubi.c;
    }

    public static zzgtt g(ubi ubiVar) throws GeneralSecurityException {
        if (ubi.b.equals(ubiVar)) {
            return zzgtt.TINK;
        }
        if (ubi.c.equals(ubiVar)) {
            return zzgtt.CRUNCHY;
        }
        if (ubi.d.equals(ubiVar)) {
            return zzgtt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(ubiVar)));
    }
}
