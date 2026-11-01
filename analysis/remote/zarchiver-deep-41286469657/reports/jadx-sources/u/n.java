package u;

public final class n extends b {

    public static final y.m f2170e = new y.m();

    public int f2172c;

    public int f2173d = 0;

    public final y.b f2171b = new y.b(f2170e);

    public n() {
        e();
    }

    @Override
    public final String a() {
        return t.a.f2058u;
    }

    @Override
    public final float b() {
        float f2 = 0.99f;
        if (this.f2173d >= 6) {
            return 0.99f;
        }
        for (int i2 = 0; i2 < this.f2173d; i2++) {
            f2 *= 0.5f;
        }
        return 1.0f - f2;
    }

    @Override
    public final int c() {
        return this.f2172c;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        int i3 = i2 + 0;
        for (int i4 = 0; i4 < i3; i4++) {
            byte b2 = bArr[i4];
            y.b bVar = this.f2171b;
            int iA = bVar.a(b2);
            if (iA == 1) {
                this.f2172c = 3;
                break;
            }
            if (iA == 2) {
                this.f2172c = 2;
                break;
            }
            if (iA == 0 && bVar.f2267c >= 2) {
                this.f2173d++;
            }
        }
        if (this.f2172c == 1 && b() > 0.95f) {
            this.f2172c = 2;
        }
        return this.f2172c;
    }

    @Override
    public final void e() {
        this.f2171b.f2266b = 0;
        this.f2173d = 0;
        this.f2172c = 1;
    }
}
