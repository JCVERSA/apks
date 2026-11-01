package u;

import java.util.Arrays;

public final class c extends b {

    public static final y.c f2108g = new y.c();

    public int f2110c;

    public final y.b f2109b = new y.b(f2108g);

    public final v.a f2111d = new v.a();

    public final w.c f2112e = new w.c(0);

    public final byte[] f2113f = new byte[2];

    public c() {
        e();
    }

    @Override
    public final String a() {
        return t.a.f2046i;
    }

    @Override
    public final float b() {
        v.a aVar = this.f2111d;
        int i2 = aVar.f2181b;
        return Math.max(i2 > 4 ? (i2 - aVar.f2180a[0]) / i2 : -1.0f, this.f2112e.a());
    }

    @Override
    public final int c() {
        return this.f2110c;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        v.a aVar;
        byte[] bArr2;
        int i3 = i2 + 0;
        int i4 = 0;
        while (true) {
            aVar = this.f2111d;
            bArr2 = this.f2113f;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            y.b bVar = this.f2109b;
            int iA = bVar.a(b2);
            if (iA == 1) {
                this.f2110c = 3;
                break;
            }
            if (iA == 2) {
                this.f2110c = 2;
                break;
            }
            if (iA == 0) {
                int i5 = bVar.f2267c;
                w.c cVar = this.f2112e;
                if (i4 == 0) {
                    bArr2[1] = bArr[0];
                    aVar.b(bArr2, 0, i5);
                    cVar.c(bArr2, 0, i5);
                } else {
                    int i6 = i4 - 1;
                    aVar.b(bArr, i6, i5);
                    cVar.c(bArr, i6, i5);
                }
            }
            i4++;
        }
        bArr2[0] = bArr[i3 - 1];
        if (this.f2110c == 1) {
            if ((aVar.f2181b > 100) && b() > 0.95f) {
                this.f2110c = 2;
            }
        }
        return this.f2110c;
    }

    @Override
    public final void e() {
        this.f2109b.f2266b = 0;
        this.f2110c = 1;
        this.f2111d.c();
        this.f2112e.d();
        Arrays.fill(this.f2113f, (byte) 0);
    }
}
