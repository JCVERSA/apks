package com.google.zxing.datamatrix.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;

public final class c {

    private final md.c f32039a = new md.c(md.a.f66378m);

    private int a(byte[] bArr, int i10) throws ChecksumException {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = bArr[i11] & 255;
        }
        try {
            int iA = this.f32039a.a(iArr, bArr.length - i10);
            for (int i12 = 0; i12 < i10; i12++) {
                bArr[i12] = (byte) iArr[i12];
            }
            return iA;
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    public kd.d b(kd.b bVar) throws FormatException {
        a aVar = new a(bVar);
        b[] bVarArrB = b.b(aVar.c(), aVar.b());
        int iC = 0;
        for (b bVar2 : bVarArrB) {
            iC += bVar2.c();
        }
        byte[] bArr = new byte[iC];
        int length = bVarArrB.length;
        int iA = 0;
        for (int i10 = 0; i10 < length; i10++) {
            b bVar3 = bVarArrB[i10];
            byte[] bArrA = bVar3.a();
            int iC2 = bVar3.c();
            iA += a(bArrA, iC2);
            for (int i11 = 0; i11 < iC2; i11++) {
                bArr[(i11 * length) + i10] = bArrA[i11];
            }
        }
        kd.d dVarA = DecodedBitStreamParser.a(bArr);
        dVarA.n(Integer.valueOf(iA));
        return dVarA;
    }
}
