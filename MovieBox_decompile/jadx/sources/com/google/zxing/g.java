package com.google.zxing;

import com.google.zxing.oned.Code128Writer;
import java.util.Map;
import sd.s;
import sd.z;

public final class g implements m {

    static class a {

        static final int[] f32079a;

        static {
            int[] iArr = new int[BarcodeFormat.values().length];
            f32079a = iArr;
            try {
                iArr[BarcodeFormat.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32079a[BarcodeFormat.UPC_E.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32079a[BarcodeFormat.EAN_13.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32079a[BarcodeFormat.UPC_A.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32079a[BarcodeFormat.QR_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32079a[BarcodeFormat.CODE_39.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32079a[BarcodeFormat.CODE_93.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f32079a[BarcodeFormat.CODE_128.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f32079a[BarcodeFormat.ITF.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f32079a[BarcodeFormat.PDF_417.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f32079a[BarcodeFormat.CODABAR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f32079a[BarcodeFormat.DATA_MATRIX.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f32079a[BarcodeFormat.AZTEC.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    @Override
    public kd.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map map) {
        m jVar;
        switch (a.f32079a[barcodeFormat.ordinal()]) {
            case 1:
                jVar = new sd.j();
                break;
            case 2:
                jVar = new z();
                break;
            case 3:
                jVar = new sd.h();
                break;
            case 4:
                jVar = new s();
                break;
            case 5:
                jVar = new zd.b();
                break;
            case 6:
                jVar = new sd.d();
                break;
            case 7:
                jVar = new sd.f();
                break;
            case 8:
                jVar = new Code128Writer();
                break;
            case 9:
                jVar = new sd.m();
                break;
            case 10:
                jVar = new vd.d();
                break;
            case 11:
                jVar = new sd.b();
                break;
            case 12:
                jVar = new nd.b();
                break;
            case 13:
                jVar = new gd.c();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format " + barcodeFormat);
        }
        return jVar.a(str, barcodeFormat, i10, i11, map);
    }

    public kd.b b(String str, BarcodeFormat barcodeFormat, int i10, int i11) {
        return a(str, barcodeFormat, i10, i11, null);
    }
}
