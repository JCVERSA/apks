package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;

public final class f extends g {

    private static final androidx.dynamicanimation.animation.c f28623u = new a("indicatorLevel");

    private h f28624p;

    private final androidx.dynamicanimation.animation.e f28625q;

    private final androidx.dynamicanimation.animation.d f28626r;

    private final h.a f28627s;

    private boolean f28628t;

    class a extends androidx.dynamicanimation.animation.c {
        a(String str) {
            super(str);
        }

        @Override
        public float a(f fVar) {
            return fVar.y() * 10000.0f;
        }

        @Override
        public void b(f fVar, float f10) {
            fVar.A(f10 / 10000.0f);
        }
    }

    f(Context context, b bVar, h hVar) {
        super(context, bVar);
        this.f28628t = false;
        z(hVar);
        this.f28627s = new h.a();
        androidx.dynamicanimation.animation.e eVar = new androidx.dynamicanimation.animation.e();
        this.f28625q = eVar;
        eVar.d(1.0f);
        eVar.f(50.0f);
        androidx.dynamicanimation.animation.d dVar = new androidx.dynamicanimation.animation.d(this, f28623u);
        this.f28626r = dVar;
        dVar.q(eVar);
        n(1.0f);
    }

    public void A(float f10) {
        this.f28627s.f28648b = f10;
        invalidateSelf();
    }

    static f v(Context context, e eVar, c cVar) {
        return new f(context, eVar, cVar);
    }

    static f w(Context context, n nVar, k kVar) {
        return new f(context, nVar, kVar);
    }

    public float y() {
        return this.f28627s.f28648b;
    }

    void B(float f10) {
        setLevel((int) (f10 * 10000.0f));
    }

    @Override
    public void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            this.f28624p.g(canvas, getBounds(), h(), k(), j());
            this.f28642m.setStyle(Paint.Style.FILL);
            this.f28642m.setAntiAlias(true);
            h.a aVar = this.f28627s;
            b bVar = this.f28631b;
            aVar.f28649c = bVar.f28595c[0];
            int iA = bVar.f28599g;
            if (iA > 0) {
                if (!(this.f28624p instanceof k)) {
                    iA = (int) ((iA * d1.a.a(y(), 0.0f, 0.01f)) / 0.01f);
                }
                this.f28624p.d(canvas, this.f28642m, y(), 1.0f, this.f28631b.f28596d, getAlpha(), iA);
            } else {
                this.f28624p.d(canvas, this.f28642m, 0.0f, 1.0f, bVar.f28596d, getAlpha(), 0);
            }
            this.f28624p.c(canvas, this.f28642m, this.f28627s, getAlpha());
            this.f28624p.b(canvas, this.f28642m, this.f28631b.f28595c[0], getAlpha());
            canvas.restore();
        }
    }

    @Override
    public int getAlpha() {
        return super.getAlpha();
    }

    @Override
    public int getIntrinsicHeight() {
        return this.f28624p.e();
    }

    @Override
    public int getIntrinsicWidth() {
        return this.f28624p.f();
    }

    @Override
    public int getOpacity() {
        return super.getOpacity();
    }

    @Override
    public boolean i() {
        return super.i();
    }

    @Override
    public boolean isRunning() {
        return super.isRunning();
    }

    @Override
    public boolean j() {
        return super.j();
    }

    @Override
    public void jumpToCurrentState() {
        this.f28626r.r();
        A(getLevel() / 10000.0f);
    }

    @Override
    public boolean k() {
        return super.k();
    }

    @Override
    public void m(androidx.vectordrawable.graphics.drawable.b bVar) {
        super.m(bVar);
    }

    @Override
    protected boolean onLevelChange(int i10) {
        if (this.f28628t) {
            this.f28626r.r();
            A(i10 / 10000.0f);
            return true;
        }
        this.f28626r.h(y() * 10000.0f);
        this.f28626r.l(i10);
        return true;
    }

    @Override
    public boolean q(boolean z10, boolean z11, boolean z12) {
        return super.q(z10, z11, z12);
    }

    @Override
    boolean r(boolean z10, boolean z11, boolean z12) {
        boolean zR = super.r(z10, z11, z12);
        float fA = this.f28632c.a(this.f28630a.getContentResolver());
        if (fA == 0.0f) {
            this.f28628t = true;
        } else {
            this.f28628t = false;
            this.f28625q.f(50.0f / fA);
        }
        return zR;
    }

    @Override
    public boolean s(androidx.vectordrawable.graphics.drawable.b bVar) {
        return super.s(bVar);
    }

    @Override
    public void setAlpha(int i10) {
        super.setAlpha(i10);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        return super.setVisible(z10, z11);
    }

    @Override
    public void start() {
        super.start();
    }

    @Override
    public void stop() {
        super.stop();
    }

    h x() {
        return this.f28624p;
    }

    void z(h hVar) {
        this.f28624p = hVar;
    }
}
