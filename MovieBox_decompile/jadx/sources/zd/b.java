package zd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.m;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.util.Map;

public final class b implements m {
    private static kd.b b(ae.b bVar, int i10, int i11, int i12) {
        ae.a aVarA = bVar.a();
        if (aVarA == null) {
            throw new IllegalStateException();
        }
        int iE = aVarA.e();
        int iD = aVarA.d();
        int i13 = i12 * 2;
        int i14 = iE + i13;
        int i15 = i13 + iD;
        int iMax = Math.max(i10, i14);
        int iMax2 = Math.max(i11, i15);
        int iMin = Math.min(iMax / i14, iMax2 / i15);
        int i16 = (iMax - (iE * iMin)) / 2;
        int i17 = (iMax2 - (iD * iMin)) / 2;
        kd.b bVar2 = new kd.b(iMax, iMax2);
        int i18 = 0;
        while (i18 < iD) {
            int i19 = 0;
            int i20 = i16;
            while (i19 < iE) {
                if (aVarA.b(i19, i18) == 1) {
                    bVar2.s(i20, i17, iMin, iMin);
                }
                i19++;
                i20 += iMin;
            }
            i18++;
            i17 += iMin;
        }
        return bVar2;
    }

    @Override
    public kd.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map map) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got " + barcodeFormat);
        }
        if (i10 < 0 || i11 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i10 + 'x' + i11);
        }
        ErrorCorrectionLevel errorCorrectionLevelValueOf = ErrorCorrectionLevel.L;
        int i12 = 4;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.ERROR_CORRECTION;
            if (map.containsKey(encodeHintType)) {
                errorCorrectionLevelValueOf = ErrorCorrectionLevel.valueOf(map.get(encodeHintType).toString());
            }
            EncodeHintType encodeHintType2 = EncodeHintType.MARGIN;
            if (map.containsKey(encodeHintType2)) {
                i12 = Integer.parseInt(map.get(encodeHintType2).toString());
            }
        }
        return b(com.google.zxing.qrcode.encoder.b.n(str, errorCorrectionLevelValueOf, map), i10, i11, i12);
    }
}
