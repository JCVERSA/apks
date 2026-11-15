package defpackage;

import java.security.GeneralSecurityException;

public abstract class hai {
    public static final bhi a = b();

    public static w8i a() throws GeneralSecurityException {
        if (ugi.b()) {
            throw new GeneralSecurityException("Cannot use non-FIPS-compliant AeadConfigurationV0 in FIPS mode");
        }
        return a;
    }

    public static bhi b() {
        try {
            kji kjiVarA = nji.a();
            oai.c(kjiVarA);
            kjiVarA.a(jji.b(new gji() {
                @Override
                public final Object a(b9i b9iVar) {
                    return eqi.b((rai) b9iVar);
                }
            }, rai.class, q8i.class));
            kjiVarA.a(jji.b(new gji() {
                @Override
                public final Object a(b9i b9iVar) {
                    return bqi.b((obi) b9iVar);
                }
            }, obi.class, q8i.class));
            kjiVarA.a(jji.b(new gji() {
                @Override
                public final Object a(b9i b9iVar) {
                    return sgi.b((bci) b9iVar);
                }
            }, bci.class, q8i.class));
            kjiVarA.a(jji.b(new gji() {
                @Override
                public final Object a(b9i b9iVar) {
                    return aqi.b((ebi) b9iVar);
                }
            }, ebi.class, q8i.class));
            kjiVarA.a(jji.b(new gji() {
                @Override
                public final Object a(b9i b9iVar) {
                    kci kciVar = (kci) b9iVar;
                    bhi bhiVar = hai.a;
                    return ofi.e() ? ofi.b(kciVar) : dqi.b(kciVar);
                }
            }, kci.class, q8i.class));
            kjiVarA.a(jji.b(new gji() {
                @Override
                public final Object a(b9i b9iVar) {
                    iei ieiVar = (iei) b9iVar;
                    bhi bhiVar = hai.a;
                    return lgi.c() ? lgi.b(ieiVar) : dri.b(ieiVar);
                }
            }, iei.class, q8i.class));
            kjiVarA.a(jji.b(new gji() {
                @Override
                public final Object a(b9i b9iVar) {
                    return fgi.b((cei) b9iVar);
                }
            }, cei.class, q8i.class));
            return bhi.d(kjiVarA.c());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
