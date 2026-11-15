package defpackage;

import com.google.android.gms.internal.ads.q9;
import com.google.android.gms.internal.ads.zzgsn;
import java.security.GeneralSecurityException;

public abstract class sci {
    public static final jji a = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) throws GeneralSecurityException {
            jji jjiVar = sci.a;
            n9i.a(((wci) b9iVar).d().d());
            throw null;
        }
    }, wci.class, q8i.class);
    public static final c9i b = phi.c("type.googleapis.com/google.crypto.tink.KmsAeadKey", q8i.class, zzgsn.REMOTE, q9.g0());
    public static final eii c = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) {
            jji jjiVar = sci.a;
            return wci.c((adi) p9iVar, num);
        }
    };

    public static void a(boolean z) throws GeneralSecurityException {
        if (!tgi.a(1)) {
            throw new GeneralSecurityException("Registering KMS AEAD is not supported in FIPS mode");
        }
        eri eriVar = fdi.a;
        fdi.e(qii.c());
        nii.a().c(a);
        fii.b().c(c, adi.class);
        chi.c().d(b, true);
    }
}
