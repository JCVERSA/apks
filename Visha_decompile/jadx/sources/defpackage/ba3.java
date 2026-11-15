package defpackage;

import java.util.Arrays;

public final class ba3 {
    public final ka3 a;
    public final byte[] b;

    public ba3(ka3 ka3Var, byte[] bArr) {
        if (ka3Var == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.a = ka3Var;
        this.b = bArr;
    }

    public byte[] a() {
        return this.b;
    }

    public ka3 b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ba3)) {
            return false;
        }
        ba3 ba3Var = (ba3) obj;
        if (this.a.equals(ba3Var.a)) {
            return Arrays.equals(this.b, ba3Var.b);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.b) ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.a + ", bytes=[...]}";
    }
}
