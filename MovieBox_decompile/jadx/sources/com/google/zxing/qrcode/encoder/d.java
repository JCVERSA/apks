package com.google.zxing.qrcode.encoder;

import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.zxing.WriterException;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.g;
import com.vungle.ads.internal.protos.Sdk$SDKError;

abstract class d {

    private static final int[][] f32228a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    private static final int[][] f32229b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    private static final int[][] f32230c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, -1, -1}, new int[]{6, 34, 62, 90, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, -1, -1}, new int[]{6, 26, 50, 74, 98, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 142, -1}, new int[]{6, 34, 62, 90, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, 158}, new int[]{6, 32, 58, 84, 110, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 142, 170}};

    private static final int[][] f32231d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    static void a(kd.a aVar, ErrorCorrectionLevel errorCorrectionLevel, g gVar, int i10, ae.a aVar2) throws WriterException {
        c(aVar2);
        d(gVar, aVar2);
        l(errorCorrectionLevel, i10, aVar2);
        s(gVar, aVar2);
        f(aVar, i10, aVar2);
    }

    static int b(int i10, int i11) {
        if (i11 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int iN = n(i11);
        int iN2 = i10 << (iN - 1);
        while (n(iN2) >= iN) {
            iN2 ^= i11 << (n(iN2) - iN);
        }
        return iN2;
    }

    static void c(ae.a aVar) {
        aVar.a((byte) -1);
    }

    static void d(g gVar, ae.a aVar) throws WriterException {
        j(aVar);
        e(aVar);
        r(gVar, aVar);
        k(aVar);
    }

    private static void e(ae.a aVar) throws WriterException {
        if (aVar.b(8, aVar.d() - 8) == 0) {
            throw new WriterException();
        }
        aVar.f(8, aVar.d() - 8, 1);
    }

    static void f(kd.a aVar, int i10, ae.a aVar2) throws WriterException {
        boolean zI;
        int iE = aVar2.e() - 1;
        int iD = aVar2.d() - 1;
        int i11 = 0;
        int i12 = -1;
        while (iE > 0) {
            if (iE == 6) {
                iE--;
            }
            while (iD >= 0 && iD < aVar2.d()) {
                for (int i13 = 0; i13 < 2; i13++) {
                    int i14 = iE - i13;
                    if (o(aVar2.b(i14, iD))) {
                        if (i11 < aVar.m()) {
                            zI = aVar.i(i11);
                            i11++;
                        } else {
                            zI = false;
                        }
                        if (i10 != -1 && c.f(i10, i14, iD)) {
                            zI = !zI;
                        }
                        aVar2.g(i14, iD, zI);
                    }
                }
                iD += i12;
            }
            i12 = -i12;
            iD += i12;
            iE -= 2;
        }
        if (i11 == aVar.m()) {
            return;
        }
        throw new WriterException("Not all bits consumed: " + i11 + '/' + aVar.m());
    }

    private static void g(int i10, int i11, ae.a aVar) throws WriterException {
        for (int i12 = 0; i12 < 8; i12++) {
            int i13 = i10 + i12;
            if (!o(aVar.b(i13, i11))) {
                throw new WriterException();
            }
            aVar.f(i13, i11, 0);
        }
    }

    private static void h(int i10, int i11, ae.a aVar) {
        for (int i12 = 0; i12 < 5; i12++) {
            int[] iArr = f32229b[i12];
            for (int i13 = 0; i13 < 5; i13++) {
                aVar.f(i10 + i13, i11 + i12, iArr[i13]);
            }
        }
    }

    private static void i(int i10, int i11, ae.a aVar) {
        for (int i12 = 0; i12 < 7; i12++) {
            int[] iArr = f32228a[i12];
            for (int i13 = 0; i13 < 7; i13++) {
                aVar.f(i10 + i13, i11 + i12, iArr[i13]);
            }
        }
    }

    private static void j(ae.a aVar) throws WriterException {
        int length = f32228a[0].length;
        i(0, 0, aVar);
        i(aVar.e() - length, 0, aVar);
        i(0, aVar.e() - length, aVar);
        g(0, 7, aVar);
        g(aVar.e() - 8, 7, aVar);
        g(0, aVar.e() - 8, aVar);
        m(7, 0, aVar);
        m(aVar.d() - 8, 0, aVar);
        m(7, aVar.d() - 7, aVar);
    }

    private static void k(ae.a aVar) {
        int i10 = 8;
        while (i10 < aVar.e() - 8) {
            int i11 = i10 + 1;
            int i12 = i11 % 2;
            if (o(aVar.b(i10, 6))) {
                aVar.f(i10, 6, i12);
            }
            if (o(aVar.b(6, i10))) {
                aVar.f(6, i10, i12);
            }
            i10 = i11;
        }
    }

    static void l(ErrorCorrectionLevel errorCorrectionLevel, int i10, ae.a aVar) throws WriterException {
        int iD;
        kd.a aVar2 = new kd.a();
        p(errorCorrectionLevel, i10, aVar2);
        for (int i11 = 0; i11 < aVar2.m(); i11++) {
            boolean zI = aVar2.i((aVar2.m() - 1) - i11);
            int[] iArr = f32231d[i11];
            aVar.g(iArr[0], iArr[1], zI);
            int iE = 8;
            if (i11 < 8) {
                iD = 8;
                iE = (aVar.e() - i11) - 1;
            } else {
                iD = (aVar.d() - 7) + (i11 - 8);
            }
            aVar.g(iE, iD, zI);
        }
    }

    private static void m(int i10, int i11, ae.a aVar) throws WriterException {
        for (int i12 = 0; i12 < 7; i12++) {
            int i13 = i11 + i12;
            if (!o(aVar.b(i10, i13))) {
                throw new WriterException();
            }
            aVar.f(i10, i13, 0);
        }
    }

    static int n(int i10) {
        return 32 - Integer.numberOfLeadingZeros(i10);
    }

    private static boolean o(int i10) {
        return i10 == -1;
    }

    static void p(ErrorCorrectionLevel errorCorrectionLevel, int i10, kd.a aVar) throws WriterException {
        if (!ae.b.b(i10)) {
            throw new WriterException("Invalid mask pattern");
        }
        int bits = (errorCorrectionLevel.getBits() << 3) | i10;
        aVar.c(bits, 5);
        aVar.c(b(bits, 1335), 10);
        kd.a aVar2 = new kd.a();
        aVar2.c(21522, 15);
        aVar.u(aVar2);
        if (aVar.m() == 15) {
            return;
        }
        throw new WriterException("should not happen but we got: " + aVar.m());
    }

    static void q(g gVar, kd.a aVar) throws WriterException {
        aVar.c(gVar.j(), 6);
        aVar.c(b(gVar.j(), 7973), 12);
        if (aVar.m() == 18) {
            return;
        }
        throw new WriterException("should not happen but we got: " + aVar.m());
    }

    private static void r(g gVar, ae.a aVar) {
        if (gVar.j() < 2) {
            return;
        }
        int[] iArr = f32230c[gVar.j() - 1];
        for (int i10 : iArr) {
            if (i10 >= 0) {
                for (int i11 : iArr) {
                    if (i11 >= 0 && o(aVar.b(i11, i10))) {
                        h(i11 - 2, i10 - 2, aVar);
                    }
                }
            }
        }
    }

    static void s(g gVar, ae.a aVar) throws WriterException {
        if (gVar.j() < 7) {
            return;
        }
        kd.a aVar2 = new kd.a();
        q(gVar, aVar2);
        int i10 = 17;
        for (int i11 = 0; i11 < 6; i11++) {
            for (int i12 = 0; i12 < 3; i12++) {
                boolean zI = aVar2.i(i10);
                i10--;
                aVar.g(i11, (aVar.d() - 11) + i12, zI);
                aVar.g((aVar.d() - 11) + i12, i11, zI);
            }
        }
    }
}
