package defpackage;

import com.google.android.gms.internal.ads.g9;
import com.google.android.gms.internal.ads.h9;
import com.google.android.gms.internal.ads.i9;
import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.zzgsc;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import java.security.GeneralSecurityException;

public abstract class omi {
    public static final eri a;
    public static final ygi b;
    public static final ygi c;
    public static final zii d;
    public static final vii e;
    public static final mhi f;
    public static final ihi g;

    static {
        eri eriVarB = fki.b("type.googleapis.com/google.crypto.tink.HmacKey");
        a = eriVarB;
        wgi wgiVarA = ygi.a();
        wgiVarA.a(zzgtt.RAW, hli.e);
        wgiVarA.a(zzgtt.TINK, hli.b);
        wgiVarA.a(zzgtt.LEGACY, hli.d);
        wgiVarA.a(zzgtt.CRUNCHY, hli.c);
        b = wgiVarA.b();
        wgi wgiVarA2 = ygi.a();
        wgiVarA2.a(zzgsc.SHA1, gli.b);
        wgiVarA2.a(zzgsc.SHA224, gli.c);
        wgiVarA2.a(zzgsc.SHA256, gli.d);
        wgiVarA2.a(zzgsc.SHA384, gli.e);
        wgiVarA2.a(zzgsc.SHA512, gli.f);
        c = wgiVarA2.b();
        d = zii.b(new xii() {
            @Override
            public final yji a(p9i p9iVar) {
                return omi.b((jli) p9iVar);
            }
        }, jli.class, vji.class);
        e = vii.b(new tii() {
            @Override
            public final p9i a(yji yjiVar) {
                return omi.d((vji) yjiVar);
            }
        }, eriVarB, vji.class);
        f = mhi.b(new khi() {
            @Override
            public final yji a(b9i b9iVar, t9i t9iVar) {
                return omi.a((zki) b9iVar, t9iVar);
            }
        }, zki.class, uji.class);
        g = ihi.b(new ehi() {
            @Override
            public final b9i a(yji yjiVar, t9i t9iVar) {
                return omi.c((uji) yjiVar, t9iVar);
            }
        }, eriVarB, uji.class);
    }

    public static uji a(zki zkiVar, t9i t9iVar) {
        eoi eoiVarC0 = g9.c0();
        eoiVarC0.w(f(zkiVar.d()));
        byte[] bArrD = zkiVar.e().d(t9iVar);
        eoiVarC0.v(zzgwn.zzv(bArrD, 0, bArrD.length));
        return uji.a("type.googleapis.com/google.crypto.tink.HmacKey", ((g9) eoiVarC0.q()).g(), zzgsn.SYMMETRIC, (zzgtt) b.b(zkiVar.d().g()), zkiVar.f());
    }

    public static vji b(jli jliVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w("type.googleapis.com/google.crypto.tink.HmacKey");
        goi goiVarD0 = h9.d0();
        goiVarD0.w(f(jliVar));
        goiVarD0.v(jliVar.c());
        noiVarB0.x(((h9) goiVarD0.q()).g());
        noiVarB0.v((zzgtt) b.b(jliVar.g()));
        return vji.b((k9) noiVarB0.q());
    }

    public static zki c(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        if (!ujiVar.f().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseKey");
        }
        try {
            g9 g9VarF0 = g9.f0(ujiVar.d(), esi.a());
            if (g9VarF0.b0() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            fli fliVarE = jli.e();
            fliVarE.b(g9VarF0.h0().zzd());
            fliVarE.c(g9VarF0.g0().b0());
            fliVarE.a((gli) c.c(g9VarF0.g0().c0()));
            fliVarE.d((hli) b.c(ujiVar.c()));
            jli jliVarE = fliVarE.e();
            xki xkiVarC = zki.c();
            xkiVarC.c(jliVarE);
            xkiVarC.b(fri.b(g9VarF0.h0().zzA(), t9iVar));
            xkiVarC.a(ujiVar.e());
            return xkiVarC.d();
        } catch (zzgyk | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing HmacKey failed");
        }
    }

    public static jli d(vji vjiVar) throws GeneralSecurityException {
        if (!vjiVar.c().h0().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseParameters: ".concat(String.valueOf(vjiVar.c().h0())));
        }
        try {
            h9 h9VarG0 = h9.g0(vjiVar.c().g0(), esi.a());
            if (h9VarG0.c0() != 0) {
                throw new GeneralSecurityException("Parsing HmacParameters failed: unknown Version " + h9VarG0.c0());
            }
            fli fliVarE = jli.e();
            fliVarE.b(h9VarG0.b0());
            fliVarE.c(h9VarG0.h0().b0());
            fliVarE.a((gli) c.c(h9VarG0.h0().c0()));
            fliVarE.d((hli) b.c(vjiVar.c().f0()));
            return fliVarE.e();
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing HmacParameters failed: ", e2);
        }
    }

    public static void e(qii qiiVar) {
        qiiVar.i(d);
        qiiVar.h(e);
        qiiVar.g(f);
        qiiVar.f(g);
    }

    public static i9 f(jli jliVar) {
        ioi ioiVarD0 = i9.d0();
        ioiVarD0.w(jliVar.b());
        ioiVarD0.v((zzgsc) c.b(jliVar.f()));
        return (i9) ioiVarD0.q();
    }
}
