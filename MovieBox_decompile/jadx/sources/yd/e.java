package yd;

import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.pdf417.encoder.Compaction;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import kd.h;
import kd.m;
import okio.Utf8;

abstract class e {

    private static final byte[] f76228c;

    private static final byte[] f76226a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};

    private static final byte[] f76227b = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, Utf8.REPLACEMENT_BYTE, 123, 125, 39, 0};

    private static final byte[] f76229d = new byte[128];

    private static final Charset f76230e = StandardCharsets.ISO_8859_1;

    static class a {

        static final int[] f76231a;

        static {
            int[] iArr = new int[Compaction.values().length];
            f76231a = iArr;
            try {
                iArr[Compaction.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f76231a[Compaction.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f76231a[Compaction.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static final class b implements h {

        String f76232a;

        b(String str, a aVar) {
            this(str);
        }

        @Override
        public boolean a(int i10) {
            return false;
        }

        @Override
        public int b(int i10) {
            return -1;
        }

        @Override
        public char charAt(int i10) {
            return this.f76232a.charAt(i10);
        }

        @Override
        public int length() {
            return this.f76232a.length();
        }

        @Override
        public CharSequence subSequence(int i10, int i11) {
            return this.f76232a.subSequence(i10, i11);
        }

        public String toString() {
            return this.f76232a;
        }

        private b(String str) {
            this.f76232a = str;
        }
    }

    static {
        int i10 = 0;
        byte[] bArr = new byte[128];
        f76228c = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i11 = 0;
        while (true) {
            byte[] bArr2 = f76226a;
            if (i11 >= bArr2.length) {
                break;
            }
            byte b10 = bArr2[i11];
            if (b10 > 0) {
                f76228c[b10] = (byte) i11;
            }
            i11++;
        }
        Arrays.fill(f76229d, (byte) -1);
        while (true) {
            byte[] bArr3 = f76227b;
            if (i10 >= bArr3.length) {
                return;
            }
            byte b11 = bArr3[i10];
            if (b11 > 0) {
                f76229d[b11] = (byte) i10;
            }
            i10++;
        }
    }

    private static int a(h hVar, int i10, Charset charset) throws WriterException {
        CharsetEncoder charsetEncoderNewEncoder = charset == null ? null : charset.newEncoder();
        int length = hVar.length();
        int i11 = i10;
        while (i11 < length) {
            int i12 = 0;
            int i13 = i11;
            while (i12 < 13 && !hVar.a(i13) && l(hVar.charAt(i13)) && (i13 = i11 + (i12 = i12 + 1)) < length) {
            }
            if (i12 >= 13) {
                return i11 - i10;
            }
            if (charsetEncoderNewEncoder != null && !charsetEncoderNewEncoder.canEncode(hVar.charAt(i11))) {
                char cCharAt = hVar.charAt(i11);
                throw new WriterException("Non-encodable character detected: " + cCharAt + " (Unicode: " + ((int) cCharAt) + ')');
            }
            i11++;
        }
        return i11 - i10;
    }

    private static int b(h hVar, int i10) {
        int length = hVar.length();
        int i11 = 0;
        if (i10 < length) {
            while (i10 < length && !hVar.a(i10) && l(hVar.charAt(i10))) {
                i11++;
                i10++;
            }
        }
        return i11;
    }

    private static int c(h hVar, int i10) {
        int length = hVar.length();
        int i11 = i10;
        while (i11 < length) {
            int i12 = 0;
            while (i12 < 13 && i11 < length && !hVar.a(i11) && l(hVar.charAt(i11))) {
                i12++;
                i11++;
            }
            if (i12 >= 13) {
                return (i11 - i10) - i12;
            }
            if (i12 <= 0) {
                if (hVar.a(i11) || !o(hVar.charAt(i11))) {
                    break;
                }
                i11++;
            }
        }
        return i11 - i10;
    }

    private static void d(byte[] bArr, int i10, int i11, int i12, StringBuilder sb2) {
        int i13;
        if (i11 == 1 && i12 == 0) {
            sb2.append((char) 913);
        } else if (i11 % 6 == 0) {
            sb2.append((char) 924);
        } else {
            sb2.append((char) 901);
        }
        if (i11 >= 6) {
            char[] cArr = new char[5];
            i13 = i10;
            while ((i10 + i11) - i13 >= 6) {
                long j10 = 0;
                for (int i14 = 0; i14 < 6; i14++) {
                    j10 = (j10 << 8) + ((long) (bArr[i13 + i14] & 255));
                }
                for (int i15 = 0; i15 < 5; i15++) {
                    cArr[i15] = (char) (j10 % 900);
                    j10 /= 900;
                }
                for (int i16 = 4; i16 >= 0; i16--) {
                    sb2.append(cArr[i16]);
                }
                i13 += 6;
            }
        } else {
            i13 = i10;
        }
        while (i13 < i10 + i11) {
            sb2.append((char) (bArr[i13] & 255));
            i13++;
        }
    }

    static String e(String str, Compaction compaction, Charset charset, boolean z10) throws WriterException {
        h bVar;
        CharacterSetECI characterSetECI;
        if (str.isEmpty()) {
            throw new WriterException("Empty message not allowed");
        }
        if (charset == null && !z10) {
            for (int i10 = 0; i10 < str.length(); i10++) {
                if (str.charAt(i10) > 255) {
                    throw new WriterException("Non-encodable character detected: " + str.charAt(i10) + " (Unicode: " + ((int) str.charAt(i10)) + "). Consider specifying EncodeHintType.PDF417_AUTO_ECI and/or EncodeTypeHint.CHARACTER_SET.");
                }
            }
        }
        StringBuilder sb2 = new StringBuilder(str.length());
        a aVar = null;
        if (z10) {
            bVar = new m(str, charset, -1);
        } else {
            bVar = new b(str, aVar);
            if (charset == null) {
                charset = f76230e;
            } else if (!f76230e.equals(charset) && (characterSetECI = CharacterSetECI.getCharacterSetECI(charset)) != null) {
                i(characterSetECI.getValue(), sb2);
            }
        }
        int length = bVar.length();
        int i11 = a.f76231a[compaction.ordinal()];
        if (i11 == 1) {
            h(bVar, 0, length, sb2, 0);
        } else if (i11 != 2) {
            if (i11 != 3) {
                int i12 = 0;
                int iH = 0;
                int i13 = 0;
                while (i12 < length) {
                    while (i12 < length && bVar.a(i12)) {
                        i(bVar.b(i12), sb2);
                        i12++;
                    }
                    if (i12 >= length) {
                        break;
                    }
                    int iB = b(bVar, i12);
                    if (iB >= 13) {
                        sb2.append((char) 902);
                        g(bVar, i12, iB, sb2);
                        i12 += iB;
                        iH = 0;
                        i13 = 2;
                    } else {
                        int iC = c(bVar, i12);
                        if (iC >= 5 || iB == length) {
                            if (i13 != 0) {
                                sb2.append((char) 900);
                                iH = 0;
                                i13 = 0;
                            }
                            iH = h(bVar, i12, iC, sb2, iH);
                            i12 += iC;
                        } else {
                            int iA = a(bVar, i12, z10 ? null : charset);
                            if (iA == 0) {
                                iA = 1;
                            }
                            byte[] bytes = z10 ? null : bVar.subSequence(i12, i12 + iA).toString().getBytes(charset);
                            if ((!(bytes == null && iA == 1) && (bytes == null || bytes.length != 1)) || i13 != 0) {
                                if (z10) {
                                    f(bVar, i12, i12 + iA, i13, sb2);
                                } else {
                                    d(bytes, 0, bytes.length, i13, sb2);
                                }
                                iH = 0;
                                i13 = 1;
                            } else if (z10) {
                                f(bVar, i12, 1, 0, sb2);
                            } else {
                                d(bytes, 0, 1, 0, sb2);
                            }
                            i12 += iA;
                        }
                    }
                }
            } else {
                sb2.append((char) 902);
                g(bVar, 0, length, sb2);
            }
        } else if (z10) {
            f(bVar, 0, bVar.length(), 0, sb2);
        } else {
            byte[] bytes2 = bVar.toString().getBytes(charset);
            d(bytes2, 0, bytes2.length, 1, sb2);
        }
        return sb2.toString();
    }

    private static void f(h hVar, int i10, int i11, int i12, StringBuilder sb2) throws WriterException {
        int iMin = Math.min(i11 + i10, hVar.length());
        int i13 = i10;
        while (true) {
            if (i13 >= iMin || !hVar.a(i13)) {
                int i14 = i13;
                while (i14 < iMin && !hVar.a(i14)) {
                    i14++;
                }
                int i15 = i14 - i13;
                if (i15 <= 0) {
                    return;
                }
                d(p(hVar, i13, i14), 0, i15, i13 == i10 ? i12 : 1, sb2);
                i13 = i14;
            } else {
                i(hVar.b(i13), sb2);
                i13++;
            }
        }
    }

    private static void g(h hVar, int i10, int i11, StringBuilder sb2) {
        StringBuilder sb3 = new StringBuilder((i11 / 3) + 1);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(0L);
        int i12 = 0;
        while (i12 < i11) {
            sb3.setLength(0);
            int iMin = Math.min(44, i11 - i12);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("1");
            int i13 = i10 + i12;
            sb4.append((Object) hVar.subSequence(i13, i13 + iMin));
            BigInteger bigInteger = new BigInteger(sb4.toString());
            do {
                sb3.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                bigInteger = bigInteger.divide(bigIntegerValueOf);
            } while (!bigInteger.equals(bigIntegerValueOf2));
            for (int length = sb3.length() - 1; length >= 0; length--) {
                sb2.append(sb3.charAt(length));
            }
            i12 += iMin;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x000f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x010b A[EDGE_INSN: B:80:0x010b->B:60:0x010b BREAK  A[LOOP:0: B:3:0x000f->B:98:0x000f], SYNTHETIC] */
    private static int h(h hVar, int i10, int i11, StringBuilder sb2, int i12) throws WriterException {
        StringBuilder sb3 = new StringBuilder(i11);
        int i13 = i12;
        int i14 = 0;
        while (true) {
            int i15 = i10 + i14;
            if (!hVar.a(i15)) {
                char cCharAt = hVar.charAt(i15);
                if (i13 == 0) {
                    if (k(cCharAt)) {
                        if (cCharAt == ' ') {
                            sb3.append((char) 26);
                        } else {
                            sb3.append((char) (cCharAt - 'A'));
                        }
                    } else if (j(cCharAt)) {
                        sb3.append((char) 27);
                        i13 = 1;
                    } else if (m(cCharAt)) {
                        sb3.append((char) 28);
                        i13 = 2;
                    } else {
                        sb3.append((char) 29);
                        sb3.append((char) f76229d[cCharAt]);
                    }
                    i14++;
                    if (i14 >= i11) {
                        break;
                        break;
                    }
                } else {
                    if (i13 != 1) {
                        if (i13 != 2) {
                            if (n(cCharAt)) {
                                sb3.append((char) f76229d[cCharAt]);
                            } else {
                                sb3.append((char) 29);
                                i13 = 0;
                            }
                        } else if (m(cCharAt)) {
                            sb3.append((char) f76228c[cCharAt]);
                        } else if (k(cCharAt)) {
                            sb3.append((char) 28);
                            i13 = 0;
                        } else if (j(cCharAt)) {
                            sb3.append((char) 27);
                            i13 = 1;
                        } else {
                            int i16 = i15 + 1;
                            if (i16 >= i11 || hVar.a(i16) || !n(hVar.charAt(i16))) {
                                sb3.append((char) 29);
                                sb3.append((char) f76229d[cCharAt]);
                            } else {
                                sb3.append((char) 25);
                                i13 = 3;
                            }
                        }
                    } else if (j(cCharAt)) {
                        if (cCharAt == ' ') {
                            sb3.append((char) 26);
                        } else {
                            sb3.append((char) (cCharAt - 'a'));
                        }
                    } else if (k(cCharAt)) {
                        sb3.append((char) 27);
                        sb3.append((char) (cCharAt - 'A'));
                    } else if (m(cCharAt)) {
                        sb3.append((char) 28);
                        i13 = 2;
                    } else {
                        sb3.append((char) 29);
                        sb3.append((char) f76229d[cCharAt]);
                    }
                    i14++;
                    if (i14 >= i11) {
                        break;
                    }
                }
            } else {
                i(hVar.b(i15), sb2);
                i14++;
            }
        }
        int length = sb3.length();
        char cCharAt2 = 0;
        for (int i17 = 0; i17 < length; i17++) {
            if (i17 % 2 != 0) {
                cCharAt2 = (char) ((cCharAt2 * 30) + sb3.charAt(i17));
                sb2.append(cCharAt2);
            } else {
                cCharAt2 = sb3.charAt(i17);
            }
        }
        if (length % 2 != 0) {
            sb2.append((char) ((cCharAt2 * 30) + 29));
        }
        return i13;
    }

    private static void i(int i10, StringBuilder sb2) throws WriterException {
        if (i10 >= 0 && i10 < 900) {
            sb2.append((char) 927);
            sb2.append((char) i10);
            return;
        }
        if (i10 < 810900) {
            sb2.append((char) 926);
            sb2.append((char) ((i10 / DescriptorProtos$Edition.EDITION_LEGACY_VALUE) - 1));
            sb2.append((char) (i10 % DescriptorProtos$Edition.EDITION_LEGACY_VALUE));
        } else if (i10 < 811800) {
            sb2.append((char) 925);
            sb2.append((char) (810900 - i10));
        } else {
            throw new WriterException("ECI number not in valid range from 0..811799, but was " + i10);
        }
    }

    private static boolean j(char c10) {
        return c10 == ' ' || (c10 >= 'a' && c10 <= 'z');
    }

    private static boolean k(char c10) {
        return c10 == ' ' || (c10 >= 'A' && c10 <= 'Z');
    }

    private static boolean l(char c10) {
        return c10 >= '0' && c10 <= '9';
    }

    private static boolean m(char c10) {
        return f76228c[c10] != -1;
    }

    private static boolean n(char c10) {
        return f76229d[c10] != -1;
    }

    private static boolean o(char c10) {
        return c10 == '\t' || c10 == '\n' || c10 == '\r' || (c10 >= ' ' && c10 <= '~');
    }

    static byte[] p(h hVar, int i10, int i11) {
        byte[] bArr = new byte[i11 - i10];
        for (int i12 = i10; i12 < i11; i12++) {
            bArr[i12 - i10] = (byte) (hVar.charAt(i12) & 255);
        }
        return bArr;
    }
}
