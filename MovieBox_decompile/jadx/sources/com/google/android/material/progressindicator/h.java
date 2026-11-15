package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

abstract class h {

    b f28646a;

    protected static class a {

        float f28647a;

        float f28648b;

        int f28649c;

        int f28650d;

        protected a() {
        }
    }

    public h(b bVar) {
        this.f28646a = bVar;
    }

    abstract void a(Canvas canvas, Rect rect, float f10, boolean z10, boolean z11);

    abstract void b(Canvas canvas, Paint paint, int i10, int i11);

    abstract void c(Canvas canvas, Paint paint, a aVar, int i10);

    abstract void d(Canvas canvas, Paint paint, float f10, float f11, int i10, int i11, int i12);

    abstract int e();

    abstract int f();

    void g(Canvas canvas, Rect rect, float f10, boolean z10, boolean z11) {
        this.f28646a.e();
        a(canvas, rect, f10, z10, z11);
    }
}
