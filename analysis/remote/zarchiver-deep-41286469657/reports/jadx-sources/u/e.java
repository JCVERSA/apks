package u;

import java.util.Arrays;

public final class e extends b {

    public static final y.e f2119f = new y.e();

    public int f2121c;

    public final y.b f2120b = new y.b(f2119f);

    public final w.e f2122d = new w.e();

    public final byte[] f2123e = new byte[2];

    public e() {
        e();
    }

    @Override
    public final String a() {
        return t.a.f2048k;
    }

    @Override
    public final float b() {
        return this.f2122d.a();
    }

    @Override
    public final int c() {
        return this.f2121c;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        byte[] bArr2;
        w.e eVar;
        int i3 = i2 + 0;
        int i4 = 0;
        while (true) {
            bArr2 = this.f2123e;
            eVar = this.f2122d;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            y.b bVar = this.f2120b;
            int iA = bVar.a(b2);
            if (iA == 1) {
                this.f2121c = 3;
                break;
            }
            if (iA == 2) {
                this.f2121c = 2;
                break;
            }
            if (iA == 0) {
                int i5 = bVar.f2267c;
                if (i4 == 0) {
                    bArr2[1] = bArr[0];
                    eVar.c(bArr2, 0, i5);
                } else {
                    eVar.c(bArr, i4 - 1, i5);
                }
            }
            i4++;
        }
        bArr2[0] = bArr[i3 - 1];
        if (this.f2121c == 1) {
            if ((eVar.f2197b > 1024) && b() > 0.95f) {
                this.f2121c = 2;
            }
        }
        return this.f2121c;
    }

    @Override
    public final void e() {
        this.f2120b.f2266b = 0;
        this.f2121c = 1;
        this.f2122d.d();
        Arrays.fill(this.f2123e, (byte) 0);
    }
}
