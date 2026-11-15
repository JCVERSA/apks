package com.mbridge.msdk.foundation.tools;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.HashMap;
import java.util.Map;
import okio.Utf8;

public class p0 {

    private static final char[] f34953a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    private static final byte[] f34954b = new byte[128];

    private static Map<Character, Character> f34955c;

    private static char[] f34956d;

    static {
        HashMap map = new HashMap();
        f34955c = map;
        map.put('A', 'v');
        f34955c.put('B', 'S');
        f34955c.put('C', 'o');
        f34955c.put('D', 'a');
        f34955c.put('E', 'j');
        f34955c.put('F', 'c');
        f34955c.put('G', '7');
        f34955c.put('H', 'd');
        f34955c.put('I', 'R');
        f34955c.put('J', 'z');
        f34955c.put('K', 'p');
        f34955c.put('L', 'W');
        f34955c.put('M', 'i');
        f34955c.put('N', 'f');
        f34955c.put('O', 'G');
        f34955c.put('P', 'y');
        f34955c.put('Q', 'N');
        f34955c.put('R', 'x');
        f34955c.put('S', 'Z');
        f34955c.put('T', 'n');
        f34955c.put('U', 'V');
        f34955c.put('V', '5');
        f34955c.put('W', 'k');
        f34955c.put('X', '+');
        f34955c.put('Y', 'D');
        f34955c.put('Z', 'H');
        f34955c.put('a', 'L');
        f34955c.put('b', 'Y');
        f34955c.put('c', 'h');
        f34955c.put('d', 'J');
        f34955c.put('e', '4');
        f34955c.put('f', '6');
        f34955c.put('g', 'l');
        f34955c.put('h', 't');
        f34955c.put('i', '0');
        f34955c.put('j', 'U');
        f34955c.put('k', '3');
        f34955c.put('l', 'Q');
        f34955c.put('m', 'r');
        f34955c.put('n', 'g');
        f34955c.put('o', 'E');
        f34955c.put('p', 'u');
        f34955c.put('q', 'q');
        f34955c.put('r', '8');
        f34955c.put('s', 's');
        f34955c.put('t', 'w');
        f34955c.put('u', '/');
        f34955c.put('v', 'X');
        f34955c.put('w', 'M');
        f34955c.put('x', 'e');
        f34955c.put('y', 'B');
        f34955c.put('z', 'A');
        f34955c.put('0', 'T');
        f34955c.put('1', '2');
        f34955c.put('2', 'F');
        f34955c.put('3', 'b');
        f34955c.put('4', '9');
        f34955c.put('5', 'P');
        f34955c.put('6', '1');
        f34955c.put('7', 'O');
        f34955c.put('8', 'I');
        f34955c.put('9', 'K');
        f34955c.put('+', 'm');
        f34955c.put('/', 'C');
        f34956d = new char[64];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            char[] cArr = f34953a;
            if (i11 >= cArr.length) {
                break;
            }
            f34956d[i11] = f34955c.get(Character.valueOf(cArr[i11])).charValue();
            i11++;
        }
        int i12 = 0;
        while (true) {
            byte[] bArr = f34954b;
            if (i12 >= bArr.length) {
                break;
            }
            bArr[i12] = 127;
            i12++;
        }
        while (true) {
            char[] cArr2 = f34956d;
            if (i10 >= cArr2.length) {
                return;
            }
            f34954b[cArr2[i10]] = (byte) i10;
            i10++;
        }
    }

    private static int a(char[] cArr, byte[] bArr, int i10) {
        try {
            char c10 = cArr[3];
            char c11 = c10 == '=' ? (char) 2 : (char) 3;
            char c12 = cArr[2];
            if (c12 == '=') {
                c11 = 1;
            }
            byte[] bArr2 = f34954b;
            byte b10 = bArr2[cArr[0]];
            byte b11 = bArr2[cArr[1]];
            byte b12 = bArr2[c12];
            byte b13 = bArr2[c10];
            if (c11 == 1) {
                bArr[i10] = (byte) (((b11 >> 4) & 3) | ((b10 << 2) & 252));
                return 1;
            }
            if (c11 == 2) {
                bArr[i10] = (byte) ((3 & (b11 >> 4)) | ((b10 << 2) & 252));
                bArr[i10 + 1] = (byte) (((b11 << 4) & 240) | ((b12 >> 2) & 15));
                return 2;
            }
            if (c11 != 3) {
                throw new RuntimeException("Internal Error");
            }
            bArr[i10] = (byte) (((b10 << 2) & 252) | ((b11 >> 4) & 3));
            bArr[i10 + 1] = (byte) (((b11 << 4) & 240) | ((b12 >> 2) & 15));
            bArr[i10 + 2] = (byte) (((b12 << 6) & PsExtractor.AUDIO_STREAM) | (b13 & Utf8.REPLACEMENT_BYTE));
            return 3;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String b(String str) {
        byte[] bArrA = a(str);
        if (bArrA == null || bArrA.length <= 0) {
            return null;
        }
        return new String(bArrA);
    }

    public static String c(String str) {
        return a(str.getBytes());
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003d A[Catch: Exception -> 0x005b, TryCatch #0 {Exception -> 0x005b, blocks: (B:2:0x0000, B:5:0x0009, B:7:0x0019, B:9:0x001d, B:13:0x002c, B:15:0x0032, B:17:0x0037, B:23:0x004c, B:19:0x003d, B:21:0x0044, B:10:0x0023, B:27:0x0055), top: B:31:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0044 A[Catch: Exception -> 0x005b, TryCatch #0 {Exception -> 0x005b, blocks: (B:2:0x0000, B:5:0x0009, B:7:0x0019, B:9:0x001d, B:13:0x002c, B:15:0x0032, B:17:0x0037, B:23:0x004c, B:19:0x003d, B:21:0x0044, B:10:0x0023, B:27:0x0055), top: B:31:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x004b  */
    public static byte[] a(String str) {
        int i10;
        int i11;
        try {
            int length = str.length();
            char[] cArr = new char[length < 259 ? length : 259];
            int i12 = ((length >> 2) * 3) + 3;
            byte[] bArr = new byte[i12];
            int i13 = 0;
            int iA = 0;
            int i14 = 0;
            while (i13 < length) {
                int i15 = i13 + 256;
                if (i15 <= length) {
                    str.getChars(i13, i15, cArr, i14);
                    i10 = i14 + 256;
                } else {
                    str.getChars(i13, length, cArr, i14);
                    i10 = (length - i13) + i14;
                }
                int i16 = i14;
                while (i14 < i10) {
                    char c10 = cArr[i14];
                    if (c10 != '=') {
                        byte[] bArr2 = f34954b;
                        if (c10 < bArr2.length && bArr2[c10] != 127) {
                            i11 = i16 + 1;
                            cArr[i16] = c10;
                            if (i11 == 4) {
                                iA += a(cArr, bArr, iA);
                                i16 = 0;
                            } else {
                                i16 = i11;
                            }
                        }
                    } else {
                        i11 = i16 + 1;
                        cArr[i16] = c10;
                        if (i11 == 4) {
                            iA += a(cArr, bArr, iA);
                            i16 = 0;
                        } else {
                            i16 = i11;
                        }
                    }
                    i14++;
                }
                i13 = i15;
                i14 = i16;
            }
            if (iA == i12) {
                return bArr;
            }
            byte[] bArr3 = new byte[iA];
            System.arraycopy(bArr, 0, bArr3, 0, iA);
            return bArr3;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static String a(byte[] bArr, int i10, int i11) {
        if (i11 <= 0) {
            return "";
        }
        try {
            char[] cArr = new char[((i11 / 3) << 2) + 4];
            int i12 = 0;
            while (i11 >= 3) {
                int i13 = ((bArr[i10] & 255) << 16) + ((bArr[i10 + 1] & 255) << 8) + (bArr[i10 + 2] & 255);
                char[] cArr2 = f34956d;
                cArr[i12] = cArr2[i13 >> 18];
                cArr[i12 + 1] = cArr2[(i13 >> 12) & 63];
                int i14 = i12 + 3;
                cArr[i12 + 2] = cArr2[(i13 >> 6) & 63];
                i12 += 4;
                cArr[i14] = cArr2[i13 & 63];
                i10 += 3;
                i11 -= 3;
            }
            if (i11 == 1) {
                int i15 = bArr[i10] & 255;
                char[] cArr3 = f34956d;
                cArr[i12] = cArr3[i15 >> 2];
                cArr[i12 + 1] = cArr3[(i15 << 4) & 63];
                int i16 = i12 + 3;
                cArr[i12 + 2] = '=';
                i12 += 4;
                cArr[i16] = '=';
            } else if (i11 == 2) {
                int i17 = ((bArr[i10] & 255) << 8) + (bArr[i10 + 1] & 255);
                char[] cArr4 = f34956d;
                cArr[i12] = cArr4[i17 >> 10];
                cArr[i12 + 1] = cArr4[(i17 >> 4) & 63];
                int i18 = i12 + 3;
                cArr[i12 + 2] = cArr4[(i17 << 2) & 63];
                i12 += 4;
                cArr[i18] = '=';
            }
            return new String(cArr, 0, i12);
        } catch (Exception unused) {
            return null;
        }
    }
}
