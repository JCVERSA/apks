package defpackage;

import java.security.GeneralSecurityException;

public final class pai {
    public bbi a = null;
    public fri b = null;
    public fri c = null;
    public Integer d = null;

    public pai(qai qaiVar) {
    }

    public final pai a(fri friVar) {
        this.b = friVar;
        return this;
    }

    public final pai b(fri friVar) {
        this.c = friVar;
        return this;
    }

    public final pai c(Integer num) {
        this.d = num;
        return this;
    }

    public final pai d(bbi bbiVar) {
        this.a = bbiVar;
        return this;
    }

    public final rai e() throws GeneralSecurityException {
        eri eriVarB;
        bbi bbiVar = this.a;
        if (bbiVar == null) {
            throw new GeneralSecurityException("Cannot build without parameters");
        }
        fri friVar = this.b;
        if (friVar == null || this.c == null) {
            throw new GeneralSecurityException("Cannot build without key material");
        }
        if (bbiVar.b() != friVar.a()) {
            throw new GeneralSecurityException("AES key size mismatch");
        }
        if (bbiVar.c() != this.c.a()) {
            throw new GeneralSecurityException("HMAC key size mismatch");
        }
        if (this.a.a() && this.d == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.a.a() && this.d != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.a.h() == zai.d) {
            eriVarB = rii.a;
        } else if (this.a.h() == zai.c) {
            eriVarB = rii.a(this.d.intValue());
        } else {
            if (this.a.h() != zai.b) {
                throw new IllegalStateException("Unknown AesCtrHmacAeadParameters.Variant: ".concat(String.valueOf(this.a.h())));
            }
            eriVarB = rii.b(this.d.intValue());
        }
        return new rai(this.a, this.b, this.c, eriVarB, this.d, null);
    }
}
