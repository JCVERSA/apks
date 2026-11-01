package u;

public final class f extends b {

    public static final y.g f2124f = new y.g();

    public static final y.h f2125g = new y.h();

    public static final y.i f2126h = new y.i();

    public final y.b[] f2127b = {new y.b(f2124f), new y.b(f2125g), new y.b(f2126h)};

    public int f2128c;

    public int f2129d;

    public String f2130e;

    public f() {
        e();
    }

    @Override
    public final String a() {
        return this.f2130e;
    }

    @Override
    public final float b() {
        return 0.99f;
    }

    @Override
    public final int c() {
        return this.f2129d;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        int i3 = i2 + 0;
        for (int i4 = 0; i4 < i3 && this.f2129d == 1; i4++) {
            for (int i5 = this.f2128c - 1; i5 >= 0; i5--) {
                y.b[] bVarArr = this.f2127b;
                int iA = bVarArr[i5].a(bArr[i4]);
                if (iA == 1) {
                    int i6 = this.f2128c - 1;
                    this.f2128c = i6;
                    if (i6 <= 0) {
                        this.f2129d = 3;
                        return 3;
                    }
                    if (i5 != i6) {
                        y.b bVar = bVarArr[i6];
                        bVarArr[i6] = bVarArr[i5];
                        bVarArr[i5] = bVar;
                    }
                } else if (iA == 2) {
                    this.f2129d = 2;
                    this.f2130e = bVarArr[i5].f2265a.f2297e;
                    return 2;
                }
            }
        }
        return this.f2129d;
    }

    @Override
    public final void e() {
        this.f2129d = 1;
        y.b[] bVarArr = this.f2127b;
        for (y.b bVar : bVarArr) {
            bVar.f2266b = 0;
        }
        this.f2128c = bVarArr.length;
        this.f2130e = null;
    }
}
