package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

public final class fli {
    public Integer a = null;
    public Integer b = null;
    public gli c = null;
    public hli d = hli.e;

    public fli(ili iliVar) {
    }

    public final fli a(gli gliVar) {
        this.c = gliVar;
        return this;
    }

    public final fli b(int i) {
        this.a = Integer.valueOf(i);
        return this;
    }

    public final fli c(int i) {
        this.b = Integer.valueOf(i);
        return this;
    }

    public final fli d(hli hliVar) {
        this.d = hliVar;
        return this;
    }

    public final jli e() throws GeneralSecurityException {
        Integer num = this.a;
        if (num == null) {
            throw new GeneralSecurityException("key size is not set");
        }
        if (this.b == null) {
            throw new GeneralSecurityException("tag size is not set");
        }
        if (this.c == null) {
            throw new GeneralSecurityException("hash type is not set");
        }
        if (this.d == null) {
            throw new GeneralSecurityException("variant is not set");
        }
        if (num.intValue() < 16) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", this.a));
        }
        Integer num2 = this.b;
        int iIntValue = num2.intValue();
        gli gliVar = this.c;
        if (iIntValue < 10) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", num2));
        }
        if (gliVar == gli.b) {
            if (iIntValue > 20) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num2));
            }
        } else if (gliVar == gli.c) {
            if (iIntValue > 28) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num2));
            }
        } else if (gliVar == gli.d) {
            if (iIntValue > 32) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num2));
            }
        } else if (gliVar == gli.e) {
            if (iIntValue > 48) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num2));
            }
        } else {
            if (gliVar != gli.f) {
                throw new GeneralSecurityException("unknown hash type; must be SHA256, SHA384 or SHA512");
            }
            if (iIntValue > 64) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num2));
            }
        }
        return new jli(this.a.intValue(), this.b.intValue(), this.d, this.c, null);
    }
}
