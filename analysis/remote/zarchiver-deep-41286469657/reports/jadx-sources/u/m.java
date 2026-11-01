package u;

public final class m extends b {

    public int f2161b;

    public final x.k f2162c;

    public final boolean f2163d;

    public short f2164e;

    public int f2165f;

    public final int[] f2166g;

    public int f2167h;

    public int f2168i;

    public final b f2169j;

    public m(x.k kVar) {
        this.f2162c = kVar;
        this.f2163d = false;
        this.f2169j = null;
        this.f2166g = new int[4];
        e();
    }

    @Override
    public final String a() {
        b bVar = this.f2169j;
        return bVar == null ? this.f2162c.f2233d : bVar.a();
    }

    @Override
    public final float b() {
        int i2 = this.f2165f;
        if (i2 <= 0) {
            return 0.01f;
        }
        float f2 = ((((this.f2166g[3] * 1.0f) / i2) / this.f2162c.f2232c) * this.f2168i) / this.f2167h;
        if (f2 >= 1.0f) {
            return 0.99f;
        }
        return f2;
    }

    @Override
    public final int c() {
        return this.f2161b;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        int i3 = i2 + 0;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = bArr[i4] & 255;
            x.k kVar = this.f2162c;
            short s2 = kVar.f2230a[i5];
            if (s2 < 250) {
                this.f2167h++;
            }
            if (s2 < 64) {
                this.f2168i++;
                short s3 = this.f2164e;
                if (s3 < 64) {
                    this.f2165f++;
                    byte[] bArr2 = kVar.f2231b;
                    boolean z2 = this.f2163d;
                    int[] iArr = this.f2166g;
                    if (z2) {
                        byte b2 = bArr2[(s2 * 64) + s3];
                        iArr[b2] = iArr[b2] + 1;
                    } else {
                        byte b3 = bArr2[(s3 * 64) + s2];
                        iArr[b3] = iArr[b3] + 1;
                    }
                }
            }
            this.f2164e = s2;
        }
        if (this.f2161b == 1 && this.f2165f > 1024) {
            float fB = b();
            if (fB > 0.95f) {
                this.f2161b = 2;
            } else if (fB < 0.05f) {
                this.f2161b = 3;
            }
        }
        return this.f2161b;
    }

    @Override
    public final void e() {
        this.f2161b = 1;
        this.f2164e = (short) 255;
        for (int i2 = 0; i2 < 4; i2++) {
            this.f2166g[i2] = 0;
        }
        this.f2165f = 0;
        this.f2167h = 0;
        this.f2168i = 0;
    }

    public m(x.a aVar, boolean z2, h hVar) {
        this.f2162c = aVar;
        this.f2163d = z2;
        this.f2169j = hVar;
        this.f2166g = new int[4];
        e();
    }
}
