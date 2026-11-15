package md;

import com.vungle.ads.internal.protos.Sdk$SDKError;

public final class a {

    public static final a f66373h = new a(4201, 4096, 1);

    public static final a f66374i = new a(1033, 1024, 1);

    public static final a f66375j;

    public static final a f66376k;

    public static final a f66377l;

    public static final a f66378m;

    public static final a f66379n;

    public static final a f66380o;

    private final int[] f66381a;

    private final int[] f66382b;

    private final b f66383c;

    private final b f66384d;

    private final int f66385e;

    private final int f66386f;

    private final int f66387g;

    static {
        a aVar = new a(67, 64, 1);
        f66375j = aVar;
        f66376k = new a(19, 16, 1);
        f66377l = new a(285, 256, 0);
        a aVar2 = new a(Sdk$SDKError.Reason.MRAID_ERROR_VALUE, 256, 1);
        f66378m = aVar2;
        f66379n = aVar2;
        f66380o = aVar;
    }

    public a(int i10, int i11, int i12) {
        this.f66386f = i10;
        this.f66385e = i11;
        this.f66387g = i12;
        this.f66381a = new int[i11];
        this.f66382b = new int[i11];
        int i13 = 1;
        for (int i14 = 0; i14 < i11; i14++) {
            this.f66381a[i14] = i13;
            i13 *= 2;
            if (i13 >= i11) {
                i13 = (i13 ^ i10) & (i11 - 1);
            }
        }
        for (int i15 = 0; i15 < i11 - 1; i15++) {
            this.f66382b[this.f66381a[i15]] = i15;
        }
        this.f66383c = new b(this, new int[]{0});
        this.f66384d = new b(this, new int[]{1});
    }

    static int a(int i10, int i11) {
        return i10 ^ i11;
    }

    b b(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        if (i11 == 0) {
            return this.f66383c;
        }
        int[] iArr = new int[i10 + 1];
        iArr[0] = i11;
        return new b(this, iArr);
    }

    int c(int i10) {
        return this.f66381a[i10];
    }

    public int d() {
        return this.f66387g;
    }

    b e() {
        return this.f66384d;
    }

    public int f() {
        return this.f66385e;
    }

    b g() {
        return this.f66383c;
    }

    int h(int i10) {
        if (i10 != 0) {
            return this.f66381a[(this.f66385e - this.f66382b[i10]) - 1];
        }
        throw new ArithmeticException();
    }

    int i(int i10) {
        if (i10 != 0) {
            return this.f66382b[i10];
        }
        throw new IllegalArgumentException();
    }

    int j(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return 0;
        }
        int[] iArr = this.f66381a;
        int[] iArr2 = this.f66382b;
        return iArr[(iArr2[i10] + iArr2[i11]) % (this.f66385e - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.f66386f) + ',' + this.f66385e + ')';
    }
}
