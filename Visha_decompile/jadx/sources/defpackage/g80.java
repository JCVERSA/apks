package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import okio.Utf8;

public class g80 implements da3 {
    public final byte[] a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    public byte b = 61;
    public final byte[] c = new byte[128];

    public g80() {
        d();
    }

    @Override
    public int a(int i) {
        return ((i + 2) / 3) * 4;
    }

    @Override
    public int b(byte[] bArr, int i, int i2, OutputStream outputStream) throws IOException {
        if (i2 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int i3 = i2;
        while (i3 > 0) {
            int iMin = Math.min(54, i3);
            outputStream.write(bArr2, 0, c(bArr, i, iMin, bArr2, 0));
            i += iMin;
            i3 -= iMin;
        }
        return ((i2 + 2) / 3) * 4;
    }

    public int c(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = (i + i2) - 2;
        int i5 = i;
        int i6 = i3;
        while (i5 < i4) {
            byte b = bArr[i5];
            int i7 = i5 + 2;
            int i8 = bArr[i5 + 1] & 255;
            i5 += 3;
            byte b2 = bArr[i7];
            byte[] bArr3 = this.a;
            bArr2[i6] = bArr3[(b >>> 2) & 63];
            bArr2[i6 + 1] = bArr3[((b << 4) | (i8 >>> 4)) & 63];
            int i9 = i6 + 3;
            bArr2[i6 + 2] = bArr3[((i8 << 2) | ((b2 & 255) >>> 6)) & 63];
            i6 += 4;
            bArr2[i9] = bArr3[b2 & Utf8.REPLACEMENT_BYTE];
        }
        int i10 = i2 - (i5 - i);
        if (i10 == 1) {
            int i11 = bArr[i5] & 255;
            byte[] bArr4 = this.a;
            bArr2[i6] = bArr4[(i11 >>> 2) & 63];
            bArr2[i6 + 1] = bArr4[(i11 << 4) & 63];
            int i12 = i6 + 3;
            byte b3 = this.b;
            bArr2[i6 + 2] = b3;
            i6 += 4;
            bArr2[i12] = b3;
        } else if (i10 == 2) {
            int i13 = i5 + 1;
            int i14 = bArr[i5] & 255;
            int i15 = bArr[i13] & 255;
            byte[] bArr5 = this.a;
            bArr2[i6] = bArr5[(i14 >>> 2) & 63];
            bArr2[i6 + 1] = bArr5[((i14 << 4) | (i15 >>> 4)) & 63];
            int i16 = i6 + 3;
            bArr2[i6 + 2] = bArr5[(i15 << 2) & 63];
            i6 += 4;
            bArr2[i16] = this.b;
        }
        return i6 - i3;
    }

    public void d() {
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.c;
            if (i2 >= bArr.length) {
                break;
            }
            bArr[i2] = -1;
            i2++;
        }
        while (true) {
            byte[] bArr2 = this.a;
            if (i >= bArr2.length) {
                return;
            }
            this.c[bArr2[i]] = (byte) i;
            i++;
        }
    }
}
