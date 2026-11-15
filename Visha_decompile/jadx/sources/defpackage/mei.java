package defpackage;

import com.google.android.gms.internal.ads.y9;
import com.google.android.gms.internal.ads.zzgsn;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

public abstract class mei {
    public static final jji a = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            iei ieiVar = (iei) b9iVar;
            jji jjiVar = mei.a;
            return lgi.c() ? lgi.b(ieiVar) : dri.b(ieiVar);
        }
    }, iei.class, q8i.class);
    public static final c9i b = phi.c("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", q8i.class, zzgsn.SYMMETRIC, y9.g0());
    public static final gii c = new gii() {
    };
    public static final eii d = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) {
            jji jjiVar = mei.a;
            return iei.c(((oei) p9iVar).b(), fri.c(32), num);
        }
    };

    public static void a(boolean z) throws GeneralSecurityException {
        if (!tgi.a(1)) {
            throw new GeneralSecurityException("Registering XChaCha20Poly1305 is not supported in FIPS mode");
        }
        eri eriVar = qgi.a;
        qgi.e(qii.c());
        nii.a().c(a);
        mii miiVarB = mii.b();
        HashMap map = new HashMap();
        map.put("XCHACHA20_POLY1305", oei.c(nei.b));
        map.put("XCHACHA20_POLY1305_RAW", oei.c(nei.d));
        miiVarB.d(Collections.unmodifiableMap(map));
        fii.b().c(d, oei.class);
        iii.a().b(c, oei.class);
        chi.c().d(b, true);
    }
}
