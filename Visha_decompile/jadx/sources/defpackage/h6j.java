package defpackage;

import java.util.Arrays;
import java.util.Locale;

public final class h6j {
    public static final h6j h;
    public final int a;
    public final int b;
    public final int c;
    public final byte[] d;
    public final int e;
    public final int f;
    public int g;

    static {
        p1j p1jVar = new p1j();
        p1jVar.c(1);
        p1jVar.b(2);
        p1jVar.d(3);
        h = p1jVar.g();
        p1j p1jVar2 = new p1j();
        p1jVar2.c(1);
        p1jVar2.b(1);
        p1jVar2.d(2);
        p1jVar2.g();
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
    }

    public h6j(int i, int i2, int i3, byte[] bArr, int i4, int i5, d4j d4jVar) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = bArr;
        this.e = i4;
        this.f = i5;
    }

    public static int a(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 9) {
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int b(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 4) {
            return 10;
        }
        if (i == 13) {
            return 2;
        }
        if (i == 16) {
            return 6;
        }
        if (i != 18) {
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 7;
    }

    public static boolean g(h6j h6jVar) {
        int i;
        int i2;
        int i3;
        int i4;
        if (h6jVar == null) {
            return true;
        }
        int i5 = h6jVar.a;
        return (i5 == -1 || i5 == 1 || i5 == 2) && ((i = h6jVar.b) == -1 || i == 2) && (((i2 = h6jVar.c) == -1 || i2 == 3) && h6jVar.d == null && (((i3 = h6jVar.f) == -1 || i3 == 8) && ((i4 = h6jVar.e) == -1 || i4 == 8)));
    }

    public static String h(int i) {
        if (i == -1) {
            return "Unset color range";
        }
        if (i == 1) {
            return "Full range";
        }
        if (i == 2) {
            return "Limited range";
        }
        return "Undefined color range " + i;
    }

    public static String i(int i) {
        if (i == -1) {
            return "Unset color space";
        }
        if (i == 6) {
            return "BT2020";
        }
        if (i == 1) {
            return "BT709";
        }
        if (i == 2) {
            return "BT601";
        }
        return "Undefined color space " + i;
    }

    public static String j(int i) {
        if (i == -1) {
            return "Unset color transfer";
        }
        if (i == 10) {
            return "Gamma 2.2";
        }
        if (i == 1) {
            return "Linear";
        }
        if (i == 2) {
            return "sRGB";
        }
        if (i == 3) {
            return "SDR SMPTE 170M";
        }
        if (i == 6) {
            return "ST2084 PQ";
        }
        if (i == 7) {
            return "HLG";
        }
        return "Undefined color transfer " + i;
    }

    public final p1j c() {
        return new p1j(this, null);
    }

    public final String d() {
        String str;
        String str2;
        if (f()) {
            Object[] objArr = {i(this.a), h(this.b), j(this.c)};
            int i = kfh.a;
            str = String.format(Locale.US, "%s/%s/%s", objArr);
        } else {
            str = "NA/NA/NA";
        }
        if (e()) {
            str2 = this.e + "/" + this.f;
        } else {
            str2 = "NA/NA";
        }
        return str + "/" + str2;
    }

    public final boolean e() {
        return (this.e == -1 || this.f == -1) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && h6j.class == obj.getClass()) {
            h6j h6jVar = (h6j) obj;
            if (this.a == h6jVar.a && this.b == h6jVar.b && this.c == h6jVar.c && Arrays.equals(this.d, h6jVar.d) && this.e == h6jVar.e && this.f == h6jVar.f) {
                return true;
            }
        }
        return false;
    }

    public final boolean f() {
        return (this.a == -1 || this.b == -1 || this.c == -1) ? false : true;
    }

    public final int hashCode() {
        int i = this.g;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((this.a + 527) * 31) + this.b) * 31) + this.c) * 31) + Arrays.hashCode(this.d)) * 31) + this.e) * 31) + this.f;
        this.g = iHashCode;
        return iHashCode;
    }

    public final String toString() {
        String str;
        int i = this.e;
        int i2 = this.c;
        int i3 = this.b;
        String strI = i(this.a);
        String strH = h(i3);
        String strJ = j(i2);
        String str2 = "NA";
        if (i != -1) {
            str = i + "bit Luma";
        } else {
            str = "NA";
        }
        int i4 = this.f;
        if (i4 != -1) {
            str2 = i4 + "bit Chroma";
        }
        return "ColorInfo(" + strI + ", " + strH + ", " + strJ + ", " + (this.d != null) + ", " + str + ", " + str2 + ")";
    }
}
