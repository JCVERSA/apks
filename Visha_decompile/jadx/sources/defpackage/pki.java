package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

public final class pki {
    public Integer a = null;
    public Integer b = null;
    public qki c = qki.e;

    public pki(rki rkiVar) {
    }

    public final pki a(int i) throws InvalidAlgorithmParameterException {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i * 8)));
        }
        this.a = Integer.valueOf(i);
        return this;
    }

    public final pki b(int i) throws GeneralSecurityException {
        if (i >= 10 && i <= 16) {
            this.b = Integer.valueOf(i);
            return this;
        }
        throw new GeneralSecurityException("Invalid tag size for AesCmacParameters: " + i);
    }

    public final pki c(qki qkiVar) {
        this.c = qkiVar;
        return this;
    }

    public final ski d() throws GeneralSecurityException {
        Integer num = this.a;
        if (num == null) {
            throw new GeneralSecurityException("key size not set");
        }
        if (this.b == null) {
            throw new GeneralSecurityException("tag size not set");
        }
        if (this.c != null) {
            return new ski(num.intValue(), this.b.intValue(), this.c, null);
        }
        throw new GeneralSecurityException("variant not set");
    }
}
