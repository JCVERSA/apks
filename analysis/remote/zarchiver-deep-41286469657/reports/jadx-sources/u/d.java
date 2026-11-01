package u;

import java.util.Arrays;

public final class d extends b {

    public static final y.d f2114f = new y.d();

    public int f2116c;

    public final y.b f2115b = new y.b(f2114f);

    public final w.d f2117d = new w.d();

    public final byte[] f2118e = new byte[2];

    public d() {
        e();
    }

    @Override
    public final String a() {
        return t.a.f2047j;
    }

    @Override
    public final float b() {
        return this.f2117d.a();
    }

    @Override
    public final int c() {
        return this.f2116c;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        byte[] bArr2;
        w.d dVar;
        int i3 = i2 + 0;
        int i4 = 0;
        while (true) {
            bArr2 = this.f2118e;
            dVar = this.f2117d;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            y.b bVar = this.f2115b;
            int iA = bVar.a(b2);
            if (iA == 1) {
                this.f2116c = 3;
                break;
            }
            if (iA == 2) {
                this.f2116c = 2;
                break;
            }
            if (iA == 0) {
                int i5 = bVar.f2267c;
                if (i4 == 0) {
                    bArr2[1] = bArr[0];
                    dVar.c(bArr2, 0, i5);
                } else {
                    dVar.c(bArr, i4 - 1, i5);
                }
            }
            i4++;
        }
        bArr2[0] = bArr[i3 - 1];
        if (this.f2116c == 1) {
            if ((dVar.f2197b > 1024) && b() > 0.95f) {
                this.f2116c = 2;
            }
        }
        return this.f2116c;
    }

    @Override
    public final void e() {
        this.f2115b.f2266b = 0;
        this.f2116c = 1;
        this.f2117d.d();
        Arrays.fill(this.f2118e, (byte) 0);
    }
}
