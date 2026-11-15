package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.google.android.material.R$drawable;
import java.util.List;

public final class j extends g {

    private h f28653p;

    private i f28654q;

    private Drawable f28655r;

    j(Context context, b bVar, h hVar, i iVar) {
        super(context, bVar);
        z(hVar);
        y(iVar);
    }

    static j t(Context context, e eVar, c cVar) {
        j jVar = new j(context, eVar, cVar, new d(eVar));
        jVar.A(androidx.vectordrawable.graphics.drawable.h.b(context.getResources(), R$drawable.indeterminate_static, null));
        return jVar;
    }

    static j u(Context context, n nVar, k kVar) {
        return new j(context, nVar, kVar, nVar.f28682h == 0 ? new l(nVar) : new m(context, nVar));
    }

    private boolean x() {
        a aVar = this.f28632c;
        return aVar != null && aVar.a(this.f28630a.getContentResolver()) == 0.0f;
    }

    public void A(Drawable drawable) {
        this.f28655r = drawable;
    }

    @Override
    public void draw(Canvas canvas) {
        Drawable drawable;
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            if (x() && (drawable = this.f28655r) != null) {
                drawable.setBounds(getBounds());
                a1.a.n(this.f28655r, this.f28631b.f28595c[0]);
                this.f28655r.draw(canvas);
                return;
            }
            canvas.save();
            this.f28653p.g(canvas, getBounds(), h(), k(), j());
            int i10 = this.f28631b.f28599g;
            int alpha = getAlpha();
            if (i10 == 0) {
                this.f28653p.d(canvas, this.f28642m, 0.0f, 1.0f, this.f28631b.f28596d, alpha, 0);
            } else {
                h.a aVar = (h.a) this.f28654q.f28652b.get(0);
                List list = this.f28654q.f28652b;
                h.a aVar2 = (h.a) list.get(list.size() - 1);
                h hVar = this.f28653p;
                if (hVar instanceof k) {
                    hVar.d(canvas, this.f28642m, 0.0f, aVar.f28647a, this.f28631b.f28596d, alpha, i10);
                    this.f28653p.d(canvas, this.f28642m, aVar2.f28648b, 1.0f, this.f28631b.f28596d, alpha, i10);
                } else {
                    alpha = 0;
                    hVar.d(canvas, this.f28642m, aVar2.f28648b, 1.0f + aVar.f28647a, this.f28631b.f28596d, 0, i10);
                }
            }
            for (int i11 = 0; i11 < this.f28654q.f28652b.size(); i11++) {
                h.a aVar3 = (h.a) this.f28654q.f28652b.get(i11);
                this.f28653p.c(canvas, this.f28642m, aVar3, getAlpha());
                if (i11 > 0 && i10 > 0) {
                    this.f28653p.d(canvas, this.f28642m, ((h.a) this.f28654q.f28652b.get(i11 - 1)).f28648b, aVar3.f28647a, this.f28631b.f28596d, alpha, i10);
                }
            }
            canvas.restore();
        }
    }

    @Override
    public int getAlpha() {
        return super.getAlpha();
    }

    @Override
    public int getIntrinsicHeight() {
        return this.f28653p.e();
    }

    @Override
    public int getIntrinsicWidth() {
        return this.f28653p.f();
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
    public boolean k() {
        return super.k();
    }

    @Override
    public void m(androidx.vectordrawable.graphics.drawable.b bVar) {
        super.m(bVar);
    }

    @Override
    public boolean q(boolean z10, boolean z11, boolean z12) {
        return super.q(z10, z11, z12);
    }

    @Override
    boolean r(boolean z10, boolean z11, boolean z12) {
        Drawable drawable;
        boolean zR = super.r(z10, z11, z12);
        if (x() && (drawable = this.f28655r) != null) {
            return drawable.setVisible(z10, z11);
        }
        if (!isRunning()) {
            this.f28654q.a();
        }
        if (z10 && z12) {
            this.f28654q.g();
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

    i v() {
        return this.f28654q;
    }

    h w() {
        return this.f28653p;
    }

    void y(i iVar) {
        this.f28654q = iVar;
        iVar.e(this);
    }

    void z(h hVar) {
        this.f28653p = hVar;
    }
}
