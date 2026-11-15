package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import java.util.Collections;
import java.util.List;
import t4.k;
import w4.j;

public class e extends a {
    private final o4.d E;
    private final b F;

    e(LottieDrawable lottieDrawable, Layer layer, b bVar, h hVar) {
        super(lottieDrawable, layer);
        this.F = bVar;
        o4.d dVar = new o4.d(lottieDrawable, this, new k("__container", layer.o(), false), hVar);
        this.E = dVar;
        dVar.b(Collections.emptyList(), Collections.emptyList());
    }

    @Override
    protected void I(r4.d dVar, int i10, List list, r4.d dVar2) {
        this.E.c(dVar, i10, list, dVar2);
    }

    @Override
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        super.f(rectF, matrix, z10);
        this.E.f(rectF, this.f17255o, z10);
    }

    @Override
    void t(Canvas canvas, Matrix matrix, int i10) {
        this.E.h(canvas, matrix, i10);
    }

    @Override
    public t4.a w() {
        t4.a aVarW = super.w();
        return aVarW != null ? aVarW : this.F.w();
    }

    @Override
    public j y() {
        j jVarY = super.y();
        return jVarY != null ? jVarY : this.F.y();
    }
}
