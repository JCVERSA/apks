package nd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.datamatrix.decoder.c;
import com.google.zxing.i;
import com.google.zxing.j;
import com.google.zxing.k;
import java.util.List;
import java.util.Map;
import kd.d;
import kd.f;

public final class a implements i {

    private static final k[] f67163b = new k[0];

    private final c f67164a = new c();

    private static kd.b c(kd.b bVar) throws NotFoundException {
        int[] iArrM = bVar.m();
        int[] iArrI = bVar.i();
        if (iArrM == null || iArrI == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iD = d(iArrM, bVar);
        int i10 = iArrM[1];
        int i11 = iArrI[1];
        int i12 = iArrM[0];
        int i13 = ((iArrI[0] - i12) + 1) / iD;
        int i14 = ((i11 - i10) + 1) / iD;
        if (i13 <= 0 || i14 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i15 = iD / 2;
        int i16 = i10 + i15;
        int i17 = i12 + i15;
        kd.b bVar2 = new kd.b(i13, i14);
        for (int i18 = 0; i18 < i14; i18++) {
            int i19 = (i18 * iD) + i16;
            for (int i20 = 0; i20 < i13; i20++) {
                if (bVar.h((i20 * iD) + i17, i19)) {
                    bVar2.r(i20, i18);
                }
            }
        }
        return bVar2;
    }

    private static int d(int[] iArr, kd.b bVar) throws NotFoundException {
        int iN = bVar.n();
        int i10 = iArr[0];
        int i11 = iArr[1];
        while (i10 < iN && bVar.h(i10, i11)) {
            i10++;
        }
        if (i10 == iN) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i12 = i10 - iArr[0];
        if (i12 != 0) {
            return i12;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override
    public j a(com.google.zxing.b bVar, Map map) throws NotFoundException, FormatException {
        k[] kVarArrB;
        d dVarB;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            f fVarB = new od.a(bVar.a()).b();
            d dVarB2 = this.f67164a.b(fVarB.a());
            kVarArrB = fVarB.b();
            dVarB = dVarB2;
        } else {
            dVarB = this.f67164a.b(c(bVar.a()));
            kVarArrB = f67163b;
        }
        j jVar = new j(dVarB.k(), dVarB.g(), kVarArrB, BarcodeFormat.DATA_MATRIX);
        List listA = dVarB.a();
        if (listA != null) {
            jVar.h(ResultMetadataType.BYTE_SEGMENTS, listA);
        }
        String strB = dVarB.b();
        if (strB != null) {
            jVar.h(ResultMetadataType.ERROR_CORRECTION_LEVEL, strB);
        }
        jVar.h(ResultMetadataType.ERRORS_CORRECTED, dVarB.d());
        jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]d" + dVarB.j());
        return jVar;
    }

    @Override
    public j b(com.google.zxing.b bVar) {
        return a(bVar, null);
    }

    @Override
    public void reset() {
    }
}
