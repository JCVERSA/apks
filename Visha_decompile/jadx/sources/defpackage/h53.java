package defpackage;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;

public class h53 implements AlgorithmParameterSpec {
    public t43 a;
    public byte[] b;
    public i53 c;
    public BigInteger d;
    public BigInteger e;

    public h53(t43 t43Var, i53 i53Var, BigInteger bigInteger) {
        this.a = t43Var;
        this.c = i53Var.y();
        this.d = bigInteger;
        this.e = BigInteger.valueOf(1L);
        this.b = null;
    }

    public t43 a() {
        return this.a;
    }

    public i53 b() {
        return this.c;
    }

    public BigInteger c() {
        return this.e;
    }

    public BigInteger d() {
        return this.d;
    }

    public byte[] e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof h53)) {
            return false;
        }
        h53 h53Var = (h53) obj;
        return a().k(h53Var.a()) && b().e(h53Var.b());
    }

    public int hashCode() {
        return b().hashCode() ^ a().hashCode();
    }

    public h53(t43 t43Var, i53 i53Var, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.a = t43Var;
        this.c = i53Var.y();
        this.d = bigInteger;
        this.e = bigInteger2;
        this.b = bArr;
    }
}
