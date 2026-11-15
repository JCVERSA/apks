package defpackage;

import com.google.android.gms.internal.ads.j9;
import com.google.android.gms.internal.ads.k9;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

public final class fii {
    public static final eii b = new eii() {
        @Override
        public final b9i a(p9i p9iVar, Integer num) throws GeneralSecurityException {
            eii eiiVar = fii.b;
            k9 k9VarC = ((uhi) p9iVar).b().c();
            c9i c9iVarB = chi.c().b(k9VarC.h0());
            if (!chi.c().e(k9VarC.h0())) {
                throw new GeneralSecurityException("Creating new keys is not allowed.");
            }
            j9 j9VarB = c9iVarB.b(k9VarC.g0());
            return new thi(uji.a(j9VarB.g0(), j9VarB.f0(), j9VarB.c0(), k9VarC.f0(), num), a9i.a());
        }
    };
    public static final fii c = e();
    public final Map a = new HashMap();

    public static fii b() {
        return c;
    }

    public static fii e() {
        fii fiiVar = new fii();
        try {
            fiiVar.c(b, uhi.class);
            return fiiVar;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException("unexpected error.", e);
        }
    }

    public final b9i a(p9i p9iVar, Integer num) {
        return d(p9iVar, num);
    }

    public final synchronized void c(eii eiiVar, Class cls) {
        try {
            Map map = this.a;
            eii eiiVar2 = (eii) map.get(cls);
            if (eiiVar2 != null && !eiiVar2.equals(eiiVar)) {
                throw new GeneralSecurityException("Different key creator for parameters class " + cls.toString() + " already inserted");
            }
            map.put(cls, eiiVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized b9i d(p9i p9iVar, Integer num) {
        eii eiiVar;
        eiiVar = (eii) this.a.get(p9iVar.getClass());
        if (eiiVar == null) {
            throw new GeneralSecurityException("Cannot create a new key for parameters " + p9iVar.toString() + ": no key creator for this class was registered.");
        }
        return eiiVar.a(p9iVar, num);
    }
}
