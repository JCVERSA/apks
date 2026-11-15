package defpackage;

import com.google.android.gms.internal.ads.e9;
import com.google.android.gms.internal.ads.zzgsn;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

public abstract class nci {
    public static final jji a = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            kci kciVar = (kci) b9iVar;
            jji jjiVar = nci.a;
            return ofi.e() ? ofi.b(kciVar) : dqi.b(kciVar);
        }
    }, kci.class, q8i.class);
    public static final eii b = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) {
            jji jjiVar = nci.a;
            return kci.c(((pci) p9iVar).b(), fri.c(32), num);
        }
    };
    public static final c9i c = phi.c("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", q8i.class, zzgsn.SYMMETRIC, e9.g0());

    public static void a(boolean z) throws GeneralSecurityException {
        if (!tgi.a(1)) {
            throw new GeneralSecurityException("Registering ChaCha20Poly1305 is not supported in FIPS mode");
        }
        eri eriVar = tfi.a;
        tfi.e(qii.c());
        nii.a().c(a);
        fii.b().c(b, pci.class);
        mii miiVarB = mii.b();
        HashMap map = new HashMap();
        map.put("CHACHA20_POLY1305", pci.c(oci.b));
        map.put("CHACHA20_POLY1305_RAW", pci.c(oci.d));
        miiVarB.d(Collections.unmodifiableMap(map));
        chi.c().d(c, true);
    }
}
