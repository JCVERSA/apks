package nd;

import android.support.v4.media.session.c;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.datamatrix.encoder.MinimalEncoder;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.google.zxing.datamatrix.encoder.g;
import com.google.zxing.m;
import java.nio.charset.Charset;
import java.util.Map;
import pd.d;

public final class b implements m {
    private static kd.b b(ae.a aVar, int i10, int i11) {
        kd.b bVar;
        int iE = aVar.e();
        int iD = aVar.d();
        int iMax = Math.max(i10, iE);
        int iMax2 = Math.max(i11, iD);
        int iMin = Math.min(iMax / iE, iMax2 / iD);
        int i12 = (iMax - (iE * iMin)) / 2;
        int i13 = (iMax2 - (iD * iMin)) / 2;
        if (i11 < iD || i10 < iE) {
            bVar = new kd.b(iE, iD);
            i12 = 0;
            i13 = 0;
        } else {
            bVar = new kd.b(i10, i11);
        }
        bVar.b();
        int i14 = 0;
        while (i14 < iD) {
            int i15 = i12;
            int i16 = 0;
            while (i16 < iE) {
                if (aVar.b(i16, i14) == 1) {
                    bVar.s(i15, i13, iMin, iMin);
                }
                i16++;
                i15 += iMin;
            }
            i14++;
            i13 += iMin;
        }
        return bVar;
    }

    private static kd.b c(pd.b bVar, d dVar, int i10, int i11) {
        int iH = dVar.h();
        int iG = dVar.g();
        ae.a aVar = new ae.a(dVar.j(), dVar.i());
        int i12 = 0;
        for (int i13 = 0; i13 < iG; i13++) {
            if (i13 % dVar.f69143e == 0) {
                int i14 = 0;
                for (int i15 = 0; i15 < dVar.j(); i15++) {
                    aVar.g(i14, i12, i15 % 2 == 0);
                    i14++;
                }
                i12++;
            }
            int i16 = 0;
            for (int i17 = 0; i17 < iH; i17++) {
                if (i17 % dVar.f69142d == 0) {
                    aVar.g(i16, i12, true);
                    i16++;
                }
                aVar.g(i16, i12, bVar.e(i17, i13));
                int i18 = i16 + 1;
                int i19 = dVar.f69142d;
                if (i17 % i19 == i19 - 1) {
                    aVar.g(i18, i12, i13 % 2 == 0);
                    i16 += 2;
                } else {
                    i16 = i18;
                }
            }
            int i20 = i12 + 1;
            int i21 = dVar.f69143e;
            if (i13 % i21 == i21 - 1) {
                int i22 = 0;
                for (int i23 = 0; i23 < dVar.j(); i23++) {
                    aVar.g(i22, i20, true);
                    i22++;
                }
                i12 += 2;
            } else {
                i12 = i20;
            }
        }
        return b(aVar, i10, i11);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0082 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0084  */
    @Override
    public kd.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map map) {
        String strB;
        EncodeHintType encodeHintType;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got " + barcodeFormat);
        }
        if (i10 < 0 || i11 < 0) {
            throw new IllegalArgumentException("Requested dimensions can't be negative: " + i10 + 'x' + i11);
        }
        SymbolShapeHint symbolShapeHint = SymbolShapeHint.FORCE_NONE;
        if (map != null) {
            SymbolShapeHint symbolShapeHint2 = (SymbolShapeHint) map.get(EncodeHintType.DATA_MATRIX_SHAPE);
            if (symbolShapeHint2 != null) {
                symbolShapeHint = symbolShapeHint2;
            }
            c.a(map.get(EncodeHintType.MIN_SIZE));
            c.a(map.get(EncodeHintType.MAX_SIZE));
        }
        boolean z10 = false;
        if (map != null) {
            EncodeHintType encodeHintType2 = EncodeHintType.DATA_MATRIX_COMPACT;
            if (map.containsKey(encodeHintType2) && Boolean.parseBoolean(map.get(encodeHintType2).toString())) {
                EncodeHintType encodeHintType3 = EncodeHintType.GS1_FORMAT;
                if (map.containsKey(encodeHintType3) && Boolean.parseBoolean(map.get(encodeHintType3).toString())) {
                    z10 = true;
                }
                EncodeHintType encodeHintType4 = EncodeHintType.CHARACTER_SET;
                strB = MinimalEncoder.h(str, map.containsKey(encodeHintType4) ? Charset.forName(map.get(encodeHintType4).toString()) : null, z10 ? 29 : -1, symbolShapeHint);
            } else {
                if (map != null) {
                    encodeHintType = EncodeHintType.FORCE_C40;
                    if (map.containsKey(encodeHintType) && Boolean.parseBoolean(map.get(encodeHintType).toString())) {
                        z10 = true;
                    }
                }
                strB = g.b(str, symbolShapeHint, null, null, z10);
            }
        } else {
            if (map != null) {
                encodeHintType = EncodeHintType.FORCE_C40;
                if (map.containsKey(encodeHintType)) {
                    z10 = true;
                }
            }
            strB = g.b(str, symbolShapeHint, null, null, z10);
        }
        d dVarL = d.l(strB.length(), symbolShapeHint, null, null, true);
        pd.b bVar = new pd.b(pd.c.b(strB, dVarL), dVarL.h(), dVarL.g());
        bVar.h();
        return c(bVar, dVarL, i10, i11);
    }
}
