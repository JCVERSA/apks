package defpackage;

import java.security.GeneralSecurityException;

public final class mbi {
    public wbi a = null;
    public fri b = null;
    public Integer c = null;

    public mbi(nbi nbiVar) {
    }

    public final mbi a(Integer num) {
        this.c = num;
        return this;
    }

    public final mbi b(fri friVar) {
        this.b = friVar;
        return this;
    }

    public final mbi c(wbi wbiVar) {
        this.a = wbiVar;
        return this;
    }

    public final obi d() throws GeneralSecurityException {
        fri friVar;
        eri eriVarB;
        wbi wbiVar = this.a;
        if (wbiVar == null || (friVar = this.b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (wbiVar.b() != friVar.a()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (wbiVar.a() && this.c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.a.a() && this.c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.a.d() == ubi.d) {
            eriVarB = rii.a;
        } else if (this.a.d() == ubi.c) {
            eriVarB = rii.a(this.c.intValue());
        } else {
            if (this.a.d() != ubi.b) {
                throw new IllegalStateException("Unknown AesGcmParameters.Variant: ".concat(String.valueOf(this.a.d())));
            }
            eriVarB = rii.b(this.c.intValue());
        }
        return new obi(this.a, this.b, eriVarB, this.c, null);
    }
}
