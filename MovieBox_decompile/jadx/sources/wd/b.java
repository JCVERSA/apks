package wd;

public final class b {

    public static final b f74262f = new b(929, 3);

    private final int[] f74263a;

    private final int[] f74264b;

    private final c f74265c;

    private final c f74266d;

    private final int f74267e;

    private b(int i10, int i11) {
        this.f74267e = i10;
        this.f74263a = new int[i10];
        this.f74264b = new int[i10];
        int i12 = 1;
        for (int i13 = 0; i13 < i10; i13++) {
            this.f74263a[i13] = i12;
            i12 = (i12 * i11) % i10;
        }
        for (int i14 = 0; i14 < i10 - 1; i14++) {
            this.f74264b[this.f74263a[i14]] = i14;
        }
        this.f74265c = new c(this, new int[]{0});
        this.f74266d = new c(this, new int[]{1});
    }

    int a(int i10, int i11) {
        return (i10 + i11) % this.f74267e;
    }

    c b(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        if (i11 == 0) {
            return this.f74265c;
        }
        int[] iArr = new int[i10 + 1];
        iArr[0] = i11;
        return new c(this, iArr);
    }

    int c(int i10) {
        return this.f74263a[i10];
    }

    c d() {
        return this.f74266d;
    }

    int e() {
        return this.f74267e;
    }

    c f() {
        return this.f74265c;
    }

    int g(int i10) {
        if (i10 != 0) {
            return this.f74263a[(this.f74267e - this.f74264b[i10]) - 1];
        }
        throw new ArithmeticException();
    }

    int h(int i10) {
        if (i10 != 0) {
            return this.f74264b[i10];
        }
        throw new IllegalArgumentException();
    }

    int i(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return 0;
        }
        int[] iArr = this.f74263a;
        int[] iArr2 = this.f74264b;
        return iArr[(iArr2[i10] + iArr2[i11]) % (this.f74267e - 1)];
    }

    int j(int i10, int i11) {
        int i12 = this.f74267e;
        return ((i10 + i12) - i11) % i12;
    }
}
