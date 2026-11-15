package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

public final class ibi {
    public Integer a = null;
    public Integer b = null;
    public Integer c = null;
    public jbi d = jbi.d;

    public ibi(kbi kbiVar) {
    }

    public final ibi a(int i) throws GeneralSecurityException {
        if (i != 12 && i != 16) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; acceptable values have 12 or 16 bytes", Integer.valueOf(i)));
        }
        this.b = Integer.valueOf(i);
        return this;
    }

    public final ibi b(int i) throws InvalidAlgorithmParameterException {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.a = Integer.valueOf(i);
        return this;
    }

    public final ibi c(int i) {
        this.c = 16;
        return this;
    }

    public final ibi d(jbi jbiVar) {
        this.d = jbiVar;
        return this;
    }

    public final lbi e() throws GeneralSecurityException {
        Integer num = this.a;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (this.b == null) {
            throw new GeneralSecurityException("IV size is not set");
        }
        if (this.d == null) {
            throw new GeneralSecurityException("Variant is not set");
        }
        if (this.c == null) {
            throw new GeneralSecurityException("Tag size is not set");
        }
        int iIntValue = num.intValue();
        int iIntValue2 = this.b.intValue();
        this.c.intValue();
        return new lbi(iIntValue, iIntValue2, 16, this.d, null);
    }
}
