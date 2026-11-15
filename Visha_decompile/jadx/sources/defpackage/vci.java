package defpackage;

import com.google.android.gms.internal.ads.s9;
import com.google.android.gms.internal.ads.zzgsn;
import java.security.GeneralSecurityException;

public abstract class vci {
    public static final c9i a = phi.c("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", q8i.class, zzgsn.SYMMETRIC, s9.g0());
    public static final eii b = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) {
            c9i c9iVar = vci.a;
            return gdi.c((ldi) p9iVar, num);
        }
    };
    public static final jji c = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) throws GeneralSecurityException {
            gdi gdiVar = (gdi) b9iVar;
            c9i c9iVar = vci.a;
            String strD = gdiVar.d().d();
            gdiVar.d().b();
            n9i.a(strD);
            throw null;
        }
    }, gdi.class, q8i.class);

    public static void a(boolean z) throws GeneralSecurityException {
        if (!tgi.a(1)) {
            throw new GeneralSecurityException("Registering KMS Envelope AEAD is not supported in FIPS mode");
        }
        eri eriVar = qdi.a;
        qdi.e(qii.c());
        fii.b().c(b, ldi.class);
        nii.a().c(c);
        chi.c().d(a, true);
    }
}
