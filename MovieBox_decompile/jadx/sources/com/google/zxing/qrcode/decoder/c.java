package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.CharacterSetECI;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import kd.o;

abstract class c {

    private static final char[] f32162a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();

    static class a {

        static final int[] f32163a;

        static {
            int[] iArr = new int[Mode.values().length];
            f32163a = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32163a[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32163a[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32163a[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32163a[Mode.TERMINATOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32163a[Mode.FNC1_FIRST_POSITION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32163a[Mode.FNC1_SECOND_POSITION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f32163a[Mode.STRUCTURED_APPEND.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f32163a[Mode.ECI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f32163a[Mode.HANZI.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:41:0x0103 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x0105  */
    /* JADX WARN: Code duplicated, block: B:43:0x0107 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x0109  */
    /* JADX WARN: Code duplicated, block: B:46:0x010c  */
    /* JADX WARN: Code duplicated, block: B:47:0x010f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x0111  */
    /* JADX WARN: Code duplicated, block: B:49:0x0114 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x0116  */
    /* JADX WARN: Code duplicated, block: B:51:0x0118  */
    /* JADX WARN: Code duplicated, block: B:54:0x0125  */
    /* JADX WARN: Code duplicated, block: B:55:0x0127  */
    /* JADX WARN: Code duplicated, block: B:57:0x012a  */
    /* JADX WARN: Code duplicated, block: B:58:0x012c  */
    /* JADX WARN: Code duplicated, block: B:61:0x013d A[LOOP:0: B:64:0x0021->B:61:0x013d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:68:0x0101 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7, types: [int] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    static kd.d a(byte[] bArr, g gVar, ErrorCorrectionLevel errorCorrectionLevel, Map map) throws FormatException {
        boolean z10;
        ?? r15;
        char c10;
        ArrayList arrayList;
        String string;
        kd.c cVar = new kd.c(bArr);
        StringBuilder sb2 = new StringBuilder(50);
        boolean z11 = true;
        ArrayList arrayList2 = new ArrayList(1);
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        int i10 = -1;
        int iD = -1;
        CharacterSetECI characterSetECIByValue = null;
        while (true) {
            try {
                char c11 = 4;
                Mode modeForBits = cVar.a() < 4 ? Mode.TERMINATOR : Mode.forBits(cVar.d(4));
                int[] iArr = a.f32163a;
                char c12 = 3;
                char c13 = 2;
                switch (iArr[modeForBits.ordinal()]) {
                    case 5:
                        c13 = 2;
                        c12 = 3;
                        modeForBits = modeForBits;
                        z10 = z11;
                        c11 = 4;
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c11;
                                } else if (z14) {
                                    c10 = 6;
                                    r15 = c10;
                                } else {
                                    r15 = c13;
                                }
                            } else if (z13) {
                                r15 = c12;
                            } else if (z14) {
                                c10 = 5;
                                r15 = c10;
                            } else {
                                r15 = z10;
                            }
                            String string2 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new kd.d(bArr, string2, arrayList, string, i10, iD, r15);
                        }
                        z11 = z10;
                        break;
                    case 6:
                        c13 = 2;
                        c12 = 3;
                        modeForBits = modeForBits;
                        z10 = z11;
                        c11 = 4;
                        z12 = z10;
                        z13 = z12;
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c11;
                                } else if (z14) {
                                    c10 = 6;
                                    r15 = c10;
                                } else {
                                    r15 = c13;
                                }
                            } else if (z13) {
                                r15 = c12;
                            } else if (z14) {
                                c10 = 5;
                                r15 = c10;
                            } else {
                                r15 = z10;
                            }
                            String string3 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new kd.d(bArr, string3, arrayList, string, i10, iD, r15);
                        }
                        z11 = z10;
                        break;
                    case 7:
                        c13 = 2;
                        c12 = 3;
                        modeForBits = modeForBits;
                        z10 = z11;
                        c11 = 4;
                        z12 = z10;
                        z14 = z12;
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c11;
                                } else if (z14) {
                                    c10 = 6;
                                    r15 = c10;
                                } else {
                                    r15 = c13;
                                }
                            } else if (z13) {
                                r15 = c12;
                            } else if (z14) {
                                c10 = 5;
                                r15 = c10;
                            } else {
                                r15 = z10;
                            }
                            String string4 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new kd.d(bArr, string4, arrayList, string, i10, iD, r15);
                        }
                        z11 = z10;
                        break;
                    case 8:
                        c13 = 2;
                        c12 = 3;
                        modeForBits = modeForBits;
                        z10 = z11;
                        c11 = 4;
                        if (cVar.a() < 16) {
                            throw FormatException.getFormatInstance();
                        }
                        int iD2 = cVar.d(8);
                        iD = cVar.d(8);
                        i10 = iD2;
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c11;
                                } else if (z14) {
                                    c10 = 6;
                                    r15 = c10;
                                } else {
                                    r15 = c13;
                                }
                            } else if (z13) {
                                r15 = c12;
                            } else if (z14) {
                                c10 = 5;
                                r15 = c10;
                            } else {
                                r15 = z10;
                            }
                            String string5 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new kd.d(bArr, string5, arrayList, string, i10, iD, r15);
                        }
                        z11 = z10;
                        break;
                        break;
                    case 9:
                        c13 = 2;
                        c12 = 3;
                        modeForBits = modeForBits;
                        z10 = z11;
                        c11 = 4;
                        characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(g(cVar));
                        if (characterSetECIByValue == null) {
                            throw FormatException.getFormatInstance();
                        }
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c11;
                                } else if (z14) {
                                    c10 = 6;
                                    r15 = c10;
                                } else {
                                    r15 = c13;
                                }
                            } else if (z13) {
                                r15 = c12;
                            } else if (z14) {
                                c10 = 5;
                                r15 = c10;
                            } else {
                                r15 = z10;
                            }
                            String string6 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new kd.d(bArr, string6, arrayList, string, i10, iD, r15);
                        }
                        z11 = z10;
                        break;
                        break;
                    case 10:
                        c13 = 2;
                        c12 = 3;
                        modeForBits = modeForBits;
                        c11 = 4;
                        int iD3 = cVar.d(4);
                        int iD4 = cVar.d(modeForBits.getCharacterCountBits(gVar));
                        z10 = true;
                        if (iD3 == 1) {
                            d(cVar, sb2, iD4);
                        }
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c11;
                                } else if (z14) {
                                    c10 = 6;
                                    r15 = c10;
                                } else {
                                    r15 = c13;
                                }
                            } else if (z13) {
                                r15 = c12;
                            } else if (z14) {
                                c10 = 5;
                                r15 = c10;
                            } else {
                                r15 = z10;
                            }
                            String string7 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new kd.d(bArr, string7, arrayList, string, i10, iD, r15);
                        }
                        z11 = z10;
                        break;
                    default:
                        int iD5 = cVar.d(modeForBits.getCharacterCountBits(gVar));
                        int i11 = iArr[modeForBits.ordinal()];
                        if (i11 == z11) {
                            f(cVar, sb2, iD5);
                        } else if (i11 == 2) {
                            b(cVar, sb2, iD5, z12);
                        } else if (i11 == 3) {
                            c(cVar, sb2, iD5, characterSetECIByValue, arrayList2, map);
                        } else {
                            if (i11 != 4) {
                                throw FormatException.getFormatInstance();
                            }
                            e(cVar, sb2, iD5);
                            c13 = 2;
                            c12 = 3;
                            modeForBits = modeForBits;
                            z10 = z11;
                            c11 = 4;
                            if (modeForBits == Mode.TERMINATOR) {
                                if (characterSetECIByValue != null) {
                                    if (z13) {
                                        r15 = c11;
                                    } else if (z14) {
                                        c10 = 6;
                                        r15 = c10;
                                    } else {
                                        r15 = c13;
                                    }
                                } else if (z13) {
                                    r15 = c12;
                                } else if (z14) {
                                    c10 = 5;
                                    r15 = c10;
                                } else {
                                    r15 = z10;
                                }
                                String string8 = sb2.toString();
                                if (arrayList2.isEmpty()) {
                                    arrayList = null;
                                } else {
                                    arrayList = arrayList2;
                                }
                                if (errorCorrectionLevel == null) {
                                    string = null;
                                } else {
                                    string = errorCorrectionLevel.toString();
                                }
                                return new kd.d(bArr, string8, arrayList, string, i10, iD, r15);
                            }
                            z11 = z10;
                        }
                        z10 = true;
                        if (modeForBits == Mode.TERMINATOR) {
                            if (characterSetECIByValue != null) {
                                if (z13) {
                                    r15 = c11;
                                } else if (z14) {
                                    c10 = 6;
                                    r15 = c10;
                                } else {
                                    r15 = c13;
                                }
                            } else if (z13) {
                                r15 = c12;
                            } else if (z14) {
                                c10 = 5;
                                r15 = c10;
                            } else {
                                r15 = z10;
                            }
                            String string9 = sb2.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                string = null;
                            } else {
                                string = errorCorrectionLevel.toString();
                            }
                            return new kd.d(bArr, string9, arrayList, string, i10, iD, r15);
                        }
                        z11 = z10;
                        break;
                }
            } catch (IllegalArgumentException unused) {
                throw FormatException.getFormatInstance();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    private static void b(kd.c cVar, StringBuilder sb2, int i10, boolean z10) throws FormatException {
        while (i10 > 1) {
            if (cVar.a() < 11) {
                throw FormatException.getFormatInstance();
            }
            int iD = cVar.d(11);
            sb2.append(h(iD / 45));
            sb2.append(h(iD % 45));
            i10 -= 2;
        }
        if (i10 == 1) {
            if (cVar.a() < 6) {
                throw FormatException.getFormatInstance();
            }
            sb2.append(h(cVar.d(6)));
        }
        if (z10) {
            for (int length = sb2.length(); length < sb2.length(); length++) {
                if (sb2.charAt(length) == '%') {
                    if (length < sb2.length() - 1) {
                        int i11 = length + 1;
                        if (sb2.charAt(i11) == '%') {
                            sb2.deleteCharAt(i11);
                        } else {
                            sb2.setCharAt(length, (char) 29);
                        }
                    } else {
                        sb2.setCharAt(length, (char) 29);
                    }
                }
            }
        }
    }

    private static void c(kd.c cVar, StringBuilder sb2, int i10, CharacterSetECI characterSetECI, Collection collection, Map map) throws FormatException {
        if (i10 * 8 > cVar.a()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = (byte) cVar.d(8);
        }
        sb2.append(new String(bArr, characterSetECI == null ? o.a(bArr, map) : characterSetECI.getCharset()));
        collection.add(bArr);
    }

    private static void d(kd.c cVar, StringBuilder sb2, int i10) throws FormatException {
        if (o.f63973c == null) {
            throw FormatException.getFormatInstance();
        }
        if (i10 * 13 > cVar.a()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i10 * 2];
        int i11 = 0;
        while (i10 > 0) {
            int iD = cVar.d(13);
            int i12 = (iD % 96) | ((iD / 96) << 8);
            int i13 = i12 + (i12 < 2560 ? 41377 : 42657);
            bArr[i11] = (byte) ((i13 >> 8) & 255);
            bArr[i11 + 1] = (byte) (i13 & 255);
            i11 += 2;
            i10--;
        }
        sb2.append(new String(bArr, o.f63973c));
    }

    private static void e(kd.c cVar, StringBuilder sb2, int i10) throws FormatException {
        if (i10 * 13 > cVar.a()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i10 * 2];
        int i11 = 0;
        while (i10 > 0) {
            int iD = cVar.d(13);
            int i12 = (iD % PsExtractor.AUDIO_STREAM) | ((iD / PsExtractor.AUDIO_STREAM) << 8);
            int i13 = i12 + (i12 < 7936 ? 33088 : 49472);
            bArr[i11] = (byte) (i13 >> 8);
            bArr[i11 + 1] = (byte) i13;
            i11 += 2;
            i10--;
        }
        sb2.append(new String(bArr, o.f63972b));
    }

    private static void f(kd.c cVar, StringBuilder sb2, int i10) throws FormatException {
        while (i10 >= 3) {
            if (cVar.a() < 10) {
                throw FormatException.getFormatInstance();
            }
            int iD = cVar.d(10);
            if (iD >= 1000) {
                throw FormatException.getFormatInstance();
            }
            sb2.append(h(iD / 100));
            sb2.append(h((iD / 10) % 10));
            sb2.append(h(iD % 10));
            i10 -= 3;
        }
        if (i10 == 2) {
            if (cVar.a() < 7) {
                throw FormatException.getFormatInstance();
            }
            int iD2 = cVar.d(7);
            if (iD2 >= 100) {
                throw FormatException.getFormatInstance();
            }
            sb2.append(h(iD2 / 10));
            sb2.append(h(iD2 % 10));
            return;
        }
        if (i10 == 1) {
            if (cVar.a() < 4) {
                throw FormatException.getFormatInstance();
            }
            int iD3 = cVar.d(4);
            if (iD3 >= 10) {
                throw FormatException.getFormatInstance();
            }
            sb2.append(h(iD3));
        }
    }

    private static int g(kd.c cVar) throws FormatException {
        int iD = cVar.d(8);
        if ((iD & 128) == 0) {
            return iD & 127;
        }
        if ((iD & PsExtractor.AUDIO_STREAM) == 128) {
            return cVar.d(8) | ((iD & 63) << 8);
        }
        if ((iD & 224) == 192) {
            return cVar.d(16) | ((iD & 31) << 16);
        }
        throw FormatException.getFormatInstance();
    }

    private static char h(int i10) throws FormatException {
        char[] cArr = f32162a;
        if (i10 < cArr.length) {
            return cArr[i10];
        }
        throw FormatException.getFormatInstance();
    }
}
