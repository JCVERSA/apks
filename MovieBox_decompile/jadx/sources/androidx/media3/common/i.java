package androidx.media3.common;

import androidx.media3.common.util.a1;
import java.util.Arrays;

public final class i {

    public static final i f9751h = new b().d(1).c(2).e(3).a();

    public static final i f9752i = new b().d(1).c(1).e(2).a();

    private static final String f9753j = a1.C0(0);

    private static final String f9754k = a1.C0(1);

    private static final String f9755l = a1.C0(2);

    private static final String f9756m = a1.C0(3);

    private static final String f9757n = a1.C0(4);

    private static final String f9758o = a1.C0(5);

    public final int f9759a;

    public final int f9760b;

    public final int f9761c;

    public final byte[] f9762d;

    public final int f9763e;

    public final int f9764f;

    private int f9765g;

    public static final class b {

        private int f9766a;

        private int f9767b;

        private int f9768c;

        private byte[] f9769d;

        private int f9770e;

        private int f9771f;

        public i a() {
            return new i(this.f9766a, this.f9767b, this.f9768c, this.f9769d, this.f9770e, this.f9771f);
        }

        public b b(int i10) {
            this.f9771f = i10;
            return this;
        }

        public b c(int i10) {
            this.f9767b = i10;
            return this;
        }

        public b d(int i10) {
            this.f9766a = i10;
            return this;
        }

        public b e(int i10) {
            this.f9768c = i10;
            return this;
        }

        public b f(byte[] bArr) {
            this.f9769d = bArr;
            return this;
        }

        public b g(int i10) {
            this.f9770e = i10;
            return this;
        }

        public b() {
            this.f9766a = -1;
            this.f9767b = -1;
            this.f9768c = -1;
            this.f9770e = -1;
            this.f9771f = -1;
        }

        private b(i iVar) {
            this.f9766a = iVar.f9759a;
            this.f9767b = iVar.f9760b;
            this.f9768c = iVar.f9761c;
            this.f9769d = iVar.f9762d;
            this.f9770e = iVar.f9763e;
            this.f9771f = iVar.f9764f;
        }
    }

    private static String b(int i10) {
        if (i10 == -1) {
            return "NA";
        }
        return i10 + "bit Chroma";
    }

    private static String c(int i10) {
        if (i10 == -1) {
            return "Unset color range";
        }
        if (i10 == 1) {
            return "Full range";
        }
        if (i10 == 2) {
            return "Limited range";
        }
        return "Undefined color range " + i10;
    }

    private static String d(int i10) {
        if (i10 == -1) {
            return "Unset color space";
        }
        if (i10 == 6) {
            return "BT2020";
        }
        if (i10 == 1) {
            return "BT709";
        }
        if (i10 == 2) {
            return "BT601";
        }
        return "Undefined color space " + i10;
    }

    private static String e(int i10) {
        if (i10 == -1) {
            return "Unset color transfer";
        }
        if (i10 == 10) {
            return "Gamma 2.2";
        }
        if (i10 == 1) {
            return "Linear";
        }
        if (i10 == 2) {
            return "sRGB";
        }
        if (i10 == 3) {
            return "SDR SMPTE 170M";
        }
        if (i10 == 6) {
            return "ST2084 PQ";
        }
        if (i10 == 7) {
            return "HLG";
        }
        return "Undefined color transfer " + i10;
    }

    public static boolean h(i iVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (iVar == null) {
            return true;
        }
        int i14 = iVar.f9759a;
        return (i14 == -1 || i14 == 1 || i14 == 2) && ((i10 = iVar.f9760b) == -1 || i10 == 2) && (((i11 = iVar.f9761c) == -1 || i11 == 3) && iVar.f9762d == null && (((i12 = iVar.f9764f) == -1 || i12 == 8) && ((i13 = iVar.f9763e) == -1 || i13 == 8)));
    }

    public static int j(int i10) {
        if (i10 == 1) {
            return 1;
        }
        if (i10 != 9) {
            return (i10 == 4 || i10 == 5 || i10 == 6 || i10 == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int k(int i10) {
        if (i10 == 1) {
            return 3;
        }
        if (i10 == 4) {
            return 10;
        }
        if (i10 == 13) {
            return 2;
        }
        if (i10 == 16) {
            return 6;
        }
        if (i10 != 18) {
            return (i10 == 6 || i10 == 7) ? 3 : -1;
        }
        return 7;
    }

    private static String l(int i10) {
        if (i10 == -1) {
            return "NA";
        }
        return i10 + "bit Luma";
    }

    public b a() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f9759a == iVar.f9759a && this.f9760b == iVar.f9760b && this.f9761c == iVar.f9761c && Arrays.equals(this.f9762d, iVar.f9762d) && this.f9763e == iVar.f9763e && this.f9764f == iVar.f9764f;
    }

    public boolean f() {
        return (this.f9763e == -1 || this.f9764f == -1) ? false : true;
    }

    public boolean g() {
        return (this.f9759a == -1 || this.f9760b == -1 || this.f9761c == -1) ? false : true;
    }

    public int hashCode() {
        if (this.f9765g == 0) {
            this.f9765g = ((((((((((527 + this.f9759a) * 31) + this.f9760b) * 31) + this.f9761c) * 31) + Arrays.hashCode(this.f9762d)) * 31) + this.f9763e) * 31) + this.f9764f;
        }
        return this.f9765g;
    }

    public boolean i() {
        return f() || g();
    }

    public String m() {
        String str;
        String strG = g() ? a1.G("%s/%s/%s", d(this.f9759a), c(this.f9760b), e(this.f9761c)) : "NA/NA/NA";
        if (f()) {
            str = this.f9763e + "/" + this.f9764f;
        } else {
            str = "NA/NA";
        }
        return strG + "/" + str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ColorInfo(");
        sb2.append(d(this.f9759a));
        sb2.append(", ");
        sb2.append(c(this.f9760b));
        sb2.append(", ");
        sb2.append(e(this.f9761c));
        sb2.append(", ");
        sb2.append(this.f9762d != null);
        sb2.append(", ");
        sb2.append(l(this.f9763e));
        sb2.append(", ");
        sb2.append(b(this.f9764f));
        sb2.append(")");
        return sb2.toString();
    }

    private i(int i10, int i11, int i12, byte[] bArr, int i13, int i14) {
        this.f9759a = i10;
        this.f9760b = i11;
        this.f9761c = i12;
        this.f9762d = bArr;
        this.f9763e = i13;
        this.f9764f = i14;
    }
}
