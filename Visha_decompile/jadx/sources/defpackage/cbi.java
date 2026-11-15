package defpackage;

import java.security.GeneralSecurityException;

public final class cbi {
    public lbi a = null;
    public fri b = null;
    public Integer c = null;

    public cbi(dbi dbiVar) {
    }

    public final cbi a(Integer num) {
        this.c = num;
        return this;
    }

    public final cbi b(fri friVar) {
        this.b = friVar;
        return this;
    }

    public final cbi c(lbi lbiVar) {
        this.a = lbiVar;
        return this;
    }

    public final ebi d() throws GeneralSecurityException {
        fri friVar;
        eri eriVarB;
        lbi lbiVar = this.a;
        if (lbiVar == null || (friVar = this.b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (lbiVar.c() != friVar.a()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (lbiVar.a() && this.c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.a.a() && this.c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.a.e() == jbi.d) {
            eriVarB = rii.a;
        } else if (this.a.e() == jbi.c) {
            eriVarB = rii.a(this.c.intValue());
        } else {
            if (this.a.e() != jbi.b) {
                throw new IllegalStateException("Unknown AesEaxParameters.Variant: ".concat(String.valueOf(this.a.e())));
            }
            eriVarB = rii.b(this.c.intValue());
        }
        return new ebi(this.a, this.b, eriVarB, this.c, null);
    }
}
