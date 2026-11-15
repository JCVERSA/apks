package com.yandex.mobile.ads.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import com.lzy.okgo.model.Progress;
import defpackage.g1a;
import defpackage.y45;

public final class fq1 {
    private static final n11 a;

    static {
        int i = n11.d;
        a = n11.a.a();
    }

    public static void a(long j, up1 up1Var, xc1 xc1Var) {
        String strB;
        String str;
        String str2;
        byte[] bArr;
        y45.j(up1Var, Progress.REQUEST);
        byte[] bArrB = up1Var.b();
        String strB2 = "UNKNOWN_CONTENT";
        if (bArrB != null) {
            try {
                strB = g1a.B(bArrB);
            } catch (Exception unused) {
                strB = "UNKNOWN_CONTENT";
            }
        } else {
            strB = null;
        }
        if (xc1Var == null || (bArr = xc1Var.b) == null) {
            str = null;
        } else {
            if (up1Var instanceof tj0) {
                strB2 = "IMAGE_CONTENT";
            } else {
                try {
                    strB2 = g1a.B(bArr);
                } catch (Exception unused2) {
                }
            }
            str = strB2;
        }
        n11 n11Var = a;
        int iF = up1Var.f();
        if (iF == 0) {
            str2 = ShareTarget.METHOD_GET;
        } else if (iF == 1) {
            str2 = "POST";
        } else if (iF == 2) {
            str2 = "PUT";
        } else if (iF == 3) {
            str2 = "DELETE";
        } else if (iF == 4) {
            str2 = "HEAD";
        } else if (iF == 5) {
            str2 = "OPTIONS";
        } else if (iF == 6) {
            str2 = "TRACE";
        } else {
            str2 = iF == 7 ? "PATCH" : "UNKNOWN";
        }
        String str3 = str2;
        String strL = up1Var.l();
        y45.i(strL, "getUrl(...)");
        n11Var.a(j, str3, strL, up1Var.e(), strB, xc1Var != null ? Integer.valueOf(xc1Var.a) : null, xc1Var != null ? xc1Var.c : null, str);
    }
}
