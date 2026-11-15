package defpackage;

import java.io.IOException;
import java.io.OutputStream;

public class lp4 implements da3 {
    public final byte[] a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    public final byte[] b = new byte[128];

    public lp4() {
        g();
    }

    public static boolean f(char c) {
        return c == '\n' || c == '\r' || c == '\t' || c == ' ';
    }

    @Override
    public int a(int i) {
        return i * 2;
    }

    @Override
    public int b(byte[] bArr, int i, int i2, OutputStream outputStream) throws IOException {
        if (i2 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int i3 = i2;
        while (i3 > 0) {
            int iMin = Math.min(36, i3);
            outputStream.write(bArr2, 0, e(bArr, i, iMin, bArr2, 0));
            i += iMin;
            i3 -= iMin;
        }
        return i2 * 2;
    }

    public int c(String str, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[36];
        int length = str.length();
        while (length > 0 && f(str.charAt(length - 1))) {
            length--;
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            while (i < length && f(str.charAt(i))) {
                i++;
            }
            int i4 = i + 1;
            byte b = this.b[str.charAt(i)];
            while (i4 < length && f(str.charAt(i4))) {
                i4++;
            }
            int i5 = i4 + 1;
            byte b2 = this.b[str.charAt(i4)];
            if ((b | b2) < 0) {
                throw new IOException("invalid characters encountered in Hex string");
            }
            int i6 = i2 + 1;
            bArr[i2] = (byte) ((b << 4) | b2);
            if (i6 == 36) {
                outputStream.write(bArr);
                i2 = 0;
            } else {
                i2 = i6;
            }
            i3++;
            i = i5;
        }
        if (i2 > 0) {
            outputStream.write(bArr, 0, i2);
        }
        return i3;
    }

    public byte[] d(String str, int i, int i2) throws IOException {
        if (str == null) {
            throw new NullPointerException("'str' cannot be null");
        }
        if (i < 0 || i2 < 0 || i > str.length() - i2) {
            throw new IndexOutOfBoundsException("invalid offset and/or length specified");
        }
        if ((i2 & 1) != 0) {
            throw new IOException("a hexadecimal encoding must have an even number of characters");
        }
        int i3 = i2 >>> 1;
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i + 1;
            byte b = this.b[str.charAt(i)];
            i += 2;
            int i6 = (b << 4) | this.b[str.charAt(i5)];
            if (i6 < 0) {
                throw new IOException("invalid characters encountered in Hex string");
            }
            bArr[i4] = (byte) i6;
        }
        return bArr;
    }

    public int e(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = i2 + i;
        int i5 = i3;
        while (i < i4) {
            int i6 = i + 1;
            byte b = bArr[i];
            int i7 = i5 + 1;
            byte[] bArr3 = this.a;
            bArr2[i5] = bArr3[(b & 255) >>> 4];
            i5 += 2;
            bArr2[i7] = bArr3[b & 15];
            i = i6;
        }
        return i5 - i3;
    }

    public void g() {
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.b;
            if (i2 >= bArr.length) {
                break;
            }
            bArr[i2] = -1;
            i2++;
        }
        while (true) {
            byte[] bArr2 = this.a;
            if (i >= bArr2.length) {
                byte[] bArr3 = this.b;
                bArr3[65] = bArr3[97];
                bArr3[66] = bArr3[98];
                bArr3[67] = bArr3[99];
                bArr3[68] = bArr3[100];
                bArr3[69] = bArr3[101];
                bArr3[70] = bArr3[102];
                return;
            }
            this.b[bArr2[i]] = (byte) i;
            i++;
        }
    }
}
