package zd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.i;
import com.google.zxing.j;
import com.google.zxing.k;
import com.google.zxing.qrcode.decoder.d;
import com.google.zxing.qrcode.detector.c;
import java.util.List;
import java.util.Map;
import kd.f;

public class a implements i {

    private static final k[] f76775b = new k[0];

    private final d f76776a = new d();

    private static kd.b c(kd.b bVar) throws NotFoundException {
        int[] iArrM = bVar.m();
        int[] iArrI = bVar.i();
        if (iArrM == null || iArrI == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        float fD = d(iArrM, bVar);
        int i10 = iArrM[1];
        int i11 = iArrI[1];
        int i12 = iArrM[0];
        int i13 = iArrI[0];
        if (i12 >= i13 || i10 >= i11) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i14 = i11 - i10;
        if (i14 != i13 - i12 && (i13 = i12 + i14) >= bVar.n()) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iRound = Math.round(((i13 - i12) + 1) / fD);
        int iRound2 = Math.round((i14 + 1) / fD);
        if (iRound <= 0 || iRound2 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (iRound2 != iRound) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i15 = (int) (fD / 2.0f);
        int i16 = i10 + i15;
        int i17 = i12 + i15;
        int i18 = (((int) ((iRound - 1) * fD)) + i17) - i13;
        if (i18 > 0) {
            if (i18 > i15) {
                throw NotFoundException.getNotFoundInstance();
            }
            i17 -= i18;
        }
        int i19 = (((int) ((iRound2 - 1) * fD)) + i16) - i11;
        if (i19 > 0) {
            if (i19 > i15) {
                throw NotFoundException.getNotFoundInstance();
            }
            i16 -= i19;
        }
        kd.b bVar2 = new kd.b(iRound, iRound2);
        for (int i20 = 0; i20 < iRound2; i20++) {
            int i21 = ((int) (i20 * fD)) + i16;
            for (int i22 = 0; i22 < iRound; i22++) {
                if (bVar.h(((int) (i22 * fD)) + i17, i21)) {
                    bVar2.r(i22, i20);
                }
            }
        }
        return bVar2;
    }

    private static float d(int[] iArr, kd.b bVar) throws NotFoundException {
        int iK = bVar.k();
        int iN = bVar.n();
        int i10 = iArr[0];
        boolean z10 = true;
        int i11 = iArr[1];
        int i12 = 0;
        while (i10 < iN && i11 < iK) {
            if (z10 != bVar.h(i10, i11)) {
                i12++;
                if (i12 == 5) {
                    break;
                }
                z10 = !z10;
            }
            i10++;
            i11++;
        }
        if (i10 == iN || i11 == iK) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (i10 - iArr[0]) / 7.0f;
    }

    @Override
    public final j a(com.google.zxing.b bVar, Map map) throws NotFoundException, ChecksumException, FormatException {
        k[] kVarArrB;
        kd.d dVarC;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            f fVarE = new c(bVar.a()).e(map);
            kd.d dVarC2 = this.f76776a.c(fVarE.a(), map);
            kVarArrB = fVarE.b();
            dVarC = dVarC2;
        } else {
            dVarC = this.f76776a.c(c(bVar.a()), map);
            kVarArrB = f76775b;
        }
        if (dVarC.f() instanceof com.google.zxing.qrcode.decoder.f) {
            ((com.google.zxing.qrcode.decoder.f) dVarC.f()).a(kVarArrB);
        }
        j jVar = new j(dVarC.k(), dVarC.g(), kVarArrB, BarcodeFormat.QR_CODE);
        List listA = dVarC.a();
        if (listA != null) {
            jVar.h(ResultMetadataType.BYTE_SEGMENTS, listA);
        }
        String strB = dVarC.b();
        if (strB != null) {
            jVar.h(ResultMetadataType.ERROR_CORRECTION_LEVEL, strB);
        }
        if (dVarC.l()) {
            jVar.h(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(dVarC.i()));
            jVar.h(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(dVarC.h()));
        }
        jVar.h(ResultMetadataType.ERRORS_CORRECTED, dVarC.d());
        jVar.h(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]Q" + dVarC.j());
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
