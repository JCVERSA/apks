package com.yandex.mobile.ads.impl;

import android.graphics.Matrix;
import android.view.TextureView;
import defpackage.s86;
import defpackage.y45;

public final class wf2 implements hi1.b {
    private fz1 a;
    private fz1 b;
    private TextureView c;
    private yf2 d;

    @Override
    public final void a(cg2 cg2Var) {
        Matrix matrixA;
        y45.j(cg2Var, "videoSize");
        int iC = cg2Var.b;
        float f = cg2Var.e;
        if (f > 0.0f) {
            iC = s86.c(iC * f);
        }
        fz1 fz1Var = new fz1(iC, cg2Var.c);
        this.a = fz1Var;
        fz1 fz1Var2 = this.b;
        yf2 yf2Var = this.d;
        TextureView textureView = this.c;
        if (fz1Var2 == null || yf2Var == null || textureView == null || (matrixA = new xf2(fz1Var2, fz1Var).a(yf2Var)) == null) {
            return;
        }
        textureView.setTransform(matrixA);
    }

    @Override
    public final void onSurfaceSizeChanged(int i, int i2) {
        Matrix matrixA;
        fz1 fz1Var = new fz1(i, i2);
        this.b = fz1Var;
        yf2 yf2Var = this.d;
        fz1 fz1Var2 = this.a;
        TextureView textureView = this.c;
        if (fz1Var2 == null || yf2Var == null || textureView == null || (matrixA = new xf2(fz1Var, fz1Var2).a(yf2Var)) == null) {
            return;
        }
        textureView.setTransform(matrixA);
    }

    public final void a(yf2 yf2Var) {
        this.d = yf2Var;
        TextureView textureView = this.c;
        if (yf2Var == null || textureView == null) {
            return;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(0.0f, 0.0f, 0.0f, 0.0f);
        textureView.setTransform(matrix);
    }

    public final void a(TextureView textureView) {
        this.c = textureView;
        if (this.d == null || textureView == null) {
            return;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(0.0f, 0.0f, 0.0f, 0.0f);
        textureView.setTransform(matrix);
    }
}
