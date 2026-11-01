package w;

public abstract class b {

    public int f2196a;

    public int f2197b;

    public int[] f2198c;

    public float f2199d;

    public b() {
        d();
    }

    public final float a() {
        int i2;
        int i3 = this.f2197b;
        if (i3 <= 0 || (i2 = this.f2196a) <= 4) {
            return 0.01f;
        }
        if (i3 != i2) {
            float f2 = i2 / ((i3 - i2) * this.f2199d);
            if (f2 < 0.99f) {
                return f2;
            }
        }
        return 0.99f;
    }

    public abstract int b(byte[] bArr, int i2);

    public final void c(byte[] bArr, int i2, int i3) {
        int iB = i3 == 2 ? b(bArr, i2) : -1;
        if (iB >= 0) {
            this.f2197b++;
            int[] iArr = this.f2198c;
            if (iB >= iArr.length || 512 <= iArr[iB]) {
                return;
            }
            this.f2196a++;
        }
    }

    public final void d() {
        this.f2197b = 0;
        this.f2196a = 0;
    }
}
