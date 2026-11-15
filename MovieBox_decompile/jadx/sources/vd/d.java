package vd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.m;
import com.google.zxing.pdf417.encoder.Compaction;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

public final class d implements m {
    private static kd.b b(byte[][] bArr, int i10) {
        int i11 = i10 * 2;
        kd.b bVar = new kd.b(bArr[0].length + i11, bArr.length + i11);
        bVar.b();
        int iK = (bVar.k() - i10) - 1;
        int i12 = 0;
        while (i12 < bArr.length) {
            byte[] bArr2 = bArr[i12];
            for (int i13 = 0; i13 < bArr[0].length; i13++) {
                if (bArr2[i13] == 1) {
                    bVar.r(i13 + i10, iK);
                }
            }
            i12++;
            iK--;
        }
        return bVar;
    }

    private static kd.b c(yd.c cVar, String str, int i10, int i11, int i12, int i13, boolean z10) throws WriterException {
        boolean z11;
        cVar.e(str, i10, z10);
        byte[][] bArrB = cVar.f().b(1, 4);
        if ((i12 > i11) != (bArrB[0].length < bArrB.length)) {
            bArrB = d(bArrB);
            z11 = true;
        } else {
            z11 = false;
        }
        int iMin = Math.min(i11 / bArrB[0].length, i12 / bArrB.length);
        if (iMin <= 1) {
            return b(bArrB, i13);
        }
        byte[][] bArrB2 = cVar.f().b(iMin, iMin * 4);
        if (z11) {
            bArrB2 = d(bArrB2);
        }
        return b(bArrB2, i13);
    }

    private static byte[][] d(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, bArr[0].length, bArr.length);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int length = (bArr.length - i10) - 1;
            for (int i11 = 0; i11 < bArr[0].length; i11++) {
                bArr2[i11][length] = bArr[i10][i11];
            }
        }
        return bArr2;
    }

    @Override
    public kd.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map map) {
        if (barcodeFormat != BarcodeFormat.PDF_417) {
            throw new IllegalArgumentException("Can only encode PDF_417, but got " + barcodeFormat);
        }
        yd.c cVar = new yd.c();
        boolean z10 = false;
        int i12 = 30;
        int i13 = 2;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.PDF417_COMPACT;
            if (map.containsKey(encodeHintType)) {
                cVar.h(Boolean.parseBoolean(map.get(encodeHintType).toString()));
            }
            EncodeHintType encodeHintType2 = EncodeHintType.PDF417_COMPACTION;
            if (map.containsKey(encodeHintType2)) {
                cVar.i(Compaction.valueOf(map.get(encodeHintType2).toString()));
            }
            EncodeHintType encodeHintType3 = EncodeHintType.PDF417_DIMENSIONS;
            if (map.containsKey(encodeHintType3)) {
                android.support.v4.media.session.c.a(map.get(encodeHintType3));
                throw null;
            }
            EncodeHintType encodeHintType4 = EncodeHintType.MARGIN;
            i12 = map.containsKey(encodeHintType4) ? Integer.parseInt(map.get(encodeHintType4).toString()) : 30;
            EncodeHintType encodeHintType5 = EncodeHintType.ERROR_CORRECTION;
            i13 = map.containsKey(encodeHintType5) ? Integer.parseInt(map.get(encodeHintType5).toString()) : 2;
            EncodeHintType encodeHintType6 = EncodeHintType.CHARACTER_SET;
            if (map.containsKey(encodeHintType6)) {
                cVar.j(Charset.forName(map.get(encodeHintType6).toString()));
            }
            EncodeHintType encodeHintType7 = EncodeHintType.PDF417_AUTO_ECI;
            if (map.containsKey(encodeHintType7) && Boolean.parseBoolean(map.get(encodeHintType7).toString())) {
                z10 = true;
            }
        }
        return c(cVar, str, i13, i10, i11, i12, z10);
    }
}
