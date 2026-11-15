package androidx.datastore.preferences.protobuf;

import com.cloud.tmc.kernel.constants.TmcConstants;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

abstract class Utf8 {

    private static final b f8415a;

    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i10, int i11) {
            super("Unpaired surrogate at index " + i10 + " of " + i11);
        }
    }

    private static class a {
        public static void h(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (m(b11) || (((b10 << 28) + (b11 + 112)) >> 30) != 0 || m(b12) || m(b13)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int iR = ((b10 & 7) << 18) | (r(b11) << 12) | (r(b12) << 6) | r(b13);
            cArr[i10] = l(iR);
            cArr[i10 + 1] = q(iR);
        }

        public static void i(byte b10, char[] cArr, int i10) {
            cArr[i10] = (char) b10;
        }

        public static void j(byte b10, byte b11, byte b12, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (m(b11) || ((b10 == -32 && b11 < -96) || ((b10 == -19 && b11 >= -96) || m(b12)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i10] = (char) (((b10 & 15) << 12) | (r(b11) << 6) | r(b12));
        }

        public static void k(byte b10, byte b11, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (b10 < -62 || m(b11)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i10] = (char) (((b10 & 31) << 6) | r(b11));
        }

        private static char l(int i10) {
            return (char) ((i10 >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean m(byte b10) {
            return b10 > -65;
        }

        public static boolean n(byte b10) {
            return b10 >= 0;
        }

        public static boolean o(byte b10) {
            return b10 < -16;
        }

        public static boolean p(byte b10) {
            return b10 < -32;
        }

        private static char q(int i10) {
            return (char) ((i10 & 1023) + okio.Utf8.LOG_SURROGATE_HEADER);
        }

        private static int r(byte b10) {
            return b10 & okio.Utf8.REPLACEMENT_BYTE;
        }
    }

    static abstract class b {
        b() {
        }

        private static int j(ByteBuffer byteBuffer, int i10, int i11) {
            int iL = i10 + Utf8.l(byteBuffer, i10, i11);
            while (iL < i11) {
                int i12 = iL + 1;
                byte b10 = byteBuffer.get(iL);
                if (b10 >= 0) {
                    iL = i12;
                } else if (b10 < -32) {
                    if (i12 >= i11) {
                        return b10;
                    }
                    if (b10 < -62 || byteBuffer.get(i12) > -65) {
                        return -1;
                    }
                    iL += 2;
                } else {
                    if (b10 >= -16) {
                        if (i12 >= i11 - 2) {
                            return Utf8.p(byteBuffer, b10, i12, i11 - i12);
                        }
                        int i13 = iL + 2;
                        byte b11 = byteBuffer.get(i12);
                        if (b11 <= -65 && (((b10 << 28) + (b11 + 112)) >> 30) == 0) {
                            int i14 = iL + 3;
                            if (byteBuffer.get(i13) <= -65) {
                                iL += 4;
                                if (byteBuffer.get(i14) > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i12 >= i11 - 1) {
                        return Utf8.p(byteBuffer, b10, i12, i11 - i12);
                    }
                    int i15 = iL + 2;
                    byte b12 = byteBuffer.get(i12);
                    if (b12 > -65 || ((b10 == -32 && b12 < -96) || ((b10 == -19 && b12 >= -96) || byteBuffer.get(i15) > -65))) {
                        return -1;
                    }
                    iL += 3;
                }
            }
            return 0;
        }

        final String a(ByteBuffer byteBuffer, int i10, int i11) {
            if (byteBuffer.hasArray()) {
                return b(byteBuffer.array(), byteBuffer.arrayOffset() + i10, i11);
            }
            return byteBuffer.isDirect() ? d(byteBuffer, i10, i11) : c(byteBuffer, i10, i11);
        }

        abstract String b(byte[] bArr, int i10, int i11);

        final String c(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b10 = byteBuffer.get(i10);
                if (!a.n(b10)) {
                    break;
                }
                i10++;
                a.i(b10, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b11 = byteBuffer.get(i10);
                if (a.n(b11)) {
                    int i16 = i14 + 1;
                    a.i(b11, cArr, i14);
                    while (i15 < i12) {
                        byte b12 = byteBuffer.get(i15);
                        if (!a.n(b12)) {
                            break;
                        }
                        i15++;
                        a.i(b12, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (a.p(b11)) {
                    if (i15 >= i12) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    i10 += 2;
                    a.k(b11, byteBuffer.get(i15), cArr, i14);
                    i14++;
                } else if (a.o(b11)) {
                    if (i15 >= i12 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i17 = i10 + 2;
                    i10 += 3;
                    a.j(b11, byteBuffer.get(i15), byteBuffer.get(i17), cArr, i14);
                    i14++;
                } else {
                    if (i15 >= i12 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b13 = byteBuffer.get(i15);
                    int i18 = i10 + 3;
                    byte b14 = byteBuffer.get(i10 + 2);
                    i10 += 4;
                    a.h(b11, b13, b14, byteBuffer.get(i18), cArr, i14);
                    i14 += 2;
                }
            }
            return new String(cArr, 0, i14);
        }

        abstract String d(ByteBuffer byteBuffer, int i10, int i11);

        abstract int e(String str, byte[] bArr, int i10, int i11);

        final boolean f(ByteBuffer byteBuffer, int i10, int i11) {
            return h(0, byteBuffer, i10, i11) == 0;
        }

        final boolean g(byte[] bArr, int i10, int i11) {
            return i(0, bArr, i10, i11) == 0;
        }

        final int h(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? l(i10, byteBuffer, i11, i12) : k(i10, byteBuffer, i11, i12);
            }
            int iArrayOffset = byteBuffer.arrayOffset();
            return i(i10, byteBuffer.array(), i11 + iArrayOffset, iArrayOffset + i12);
        }

        abstract int i(int i10, byte[] bArr, int i11, int i12);

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        
            if (r8.get(r9) > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x004c, code lost:
        
            if (r8.get(r9) > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008f, code lost:
        
            if (r8.get(r7) > (-65)) goto L53;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        final int k(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            byte b10;
            int i13;
            int i14;
            if (i10 != 0) {
                if (i11 >= i12) {
                    return i10;
                }
                byte b11 = (byte) i10;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte b12 = (byte) (~(i10 >> 8));
                    if (b12 == 0) {
                        int i15 = i11 + 1;
                        byte b13 = byteBuffer.get(i11);
                        if (i15 >= i12) {
                            return Utf8.n(b11, b13);
                        }
                        i11 = i15;
                        b12 = b13;
                    }
                    if (b12 <= -65 && ((b11 != -32 || b12 >= -96) && (b11 != -19 || b12 < -96))) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                byte b14 = (byte) (~(i10 >> 8));
                if (b14 == 0) {
                    i13 = i11 + 1;
                    b14 = byteBuffer.get(i11);
                    if (i13 >= i12) {
                        return Utf8.n(b11, b14);
                    }
                    b10 = 0;
                } else {
                    b10 = (byte) (i10 >> 16);
                    i13 = i11;
                }
                if (b10 == 0) {
                    int i16 = i13 + 1;
                    byte b15 = byteBuffer.get(i13);
                    if (i16 >= i12) {
                        return Utf8.o(b11, b14, b15);
                    }
                    b10 = b15;
                    i13 = i16;
                }
                if (b14 <= -65 && (((b11 << 28) + (b14 + 112)) >> 30) == 0 && b10 <= -65) {
                    i11 = i13 + 1;
                }
                return -1;
                i11 = i14;
            }
            return j(byteBuffer, i11, i12);
        }

        abstract int l(int i10, ByteBuffer byteBuffer, int i11, int i12);
    }

    static final class c extends b {
        c() {
        }

        private static int m(byte[] bArr, int i10, int i11) {
            while (i10 < i11 && bArr[i10] >= 0) {
                i10++;
            }
            if (i10 >= i11) {
                return 0;
            }
            return n(bArr, i10, i11);
        }

        private static int n(byte[] bArr, int i10, int i11) {
            while (i10 < i11) {
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 < 0) {
                    if (b10 < -32) {
                        if (i12 >= i11) {
                            return b10;
                        }
                        if (b10 >= -62) {
                            i10 += 2;
                            if (bArr[i12] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (b10 >= -16) {
                        if (i12 >= i11 - 2) {
                            return Utf8.q(bArr, i12, i11);
                        }
                        int i13 = i10 + 2;
                        byte b11 = bArr[i12];
                        if (b11 <= -65 && (((b10 << 28) + (b11 + 112)) >> 30) == 0) {
                            int i14 = i10 + 3;
                            if (bArr[i13] <= -65) {
                                i10 += 4;
                                if (bArr[i14] > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i12 >= i11 - 1) {
                        return Utf8.q(bArr, i12, i11);
                    }
                    int i15 = i10 + 2;
                    byte b12 = bArr[i12];
                    if (b12 <= -65 && ((b10 != -32 || b12 >= -96) && (b10 != -19 || b12 < -96))) {
                        i10 += 3;
                        if (bArr[i15] > -65) {
                        }
                    }
                    return -1;
                }
                i10 = i12;
            }
            return 0;
        }

        @Override
        String b(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((bArr.length - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b10 = bArr[i10];
                if (!a.n(b10)) {
                    break;
                }
                i10++;
                a.i(b10, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b11 = bArr[i10];
                if (a.n(b11)) {
                    int i16 = i14 + 1;
                    a.i(b11, cArr, i14);
                    while (i15 < i12) {
                        byte b12 = bArr[i15];
                        if (!a.n(b12)) {
                            break;
                        }
                        i15++;
                        a.i(b12, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (a.p(b11)) {
                    if (i15 >= i12) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    i10 += 2;
                    a.k(b11, bArr[i15], cArr, i14);
                    i14++;
                } else if (a.o(b11)) {
                    if (i15 >= i12 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i17 = i10 + 2;
                    i10 += 3;
                    a.j(b11, bArr[i15], bArr[i17], cArr, i14);
                    i14++;
                } else {
                    if (i15 >= i12 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b13 = bArr[i15];
                    int i18 = i10 + 3;
                    byte b14 = bArr[i10 + 2];
                    i10 += 4;
                    a.h(b11, b13, b14, bArr[i18], cArr, i14);
                    i14 += 2;
                }
            }
            return new String(cArr, 0, i14);
        }

        @Override
        String d(ByteBuffer byteBuffer, int i10, int i11) {
            return c(byteBuffer, i10, i11);
        }

        @Override
        int e(String str, byte[] bArr, int i10, int i11) {
            int i12;
            int i13;
            char cCharAt;
            int length = str.length();
            int i14 = i11 + i10;
            int i15 = 0;
            while (i15 < length && (i13 = i15 + i10) < i14 && (cCharAt = str.charAt(i15)) < 128) {
                bArr[i13] = (byte) cCharAt;
                i15++;
            }
            if (i15 == length) {
                return i10 + length;
            }
            int i16 = i10 + i15;
            while (i15 < length) {
                char cCharAt2 = str.charAt(i15);
                if (cCharAt2 < 128 && i16 < i14) {
                    bArr[i16] = (byte) cCharAt2;
                    i16++;
                } else if (cCharAt2 < 2048 && i16 <= i14 - 2) {
                    int i17 = i16 + 1;
                    bArr[i16] = (byte) ((cCharAt2 >>> 6) | 960);
                    i16 += 2;
                    bArr[i17] = (byte) ((cCharAt2 & '?') | 128);
                } else {
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i16 > i14 - 3) {
                        if (i16 > i14 - 4) {
                            if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i12 = i15 + 1) == str.length() || !Character.isSurrogatePair(cCharAt2, str.charAt(i12)))) {
                                throw new UnpairedSurrogateException(i15, length);
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i16);
                        }
                        int i18 = i15 + 1;
                        if (i18 != str.length()) {
                            char cCharAt3 = str.charAt(i18);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                bArr[i16] = (byte) ((codePoint >>> 18) | 240);
                                bArr[i16 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i19 = i16 + 3;
                                bArr[i16 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i16 += 4;
                                bArr[i19] = (byte) ((codePoint & 63) | 128);
                                i15 = i18;
                            } else {
                                i15 = i18;
                            }
                        }
                        throw new UnpairedSurrogateException(i15 - 1, length);
                    }
                    bArr[i16] = (byte) ((cCharAt2 >>> '\f') | 480);
                    int i20 = i16 + 2;
                    bArr[i16 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                    i16 += 3;
                    bArr[i20] = (byte) ((cCharAt2 & '?') | 128);
                }
                i15++;
            }
            return i16;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        
            if (r8[r9] > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0046, code lost:
        
            if (r8[r9] > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0083, code lost:
        
            if (r8[r7] > (-65)) goto L53;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int i(int i10, byte[] bArr, int i11, int i12) {
            byte b10;
            int i13;
            int i14;
            if (i10 != 0) {
                if (i11 >= i12) {
                    return i10;
                }
                byte b11 = (byte) i10;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte b12 = (byte) (~(i10 >> 8));
                    if (b12 == 0) {
                        int i15 = i11 + 1;
                        byte b13 = bArr[i11];
                        if (i15 >= i12) {
                            return Utf8.n(b11, b13);
                        }
                        i11 = i15;
                        b12 = b13;
                    }
                    if (b12 <= -65 && ((b11 != -32 || b12 >= -96) && (b11 != -19 || b12 < -96))) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                byte b14 = (byte) (~(i10 >> 8));
                if (b14 == 0) {
                    i13 = i11 + 1;
                    b14 = bArr[i11];
                    if (i13 >= i12) {
                        return Utf8.n(b11, b14);
                    }
                    b10 = 0;
                } else {
                    b10 = (byte) (i10 >> 16);
                    i13 = i11;
                }
                if (b10 == 0) {
                    int i16 = i13 + 1;
                    byte b15 = bArr[i13];
                    if (i16 >= i12) {
                        return Utf8.o(b11, b14, b15);
                    }
                    b10 = b15;
                    i13 = i16;
                }
                if (b14 <= -65 && (((b11 << 28) + (b14 + 112)) >> 30) == 0 && b10 <= -65) {
                    i11 = i13 + 1;
                }
                return -1;
                i11 = i14;
            }
            return m(bArr, i11, i12);
        }

        @Override
        int l(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            return k(i10, byteBuffer, i11, i12);
        }
    }

    static final class d extends b {
        d() {
        }

        static boolean m() {
            return k1.I() && k1.J();
        }

        private static int n(long j10, int i10) {
            int iP = p(j10, i10);
            long j11 = j10 + ((long) iP);
            int i11 = i10 - iP;
            while (true) {
                byte bW = 0;
                while (i11 > 0) {
                    long j12 = j11 + 1;
                    bW = k1.w(j11);
                    if (bW < 0) {
                        j11 = j12;
                        break;
                    }
                    i11--;
                    j11 = j12;
                }
                if (i11 == 0) {
                    return 0;
                }
                int i12 = i11 - 1;
                if (bW < -32) {
                    if (i12 == 0) {
                        return bW;
                    }
                    i11 -= 2;
                    if (bW >= -62) {
                        long j13 = 1 + j11;
                        if (k1.w(j11) <= -65) {
                            j11 = j13;
                        }
                    }
                    return -1;
                }
                if (bW >= -16) {
                    if (i12 < 3) {
                        return r(j11, bW, i12);
                    }
                    i11 -= 4;
                    long j14 = 1 + j11;
                    byte bW2 = k1.w(j11);
                    if (bW2 <= -65 && (((bW << 28) + (bW2 + 112)) >> 30) == 0) {
                        long j15 = 2 + j11;
                        if (k1.w(j14) <= -65) {
                            j11 += 3;
                            if (k1.w(j15) > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i12 < 2) {
                    return r(j11, bW, i12);
                }
                i11 -= 3;
                long j16 = 1 + j11;
                byte bW3 = k1.w(j11);
                if (bW3 <= -65 && ((bW != -32 || bW3 >= -96) && (bW != -19 || bW3 < -96))) {
                    j11 += 2;
                    if (k1.w(j16) > -65) {
                    }
                }
                return -1;
            }
        }

        private static int o(byte[] bArr, long j10, int i10) {
            int iQ = q(bArr, j10, i10);
            int i11 = i10 - iQ;
            long j11 = j10 + ((long) iQ);
            while (true) {
                byte bX = 0;
                while (i11 > 0) {
                    long j12 = j11 + 1;
                    bX = k1.x(bArr, j11);
                    if (bX < 0) {
                        j11 = j12;
                        break;
                    }
                    i11--;
                    j11 = j12;
                }
                if (i11 == 0) {
                    return 0;
                }
                int i12 = i11 - 1;
                if (bX < -32) {
                    if (i12 == 0) {
                        return bX;
                    }
                    i11 -= 2;
                    if (bX >= -62) {
                        long j13 = 1 + j11;
                        if (k1.x(bArr, j11) <= -65) {
                            j11 = j13;
                        }
                    }
                    return -1;
                }
                if (bX >= -16) {
                    if (i12 < 3) {
                        return s(bArr, bX, j11, i12);
                    }
                    i11 -= 4;
                    long j14 = 1 + j11;
                    byte bX2 = k1.x(bArr, j11);
                    if (bX2 <= -65 && (((bX << 28) + (bX2 + 112)) >> 30) == 0) {
                        long j15 = 2 + j11;
                        if (k1.x(bArr, j14) <= -65) {
                            j11 += 3;
                            if (k1.x(bArr, j15) > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i12 < 2) {
                    return s(bArr, bX, j11, i12);
                }
                i11 -= 3;
                long j16 = 1 + j11;
                byte bX3 = k1.x(bArr, j11);
                if (bX3 <= -65 && ((bX != -32 || bX3 >= -96) && (bX != -19 || bX3 < -96))) {
                    j11 += 2;
                    if (k1.x(bArr, j16) > -65) {
                    }
                }
                return -1;
            }
        }

        private static int p(long j10, int i10) {
            if (i10 < 16) {
                return 0;
            }
            int i11 = (int) ((-j10) & 7);
            int i12 = i11;
            while (i12 > 0) {
                long j11 = 1 + j10;
                if (k1.w(j10) < 0) {
                    return i11 - i12;
                }
                i12--;
                j10 = j11;
            }
            int i13 = i10 - i11;
            while (i13 >= 8 && (k1.D(j10) & (-9187201950435737472L)) == 0) {
                j10 += 8;
                i13 -= 8;
            }
            return i10 - i13;
        }

        private static int q(byte[] bArr, long j10, int i10) {
            int i11 = 0;
            if (i10 < 16) {
                return 0;
            }
            int i12 = 8 - (((int) j10) & 7);
            while (i11 < i12) {
                long j11 = 1 + j10;
                if (k1.x(bArr, j10) < 0) {
                    return i11;
                }
                i11++;
                j10 = j11;
            }
            while (true) {
                int i13 = i11 + 8;
                if (i13 > i10 || (k1.E(bArr, k1.f8544h + j10) & (-9187201950435737472L)) != 0) {
                    break;
                }
                j10 += 8;
                i11 = i13;
            }
            while (i11 < i10) {
                long j12 = j10 + 1;
                if (k1.x(bArr, j10) < 0) {
                    return i11;
                }
                i11++;
                j10 = j12;
            }
            return i10;
        }

        private static int r(long j10, int i10, int i11) {
            if (i11 == 0) {
                return Utf8.m(i10);
            }
            if (i11 == 1) {
                return Utf8.n(i10, k1.w(j10));
            }
            if (i11 == 2) {
                return Utf8.o(i10, k1.w(j10), k1.w(j10 + 1));
            }
            throw new AssertionError();
        }

        private static int s(byte[] bArr, int i10, long j10, int i11) {
            if (i11 == 0) {
                return Utf8.m(i10);
            }
            if (i11 == 1) {
                return Utf8.n(i10, k1.x(bArr, j10));
            }
            if (i11 == 2) {
                return Utf8.o(i10, k1.x(bArr, j10), k1.x(bArr, j10 + 1));
            }
            throw new AssertionError();
        }

        @Override
        String b(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            Charset charset = w.f8604b;
            String str = new String(bArr, i10, i11, charset);
            if (str.indexOf(okio.Utf8.REPLACEMENT_CODE_POINT) >= 0 && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i10, i11 + i10))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            return str;
        }

        @Override
        String d(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            long jK = k1.k(byteBuffer) + ((long) i10);
            long j10 = ((long) i11) + jK;
            char[] cArr = new char[i11];
            int i12 = 0;
            while (jK < j10) {
                byte bW = k1.w(jK);
                if (!a.n(bW)) {
                    break;
                }
                jK++;
                a.i(bW, cArr, i12);
                i12++;
            }
            while (jK < j10) {
                long j11 = jK + 1;
                byte bW2 = k1.w(jK);
                if (a.n(bW2)) {
                    int i13 = i12 + 1;
                    a.i(bW2, cArr, i12);
                    while (j11 < j10) {
                        byte bW3 = k1.w(j11);
                        if (!a.n(bW3)) {
                            break;
                        }
                        j11++;
                        a.i(bW3, cArr, i13);
                        i13++;
                    }
                    i12 = i13;
                    jK = j11;
                } else if (a.p(bW2)) {
                    if (j11 >= j10) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    jK += 2;
                    a.k(bW2, k1.w(j11), cArr, i12);
                    i12++;
                } else if (a.o(bW2)) {
                    if (j11 >= j10 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    long j12 = 2 + jK;
                    jK += 3;
                    a.j(bW2, k1.w(j11), k1.w(j12), cArr, i12);
                    i12++;
                } else {
                    if (j11 >= j10 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte bW4 = k1.w(j11);
                    long j13 = jK + 3;
                    byte bW5 = k1.w(2 + jK);
                    jK += 4;
                    a.h(bW2, bW4, bW5, k1.w(j13), cArr, i12);
                    i12 += 2;
                }
            }
            return new String(cArr, 0, i12);
        }

        @Override
        int e(String str, byte[] bArr, int i10, int i11) {
            long j10;
            String str2;
            String str3;
            int i12;
            long j11;
            char cCharAt;
            long j12 = i10;
            long j13 = ((long) i11) + j12;
            int length = str.length();
            String str4 = " at index ";
            String str5 = "Failed writing ";
            if (length > i11 || bArr.length - i11 < i10) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + str.charAt(length - 1) + " at index " + (i10 + i11));
            }
            int i13 = 0;
            while (true) {
                j10 = 1;
                if (i13 >= length || (cCharAt = str.charAt(i13)) >= 128) {
                    break;
                }
                k1.P(bArr, j12, (byte) cCharAt);
                i13++;
                j12 = 1 + j12;
            }
            if (i13 == length) {
                return (int) j12;
            }
            while (i13 < length) {
                char cCharAt2 = str.charAt(i13);
                if (cCharAt2 >= 128 || j12 >= j13) {
                    if (cCharAt2 >= 2048 || j12 > j13 - 2) {
                        str2 = str4;
                        str3 = str5;
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j12 > j13 - 3) {
                            if (j12 > j13 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i12 = i13 + 1) == length || !Character.isSurrogatePair(cCharAt2, str.charAt(i12)))) {
                                    throw new UnpairedSurrogateException(i13, length);
                                }
                                throw new ArrayIndexOutOfBoundsException(str3 + cCharAt2 + str2 + j12);
                            }
                            int i14 = i13 + 1;
                            if (i14 != length) {
                                char cCharAt3 = str.charAt(i14);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    j11 = 1;
                                    k1.P(bArr, j12, (byte) ((codePoint >>> 18) | 240));
                                    k1.P(bArr, j12 + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j14 = j12 + 3;
                                    k1.P(bArr, j12 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j12 += 4;
                                    k1.P(bArr, j14, (byte) ((codePoint & 63) | 128));
                                    i13 = i14;
                                } else {
                                    i13 = i14;
                                }
                            }
                            throw new UnpairedSurrogateException(i13 - 1, length);
                        }
                        k1.P(bArr, j12, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j15 = j12 + 2;
                        k1.P(bArr, j12 + 1, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        j12 += 3;
                        k1.P(bArr, j15, (byte) ((cCharAt2 & '?') | 128));
                    } else {
                        str2 = str4;
                        str3 = str5;
                        long j16 = j12 + j10;
                        k1.P(bArr, j12, (byte) ((cCharAt2 >>> 6) | 960));
                        j12 += 2;
                        k1.P(bArr, j16, (byte) ((cCharAt2 & '?') | 128));
                    }
                    j11 = 1;
                } else {
                    k1.P(bArr, j12, (byte) cCharAt2);
                    str3 = str5;
                    j11 = j10;
                    j12 += j10;
                    str2 = str4;
                }
                i13++;
                str4 = str2;
                str5 = str3;
                j10 = j11;
                j13 = j13;
            }
            return (int) j12;
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.x(r13, r1) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.x(r13, r1) > (-65)) goto L59;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int i(int i10, byte[] bArr, int i11, int i12) {
            long j10;
            byte bX = 0;
            if ((i11 | i12 | (bArr.length - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            long j11 = i11;
            long j12 = i12;
            if (i10 != 0) {
                if (j11 >= j12) {
                    return i10;
                }
                byte b10 = (byte) i10;
                if (b10 < -32) {
                    if (b10 >= -62) {
                        long j13 = 1 + j11;
                        if (k1.x(bArr, j11) <= -65) {
                            j11 = j13;
                        }
                    }
                    return -1;
                }
                if (b10 < -16) {
                    byte bX2 = (byte) (~(i10 >> 8));
                    if (bX2 == 0) {
                        long j14 = j11 + 1;
                        bX2 = k1.x(bArr, j11);
                        if (j14 >= j12) {
                            return Utf8.n(b10, bX2);
                        }
                        j11 = j14;
                    }
                    if (bX2 <= -65 && ((b10 != -32 || bX2 >= -96) && (b10 != -19 || bX2 < -96))) {
                        j10 = j11 + 1;
                    }
                    return -1;
                }
                byte bX3 = (byte) (~(i10 >> 8));
                if (bX3 == 0) {
                    long j15 = j11 + 1;
                    bX3 = k1.x(bArr, j11);
                    if (j15 >= j12) {
                        return Utf8.n(b10, bX3);
                    }
                    j11 = j15;
                } else {
                    bX = (byte) (i10 >> 16);
                }
                if (bX == 0) {
                    long j16 = j11 + 1;
                    bX = k1.x(bArr, j11);
                    if (j16 >= j12) {
                        return Utf8.o(b10, bX3, bX);
                    }
                    j11 = j16;
                }
                if (bX3 <= -65 && (((b10 << 28) + (bX3 + 112)) >> 30) == 0 && bX <= -65) {
                    j10 = j11 + 1;
                }
                return -1;
                j11 = j10;
            }
            return o(bArr, j11, (int) (j12 - j11));
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.w(r1) > (-65)) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0062, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.w(r1) > (-65)) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00a3, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.w(r1) > (-65)) goto L57;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int l(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            long j10;
            byte bW = 0;
            if ((i11 | i12 | (byteBuffer.limit() - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            long jK = k1.k(byteBuffer) + ((long) i11);
            long j11 = ((long) (i12 - i11)) + jK;
            if (i10 != 0) {
                if (jK >= j11) {
                    return i10;
                }
                byte b10 = (byte) i10;
                if (b10 < -32) {
                    if (b10 >= -62) {
                        j10 = 1 + jK;
                    }
                    return -1;
                }
                if (b10 < -16) {
                    byte bW2 = (byte) (~(i10 >> 8));
                    if (bW2 == 0) {
                        long j12 = jK + 1;
                        bW2 = k1.w(jK);
                        if (j12 >= j11) {
                            return Utf8.n(b10, bW2);
                        }
                        jK = j12;
                    }
                    if (bW2 <= -65 && ((b10 != -32 || bW2 >= -96) && (b10 != -19 || bW2 < -96))) {
                        j10 = 1 + jK;
                    }
                    return -1;
                }
                byte bW3 = (byte) (~(i10 >> 8));
                if (bW3 == 0) {
                    long j13 = jK + 1;
                    bW3 = k1.w(jK);
                    if (j13 >= j11) {
                        return Utf8.n(b10, bW3);
                    }
                    jK = j13;
                } else {
                    bW = (byte) (i10 >> 16);
                }
                if (bW == 0) {
                    long j14 = jK + 1;
                    bW = k1.w(jK);
                    if (j14 >= j11) {
                        return Utf8.o(b10, bW3, bW);
                    }
                    jK = j14;
                }
                if (bW3 <= -65 && (((b10 << 28) + (bW3 + 112)) >> 30) == 0 && bW <= -65) {
                    j10 = 1 + jK;
                }
                return -1;
                jK = j10;
            }
            return n(jK, (int) (j11 - jK));
        }
    }

    static {
        f8415a = (!d.m() || androidx.datastore.preferences.protobuf.d.c()) ? new c() : new d();
    }

    static String g(ByteBuffer byteBuffer, int i10, int i11) {
        return f8415a.a(byteBuffer, i10, i11);
    }

    static String h(byte[] bArr, int i10, int i11) {
        return f8415a.b(bArr, i10, i11);
    }

    static int i(String str, byte[] bArr, int i10, int i11) {
        return f8415a.e(str, bArr, i10, i11);
    }

    static int j(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length && str.charAt(i10) < 128) {
            i10++;
        }
        int iK = length;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt >= 2048) {
                iK += k(str, i10);
                break;
            }
            iK += (127 - cCharAt) >>> 31;
            i10++;
        }
        if (iK >= length) {
            return iK;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iK) + TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE));
    }

    private static int k(String str, int i10) {
        int length = str.length();
        int i11 = 0;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < 2048) {
                i11 += (127 - cCharAt) >>> 31;
            } else {
                i11 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(str, i10) < 65536) {
                        throw new UnpairedSurrogateException(i10, length);
                    }
                    i10++;
                }
            }
            i10++;
        }
        return i11;
    }

    public static int l(ByteBuffer byteBuffer, int i10, int i11) {
        int i12 = i11 - 7;
        int i13 = i10;
        while (i13 < i12 && (byteBuffer.getLong(i13) & (-9187201950435737472L)) == 0) {
            i13 += 8;
        }
        return i13 - i10;
    }

    public static int m(int i10) {
        if (i10 > -12) {
            return -1;
        }
        return i10;
    }

    public static int n(int i10, int i11) {
        if (i10 > -12 || i11 > -65) {
            return -1;
        }
        return i10 ^ (i11 << 8);
    }

    public static int o(int i10, int i11, int i12) {
        if (i10 > -12 || i11 > -65 || i12 > -65) {
            return -1;
        }
        return (i10 ^ (i11 << 8)) ^ (i12 << 16);
    }

    public static int p(ByteBuffer byteBuffer, int i10, int i11, int i12) {
        if (i12 == 0) {
            return m(i10);
        }
        if (i12 == 1) {
            return n(i10, byteBuffer.get(i11));
        }
        if (i12 == 2) {
            return o(i10, byteBuffer.get(i11), byteBuffer.get(i11 + 1));
        }
        throw new AssertionError();
    }

    public static int q(byte[] bArr, int i10, int i11) {
        byte b10 = bArr[i10 - 1];
        int i12 = i11 - i10;
        if (i12 == 0) {
            return m(b10);
        }
        if (i12 == 1) {
            return n(b10, bArr[i10]);
        }
        if (i12 == 2) {
            return o(b10, bArr[i10], bArr[i10 + 1]);
        }
        throw new AssertionError();
    }

    static boolean r(ByteBuffer byteBuffer) {
        return f8415a.f(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    static boolean s(byte[] bArr, int i10, int i11) {
        return f8415a.g(bArr, i10, i11);
    }

    static int t(int i10, ByteBuffer byteBuffer, int i11, int i12) {
        return f8415a.h(i10, byteBuffer, i11, i12);
    }

    static int u(int i10, byte[] bArr, int i11, int i12) {
        return f8415a.i(i10, bArr, i11, i12);
    }
}
