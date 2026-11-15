package defpackage;

public class zo0 implements cw0 {
    public static int[] i;
    public static final zo0 n;
    public static final zo0 o;
    public final String b;
    public final int c;
    public final int d;
    public final int e;
    public final boolean f;
    public final int g;
    public final vo0 h;
    public static int[] j = {10, 9, 6, 0};
    public static int[] k = {7, 2, 1, 0};
    public static int[] l = {8, 0};
    public static int[] m = {7, 2, 1, 0};
    public static final zo0 p = new zo0("mceliece460896", 13, 4608, 96, j, false, 192);
    public static final zo0 q = new zo0("mceliece460896f", 13, 4608, 96, j, true, 192);
    public static final zo0 r = new zo0("mceliece6688128", 13, 6688, 128, k, false, 256);
    public static final zo0 s = new zo0("mceliece6688128f", 13, 6688, 128, k, true, 256);
    public static final zo0 t = new zo0("mceliece6960119", 13, 6960, 119, l, false, 256);
    public static final zo0 u = new zo0("mceliece6960119f", 13, 6960, 119, l, true, 256);
    public static final zo0 v = new zo0("mceliece8192128", 13, 8192, 128, m, false, 256);
    public static final zo0 w = new zo0("mceliece8192128f", 13, 8192, 128, m, true, 256);

    static {
        int[] iArr = {3, 1, 0};
        i = iArr;
        n = new zo0("mceliece348864", 12, 3488, 64, iArr, false, 128);
        o = new zo0("mceliece348864f", 12, 3488, 64, i, true, 128);
    }

    public zo0(String str, int i2, int i3, int i4, int[] iArr, boolean z, int i5) {
        this.b = str;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = z;
        this.g = i5;
        this.h = new vo0(i2, i3, i4, iArr, z, i5);
    }

    public vo0 a() {
        return this.h;
    }

    public String b() {
        return this.b;
    }

    public int c() {
        return this.e;
    }
}
