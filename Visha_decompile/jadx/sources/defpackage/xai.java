package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

public final class xai {
    public Integer a = null;
    public Integer b = null;
    public Integer c = null;
    public Integer d = null;
    public yai e = null;
    public zai f = zai.d;

    public xai(abi abiVar) {
    }

    public final xai a(int i) throws InvalidAlgorithmParameterException {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.a = Integer.valueOf(i);
        return this;
    }

    public final xai b(yai yaiVar) {
        this.e = yaiVar;
        return this;
    }

    public final xai c(int i) throws InvalidAlgorithmParameterException {
        if (i < 16) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; HMAC key must be at least 16 bytes", Integer.valueOf(i)));
        }
        this.b = Integer.valueOf(i);
        return this;
    }

    public final xai d(int i) throws GeneralSecurityException {
        if (i < 12 || i > 16) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes", Integer.valueOf(i)));
        }
        this.c = Integer.valueOf(i);
        return this;
    }

    public final xai e(int i) throws GeneralSecurityException {
        if (i < 10) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", Integer.valueOf(i)));
        }
        this.d = Integer.valueOf(i);
        return this;
    }

    public final xai f(zai zaiVar) {
        this.f = zaiVar;
        return this;
    }

    public final bbi g() throws GeneralSecurityException {
        if (this.a == null) {
            throw new GeneralSecurityException("AES key size is not set");
        }
        if (this.b == null) {
            throw new GeneralSecurityException("HMAC key size is not set");
        }
        if (this.c == null) {
            throw new GeneralSecurityException("iv size is not set");
        }
        Integer num = this.d;
        if (num == null) {
            throw new GeneralSecurityException("tag size is not set");
        }
        if (this.e == null) {
            throw new GeneralSecurityException("hash type is not set");
        }
        if (this.f == null) {
            throw new GeneralSecurityException("variant is not set");
        }
        int iIntValue = num.intValue();
        yai yaiVar = this.e;
        if (yaiVar == yai.b) {
            if (iIntValue > 20) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num));
            }
        } else if (yaiVar == yai.c) {
            if (iIntValue > 28) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num));
            }
        } else if (yaiVar == yai.d) {
            if (iIntValue > 32) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num));
            }
        } else if (yaiVar == yai.e) {
            if (iIntValue > 48) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num));
            }
        } else {
            if (yaiVar != yai.f) {
                throw new GeneralSecurityException("unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512");
            }
            if (iIntValue > 64) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num));
            }
        }
        return new bbi(this.a.intValue(), this.b.intValue(), this.c.intValue(), this.d.intValue(), this.f, this.e, null);
    }
}
