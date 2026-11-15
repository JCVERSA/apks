package defpackage;

import java.security.GeneralSecurityException;

public final class gki {
    public ski a = null;
    public fri b = null;
    public Integer c = null;

    public gki(hki hkiVar) {
    }

    public final gki a(fri friVar) {
        this.b = friVar;
        return this;
    }

    public final gki b(Integer num) {
        this.c = num;
        return this;
    }

    public final gki c(ski skiVar) {
        this.a = skiVar;
        return this;
    }

    public final kki d() throws GeneralSecurityException {
        fri friVar;
        eri eriVarA;
        ski skiVar = this.a;
        if (skiVar == null || (friVar = this.b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (skiVar.c() != friVar.a()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (skiVar.a() && this.c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.a.a() && this.c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.a.f() == qki.e) {
            eriVarA = rii.a;
        } else if (this.a.f() == qki.d || this.a.f() == qki.c) {
            eriVarA = rii.a(this.c.intValue());
        } else {
            if (this.a.f() != qki.b) {
                throw new IllegalStateException("Unknown AesCmacParametersParameters.Variant: ".concat(String.valueOf(this.a.f())));
            }
            eriVarA = rii.b(this.c.intValue());
        }
        return new kki(this.a, this.b, eriVarA, this.c, null);
    }
}
