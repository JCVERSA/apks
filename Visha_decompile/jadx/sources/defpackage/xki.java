package defpackage;

import java.security.GeneralSecurityException;

public final class xki {
    public jli a = null;
    public fri b = null;
    public Integer c = null;

    public xki(yki ykiVar) {
    }

    public final xki a(Integer num) {
        this.c = num;
        return this;
    }

    public final xki b(fri friVar) {
        this.b = friVar;
        return this;
    }

    public final xki c(jli jliVar) {
        this.a = jliVar;
        return this;
    }

    public final zki d() throws GeneralSecurityException {
        fri friVar;
        eri eriVarA;
        jli jliVar = this.a;
        if (jliVar == null || (friVar = this.b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (jliVar.c() != friVar.a()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (jliVar.a() && this.c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.a.a() && this.c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.a.g() == hli.e) {
            eriVarA = rii.a;
        } else if (this.a.g() == hli.d || this.a.g() == hli.c) {
            eriVarA = rii.a(this.c.intValue());
        } else {
            if (this.a.g() != hli.b) {
                throw new IllegalStateException("Unknown HmacParameters.Variant: ".concat(String.valueOf(this.a.g())));
            }
            eriVarA = rii.b(this.c.intValue());
        }
        return new zki(this.a, this.b, eriVarA, this.c, null);
    }
}
