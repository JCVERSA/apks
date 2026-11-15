package defpackage;

import java.security.GeneralSecurityException;

public final class zbi {
    public jci a = null;
    public fri b = null;
    public Integer c = null;

    public zbi(aci aciVar) {
    }

    public final zbi a(Integer num) {
        this.c = num;
        return this;
    }

    public final zbi b(fri friVar) {
        this.b = friVar;
        return this;
    }

    public final zbi c(jci jciVar) {
        this.a = jciVar;
        return this;
    }

    public final bci d() throws GeneralSecurityException {
        fri friVar;
        eri eriVarB;
        jci jciVar = this.a;
        if (jciVar == null || (friVar = this.b) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (jciVar.b() != friVar.a()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (jciVar.a() && this.c == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.a.a() && this.c != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.a.d() == hci.d) {
            eriVarB = rii.a;
        } else if (this.a.d() == hci.c) {
            eriVarB = rii.a(this.c.intValue());
        } else {
            if (this.a.d() != hci.b) {
                throw new IllegalStateException("Unknown AesGcmSivParameters.Variant: ".concat(String.valueOf(this.a.d())));
            }
            eriVarB = rii.b(this.c.intValue());
        }
        return new bci(this.a, this.b, eriVarB, this.c, null);
    }
}
