package u;

public final class h extends b {

    public int f2136b;

    public int f2137c;

    public byte f2138d;

    public byte f2139e;

    public b f2140f = null;

    public b f2141g = null;

    public h() {
        e();
    }

    @Override
    public final String a() {
        int i2 = this.f2136b - this.f2137c;
        if (i2 >= 5) {
            return t.a.f2057t;
        }
        if (i2 <= -5) {
            return t.a.f2043f;
        }
        float fB = this.f2140f.b() - this.f2141g.b();
        if (fB > 0.01f) {
            return t.a.f2057t;
        }
        if (fB < -0.01f) {
            return t.a.f2043f;
        }
        return i2 < 0 ? t.a.f2043f : t.a.f2057t;
    }

    @Override
    public final float b() {
        return 0.0f;
    }

    @Override
    public final int c() {
        return (this.f2140f.c() == 3 && this.f2141g.c() == 3) ? 3 : 1;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        if (c() == 3) {
            return 3;
        }
        int i3 = i2 + 0;
        for (int i4 = 0; i4 < i3; i4++) {
            byte b2 = bArr[i4];
            if (b2 == 32) {
                if (this.f2139e != 32) {
                    byte b3 = this.f2138d;
                    int i5 = b3 & 255;
                    if (i5 == 234 || i5 == 237 || i5 == 239 || i5 == 243 || i5 == 245) {
                        this.f2136b++;
                    } else {
                        int i6 = b3 & 255;
                        if (i6 == 235 || i6 == 238 || i6 == 240 || i6 == 244) {
                            this.f2137c++;
                        }
                    }
                }
            } else if (this.f2139e == 32) {
                int i7 = this.f2138d & 255;
                if ((i7 == 234 || i7 == 237 || i7 == 239 || i7 == 243 || i7 == 245) && b2 != 32) {
                    this.f2137c++;
                }
            }
            this.f2139e = this.f2138d;
            this.f2138d = b2;
        }
        return 1;
    }

    @Override
    public final void e() {
        this.f2136b = 0;
        this.f2137c = 0;
        this.f2138d = (byte) 32;
        this.f2139e = (byte) 32;
    }
}
