package defpackage;

import com.google.android.gms.internal.ads.c9;
import com.google.android.gms.internal.ads.zzgsn;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

public abstract class fci {
    public static final jji a = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            return sgi.b((bci) b9iVar);
        }
    }, bci.class, q8i.class);
    public static final eii b = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) {
            jci jciVar = (jci) p9iVar;
            jji jjiVar = fci.a;
            zbi zbiVar = new zbi(null);
            zbiVar.c(jciVar);
            zbiVar.a(num);
            zbiVar.b(fri.c(jciVar.b()));
            return zbiVar.d();
        }
    };
    public static final gii c = new gii() {
    };
    public static final c9i d = phi.c("type.googleapis.com/google.crypto.tink.AesGcmSivKey", q8i.class, zzgsn.SYMMETRIC, c9.g0());

    public static void a(boolean z) throws GeneralSecurityException {
        if (!tgi.a(1)) {
            throw new GeneralSecurityException("Registering AES GCM SIV is not supported in FIPS mode");
        }
        eri eriVar = mfi.a;
        mfi.e(qii.c());
        if (b()) {
            nii.a().c(a);
            mii miiVarB = mii.b();
            HashMap map = new HashMap();
            gci gciVar = new gci(null);
            gciVar.a(16);
            hci hciVar = hci.b;
            gciVar.b(hciVar);
            map.put("AES128_GCM_SIV", gciVar.c());
            gci gciVar2 = new gci(null);
            gciVar2.a(16);
            hci hciVar2 = hci.d;
            gciVar2.b(hciVar2);
            map.put("AES128_GCM_SIV_RAW", gciVar2.c());
            gci gciVar3 = new gci(null);
            gciVar3.a(32);
            gciVar3.b(hciVar);
            map.put("AES256_GCM_SIV", gciVar3.c());
            gci gciVar4 = new gci(null);
            gciVar4.a(32);
            gciVar4.b(hciVar2);
            map.put("AES256_GCM_SIV_RAW", gciVar4.c());
            miiVarB.d(Collections.unmodifiableMap(map));
            iii.a().b(c, jci.class);
            fii.b().c(b, jci.class);
            chi.c().d(d, true);
        }
    }

    public static boolean b() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            return false;
        }
    }
}
