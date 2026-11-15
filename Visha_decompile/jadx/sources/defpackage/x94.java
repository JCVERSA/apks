package defpackage;

public class x94 {
    public int a;
    public int b;

    public x94(byte[] bArr) {
        this.a = 0;
        if (bArr.length != 4) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        int iD = sm5.d(bArr);
        this.b = iD;
        if (!uc8.c(iD)) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        this.a = uc8.a(this.b);
    }

    public static String i(int i) {
        if (i == 0) {
            return "0";
        }
        String str = ((byte) (i & 1)) == 1 ? "1" : "";
        int i2 = i >>> 1;
        int i3 = 1;
        while (i2 != 0) {
            if (((byte) (i2 & 1)) == 1) {
                str = str + "+x^" + i3;
            }
            i2 >>>= 1;
            i3++;
        }
        return str;
    }

    public int a(int i, int i2) {
        return i ^ i2;
    }

    public String b(int i) {
        StringBuilder sb;
        String str;
        String string = "";
        for (int i2 = 0; i2 < this.a; i2++) {
            if ((((byte) i) & 1) == 0) {
                sb = new StringBuilder();
                str = "0";
            } else {
                sb = new StringBuilder();
                str = "1";
            }
            sb.append(str);
            sb.append(string);
            string = sb.toString();
            i >>>= 1;
        }
        return string;
    }

    public int c(int i, int i2) {
        if (i2 == 0) {
            return 1;
        }
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 1;
        }
        if (i2 < 0) {
            i = f(i);
            i2 = -i2;
        }
        int iH = 1;
        while (i2 != 0) {
            if ((i2 & 1) == 1) {
                iH = h(iH, i);
            }
            i = h(i, i);
            i2 >>>= 1;
        }
        return iH;
    }

    public int d() {
        return this.a;
    }

    public byte[] e() {
        return sm5.c(this.b);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof x94)) {
            x94 x94Var = (x94) obj;
            if (this.a == x94Var.a && this.b == x94Var.b) {
                return true;
            }
        }
        return false;
    }

    public int f(int i) {
        return c(i, (1 << this.a) - 2);
    }

    public boolean g(int i) {
        int i2 = this.a;
        if (i2 == 31) {
            return i >= 0;
        }
        return i >= 0 && i < (1 << i2);
    }

    public int h(int i, int i2) {
        return uc8.d(i, i2, this.b);
    }

    public int hashCode() {
        return this.b;
    }

    public String toString() {
        return "Finite Field GF(2^" + this.a + ") = GF(2)[X]/<" + i(this.b) + "> ";
    }
}
