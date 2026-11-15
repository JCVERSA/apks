package gd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.m;
import java.nio.charset.Charset;
import java.util.Map;

public final class c implements m {
    private static kd.b b(String str, BarcodeFormat barcodeFormat, int i10, int i11, Charset charset, int i12, int i13) {
        if (barcodeFormat == BarcodeFormat.AZTEC) {
            return c(com.google.zxing.aztec.encoder.c.d(str, i12, i13, charset), i10, i11);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got " + barcodeFormat);
    }

    private static kd.b c(com.google.zxing.aztec.encoder.a aVar, int i10, int i11) {
        kd.b bVarA = aVar.a();
        if (bVarA == null) {
            throw new IllegalStateException();
        }
        int iN = bVarA.n();
        int iK = bVarA.k();
        int iMax = Math.max(i10, iN);
        int iMax2 = Math.max(i11, iK);
        int iMin = Math.min(iMax / iN, iMax2 / iK);
        int i12 = (iMax - (iN * iMin)) / 2;
        int i13 = (iMax2 - (iK * iMin)) / 2;
        kd.b bVar = new kd.b(iMax, iMax2);
        int i14 = 0;
        while (i14 < iK) {
            int i15 = 0;
            int i16 = i12;
            while (i15 < iN) {
                if (bVarA.h(i15, i14)) {
                    bVar.s(i16, i13, iMin, iMin);
                }
                i15++;
                i16 += iMin;
            }
            i14++;
            i13 += iMin;
        }
        return bVar;
    }

    @Override
    public kd.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map map) {
        Charset charsetForName = null;
        int i12 = 33;
        int i13 = 0;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.CHARACTER_SET;
            charsetForName = map.containsKey(encodeHintType) ? Charset.forName(map.get(encodeHintType).toString()) : null;
            EncodeHintType encodeHintType2 = EncodeHintType.ERROR_CORRECTION;
            i12 = map.containsKey(encodeHintType2) ? Integer.parseInt(map.get(encodeHintType2).toString()) : 33;
            EncodeHintType encodeHintType3 = EncodeHintType.AZTEC_LAYERS;
            if (map.containsKey(encodeHintType3)) {
                i13 = Integer.parseInt(map.get(encodeHintType3).toString());
            }
        }
        return b(str, barcodeFormat, i10, i11, charsetForName, i12, i13);
    }
}
