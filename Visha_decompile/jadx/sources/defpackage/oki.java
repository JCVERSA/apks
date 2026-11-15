package defpackage;

import com.google.android.gms.internal.ads.p8;
import com.google.android.gms.internal.ads.zzgsn;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

public abstract class oki {
    public static final eii a = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) {
            return oki.b((ski) p9iVar, num);
        }
    };
    public static final jji b = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            return oki.c((kki) b9iVar);
        }
    }, kki.class, tki.class);
    public static final jji c = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            return oki.a((kki) b9iVar);
        }
    }, kki.class, o9i.class);
    public static final c9i d = phi.c("type.googleapis.com/google.crypto.tink.AesCmacKey", o9i.class, zzgsn.SYMMETRIC, p8.h0());

    public static o9i a(kki kkiVar) throws GeneralSecurityException {
        e(kkiVar.d());
        return bri.a(kkiVar);
    }

    public static kki b(ski skiVar, Integer num) throws GeneralSecurityException {
        e(skiVar);
        gki gkiVar = new gki(null);
        gkiVar.c(skiVar);
        gkiVar.a(fri.c(skiVar.c()));
        gkiVar.b(num);
        return gkiVar.d();
    }

    public static tki c(kki kkiVar) throws GeneralSecurityException {
        e(kkiVar.d());
        return new gmi(kkiVar);
    }

    public static void d(boolean z) throws GeneralSecurityException {
        if (!tgi.a(1)) {
            throw new GeneralSecurityException("Registering AES CMAC is not supported in FIPS mode");
        }
        eri eriVar = emi.a;
        emi.e(qii.c());
        fii.b().c(a, ski.class);
        nii.a().c(b);
        nii.a().c(c);
        mii miiVarB = mii.b();
        HashMap map = new HashMap();
        ski skiVar = zli.c;
        map.put("AES_CMAC", skiVar);
        map.put("AES256_CMAC", skiVar);
        pki pkiVar = new pki(null);
        pkiVar.a(32);
        pkiVar.b(16);
        pkiVar.c(qki.e);
        map.put("AES256_CMAC_RAW", pkiVar.d());
        miiVarB.d(Collections.unmodifiableMap(map));
        chi.c().d(d, true);
    }

    public static void e(ski skiVar) throws GeneralSecurityException {
        if (skiVar.c() != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
    }
}
