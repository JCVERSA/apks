package defpackage;

import java.util.Collections;
import java.util.HashMap;

public abstract class fei {
    public static final eii a = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) {
            return cei.c((hei) p9iVar, fri.c(32), num);
        }
    };
    public static final jji b = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            return fgi.b((cei) b9iVar);
        }
    }, cei.class, q8i.class);

    public static void a(boolean z) {
        eri eriVar = kgi.a;
        kgi.e(qii.c());
        mii miiVarB = mii.b();
        HashMap map = new HashMap();
        map.put("XAES_256_GCM_192_BIT_NONCE", bei.g);
        map.put("XAES_256_GCM_192_BIT_NONCE_NO_PREFIX", bei.h);
        map.put("XAES_256_GCM_160_BIT_NONCE_NO_PREFIX", bei.i);
        map.put("X_AES_GCM_8_BYTE_SALT_NO_PREFIX", bei.j);
        miiVarB.d(Collections.unmodifiableMap(map));
        nii.a().c(b);
        fii.b().c(a, hei.class);
    }
}
