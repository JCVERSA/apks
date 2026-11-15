package defpackage;

import java.security.SecureRandom;
import org.bouncycastle.crypto.prng.SP800SecureRandom;

public class ly8 {
    public final bb3 b;
    public byte[] c;
    public int d = 256;
    public int e = 256;
    public final SecureRandom a = null;

    public static class a implements er1 {
        public final kx5 a;
        public final byte[] b;
        public final byte[] c;
        public final int d;

        public a(kx5 kx5Var, byte[] bArr, byte[] bArr2, int i) {
            this.a = kx5Var;
            this.b = bArr;
            this.c = bArr2;
            this.d = i;
        }

        @Override
        public ky8 a(ab3 ab3Var) {
            return new fl4(this.a, this.d, ab3Var, this.c, this.b);
        }

        @Override
        public String getAlgorithm() {
            StringBuilder sb;
            String strC;
            if (this.a instanceof el4) {
                sb = new StringBuilder();
                sb.append("HMAC-DRBG-");
                strC = ly8.d(((el4) this.a).g());
            } else {
                sb = new StringBuilder();
                sb.append("HMAC-DRBG-");
                strC = this.a.c();
            }
            sb.append(strC);
            return sb.toString();
        }
    }

    public static class b implements er1 {
        public final sb2 a;
        public final byte[] b;
        public final byte[] c;
        public final int d;

        public b(sb2 sb2Var, byte[] bArr, byte[] bArr2, int i) {
            this.a = sb2Var;
            this.b = bArr;
            this.c = bArr2;
            this.d = i;
        }

        @Override
        public ky8 a(ab3 ab3Var) {
            return new ho4(this.a, this.d, ab3Var, this.c, this.b);
        }

        @Override
        public String getAlgorithm() {
            return "HASH-DRBG-" + ly8.d(this.a);
        }
    }

    public ly8(bb3 bb3Var) {
        this.b = bb3Var;
    }

    public static String d(sb2 sb2Var) {
        String strC = sb2Var.c();
        int iIndexOf = strC.indexOf(45);
        if (iIndexOf <= 0 || strC.startsWith("SHA3")) {
            return strC;
        }
        return strC.substring(0, iIndexOf) + strC.substring(iIndexOf + 1);
    }

    public SP800SecureRandom b(kx5 kx5Var, byte[] bArr, boolean z) {
        return new SP800SecureRandom(this.a, this.b.get(this.e), new a(kx5Var, bArr, this.c, this.d), z);
    }

    public SP800SecureRandom c(sb2 sb2Var, byte[] bArr, boolean z) {
        return new SP800SecureRandom(this.a, this.b.get(this.e), new b(sb2Var, bArr, this.c, this.d), z);
    }

    public ly8 e(byte[] bArr) {
        this.c = ci.f(bArr);
        return this;
    }
}
