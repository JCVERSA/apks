package com.app.hubert.guide.model;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import defpackage.dq5;
import defpackage.ldc;

public class c implements HighLight {
    public View a;
    public HighLight.Shape b;
    public int c;
    public int d;
    public b e;
    public RectF f;

    public c(View view, HighLight.Shape shape, int i, int i2) {
        this.a = view;
        this.b = shape;
        this.c = i;
        this.d = i2;
    }

    @Override
    public HighLight.Shape a() {
        return this.b;
    }

    @Override
    public RectF b(View view) {
        if (this.a == null) {
            throw new IllegalArgumentException("the highlight view is null!");
        }
        if (this.f == null) {
            this.f = d(view);
        } else {
            b bVar = this.e;
            if (bVar != null && bVar.d) {
                this.f = d(view);
            }
        }
        dq5.c(this.a.getClass().getSimpleName() + "'s location:" + this.f);
        return this.f;
    }

    @Override
    public int c() {
        return this.c;
    }

    public final RectF d(View view) {
        RectF rectF = new RectF();
        Rect rectA = ldc.a(view, this.a);
        int i = rectA.left;
        int i2 = this.d;
        rectF.left = i - i2;
        rectF.top = rectA.top - i2;
        rectF.right = rectA.right + i2;
        rectF.bottom = rectA.bottom + i2;
        return rectF;
    }

    public void e(b bVar) {
        this.e = bVar;
    }

    @Override
    public b getOptions() {
        return this.e;
    }

    @Override
    public float getRadius() {
        View view = this.a;
        if (view != null) {
            return Math.max(view.getWidth() / 2, this.a.getHeight() / 2) + this.d;
        }
        throw new IllegalArgumentException("the highlight view is null!");
    }
}
