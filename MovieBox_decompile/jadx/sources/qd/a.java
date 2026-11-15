package qd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.i;
import com.google.zxing.j;
import com.google.zxing.k;
import java.util.Map;
import kd.b;
import kd.d;
import rd.c;

public final class a implements i {

    private static final k[] f69622b = new k[0];

    private final c f69623a = new c();

    private static b c(b bVar) throws NotFoundException {
        int[] iArrJ = bVar.j();
        if (iArrJ == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i10 = iArrJ[0];
        int i11 = iArrJ[1];
        int i12 = iArrJ[2];
        int i13 = iArrJ[3];
        b bVar2 = new b(30, 33);
        for (int i14 = 0; i14 < 33; i14++) {
            int iMin = Math.min((((i14 * i13) + (i13 / 2)) / 33) + i11, i13 - 1);
            for (int i15 = 0; i15 < 30; i15++) {
                if (bVar.h(Math.min((((i15 * i12) + (i12 / 2)) + (((i14 & 1) * i12) / 2)) / 30, i12 - 1) + i10, iMin)) {
                    bVar2.r(i15, i14);
                }
            }
        }
        return bVar2;
    }

    @Override
    public j a(com.google.zxing.b bVar, Map map) throws NotFoundException, ChecksumException, FormatException {
        d dVarB = this.f69623a.b(c(bVar.a()), map);
        j jVar = new j(dVarB.k(), dVarB.g(), f69622b, BarcodeFormat.MAXICODE);
        jVar.h(ResultMetadataType.ERRORS_CORRECTED, dVarB.d());
        String strB = dVarB.b();
        if (strB != null) {
            jVar.h(ResultMetadataType.ERROR_CORRECTION_LEVEL, strB);
        }
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
