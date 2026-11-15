package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

public final class tbi {
    public Integer a = null;
    public Integer b = null;
    public Integer c = null;
    public ubi d = ubi.d;

    public tbi(vbi vbiVar) {
    }

    public final tbi a(int i) {
        this.b = 12;
        return this;
    }

    public final tbi b(int i) throws InvalidAlgorithmParameterException {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.a = Integer.valueOf(i);
        return this;
    }

    public final tbi c(int i) {
        this.c = 16;
        return this;
    }

    public final tbi d(ubi ubiVar) {
        this.d = ubiVar;
        return this;
    }

    public final wbi e() throws GeneralSecurityException {
        Integer num = this.a;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (this.d == null) {
            throw new GeneralSecurityException("Variant is not set");
        }
        if (this.b == null) {
            throw new GeneralSecurityException("IV size is not set");
        }
        if (this.c == null) {
            throw new GeneralSecurityException("Tag size is not set");
        }
        int iIntValue = num.intValue();
        this.b.intValue();
        this.c.intValue();
        return new wbi(iIntValue, 12, 16, this.d, null);
    }
}
