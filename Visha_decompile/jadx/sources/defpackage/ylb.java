package defpackage;

import org.bouncycastle.crypto.CryptoServicePurpose;

public abstract class ylb {

    public static class a implements xl1 {
        public final int a;
        public final String b;
        public final CryptoServicePurpose c;

        public a(int i, String str, CryptoServicePurpose cryptoServicePurpose) {
            this.a = i;
            this.b = str;
            this.c = cryptoServicePurpose;
        }

        @Override
        public String a() {
            return this.b;
        }
    }

    public static class b implements xl1 {
        public final int a;
        public final int b;
        public final String c;
        public final CryptoServicePurpose d;

        public b(int i, int i2, String str, CryptoServicePurpose cryptoServicePurpose) {
            this.a = i;
            this.b = i2;
            this.c = str;
            this.d = cryptoServicePurpose;
        }

        @Override
        public String a() {
            return this.c;
        }
    }

    public static xl1 a(sb2 sb2Var, int i, CryptoServicePurpose cryptoServicePurpose) {
        return new b(sb2Var.g() * 4, i, sb2Var.c(), cryptoServicePurpose);
    }

    public static xl1 b(sb2 sb2Var, CryptoServicePurpose cryptoServicePurpose) {
        return new a(sb2Var.g() * 4, sb2Var.c(), cryptoServicePurpose);
    }
}
