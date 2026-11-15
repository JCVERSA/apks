package com.google.zxing.qrcode.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Map;

public final class d {

    private final md.c f32164a = new md.c(md.a.f66377l);

    private int a(byte[] bArr, int i10) throws ChecksumException {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = bArr[i11] & 255;
        }
        try {
            int iA = this.f32164a.a(iArr, bArr.length - i10);
            for (int i12 = 0; i12 < i10; i12++) {
                bArr[i12] = (byte) iArr[i12];
            }
            return iA;
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    private kd.d b(a aVar, Map map) throws FormatException {
        g gVarE = aVar.e();
        ErrorCorrectionLevel errorCorrectionLevelD = aVar.d().d();
        b[] bVarArrB = b.b(aVar.c(), gVarE, errorCorrectionLevelD);
        int iC = 0;
        for (b bVar : bVarArrB) {
            iC += bVar.c();
        }
        byte[] bArr = new byte[iC];
        int iA = 0;
        int i10 = 0;
        for (b bVar2 : bVarArrB) {
            byte[] bArrA = bVar2.a();
            int iC2 = bVar2.c();
            iA += a(bArrA, iC2);
            int i11 = 0;
            while (i11 < iC2) {
                bArr[i10] = bArrA[i11];
                i11++;
                i10++;
            }
        }
        kd.d dVarA = c.a(bArr, gVarE, errorCorrectionLevelD, map);
        dVarA.n(Integer.valueOf(iA));
        return dVarA;
    }

    public kd.d c(kd.b bVar, Map map) throws ChecksumException, FormatException {
        ChecksumException e10;
        a aVar = new a(bVar);
        FormatException formatException = null;
        try {
            return b(aVar, map);
        } catch (ChecksumException e11) {
            e10 = e11;
            try {
                aVar.f();
                aVar.g(true);
                aVar.e();
                aVar.d();
                aVar.b();
                kd.d dVarB = b(aVar, map);
                dVarB.p(new f(true));
                return dVarB;
            } catch (ChecksumException | FormatException unused) {
                if (formatException != null) {
                    throw formatException;
                }
                throw e10;
            }
        } catch (FormatException e12) {
            e10 = null;
            formatException = e12;
            aVar.f();
            aVar.g(true);
            aVar.e();
            aVar.d();
            aVar.b();
            kd.d dVarB2 = b(aVar, map);
            dVarB2.p(new f(true));
            return dVarB2;
        }
    }
}
