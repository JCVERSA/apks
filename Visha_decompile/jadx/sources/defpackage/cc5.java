package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import kotlinx.serialization.json.internal.JsonEncodingException;
import org.apache.commons.io.IOUtils;

public final class cc5 implements sc5 {
    public final OutputStream a;
    public final byte[] b;
    public char[] c;
    public int d;

    public cc5(OutputStream outputStream) {
        y45.j(outputStream, "stream");
        this.a = outputStream;
        this.b = do0.c.d();
        this.c = wu0.c.d();
    }

    @Override
    public void a(char c) throws IOException {
        i(c);
    }

    @Override
    public void b(String str) throws IOException {
        y45.j(str, "text");
        e(0, str.length() + 2);
        char[] cArr = this.c;
        cArr[0] = '\"';
        int length = str.length();
        str.getChars(0, length, cArr, 1);
        int i = length + 1;
        for (int i2 = 1; i2 < i; i2++) {
            char c = cArr[i2];
            if (c < zz9.a().length && zz9.a()[c] != 0) {
                d(i2, str);
                return;
            }
        }
        cArr[i] = '\"';
        h(cArr, length + 2);
        f();
    }

    @Override
    public void c(String str) throws IOException {
        y45.j(str, "text");
        int length = str.length();
        e(0, length);
        str.getChars(0, length, this.c, 0);
        h(this.c, length);
    }

    public final void d(int i, String str) throws IOException {
        byte b;
        int length = str.length();
        for (int i2 = i - 1; i2 < length; i2++) {
            int iE = e(i, 2);
            char cCharAt = str.charAt(i2);
            if (cCharAt >= zz9.a().length || (b = zz9.a()[cCharAt]) == 0) {
                int i3 = iE + 1;
                this.c[iE] = cCharAt;
                i = i3;
            } else if (b == 1) {
                String str2 = zz9.b()[cCharAt];
                y45.g(str2);
                int iE2 = e(iE, str2.length());
                str2.getChars(0, str2.length(), this.c, iE2);
                i = iE2 + str2.length();
            } else {
                char[] cArr = this.c;
                cArr[iE] = IOUtils.DIR_SEPARATOR_WINDOWS;
                cArr[iE + 1] = (char) b;
                i = iE + 2;
            }
        }
        e(i, 1);
        char[] cArr2 = this.c;
        cArr2[i] = '\"';
        h(cArr2, i + 1);
        f();
    }

    public final int e(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = this.c;
        if (cArr.length <= i3) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, wn8.d(i3, i * 2));
            y45.i(cArrCopyOf, "copyOf(this, newSize)");
            this.c = cArrCopyOf;
        }
        return i;
    }

    public final void f() throws IOException {
        this.a.write(this.b, 0, this.d);
        this.d = 0;
    }

    public void g() throws IOException {
        f();
        wu0.c.c(this.c);
        do0.c.c(this.b);
    }

    public final void h(char[] cArr, int i) throws IOException {
        if (i < 0) {
            throw new IllegalArgumentException("count < 0");
        }
        if (i > cArr.length) {
            throw new IllegalArgumentException(("count > string.length: " + i + " > " + cArr.length).toString());
        }
        int i2 = 0;
        while (i2 < i) {
            char c = cArr[i2];
            if (c < 128) {
                if (this.b.length - this.d < 1) {
                    f();
                }
                byte[] bArr = this.b;
                int i3 = this.d;
                int i4 = i3 + 1;
                this.d = i4;
                bArr[i3] = (byte) c;
                i2++;
                int iMin = Math.min(i, (bArr.length - i4) + i2);
                while (i2 < iMin) {
                    char c2 = cArr[i2];
                    if (c2 >= 128) {
                        break;
                    }
                    byte[] bArr2 = this.b;
                    int i5 = this.d;
                    this.d = i5 + 1;
                    bArr2[i5] = (byte) c2;
                    i2++;
                }
            } else {
                if (c < 2048) {
                    if (this.b.length - this.d < 2) {
                        f();
                    }
                    byte[] bArr3 = this.b;
                    int i6 = this.d;
                    int i7 = i6 + 1;
                    this.d = i7;
                    bArr3[i6] = (byte) ((c >> 6) | 192);
                    this.d = i6 + 2;
                    bArr3[i7] = (byte) ((c & '?') | 128);
                } else if (c < 55296 || c > 57343) {
                    if (this.b.length - this.d < 3) {
                        f();
                    }
                    byte[] bArr4 = this.b;
                    int i8 = this.d;
                    int i9 = i8 + 1;
                    this.d = i9;
                    bArr4[i8] = (byte) ((c >> '\f') | 224);
                    int i10 = i8 + 2;
                    this.d = i10;
                    bArr4[i9] = (byte) (((c >> 6) & 63) | 128);
                    this.d = i8 + 3;
                    bArr4[i10] = (byte) ((c & '?') | 128);
                } else {
                    int i11 = i2 + 1;
                    char c3 = i11 < i ? cArr[i11] : (char) 0;
                    if (c > 56319 || 56320 > c3 || c3 >= 57344) {
                        if (this.b.length - this.d < 1) {
                            f();
                        }
                        byte[] bArr5 = this.b;
                        int i12 = this.d;
                        this.d = i12 + 1;
                        bArr5[i12] = (byte) 63;
                        i2 = i11;
                    } else {
                        int i13 = (((c & 1023) << 10) | (c3 & 1023)) + 65536;
                        if (this.b.length - this.d < 4) {
                            f();
                        }
                        byte[] bArr6 = this.b;
                        int i14 = this.d;
                        int i15 = i14 + 1;
                        this.d = i15;
                        bArr6[i14] = (byte) ((i13 >> 18) | 240);
                        int i16 = i14 + 2;
                        this.d = i16;
                        bArr6[i15] = (byte) (((i13 >> 12) & 63) | 128);
                        int i17 = i14 + 3;
                        this.d = i17;
                        bArr6[i16] = (byte) (((i13 >> 6) & 63) | 128);
                        this.d = i14 + 4;
                        bArr6[i17] = (byte) ((i13 & 63) | 128);
                        i2 += 2;
                    }
                }
                i2++;
            }
        }
    }

    public final void i(int i) throws IOException {
        if (i < 128) {
            if (this.b.length - this.d < 1) {
                f();
            }
            byte[] bArr = this.b;
            int i2 = this.d;
            this.d = i2 + 1;
            bArr[i2] = (byte) i;
            return;
        }
        if (i < 2048) {
            if (this.b.length - this.d < 2) {
                f();
            }
            byte[] bArr2 = this.b;
            int i3 = this.d;
            int i4 = i3 + 1;
            this.d = i4;
            bArr2[i3] = (byte) ((i >> 6) | 192);
            this.d = i3 + 2;
            bArr2[i4] = (byte) ((i & 63) | 128);
            return;
        }
        if (55296 <= i && i < 57344) {
            if (this.b.length - this.d < 1) {
                f();
            }
            byte[] bArr3 = this.b;
            int i5 = this.d;
            this.d = i5 + 1;
            bArr3[i5] = (byte) 63;
            return;
        }
        if (i < 65536) {
            if (this.b.length - this.d < 3) {
                f();
            }
            byte[] bArr4 = this.b;
            int i6 = this.d;
            int i7 = i6 + 1;
            this.d = i7;
            bArr4[i6] = (byte) ((i >> 12) | 224);
            int i8 = i6 + 2;
            this.d = i8;
            bArr4[i7] = (byte) (((i >> 6) & 63) | 128);
            this.d = i6 + 3;
            bArr4[i8] = (byte) ((i & 63) | 128);
            return;
        }
        if (i > 1114111) {
            throw new JsonEncodingException("Unexpected code point: " + i);
        }
        if (this.b.length - this.d < 4) {
            f();
        }
        byte[] bArr5 = this.b;
        int i9 = this.d;
        int i10 = i9 + 1;
        this.d = i10;
        bArr5[i9] = (byte) ((i >> 18) | 240);
        int i11 = i9 + 2;
        this.d = i11;
        bArr5[i10] = (byte) (((i >> 12) & 63) | 128);
        int i12 = i9 + 3;
        this.d = i12;
        bArr5[i11] = (byte) (((i >> 6) & 63) | 128);
        this.d = i9 + 4;
        bArr5[i12] = (byte) ((i & 63) | 128);
    }

    @Override
    public void writeLong(long j) throws IOException {
        c(String.valueOf(j));
    }
}
