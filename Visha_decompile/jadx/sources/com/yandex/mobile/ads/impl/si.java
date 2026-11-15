package com.yandex.mobile.ads.impl;

import android.graphics.RectF;
import defpackage.y45;

public final class si {
    public static String a(RectF rectF, xj0 xj0Var) {
        ui uiVarA;
        j02 j02VarB;
        float fWidth;
        int iC;
        y45.j(rectF, "viewRect");
        y45.j(xj0Var, "imageValue");
        r02 r02VarE = xj0Var.e();
        if (r02VarE == null || (uiVarA = r02VarE.a()) == null || (j02VarB = xj0Var.e().b()) == null) {
            return null;
        }
        float fWidth2 = rectF.width();
        float fHeight = rectF.height();
        float fG = xj0Var.g();
        float fA = xj0Var.a();
        float fC = j02VarB.c();
        float fB = j02VarB.b();
        if (fWidth2 == 0.0f || fHeight == 0.0f || fG == 0.0f || fA == 0.0f || fC == 0.0f || fB == 0.0f) {
            return null;
        }
        if (rectF.width() / rectF.height() > j02VarB.c() / j02VarB.b()) {
            fWidth = rectF.height();
            iC = j02VarB.b();
        } else {
            fWidth = rectF.width();
            iC = j02VarB.c();
        }
        if (fWidth / iC <= 1.0f) {
            if (fWidth2 / fHeight > fC / fB) {
                if (y45.e(uiVarA.c(), uiVarA.b())) {
                    return uiVarA.c();
                }
                return null;
            }
            if (y45.e(uiVarA.d(), uiVarA.a())) {
                return uiVarA.d();
            }
            return null;
        }
        if (fWidth2 / fHeight > fG / fA) {
            if (y45.e(uiVarA.c(), uiVarA.b())) {
                return uiVarA.c();
            }
            return null;
        }
        if (y45.e(uiVarA.d(), uiVarA.a())) {
            return uiVarA.d();
        }
        return null;
    }
}
