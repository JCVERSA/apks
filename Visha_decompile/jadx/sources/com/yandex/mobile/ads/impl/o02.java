package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.view.View;
import android.widget.ImageView;
import com.yandex.mobile.ads.impl.o02;
import defpackage.y45;

public final class o02 implements View.OnLayoutChangeListener {
    private final si a;
    private final bl b;
    private final p02 c;
    private final xj0 d;
    private final Bitmap e;

    public o02(si siVar, bl blVar, p02 p02Var, xj0 xj0Var, Bitmap bitmap) {
        y45.j(siVar, "axisBackgroundColorProvider");
        y45.j(blVar, "bestSmartCenterProvider");
        y45.j(p02Var, "smartCenterMatrixScaler");
        y45.j(xj0Var, "imageValue");
        y45.j(bitmap, "bitmap");
        this.a = siVar;
        this.b = blVar;
        this.c = p02Var;
        this.d = xj0Var;
        this.e = bitmap;
    }

    public static final void a(o02 o02Var, RectF rectF, ImageView imageView) {
        ui uiVarA;
        j02 j02VarB;
        y45.j(o02Var, "this$0");
        y45.j(rectF, "$viewRect");
        y45.j(imageView, "$view");
        o02Var.getClass();
        if (rectF.height() == 0.0f) {
            return;
        }
        si siVar = o02Var.a;
        xj0 xj0Var = o02Var.d;
        siVar.getClass();
        y45.j(xj0Var, "imageValue");
        r02 r02VarE = xj0Var.e();
        if (r02VarE != null && (uiVarA = r02VarE.a()) != null) {
            boolean z = false;
            boolean z2 = (uiVarA.a() == null || uiVarA.d() == null || !y45.e(uiVarA.a(), uiVarA.d())) ? false : true;
            if (uiVarA.b() != null && uiVarA.c() != null && y45.e(uiVarA.b(), uiVarA.c())) {
                z = true;
            }
            if (z2 || z) {
                si siVar2 = o02Var.a;
                xj0 xj0Var2 = o02Var.d;
                siVar2.getClass();
                String strA = si.a(rectF, xj0Var2);
                r02 r02VarE2 = o02Var.d.e();
                if (r02VarE2 == null || (j02VarB = r02VarE2.b()) == null) {
                    return;
                }
                if (strA != null) {
                    o02Var.c.a(imageView, o02Var.e, j02VarB, strA);
                    return;
                } else {
                    o02Var.c.a(imageView, o02Var.e, j02VarB);
                    return;
                }
            }
        }
        j02 j02VarA = o02Var.b.a(rectF, o02Var.d);
        if (j02VarA != null) {
            o02Var.c.a(imageView, o02Var.e, j02VarA);
        }
    }

    @Override
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        final ImageView imageView = view instanceof ImageView ? (ImageView) view : null;
        if (imageView == null) {
            return;
        }
        boolean z = (i3 - i == i7 - i5 && i4 - i2 == i8 - i6) ? false : true;
        boolean z2 = (i4 == i2 || i == i3) ? false : true;
        if (z && z2) {
            final RectF rectF = new RectF(0.0f, 0.0f, imageView.getWidth(), imageView.getHeight());
            imageView.post(new Runnable() {
                @Override
                public final void run() {
                    o02.a(this.b, rectF, imageView);
                }
            });
        }
    }
}
