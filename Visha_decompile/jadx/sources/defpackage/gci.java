package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

public final class gci {
    public Integer a = null;
    public hci b = hci.d;

    public gci(ici iciVar) {
    }

    public final gci a(int i) throws InvalidAlgorithmParameterException {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.a = Integer.valueOf(i);
        return this;
    }

    public final gci b(hci hciVar) {
        this.b = hciVar;
        return this;
    }

    public final jci c() throws GeneralSecurityException {
        Integer num = this.a;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (this.b != null) {
            return new jci(num.intValue(), this.b, null);
        }
        throw new GeneralSecurityException("Variant is not set");
    }
}
