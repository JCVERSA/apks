package u;

import java.util.Arrays;

public final class a extends b {

    public static final y.a f2102f = new y.a();

    public int f2104c;

    public final y.b f2103b = new y.b(f2102f);

    public final w.a f2105d = new w.a();

    public final byte[] f2106e = new byte[2];

    public a() {
        e();
    }

    @Override
    public final String a() {
        return t.a.f2044g;
    }

    @Override
    public final float b() {
        return this.f2105d.a();
    }

    @Override
    public final int c() {
        return this.f2104c;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        byte[] bArr2;
        w.a aVar;
        int i3 = i2 + 0;
        int i4 = 0;
        while (true) {
            bArr2 = this.f2106e;
            aVar = this.f2105d;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            y.b bVar = this.f2103b;
            int iA = bVar.a(b2);
            if (iA == 1) {
                this.f2104c = 3;
                break;
            }
            if (iA == 2) {
                this.f2104c = 2;
                break;
            }
            if (iA == 0) {
                int i5 = bVar.f2267c;
                if (i4 == 0) {
                    bArr2[1] = bArr[0];
                    aVar.c(bArr2, 0, i5);
                } else {
                    aVar.c(bArr, i4 - 1, i5);
                }
            }
            i4++;
        }
        bArr2[0] = bArr[i3 - 1];
        if (this.f2104c == 1) {
            if ((aVar.f2197b > 1024) && b() > 0.95f) {
                this.f2104c = 2;
            }
        }
        return this.f2104c;
    }

    @Override
    public final void e() {
        this.f2103b.f2266b = 0;
        this.f2104c = 1;
        this.f2105d.d();
        Arrays.fill(this.f2106e, (byte) 0);
    }
}
