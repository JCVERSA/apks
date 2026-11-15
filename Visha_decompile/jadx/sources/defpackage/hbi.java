package defpackage;

import com.google.android.gms.internal.ads.x8;
import com.google.android.gms.internal.ads.zzgsn;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

public abstract class hbi {
    public static final jji a = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            return aqi.b((ebi) b9iVar);
        }
    }, ebi.class, q8i.class);
    public static final c9i b = phi.c("type.googleapis.com/google.crypto.tink.AesEaxKey", q8i.class, zzgsn.SYMMETRIC, x8.h0());
    public static final eii c = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) throws GeneralSecurityException {
            lbi lbiVar = (lbi) p9iVar;
            jji jjiVar = hbi.a;
            if (lbiVar.c() == 24) {
                throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
            }
            cbi cbiVar = new cbi(null);
            cbiVar.c(lbiVar);
            cbiVar.a(num);
            cbiVar.b(fri.c(lbiVar.c()));
            return cbiVar.d();
        }
    };

    public static void a(boolean z) throws GeneralSecurityException {
        if (!tgi.a(1)) {
            throw new GeneralSecurityException("Registering AES EAX is not supported in FIPS mode");
        }
        eri eriVar = yei.a;
        yei.e(qii.c());
        nii.a().c(a);
        mii miiVarB = mii.b();
        HashMap map = new HashMap();
        map.put("AES128_EAX", bei.c);
        ibi ibiVar = new ibi(null);
        ibiVar.a(16);
        ibiVar.b(16);
        ibiVar.c(16);
        jbi jbiVar = jbi.d;
        ibiVar.d(jbiVar);
        map.put("AES128_EAX_RAW", ibiVar.e());
        map.put("AES256_EAX", bei.d);
        ibi ibiVar2 = new ibi(null);
        ibiVar2.a(16);
        ibiVar2.b(32);
        ibiVar2.c(16);
        ibiVar2.d(jbiVar);
        map.put("AES256_EAX_RAW", ibiVar2.e());
        miiVarB.d(Collections.unmodifiableMap(map));
        fii.b().c(c, lbi.class);
        chi.c().d(b, true);
    }
}
