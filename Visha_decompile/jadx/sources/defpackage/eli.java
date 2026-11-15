package defpackage;

import com.google.android.gms.internal.ads.g9;
import com.google.android.gms.internal.ads.zzgsn;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

public abstract class eli {
    public static final jji a = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            return new hmi((zki) b9iVar);
        }
    }, zki.class, tki.class);
    public static final jji b = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            return bri.b((zki) b9iVar);
        }
    }, zki.class, o9i.class);
    public static final c9i c = phi.c("type.googleapis.com/google.crypto.tink.HmacKey", o9i.class, zzgsn.SYMMETRIC, g9.i0());
    public static final gii d = new gii() {
    };
    public static final eii e = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) {
            jli jliVar = (jli) p9iVar;
            jji jjiVar = eli.a;
            xki xkiVar = new xki(null);
            xkiVar.c(jliVar);
            xkiVar.b(fri.c(jliVar.c()));
            xkiVar.a(num);
            return xkiVar.d();
        }
    };
    public static final int f = 2;

    public static void a(boolean z) throws GeneralSecurityException {
        int i = f;
        if (!tgi.a(i)) {
            throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        eri eriVar = omi.a;
        omi.e(qii.c());
        nii.a().c(a);
        nii.a().c(b);
        mii miiVarB = mii.b();
        HashMap map = new HashMap();
        map.put("HMAC_SHA256_128BITTAG", zli.a);
        fli fliVar = new fli(null);
        fliVar.b(32);
        fliVar.c(16);
        hli hliVar = hli.e;
        fliVar.d(hliVar);
        gli gliVar = gli.d;
        fliVar.a(gliVar);
        map.put("HMAC_SHA256_128BITTAG_RAW", fliVar.e());
        fli fliVar2 = new fli(null);
        fliVar2.b(32);
        fliVar2.c(32);
        hli hliVar2 = hli.b;
        fliVar2.d(hliVar2);
        fliVar2.a(gliVar);
        map.put("HMAC_SHA256_256BITTAG", fliVar2.e());
        fli fliVar3 = new fli(null);
        fliVar3.b(32);
        fliVar3.c(32);
        fliVar3.d(hliVar);
        fliVar3.a(gliVar);
        map.put("HMAC_SHA256_256BITTAG_RAW", fliVar3.e());
        fli fliVar4 = new fli(null);
        fliVar4.b(64);
        fliVar4.c(16);
        fliVar4.d(hliVar2);
        gli gliVar2 = gli.f;
        fliVar4.a(gliVar2);
        map.put("HMAC_SHA512_128BITTAG", fliVar4.e());
        fli fliVar5 = new fli(null);
        fliVar5.b(64);
        fliVar5.c(16);
        fliVar5.d(hliVar);
        fliVar5.a(gliVar2);
        map.put("HMAC_SHA512_128BITTAG_RAW", fliVar5.e());
        fli fliVar6 = new fli(null);
        fliVar6.b(64);
        fliVar6.c(32);
        fliVar6.d(hliVar2);
        fliVar6.a(gliVar2);
        map.put("HMAC_SHA512_256BITTAG", fliVar6.e());
        fli fliVar7 = new fli(null);
        fliVar7.b(64);
        fliVar7.c(32);
        fliVar7.d(hliVar);
        fliVar7.a(gliVar2);
        map.put("HMAC_SHA512_256BITTAG_RAW", fliVar7.e());
        map.put("HMAC_SHA512_512BITTAG", zli.b);
        fli fliVar8 = new fli(null);
        fliVar8.b(64);
        fliVar8.c(64);
        fliVar8.d(hliVar);
        fliVar8.a(gliVar2);
        map.put("HMAC_SHA512_512BITTAG_RAW", fliVar8.e());
        miiVarB.d(Collections.unmodifiableMap(map));
        fii.b().c(e, jli.class);
        iii.a().b(d, jli.class);
        chi.c().f(c, i, true);
    }
}
