package defpackage;

import com.google.android.gms.internal.ads.s8;
import com.google.android.gms.internal.ads.zzgsn;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

public abstract class vai {
    public static final jji a = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            return eqi.b((rai) b9iVar);
        }
    }, rai.class, q8i.class);
    public static final c9i b = phi.c("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", q8i.class, zzgsn.SYMMETRIC, s8.h0());
    public static final gii c = new gii() {
    };
    public static final eii d = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) throws GeneralSecurityException {
            bbi bbiVar = (bbi) p9iVar;
            jji jjiVar = vai.a;
            if (bbiVar.b() != 16 && bbiVar.b() != 32) {
                throw new GeneralSecurityException("AES key size must be 16 or 32 bytes");
            }
            pai paiVar = new pai(null);
            paiVar.d(bbiVar);
            paiVar.c(num);
            paiVar.a(fri.c(bbiVar.b()));
            paiVar.b(fri.c(bbiVar.c()));
            return paiVar.e();
        }
    };
    public static final int e = 2;

    public static void a(boolean z) throws GeneralSecurityException {
        int i = e;
        if (!tgi.a(i)) {
            throw new GeneralSecurityException("Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        eri eriVar = tei.a;
        tei.e(qii.c());
        nii.a().c(a);
        mii miiVarB = mii.b();
        HashMap map = new HashMap();
        map.put("AES128_CTR_HMAC_SHA256", bei.e);
        xai xaiVar = new xai(null);
        xaiVar.a(16);
        xaiVar.c(32);
        xaiVar.e(16);
        xaiVar.d(16);
        yai yaiVar = yai.d;
        xaiVar.b(yaiVar);
        zai zaiVar = zai.d;
        xaiVar.f(zaiVar);
        map.put("AES128_CTR_HMAC_SHA256_RAW", xaiVar.g());
        map.put("AES256_CTR_HMAC_SHA256", bei.f);
        xai xaiVar2 = new xai(null);
        xaiVar2.a(32);
        xaiVar2.c(32);
        xaiVar2.e(32);
        xaiVar2.d(16);
        xaiVar2.b(yaiVar);
        xaiVar2.f(zaiVar);
        map.put("AES256_CTR_HMAC_SHA256_RAW", xaiVar2.g());
        miiVarB.d(Collections.unmodifiableMap(map));
        iii.a().b(c, bbi.class);
        fii.b().c(d, bbi.class);
        chi.c().f(b, i, true);
    }
}
