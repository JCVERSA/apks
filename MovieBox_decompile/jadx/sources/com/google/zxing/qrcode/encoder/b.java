package com.google.zxing.qrcode.encoder;

import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.g;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kd.o;

public abstract class b {

    private static final int[] f32225a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    static final Charset f32226b = StandardCharsets.ISO_8859_1;

    static class a {

        static final int[] f32227a;

        static {
            int[] iArr = new int[Mode.values().length];
            f32227a = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32227a[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32227a[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32227a[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static void a(String str, kd.a aVar, Charset charset) {
        for (byte b10 : str.getBytes(charset)) {
            aVar.c(b10, 8);
        }
    }

    static void b(CharSequence charSequence, kd.a aVar) throws WriterException {
        int length = charSequence.length();
        int i10 = 0;
        while (i10 < length) {
            int iP = p(charSequence.charAt(i10));
            if (iP == -1) {
                throw new WriterException();
            }
            int i11 = i10 + 1;
            if (i11 < length) {
                int iP2 = p(charSequence.charAt(i11));
                if (iP2 == -1) {
                    throw new WriterException();
                }
                aVar.c((iP * 45) + iP2, 11);
                i10 += 2;
            } else {
                aVar.c(iP, 6);
                i10 = i11;
            }
        }
    }

    static void c(String str, Mode mode, kd.a aVar, Charset charset) {
        int i10 = a.f32227a[mode.ordinal()];
        if (i10 == 1) {
            h(str, aVar);
            return;
        }
        if (i10 == 2) {
            b(str, aVar);
            return;
        }
        if (i10 == 3) {
            a(str, aVar, charset);
        } else {
            if (i10 == 4) {
                e(str, aVar);
                return;
            }
            throw new WriterException("Invalid mode: " + mode);
        }
    }

    private static void d(CharacterSetECI characterSetECI, kd.a aVar) {
        aVar.c(Mode.ECI.getBits(), 4);
        aVar.c(characterSetECI.getValue(), 8);
    }

    static void e(String str, kd.a aVar) throws WriterException {
        int i10;
        byte[] bytes = str.getBytes(o.f63972b);
        if (bytes.length % 2 != 0) {
            throw new WriterException("Kanji byte size not even");
        }
        int length = bytes.length - 1;
        for (int i11 = 0; i11 < length; i11 += 2) {
            int i12 = ((bytes[i11] & 255) << 8) | (bytes[i11 + 1] & 255);
            int i13 = 33088;
            if (i12 >= 33088 && i12 <= 40956) {
                i10 = i12 - i13;
            } else if (i12 < 57408 || i12 > 60351) {
                i10 = -1;
            } else {
                i13 = 49472;
                i10 = i12 - i13;
            }
            if (i10 == -1) {
                throw new WriterException("Invalid byte sequence");
            }
            aVar.c(((i10 >> 8) * PsExtractor.AUDIO_STREAM) + (i10 & 255), 13);
        }
    }

    static void f(int i10, g gVar, Mode mode, kd.a aVar) throws WriterException {
        int characterCountBits = mode.getCharacterCountBits(gVar);
        int i11 = 1 << characterCountBits;
        if (i10 < i11) {
            aVar.c(i10, characterCountBits);
            return;
        }
        throw new WriterException(i10 + " is bigger than " + (i11 - 1));
    }

    static void g(Mode mode, kd.a aVar) {
        aVar.c(mode.getBits(), 4);
    }

    static void h(CharSequence charSequence, kd.a aVar) {
        int length = charSequence.length();
        int i10 = 0;
        while (i10 < length) {
            int iCharAt = charSequence.charAt(i10) - '0';
            int i11 = i10 + 2;
            if (i11 < length) {
                aVar.c((iCharAt * 100) + ((charSequence.charAt(i10 + 1) - '0') * 10) + (charSequence.charAt(i11) - '0'), 10);
                i10 += 3;
            } else {
                i10++;
                if (i10 < length) {
                    aVar.c((iCharAt * 10) + (charSequence.charAt(i10) - '0'), 7);
                    i10 = i11;
                } else {
                    aVar.c(iCharAt, 4);
                }
            }
        }
    }

    private static int i(Mode mode, kd.a aVar, kd.a aVar2, g gVar) {
        return aVar.m() + mode.getCharacterCountBits(gVar) + aVar2.m();
    }

    private static int j(ae.a aVar) {
        return c.a(aVar) + c.c(aVar) + c.d(aVar) + c.e(aVar);
    }

    private static int k(kd.a aVar, ErrorCorrectionLevel errorCorrectionLevel, g gVar, ae.a aVar2) throws WriterException {
        int i10 = Integer.MAX_VALUE;
        int i11 = -1;
        for (int i12 = 0; i12 < 8; i12++) {
            d.a(aVar, errorCorrectionLevel, gVar, i12, aVar2);
            int iJ = j(aVar2);
            if (iJ < i10) {
                i11 = i12;
                i10 = iJ;
            }
        }
        return i11;
    }

    private static Mode l(String str, Charset charset) {
        if (o.f63972b.equals(charset) && s(str)) {
            return Mode.KANJI;
        }
        boolean z10 = false;
        boolean z11 = false;
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt >= '0' && cCharAt <= '9') {
                z11 = true;
            } else {
                if (p(cCharAt) == -1) {
                    return Mode.BYTE;
                }
                z10 = true;
            }
        }
        if (z10) {
            return Mode.ALPHANUMERIC;
        }
        return z11 ? Mode.NUMERIC : Mode.BYTE;
    }

    private static g m(int i10, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        for (int i11 = 1; i11 <= 40; i11++) {
            g gVarI = g.i(i11);
            if (v(i10, gVarI, errorCorrectionLevel)) {
                return gVarI;
            }
        }
        throw new WriterException("Data too big");
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    /* JADX WARN: Code duplicated, block: B:47:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:60:0x013d  */
    /* JADX WARN: Code duplicated, block: B:9:0x001c  */
    public static ae.b n(String str, ErrorCorrectionLevel errorCorrectionLevel, Map map) throws WriterException {
        boolean z10;
        boolean z11;
        g gVarT;
        g gVarE;
        kd.a aVar;
        Mode mode;
        CharacterSetECI characterSetECI;
        int iK;
        boolean z12 = false;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.GS1_FORMAT;
            if (map.containsKey(encodeHintType) && Boolean.parseBoolean(map.get(encodeHintType).toString())) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        if (map != null) {
            EncodeHintType encodeHintType2 = EncodeHintType.QR_COMPACT;
            if (map.containsKey(encodeHintType2) && Boolean.parseBoolean(map.get(encodeHintType2).toString())) {
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            z11 = false;
        }
        Object obj = f32226b;
        if (map != null && map.containsKey(EncodeHintType.CHARACTER_SET)) {
            z12 = true;
        }
        Charset charsetForName = z12 ? Charset.forName(map.get(EncodeHintType.CHARACTER_SET).toString()) : obj;
        if (z11) {
            mode = Mode.BYTE;
            if (charsetForName.equals(obj)) {
                charsetForName = null;
            }
            MinimalEncoder.c cVarI = MinimalEncoder.i(str, null, charsetForName, z10, errorCorrectionLevel);
            aVar = new kd.a();
            cVarI.b(aVar);
            gVarE = cVarI.e();
        } else {
            Mode modeL = l(str, charsetForName);
            kd.a aVar2 = new kd.a();
            Mode mode2 = Mode.BYTE;
            if (modeL == mode2 && z12 && (characterSetECI = CharacterSetECI.getCharacterSetECI(charsetForName)) != null) {
                d(characterSetECI, aVar2);
            }
            if (z10) {
                g(Mode.FNC1_FIRST_POSITION, aVar2);
            }
            g(modeL, aVar2);
            kd.a aVar3 = new kd.a();
            c(str, modeL, aVar3, charsetForName);
            if (map != null) {
                EncodeHintType encodeHintType3 = EncodeHintType.QR_VERSION;
                if (map.containsKey(encodeHintType3)) {
                    gVarT = g.i(Integer.parseInt(map.get(encodeHintType3).toString()));
                    if (!v(i(modeL, aVar2, aVar3, gVarT), gVarT, errorCorrectionLevel)) {
                        throw new WriterException("Data too big for requested version");
                    }
                } else {
                    gVarT = t(errorCorrectionLevel, modeL, aVar2, aVar3);
                }
            } else {
                gVarT = t(errorCorrectionLevel, modeL, aVar2, aVar3);
            }
            kd.a aVar4 = new kd.a();
            aVar4.b(aVar2);
            f(modeL == mode2 ? aVar3.n() : str.length(), gVarT, modeL, aVar4);
            aVar4.b(aVar3);
            gVarE = gVarT;
            aVar = aVar4;
            mode = modeL;
        }
        g.b bVarF = gVarE.f(errorCorrectionLevel);
        int iH = gVarE.h() - bVarF.d();
        u(iH, aVar);
        kd.a aVarR = r(aVar, gVarE.h(), iH, bVarF.c());
        ae.b bVar = new ae.b();
        bVar.c(errorCorrectionLevel);
        bVar.f(mode);
        bVar.g(gVarE);
        int iE = gVarE.e();
        ae.a aVar5 = new ae.a(iE, iE);
        if (map != null) {
            EncodeHintType encodeHintType4 = EncodeHintType.QR_MASK_PATTERN;
            if (map.containsKey(encodeHintType4)) {
                iK = Integer.parseInt(map.get(encodeHintType4).toString());
                if (!ae.b.b(iK)) {
                    iK = -1;
                }
            } else {
                iK = -1;
            }
        } else {
            iK = -1;
        }
        if (iK == -1) {
            iK = k(aVarR, errorCorrectionLevel, gVarE, aVar5);
        }
        bVar.d(iK);
        d.a(aVarR, errorCorrectionLevel, gVarE, iK, aVar5);
        bVar.e(aVar5);
        return bVar;
    }

    static byte[] o(byte[] bArr, int i10) {
        int length = bArr.length;
        int[] iArr = new int[length + i10];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = bArr[i11] & 255;
        }
        new md.d(md.a.f66377l).b(iArr, i10);
        byte[] bArr2 = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr2[i12] = (byte) iArr[length + i12];
        }
        return bArr2;
    }

    static int p(int i10) {
        int[] iArr = f32225a;
        if (i10 < iArr.length) {
            return iArr[i10];
        }
        return -1;
    }

    static void q(int i10, int i11, int i12, int i13, int[] iArr, int[] iArr2) throws WriterException {
        if (i13 >= i12) {
            throw new WriterException("Block ID too large");
        }
        int i14 = i10 % i12;
        int i15 = i12 - i14;
        int i16 = i10 / i12;
        int i17 = i16 + 1;
        int i18 = i11 / i12;
        int i19 = i18 + 1;
        int i20 = i16 - i18;
        int i21 = i17 - i19;
        if (i20 != i21) {
            throw new WriterException("EC bytes mismatch");
        }
        if (i12 != i15 + i14) {
            throw new WriterException("RS blocks mismatch");
        }
        if (i10 != ((i18 + i20) * i15) + ((i19 + i21) * i14)) {
            throw new WriterException("Total bytes mismatch");
        }
        if (i13 < i15) {
            iArr[0] = i18;
            iArr2[0] = i20;
        } else {
            iArr[0] = i19;
            iArr2[0] = i21;
        }
    }

    static kd.a r(kd.a aVar, int i10, int i11, int i12) throws WriterException {
        if (aVar.n() != i11) {
            throw new WriterException("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(i12);
        int i13 = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            q(i10, i11, i12, i14, iArr, iArr2);
            int i15 = iArr[0];
            byte[] bArr = new byte[i15];
            aVar.t(i13 * 8, bArr, 0, i15);
            byte[] bArrO = o(bArr, iArr2[0]);
            arrayList.add(new com.google.zxing.qrcode.encoder.a(bArr, bArrO));
            iMax = Math.max(iMax, i15);
            iMax2 = Math.max(iMax2, bArrO.length);
            i13 += iArr[0];
        }
        if (i11 != i13) {
            throw new WriterException("Data bytes does not match offset");
        }
        kd.a aVar2 = new kd.a();
        for (int i16 = 0; i16 < iMax; i16++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArrA = ((com.google.zxing.qrcode.encoder.a) it.next()).a();
                if (i16 < bArrA.length) {
                    aVar2.c(bArrA[i16], 8);
                }
            }
        }
        for (int i17 = 0; i17 < iMax2; i17++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArrB = ((com.google.zxing.qrcode.encoder.a) it2.next()).b();
                if (i17 < bArrB.length) {
                    aVar2.c(bArrB[i17], 8);
                }
            }
        }
        if (i10 == aVar2.n()) {
            return aVar2;
        }
        throw new WriterException("Interleaving error: " + i10 + " and " + aVar2.n() + " differ.");
    }

    static boolean s(String str) {
        byte[] bytes = str.getBytes(o.f63972b);
        int length = bytes.length;
        if (length % 2 != 0) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10 += 2) {
            int i11 = bytes[i10] & 255;
            if ((i11 < 129 || i11 > 159) && (i11 < 224 || i11 > 235)) {
                return false;
            }
        }
        return true;
    }

    private static g t(ErrorCorrectionLevel errorCorrectionLevel, Mode mode, kd.a aVar, kd.a aVar2) {
        return m(i(mode, aVar, aVar2, m(i(mode, aVar, aVar2, g.i(1)), errorCorrectionLevel)), errorCorrectionLevel);
    }

    static void u(int i10, kd.a aVar) throws WriterException {
        int i11 = i10 * 8;
        if (aVar.m() > i11) {
            throw new WriterException("data bits cannot fit in the QR Code" + aVar.m() + " > " + i11);
        }
        for (int i12 = 0; i12 < 4 && aVar.m() < i11; i12++) {
            aVar.a(false);
        }
        int iM = aVar.m() & 7;
        if (iM > 0) {
            while (iM < 8) {
                aVar.a(false);
                iM++;
            }
        }
        int iN = i10 - aVar.n();
        for (int i13 = 0; i13 < iN; i13++) {
            aVar.c((i13 & 1) == 0 ? 236 : 17, 8);
        }
        if (aVar.m() != i11) {
            throw new WriterException("Bits size does not equal capacity");
        }
    }

    static boolean v(int i10, g gVar, ErrorCorrectionLevel errorCorrectionLevel) {
        return gVar.h() - gVar.f(errorCorrectionLevel).d() >= (i10 + 7) / 8;
    }
}
