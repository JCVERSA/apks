package defpackage;

import com.google.android.gms.internal.ads.a9;
import com.google.android.gms.internal.ads.zzgsn;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

public abstract class sbi {
    public static final jji a = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            return bqi.b((obi) b9iVar);
        }
    }, obi.class, q8i.class);
    public static final c9i b = phi.c("type.googleapis.com/google.crypto.tink.AesGcmKey", q8i.class, zzgsn.SYMMETRIC, a9.g0());
    public static final gii c = new gii() {
    };
    public static final eii d = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) throws GeneralSecurityException {
            wbi wbiVar = (wbi) p9iVar;
            jji jjiVar = sbi.a;
            if (wbiVar.b() == 24) {
                throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
            }
            mbi mbiVar = new mbi(null);
            mbiVar.c(wbiVar);
            mbiVar.a(num);
            mbiVar.b(fri.c(wbiVar.b()));
            return mbiVar.d();
        }
    };
    public static final int e = 2;

    public static void a(boolean z) throws GeneralSecurityException {
        int i = e;
        if (!tgi.a(i)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        eri eriVar = hfi.a;
        hfi.e(qii.c());
        nii.a().c(a);
        mii miiVarB = mii.b();
        HashMap map = new HashMap();
        map.put("AES128_GCM", bei.a);
        tbi tbiVar = new tbi(null);
        tbiVar.a(12);
        tbiVar.b(16);
        tbiVar.c(16);
        ubi ubiVar = ubi.d;
        tbiVar.d(ubiVar);
        map.put("AES128_GCM_RAW", tbiVar.e());
        map.put("AES256_GCM", bei.b);
        tbi tbiVar2 = new tbi(null);
        tbiVar2.a(12);
        tbiVar2.b(32);
        tbiVar2.c(16);
        tbiVar2.d(ubiVar);
        map.put("AES256_GCM_RAW", tbiVar2.e());
        miiVarB.d(Collections.unmodifiableMap(map));
        iii.a().b(c, wbi.class);
        fii.b().c(d, wbi.class);
        chi.c().f(b, i, true);
    }
}
