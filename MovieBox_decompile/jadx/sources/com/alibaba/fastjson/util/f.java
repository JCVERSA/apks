package com.alibaba.fastjson.util;

import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.alibaba.fastjson.JSONException;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Properties;
import okio.Utf8;

public class f {

    public static final Properties f17602a = new Properties();

    public static final Charset f17603b = Charset.forName("UTF-8");

    public static final char[] f17604c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static final boolean[] f17605d = new boolean[256];

    public static final boolean[] f17606e = new boolean[256];

    public static final byte[] f17607f;

    public static final byte[] f17608g;

    public static final boolean[] f17609h;

    public static final boolean[] f17610i;

    public static final char[] f17611j;

    public static final char[] f17612k;

    static final char[] f17613l;

    static final char[] f17614m;

    static final char[] f17615n;

    static final int[] f17616o;

    public static final char[] f17617p;

    public static final int[] f17618q;

    static class a implements PrivilegedAction {
        a() {
        }

        @Override
        public InputStream run() {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            return contextClassLoader != null ? contextClassLoader.getResourceAsStream("fastjson.properties") : ClassLoader.getSystemResourceAsStream("fastjson.properties");
        }
    }

    static {
        char c10 = 0;
        while (true) {
            boolean[] zArr = f17605d;
            if (c10 >= zArr.length) {
                break;
            }
            if (c10 >= 'A' && c10 <= 'Z') {
                zArr[c10] = true;
            } else if (c10 >= 'a' && c10 <= 'z') {
                zArr[c10] = true;
            } else if (c10 == '_' || c10 == '$') {
                zArr[c10] = true;
            }
            c10 = (char) (c10 + 1);
        }
        char c11 = 0;
        while (true) {
            boolean[] zArr2 = f17606e;
            if (c11 < zArr2.length) {
                if (c11 >= 'A' && c11 <= 'Z') {
                    zArr2[c11] = true;
                } else if (c11 >= 'a' && c11 <= 'z') {
                    zArr2[c11] = true;
                } else if (c11 == '_') {
                    zArr2[c11] = true;
                } else if (c11 >= '0' && c11 <= '9') {
                    zArr2[c11] = true;
                }
                c11 = (char) (c11 + 1);
            } else {
                try {
                    break;
                } catch (Throwable unused) {
                }
            }
        }
        l();
        byte[] bArr = new byte[161];
        f17607f = bArr;
        byte[] bArr2 = new byte[161];
        f17608g = bArr2;
        f17609h = new boolean[161];
        f17610i = new boolean[161];
        f17611j = new char[93];
        bArr[0] = 4;
        bArr[1] = 4;
        bArr[2] = 4;
        bArr[3] = 4;
        bArr[4] = 4;
        bArr[5] = 4;
        bArr[6] = 4;
        bArr[7] = 4;
        bArr[8] = 1;
        bArr[9] = 1;
        bArr[10] = 1;
        bArr[11] = 4;
        bArr[12] = 1;
        bArr[13] = 1;
        bArr[34] = 1;
        bArr[92] = 1;
        bArr2[0] = 4;
        bArr2[1] = 4;
        bArr2[2] = 4;
        bArr2[3] = 4;
        bArr2[4] = 4;
        bArr2[5] = 4;
        bArr2[6] = 4;
        bArr2[7] = 4;
        bArr2[8] = 1;
        bArr2[9] = 1;
        bArr2[10] = 1;
        bArr2[11] = 4;
        bArr2[12] = 1;
        bArr2[13] = 1;
        bArr2[92] = 1;
        bArr2[39] = 1;
        for (int i10 = 14; i10 <= 31; i10++) {
            f17607f[i10] = 4;
            f17608g[i10] = 4;
        }
        for (int i11 = 127; i11 < 160; i11++) {
            f17607f[i11] = 4;
            f17608g[i11] = 4;
        }
        for (int i12 = 0; i12 < 161; i12++) {
            f17609h[i12] = f17607f[i12] != 0;
            f17610i[i12] = f17608g[i12] != 0;
        }
        char[] cArr = f17611j;
        cArr[0] = '0';
        cArr[1] = '1';
        cArr[2] = '2';
        cArr[3] = '3';
        cArr[4] = '4';
        cArr[5] = '5';
        cArr[6] = '6';
        cArr[7] = '7';
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[11] = 'v';
        cArr[12] = 'f';
        cArr[13] = 'r';
        cArr[34] = '\"';
        cArr[39] = '\'';
        cArr[47] = '/';
        cArr[92] = '\\';
        f17612k = new char[]{'0', '0', '0', '1', '0', '2', '0', '3', '0', '4', '0', '5', '0', '6', '0', '7', '0', '8', '0', '9', '0', 'A', '0', 'B', '0', 'C', '0', 'D', '0', 'E', '0', 'F', '1', '0', '1', '1', '1', '2', '1', '3', '1', '4', '1', '5', '1', '6', '1', '7', '1', '8', '1', '9', '1', 'A', '1', 'B', '1', 'C', '1', 'D', '1', 'E', '1', 'F', '2', '0', '2', '1', '2', '2', '2', '3', '2', '4', '2', '5', '2', '6', '2', '7', '2', '8', '2', '9', '2', 'A', '2', 'B', '2', 'C', '2', 'D', '2', 'E', '2', 'F'};
        f17613l = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        f17614m = new char[]{'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};
        f17615n = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
        f17616o = new int[]{9, 99, DescriptorProtos$Edition.EDITION_PROTO3_VALUE, 9999, DescriptorProtos$Edition.EDITION_99999_TEST_ONLY_VALUE, 999999, 9999999, 99999999, 999999999, Integer.MAX_VALUE};
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        f17617p = charArray;
        int[] iArr = new int[256];
        f17618q = iArr;
        Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i13 = 0; i13 < length; i13++) {
            f17618q[f17617p[i13]] = i13;
        }
        f17618q[61] = 0;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void b(CharsetDecoder charsetDecoder, ByteBuffer byteBuffer, CharBuffer charBuffer) {
        try {
            CoderResult coderResultDecode = charsetDecoder.decode(byteBuffer, charBuffer, true);
            if (!coderResultDecode.isUnderflow()) {
                coderResultDecode.throwException();
            }
            CoderResult coderResultFlush = charsetDecoder.flush(charBuffer);
            if (coderResultFlush.isUnderflow()) {
                return;
            }
            coderResultFlush.throwException();
        } catch (CharacterCodingException e10) {
            throw new JSONException("utf8 decode error, " + e10.getMessage(), e10);
        }
    }

    public static byte[] c(String str) {
        int i10;
        int i11;
        int length = str.length();
        if (length == 0) {
            return new byte[0];
        }
        int i12 = length - 1;
        int i13 = 0;
        while (i13 < i12 && f17618q[str.charAt(i13) & 255] < 0) {
            i13++;
        }
        while (i12 > 0 && f17618q[str.charAt(i12) & 255] < 0) {
            i12--;
        }
        if (str.charAt(i12) == '=') {
            i10 = str.charAt(i12 + (-1)) == '=' ? 2 : 1;
        } else {
            i10 = 0;
        }
        int i14 = (i12 - i13) + 1;
        if (length > 76) {
            i11 = (str.charAt(76) == '\r' ? i14 / 78 : 0) << 1;
        } else {
            i11 = 0;
        }
        int i15 = (((i14 - i11) * 6) >> 3) - i10;
        byte[] bArr = new byte[i15];
        int i16 = (i15 / 3) * 3;
        int i17 = 0;
        int i18 = 0;
        while (i17 < i16) {
            int[] iArr = f17618q;
            int i19 = i13 + 4;
            int i20 = iArr[str.charAt(i13 + 3)] | (iArr[str.charAt(i13 + 1)] << 12) | (iArr[str.charAt(i13)] << 18) | (iArr[str.charAt(i13 + 2)] << 6);
            bArr[i17] = (byte) (i20 >> 16);
            int i21 = i17 + 2;
            bArr[i17 + 1] = (byte) (i20 >> 8);
            i17 += 3;
            bArr[i21] = (byte) i20;
            if (i11 <= 0 || (i18 = i18 + 1) != 19) {
                i13 = i19;
            } else {
                i13 += 6;
                i18 = 0;
            }
        }
        if (i17 < i15) {
            int i22 = 0;
            int i23 = 0;
            while (i13 <= i12 - i10) {
                i22 |= f17618q[str.charAt(i13)] << (18 - (i23 * 6));
                i23++;
                i13++;
            }
            int i24 = 16;
            while (i17 < i15) {
                bArr[i17] = (byte) (i22 >> i24);
                i24 -= 8;
                i17++;
            }
        }
        return bArr;
    }

    public static byte[] d(String str, int i10, int i11) {
        int i12;
        int i13;
        if (i11 == 0) {
            return new byte[0];
        }
        int i14 = (i10 + i11) - 1;
        int i15 = i10;
        while (i15 < i14 && f17618q[str.charAt(i15)] < 0) {
            i15++;
        }
        while (i14 > 0 && f17618q[str.charAt(i14)] < 0) {
            i14--;
        }
        if (str.charAt(i14) == '=') {
            i12 = str.charAt(i14 + (-1)) == '=' ? 2 : 1;
        } else {
            i12 = 0;
        }
        int i16 = (i14 - i15) + 1;
        if (i11 > 76) {
            i13 = (str.charAt(76) == '\r' ? i16 / 78 : 0) << 1;
        } else {
            i13 = 0;
        }
        int i17 = (((i16 - i13) * 6) >> 3) - i12;
        byte[] bArr = new byte[i17];
        int i18 = (i17 / 3) * 3;
        int i19 = 0;
        int i20 = 0;
        while (i19 < i18) {
            int[] iArr = f17618q;
            int i21 = i15 + 4;
            int i22 = iArr[str.charAt(i15 + 3)] | (iArr[str.charAt(i15 + 1)] << 12) | (iArr[str.charAt(i15)] << 18) | (iArr[str.charAt(i15 + 2)] << 6);
            bArr[i19] = (byte) (i22 >> 16);
            int i23 = i19 + 2;
            bArr[i19 + 1] = (byte) (i22 >> 8);
            i19 += 3;
            bArr[i23] = (byte) i22;
            if (i13 <= 0 || (i20 = i20 + 1) != 19) {
                i15 = i21;
            } else {
                i15 += 6;
                i20 = 0;
            }
        }
        if (i19 < i17) {
            int i24 = 0;
            int i25 = 0;
            while (i15 <= i14 - i12) {
                i24 |= f17618q[str.charAt(i15)] << (18 - (i25 * 6));
                i25++;
                i15++;
            }
            int i26 = 16;
            while (i19 < i17) {
                bArr[i19] = (byte) (i24 >> i26);
                i26 -= 8;
                i19++;
            }
        }
        return bArr;
    }

    public static int e(byte[] bArr, int i10, int i11, char[] cArr) {
        int i12 = i10 + i11;
        int iMin = Math.min(i11, cArr.length);
        int i13 = 0;
        while (i13 < iMin) {
            byte b10 = bArr[i10];
            if (b10 < 0) {
                break;
            }
            i10++;
            cArr[i13] = (char) b10;
            i13++;
        }
        while (i10 < i12) {
            int i14 = i10 + 1;
            byte b11 = bArr[i10];
            if (b11 >= 0) {
                cArr[i13] = (char) b11;
                i13++;
                i10 = i14;
            } else {
                if ((b11 >> 5) != -2 || (b11 & 30) == 0) {
                    if ((b11 >> 4) == -2) {
                        int i15 = i10 + 2;
                        if (i15 < i12) {
                            byte b12 = bArr[i14];
                            i10 += 3;
                            byte b13 = bArr[i15];
                            if ((b11 != -32 || (b12 & 224) != 128) && (b12 & 192) == 128 && (b13 & 192) == 128) {
                                char c10 = (char) (((b12 << 6) ^ (b11 << 12)) ^ ((-123008) ^ b13));
                                if (c10 >= 55296 && c10 < 57344) {
                                    return -1;
                                }
                                cArr[i13] = c10;
                                i13++;
                            }
                        }
                        return -1;
                    }
                    if ((b11 >> 3) == -2 && i10 + 3 < i12) {
                        byte b14 = bArr[i14];
                        int i16 = i10 + 3;
                        byte b15 = bArr[i10 + 2];
                        i10 += 4;
                        byte b16 = bArr[i16];
                        int i17 = (((b11 << 18) ^ (b14 << 12)) ^ (b15 << 6)) ^ (3678080 ^ b16);
                        if ((b14 & 192) == 128 && (b15 & 192) == 128 && (b16 & 192) == 128 && i17 >= 65536 && i17 < 1114112) {
                            int i18 = i13 + 1;
                            cArr[i13] = (char) ((i17 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                            i13 += 2;
                            cArr[i18] = (char) ((i17 & 1023) + Utf8.LOG_SURROGATE_HEADER);
                        }
                    }
                    return -1;
                }
                if (i14 >= i12) {
                    return -1;
                }
                i10 += 2;
                byte b17 = bArr[i14];
                if ((b17 & 192) != 128) {
                    return -1;
                }
                cArr[i13] = (char) ((b17 ^ (b11 << 6)) ^ Utf8.MASK_2BYTES);
                i13++;
            }
        }
        return i13;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0079  */
    /* JADX WARN: Code duplicated, block: B:37:0x007e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [char, int] */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v7, types: [int] */
    /* JADX WARN: Type inference failed for: r3v8 */
    public static int f(char[] cArr, int i10, int i11, byte[] bArr) {
        int i12;
        char c10;
        int i13 = i10 + i11;
        int iMin = Math.min(i11, bArr.length);
        int i14 = 0;
        while (i14 < iMin && (c10 = cArr[i10]) < 128) {
            i10++;
            bArr[i14] = (byte) c10;
            i14++;
        }
        while (i10 < i13) {
            int i15 = i10 + 1;
            char c11 = cArr[i10];
            if (c11 < 128) {
                i12 = i14 + 1;
                bArr[i14] = (byte) c11;
            } else {
                if (c11 < 2048) {
                    int i16 = i14 + 1;
                    bArr[i14] = (byte) ((c11 >> 6) | PsExtractor.AUDIO_STREAM);
                    i14 += 2;
                    bArr[i16] = (byte) ((c11 & 63) | 128);
                } else if (c11 < 55296 || c11 >= 57344) {
                    bArr[i14] = (byte) ((c11 >> 12) | 224);
                    int i17 = i14 + 2;
                    bArr[i14 + 1] = (byte) ((63 & (c11 >> 6)) | 128);
                    i14 += 3;
                    bArr[i17] = (byte) ((c11 & 63) | 128);
                } else if (c11 >= 55296 && c11 < 56320) {
                    if (i13 - i10 < 2) {
                        c11 = -1;
                    } else {
                        char c12 = cArr[i10 + 1];
                        if (c12 < 56320 || c12 >= 57344) {
                            i12 = i14 + 1;
                            bArr[i14] = Utf8.REPLACEMENT_BYTE;
                        } else {
                            c11 = ((c11 << 10) + c12) - 56613888;
                        }
                    }
                    if (c11 < 0) {
                        i12 = i14 + 1;
                        bArr[i14] = Utf8.REPLACEMENT_BYTE;
                    } else {
                        bArr[i14] = (byte) ((c11 >> 18) | 240);
                        bArr[i14 + 1] = (byte) (((c11 >> 12) & 63) | 128);
                        bArr[i14 + 2] = (byte) ((63 & (c11 >> 6)) | 128);
                        bArr[i14 + 3] = (byte) ((c11 & 63) | 128);
                        i15 = i10 + 2;
                        i12 = i14 + 4;
                    }
                } else if (c11 >= 56320 && c11 < 57344) {
                    i12 = i14 + 1;
                    bArr[i14] = Utf8.REPLACEMENT_BYTE;
                } else if (c11 < 0) {
                    i12 = i14 + 1;
                    bArr[i14] = Utf8.REPLACEMENT_BYTE;
                } else {
                    bArr[i14] = (byte) ((c11 >> 18) | 240);
                    bArr[i14 + 1] = (byte) (((c11 >> 12) & 63) | 128);
                    bArr[i14 + 2] = (byte) ((63 & (c11 >> 6)) | 128);
                    bArr[i14 + 3] = (byte) ((c11 & 63) | 128);
                    i15 = i10 + 2;
                    i12 = i14 + 4;
                }
                i10 = i15;
            }
            i14 = i12;
            i10 = i15;
        }
        return i14;
    }

    public static boolean g(char c10) {
        boolean[] zArr = f17605d;
        return c10 < zArr.length && zArr[c10];
    }

    public static void h(int i10, int i11, char[] cArr) {
        char c10;
        if (i10 < 0) {
            i10 = -i10;
            c10 = '-';
        } else {
            c10 = 0;
        }
        while (i10 >= 65536) {
            int i12 = i10 / 100;
            int i13 = i10 - (((i12 << 6) + (i12 << 5)) + (i12 << 2));
            cArr[i11 - 1] = f17615n[i13];
            i11 -= 2;
            cArr[i11] = f17614m[i13];
            i10 = i12;
        }
        while (true) {
            int i14 = (52429 * i10) >>> 19;
            int i15 = i11 - 1;
            cArr[i15] = f17613l[i10 - ((i14 << 3) + (i14 << 1))];
            if (i14 == 0) {
                break;
            }
            i10 = i14;
            i11 = i15;
        }
        if (c10 != 0) {
            cArr[i11 - 2] = c10;
        }
    }

    public static void i(long j10, int i10, char[] cArr) {
        char c10;
        if (j10 < 0) {
            j10 = -j10;
            c10 = '-';
        } else {
            c10 = 0;
        }
        while (j10 > 2147483647L) {
            long j11 = j10 / 100;
            int i11 = (int) (j10 - (((j11 << 6) + (j11 << 5)) + (j11 << 2)));
            cArr[i10 - 1] = f17615n[i11];
            i10 -= 2;
            cArr[i10] = f17614m[i11];
            j10 = j11;
        }
        int i12 = (int) j10;
        while (i12 >= 65536) {
            int i13 = i12 / 100;
            int i14 = i12 - (((i13 << 6) + (i13 << 5)) + (i13 << 2));
            cArr[i10 - 1] = f17615n[i14];
            i10 -= 2;
            cArr[i10] = f17614m[i14];
            i12 = i13;
        }
        while (true) {
            int i15 = (52429 * i12) >>> 19;
            int i16 = i10 - 1;
            cArr[i16] = f17613l[i12 - ((i15 << 3) + (i15 << 1))];
            if (i15 == 0) {
                break;
            }
            i12 = i15;
            i10 = i16;
        }
        if (c10 != 0) {
            cArr[i10 - 2] = c10;
        }
    }

    public static String j(String str) {
        String property;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        return property == null ? f17602a.getProperty(str) : property;
    }

    public static boolean k(char c10) {
        boolean[] zArr = f17606e;
        return c10 < zArr.length && zArr[c10];
    }

    public static void l() {
        InputStream inputStream = (InputStream) AccessController.doPrivileged(new a());
        if (inputStream != null) {
            try {
                f17602a.load(inputStream);
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String m(Reader reader) {
        StringBuilder sb2 = new StringBuilder();
        try {
            char[] cArr = new char[2048];
            while (true) {
                int i10 = reader.read(cArr, 0, 2048);
                if (i10 < 0) {
                    return sb2.toString();
                }
                sb2.append(cArr, 0, i10);
            }
        } catch (Exception e10) {
            throw new JSONException("read string from reader error", e10);
        }
    }

    public static int n(int i10) {
        int i11 = 0;
        while (i10 > f17616o[i11]) {
            i11++;
        }
        return i11 + 1;
    }

    public static int o(long j10) {
        long j11 = 10;
        for (int i10 = 1; i10 < 19; i10++) {
            if (j10 < j11) {
                return i10;
            }
            j11 *= 10;
        }
        return 19;
    }
}
