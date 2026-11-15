package defpackage;

import com.google.android.gms.internal.ads.ha;

public abstract class xri extends ha {
    public final byte[] d;
    public final int e;
    public int f;
    public int g;

    public xri(int i) {
        super(null);
        if (i < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        byte[] bArr = new byte[Math.max(i, 20)];
        this.d = bArr;
        this.e = bArr.length;
    }

    public final void C(byte b) {
        byte[] bArr = this.d;
        int i = this.f;
        bArr[i] = b;
        this.f = i + 1;
        this.g++;
    }

    public final void D(int i) {
        int i2 = this.f;
        byte[] bArr = this.d;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
        this.f = i2 + 4;
        this.g += 4;
    }

    public final void E(long j) {
        int i = this.f;
        byte[] bArr = this.d;
        bArr[i] = (byte) j;
        bArr[i + 1] = (byte) (j >> 8);
        bArr[i + 2] = (byte) (j >> 16);
        bArr[i + 3] = (byte) (j >> 24);
        bArr[i + 4] = (byte) (j >> 32);
        bArr[i + 5] = (byte) (j >> 40);
        bArr[i + 6] = (byte) (j >> 48);
        bArr[i + 7] = (byte) (j >> 56);
        this.f = i + 8;
        this.g += 8;
    }

    public final void F(int i) {
        if (!ha.c) {
            while ((i & (-128)) != 0) {
                byte[] bArr = this.d;
                int i2 = this.f;
                this.f = i2 + 1;
                bArr[i2] = (byte) (i | 128);
                this.g++;
                i >>>= 7;
            }
            byte[] bArr2 = this.d;
            int i3 = this.f;
            this.f = i3 + 1;
            bArr2[i3] = (byte) i;
            this.g++;
            return;
        }
        long j = this.f;
        while ((i & (-128)) != 0) {
            byte[] bArr3 = this.d;
            int i4 = this.f;
            this.f = i4 + 1;
            vui.y(bArr3, i4, (byte) (i | 128));
            i >>>= 7;
        }
        byte[] bArr4 = this.d;
        int i5 = this.f;
        this.f = i5 + 1;
        vui.y(bArr4, i5, (byte) i);
        this.g += (int) (((long) this.f) - j);
    }

    public final void G(long j) {
        if (ha.c) {
            long j2 = this.f;
            while (true) {
                int i = (int) j;
                if ((j & (-128)) == 0) {
                    byte[] bArr = this.d;
                    int i2 = this.f;
                    this.f = i2 + 1;
                    vui.y(bArr, i2, (byte) i);
                    this.g += (int) (((long) this.f) - j2);
                    return;
                }
                byte[] bArr2 = this.d;
                int i3 = this.f;
                this.f = i3 + 1;
                vui.y(bArr2, i3, (byte) (i | 128));
                j >>>= 7;
            }
        } else {
            while (true) {
                int i4 = (int) j;
                if ((j & (-128)) == 0) {
                    byte[] bArr3 = this.d;
                    int i5 = this.f;
                    this.f = i5 + 1;
                    bArr3[i5] = (byte) i4;
                    this.g++;
                    return;
                }
                byte[] bArr4 = this.d;
                int i6 = this.f;
                this.f = i6 + 1;
                bArr4[i6] = (byte) (i4 | 128);
                this.g++;
                j >>>= 7;
            }
        }
    }

    @Override
    public final int n() {
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
    }
}
