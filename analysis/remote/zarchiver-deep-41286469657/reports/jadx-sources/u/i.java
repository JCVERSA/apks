package u;

import java.nio.ByteBuffer;

public final class i extends b {

    public static final byte[] f2142e = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 0, 1, 7, 1, 1, 1, 1, 1, 1, 5, 1, 5, 0, 5, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 1, 7, 0, 7, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 1, 4, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 1, 6, 6, 6, 6, 6, 7, 7, 7};

    public static final byte[] f2143f = {0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 1, 1, 3, 3, 0, 3, 3, 3, 1, 2, 1, 2, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 1, 3, 1, 1, 1, 3, 0, 3, 1, 3, 1, 1, 3, 3};

    public int f2144b;

    public byte f2145c;

    public final int[] f2146d = new int[4];

    public i() {
        e();
    }

    @Override
    public final String a() {
        return t.a.f2055r;
    }

    @Override
    public final float b() {
        float f2;
        if (this.f2144b == 3) {
            return 0.01f;
        }
        int[] iArr = this.f2146d;
        int i2 = 0;
        for (int i3 : iArr) {
            i2 += i3;
        }
        if (i2 <= 0) {
            f2 = 0.0f;
        } else {
            float f3 = i2;
            f2 = ((iArr[3] * 1.0f) / f3) - ((iArr[1] * 20.0f) / f3);
        }
        return (f2 >= 0.0f ? f2 : 0.0f) * 0.5f;
    }

    @Override
    public final int c() {
        return this.f2144b;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i2);
        int i3 = i2 + 0;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        while (true) {
            boolean z3 = true;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            if (b2 == 62) {
                z2 = false;
            } else if (b2 == 60) {
                z2 = true;
            }
            if ((b2 & 128) == 0) {
                int i6 = b2 & 255;
                if (i6 >= 65 && ((i6 <= 90 || i6 >= 97) && i6 <= 122)) {
                    z3 = false;
                }
                if (z3) {
                    if (i4 > i5 && !z2) {
                        byteBufferAllocate.put(bArr, i5, i4 - i5);
                        byteBufferAllocate.put((byte) 32);
                    }
                    i5 = i4 + 1;
                }
            }
            i4++;
        }
        if (!z2 && i4 > i5) {
            byteBufferAllocate.put(bArr, i5, i4 - i5);
        }
        byte[] bArrArray = byteBufferAllocate.array();
        int iPosition = byteBufferAllocate.position();
        for (int i7 = 0; i7 < iPosition; i7++) {
            byte b3 = f2142e[bArrArray[i7] & 255];
            byte b4 = f2143f[(this.f2145c * 8) + b3];
            if (b4 == 0) {
                this.f2144b = 3;
                break;
            }
            int[] iArr = this.f2146d;
            iArr[b4] = iArr[b4] + 1;
            this.f2145c = b3;
        }
        return this.f2144b;
    }

    @Override
    public final void e() {
        this.f2144b = 1;
        this.f2145c = (byte) 1;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f2146d;
            if (i2 >= iArr.length) {
                return;
            }
            iArr[i2] = 0;
            i2++;
        }
    }
}
