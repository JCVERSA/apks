package com.mgtv.data.aphone.core.j;

import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.zip.GZIPOutputStream;
import okio.Utf8;
import org.apache.commons.lang3.CharEncoding;
import org.mozilla.classfile.ByteCode;

public class a {
    static final boolean a = true;
    private static final byte[] b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte[] c = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, ByteCode.T_LONG, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] d = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    private static final byte[] e = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, ByteCode.T_LONG, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, Utf8.REPLACEMENT_BYTE, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] f = {45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
    private static final byte[] g = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -9, -9, -1, -9, -9, -9, ByteCode.T_LONG, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, Utf8.REPLACEMENT_BYTE, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    private a() {
    }

    private static final byte[] b(int i) {
        if ((i & 16) == 16) {
            return d;
        }
        return (i & 32) == 32 ? f : b;
    }

    public static final byte[] c(int i) {
        if ((i & 16) == 16) {
            return e;
        }
        return (i & 32) == 32 ? g : c;
    }

    private static byte[] a(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        byte[] bArrB = b(i4);
        int i5 = (i2 > 0 ? (bArr[i] << 24) >>> 8 : 0) | (i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0) | (i2 > 2 ? (bArr[i + 2] << 24) >>> 24 : 0);
        if (i2 == 1) {
            bArr2[i3] = bArrB[i5 >>> 18];
            bArr2[i3 + 1] = bArrB[(i5 >>> 12) & 63];
            bArr2[i3 + 2] = 61;
            bArr2[i3 + 3] = 61;
            return bArr2;
        }
        if (i2 == 2) {
            bArr2[i3] = bArrB[i5 >>> 18];
            bArr2[i3 + 1] = bArrB[(i5 >>> 12) & 63];
            bArr2[i3 + 2] = bArrB[(i5 >>> 6) & 63];
            bArr2[i3 + 3] = 61;
            return bArr2;
        }
        if (i2 != 3) {
            return bArr2;
        }
        bArr2[i3] = bArrB[i5 >>> 18];
        bArr2[i3 + 1] = bArrB[(i5 >>> 12) & 63];
        bArr2[i3 + 2] = bArrB[(i5 >>> 6) & 63];
        bArr2[i3 + 3] = bArrB[i5 & 63];
        return bArr2;
    }

    public static byte[] b(byte[] bArr, byte[] bArr2, int i, int i2) {
        a(bArr2, 0, i, bArr, 0, i2);
        return bArr;
    }

    public static byte[] b(byte[] bArr, int i, int i2, int i3) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        C0178a c0178a;
        GZIPOutputStream gZIPOutputStream;
        if (bArr == null) {
            throw new NullPointerException("Cannot serialize a null array.");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Cannot have negative offset: " + i);
        }
        if (i2 >= 0) {
            if (i + i2 > bArr.length) {
                throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(bArr.length)));
            }
            if ((i3 & 2) != 0) {
                GZIPOutputStream gZIPOutputStream2 = null;
                gZIPOutputStream2 = null;
                gZIPOutputStream2 = null;
                ByteArrayOutputStream byteArrayOutputStream2 = null;
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        c0178a = new C0178a(byteArrayOutputStream, i3 | 1);
                        try {
                            gZIPOutputStream = new GZIPOutputStream(c0178a);
                            try {
                                gZIPOutputStream.write(bArr, i, i2);
                                gZIPOutputStream.close();
                                try {
                                    gZIPOutputStream.close();
                                } catch (Exception unused) {
                                }
                                try {
                                    c0178a.close();
                                } catch (Exception unused2) {
                                }
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception unused3) {
                                }
                                return byteArrayOutputStream.toByteArray();
                            } catch (IOException e2) {
                                e = e2;
                                byteArrayOutputStream2 = byteArrayOutputStream;
                                try {
                                    throw e;
                                } catch (Throwable th) {
                                    th = th;
                                    byteArrayOutputStream = byteArrayOutputStream2;
                                    gZIPOutputStream2 = gZIPOutputStream;
                                    try {
                                        gZIPOutputStream2.close();
                                    } catch (Exception unused4) {
                                    }
                                    try {
                                        c0178a.close();
                                    } catch (Exception unused5) {
                                    }
                                    try {
                                        byteArrayOutputStream.close();
                                        throw th;
                                    } catch (Exception unused6) {
                                        throw th;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                gZIPOutputStream2 = gZIPOutputStream;
                                gZIPOutputStream2.close();
                                c0178a.close();
                                byteArrayOutputStream.close();
                                throw th;
                            }
                        } catch (IOException e3) {
                            e = e3;
                            gZIPOutputStream = null;
                        }
                    } catch (IOException e4) {
                        e = e4;
                        c0178a = null;
                        gZIPOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        c0178a = null;
                    }
                } catch (IOException e5) {
                    e = e5;
                    c0178a = null;
                    gZIPOutputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    byteArrayOutputStream = null;
                    c0178a = null;
                }
            } else {
                boolean z = (i3 & 8) != 0;
                int i4 = ((i2 / 3) * 4) + (i2 % 3 > 0 ? 4 : 0);
                if (z) {
                    i4 += i4 / 76;
                }
                int i5 = i4;
                byte[] bArr2 = new byte[i5];
                int i6 = i2 - 2;
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                while (i7 < i6) {
                    int i10 = i7;
                    a(bArr, i7 + i, 3, bArr2, i8, i3);
                    int i11 = i9 + 4;
                    if (!z || i11 < 76) {
                        i9 = i11;
                    } else {
                        bArr2[i8 + 4] = 10;
                        i8++;
                        i9 = 0;
                    }
                    i7 = i10 + 3;
                    i8 += 4;
                }
                int i12 = i7;
                if (i12 < i2) {
                    a(bArr, i12 + i, i2 - i12, bArr2, i8, i3);
                    i8 += 4;
                }
                int i13 = i8;
                if (i13 > i5 - 1) {
                    return bArr2;
                }
                byte[] bArr3 = new byte[i13];
                System.arraycopy(bArr2, 0, bArr3, 0, i13);
                return bArr3;
            }
        } else {
            throw new IllegalArgumentException("Cannot have length offset: " + i2);
        }
    }

    public static class C0178a extends FilterOutputStream {
        private boolean a;
        private int b;
        private byte[] c;
        private int d;
        private int e;
        private boolean f;
        private byte[] g;
        private boolean h;
        private int i;
        private byte[] j;

        public C0178a(OutputStream outputStream, int i) {
            super(outputStream);
            this.f = (i & 8) != 0;
            boolean z = (i & 1) != 0;
            this.a = z;
            int i2 = z ? 3 : 4;
            this.d = i2;
            this.c = new byte[i2];
            this.b = 0;
            this.e = 0;
            this.h = false;
            this.g = new byte[4];
            this.i = i;
            this.j = a.c(i);
        }

        public void a() throws IOException {
            int i = this.b;
            if (i > 0) {
                if (!this.a) {
                    throw new IOException("Base64 input not properly padded.");
                }
                ((FilterOutputStream) this).out.write(a.b(this.g, this.c, i, this.i));
                this.b = 0;
            }
        }

        @Override
        public void close() throws IOException {
            a();
            super.close();
            this.c = null;
            ((FilterOutputStream) this).out = null;
        }

        @Override
        public void write(int i) throws IOException {
            if (this.h) {
                ((FilterOutputStream) this).out.write(i);
                return;
            }
            if (!this.a) {
                byte b = this.j[i & 127];
                if (b <= -5) {
                    if (b != -5) {
                        throw new IOException("Invalid character in Base64 data.");
                    }
                    return;
                }
                byte[] bArr = this.c;
                int i2 = this.b;
                int i3 = i2 + 1;
                this.b = i3;
                bArr[i2] = (byte) i;
                if (i3 >= this.d) {
                    ((FilterOutputStream) this).out.write(this.g, 0, a.b(bArr, 0, this.g, 0, this.i));
                    this.b = 0;
                    return;
                }
                return;
            }
            byte[] bArr2 = this.c;
            int i4 = this.b;
            int i5 = i4 + 1;
            this.b = i5;
            bArr2[i4] = (byte) i;
            int i6 = this.d;
            if (i5 >= i6) {
                ((FilterOutputStream) this).out.write(a.b(this.g, bArr2, i6, this.i));
                int i7 = this.e + 4;
                this.e = i7;
                if (this.f && i7 >= 76) {
                    ((FilterOutputStream) this).out.write(10);
                    this.e = 0;
                }
                this.b = 0;
            }
        }

        @Override
        public void write(byte[] bArr, int i, int i2) throws IOException {
            if (this.h) {
                ((FilterOutputStream) this).out.write(bArr, i, i2);
                return;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                write(bArr[i + i3]);
            }
        }
    }

    public static String a(byte[] bArr) throws Throwable {
        String strA;
        try {
            strA = a(bArr, 0, bArr.length, 0);
        } catch (IOException e2) {
            if (!a) {
                throw new AssertionError(e2.getMessage());
            }
            strA = null;
        }
        if (a || strA != null) {
            return strA;
        }
        throw new AssertionError();
    }

    public static String a(byte[] bArr, int i, int i2, int i3) throws Throwable {
        byte[] bArrB = b(bArr, i, i2, i3);
        try {
            return new String(bArrB, CharEncoding.US_ASCII);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArrB);
        }
    }

    public static int b(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4;
        int i5;
        if (bArr == null) {
            throw new NullPointerException("Source array was null.");
        }
        if (bArr2 != null) {
            if (i >= 0 && (i4 = i + 3) < bArr.length) {
                if (i2 >= 0 && (i5 = i2 + 2) < bArr2.length) {
                    byte[] bArrC = c(i3);
                    byte b2 = bArr[i + 2];
                    if (b2 == 61) {
                        bArr2[i2] = (byte) ((((bArrC[bArr[i + 1]] & 255) << 12) | ((bArrC[bArr[i]] & 255) << 18)) >>> 16);
                        return 1;
                    }
                    byte b3 = bArr[i4];
                    if (b3 == 61) {
                        int i6 = ((bArrC[bArr[i + 1]] & 255) << 12) | ((bArrC[bArr[i]] & 255) << 18) | ((bArrC[b2] & 255) << 6);
                        bArr2[i2] = (byte) (i6 >>> 16);
                        bArr2[i2 + 1] = (byte) (i6 >>> 8);
                        return 2;
                    }
                    int i7 = ((bArrC[bArr[i + 1]] & 255) << 12) | ((bArrC[bArr[i]] & 255) << 18) | ((bArrC[b2] & 255) << 6) | (bArrC[b3] & 255);
                    bArr2[i2] = (byte) (i7 >> 16);
                    bArr2[i2 + 1] = (byte) (i7 >> 8);
                    bArr2[i5] = (byte) i7;
                    return 3;
                }
                throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", Integer.valueOf(bArr2.length), Integer.valueOf(i2)));
            }
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i)));
        }
        throw new NullPointerException("Destination array was null.");
    }
}
