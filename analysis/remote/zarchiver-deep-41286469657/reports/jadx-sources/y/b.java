package y;

public final class b {

    public final l f2265a;

    public int f2266b = 0;

    public int f2267c;

    public b(l lVar) {
        this.f2265a = lVar;
    }

    public final int a(byte b2) {
        int i2 = b2 & 255;
        l lVar = this.f2265a;
        int i3 = (lVar.f2293a.f2289a[i2 >> 3] >> ((i2 & 7) << 2)) & 15;
        int i4 = this.f2266b;
        if (i4 == 0) {
            this.f2267c = lVar.f2296d[i3];
        }
        int i5 = (i4 * lVar.f2294b) + i3;
        int i6 = (lVar.f2295c.f2289a[i5 >> 3] >> ((i5 & 7) << 2)) & 15;
        this.f2266b = i6;
        return i6;
    }
}
