package u;

import java.util.Arrays;

public final class l extends b {

    public static final y.k f2155g = new y.k();

    public int f2157c;

    public final y.b f2156b = new y.b(f2155g);

    public final v.c f2158d = new v.c();

    public final w.c f2159e = new w.c(1);

    public final byte[] f2160f = new byte[2];

    public l() {
        e();
    }

    @Override
    public final String a() {
        return t.a.f2049l;
    }

    @Override
    public final float b() {
        v.c cVar = this.f2158d;
        int i2 = cVar.f2181b;
        return Math.max(i2 > 4 ? (i2 - cVar.f2180a[0]) / i2 : -1.0f, this.f2159e.a());
    }

    @Override
    public final int c() {
        return this.f2157c;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        v.c cVar;
        byte[] bArr2;
        int i3 = i2 + 0;
        int i4 = 0;
        while (true) {
            cVar = this.f2158d;
            bArr2 = this.f2160f;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            y.b bVar = this.f2156b;
            int iA = bVar.a(b2);
            if (iA == 1) {
                this.f2157c = 3;
                break;
            }
            if (iA == 2) {
                this.f2157c = 2;
                break;
            }
            if (iA == 0) {
                int i5 = bVar.f2267c;
                w.c cVar2 = this.f2159e;
                if (i4 == 0) {
                    bArr2[1] = bArr[0];
                    cVar.b(bArr2, 2 - i5, i5);
                    cVar2.c(bArr2, 0, i5);
                } else {
                    cVar.b(bArr, (i4 + 1) - i5, i5);
                    cVar2.c(bArr, i4 - 1, i5);
                }
            }
            i4++;
        }
        bArr2[0] = bArr[i3 - 1];
        if (this.f2157c == 1) {
            if ((cVar.f2181b > 100) && b() > 0.95f) {
                this.f2157c = 2;
            }
        }
        return this.f2157c;
    }

    @Override
    public final void e() {
        this.f2156b.f2266b = 0;
        this.f2157c = 1;
        this.f2158d.c();
        this.f2159e.d();
        Arrays.fill(this.f2160f, (byte) 0);
    }
}
