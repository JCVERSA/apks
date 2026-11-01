package u;

import java.util.Arrays;

public final class g extends b {

    public static final y.f f2131f = new y.f();

    public int f2133c;

    public final y.b f2132b = new y.b(f2131f);

    public final w.f f2134d = new w.f();

    public final byte[] f2135e = new byte[2];

    public g() {
        e();
    }

    @Override
    public final String a() {
        return t.a.f2045h;
    }

    @Override
    public final float b() {
        return this.f2134d.a();
    }

    @Override
    public final int c() {
        return this.f2133c;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        byte[] bArr2;
        w.f fVar;
        int i3 = i2 + 0;
        int i4 = 0;
        while (true) {
            bArr2 = this.f2135e;
            fVar = this.f2134d;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            y.b bVar = this.f2132b;
            int iA = bVar.a(b2);
            if (iA == 1) {
                this.f2133c = 3;
                break;
            }
            if (iA == 2) {
                this.f2133c = 2;
                break;
            }
            if (iA == 0) {
                int i5 = bVar.f2267c;
                if (i4 == 0) {
                    bArr2[1] = bArr[0];
                    fVar.c(bArr2, 0, i5);
                } else {
                    fVar.c(bArr, i4 - 1, i5);
                }
            }
            i4++;
        }
        bArr2[0] = bArr[i3 - 1];
        if (this.f2133c == 1) {
            if ((fVar.f2197b > 1024) && b() > 0.95f) {
                this.f2133c = 2;
            }
        }
        return this.f2133c;
    }

    @Override
    public final void e() {
        this.f2132b.f2266b = 0;
        this.f2133c = 1;
        this.f2134d.d();
        Arrays.fill(this.f2135e, (byte) 0);
    }
}
