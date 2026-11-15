package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;

abstract class h extends cb.i {

    b f29096z;

    private static class c extends h {
        c(b bVar) {
            super(bVar);
        }

        @Override
        protected void t(Canvas canvas) {
            if (this.f29096z.f29097w.isEmpty()) {
                super.t(canvas);
                return;
            }
            canvas.save();
            if (Build.VERSION.SDK_INT >= 26) {
                canvas.clipOutRect(this.f29096z.f29097w);
            } else {
                canvas.clipRect(this.f29096z.f29097w, Region.Op.DIFFERENCE);
            }
            super.t(canvas);
            canvas.restore();
        }
    }

    static h t0(cb.n nVar) {
        if (nVar == null) {
            nVar = new cb.n();
        }
        return u0(new b(nVar, new RectF()));
    }

    public static h u0(b bVar) {
        return new c(bVar);
    }

    @Override
    public Drawable mutate() {
        this.f29096z = new b(this.f29096z);
        return this;
    }

    boolean v0() {
        return !this.f29096z.f29097w.isEmpty();
    }

    void w0() {
        x0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    void x0(float f10, float f11, float f12, float f13) {
        if (f10 == this.f29096z.f29097w.left && f11 == this.f29096z.f29097w.top && f12 == this.f29096z.f29097w.right && f13 == this.f29096z.f29097w.bottom) {
            return;
        }
        this.f29096z.f29097w.set(f10, f11, f12, f13);
        invalidateSelf();
    }

    void y0(RectF rectF) {
        x0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    private static final class b extends cb.i.c {

        private final RectF f29097w;

        @Override
        public Drawable newDrawable() {
            h hVarU0 = h.u0(this);
            hVarU0.invalidateSelf();
            return hVarU0;
        }

        private b(cb.n nVar, RectF rectF) {
            super(nVar, null);
            this.f29097w = rectF;
        }

        private b(b bVar) {
            super(bVar);
            this.f29097w = bVar.f29097w;
        }
    }

    private h(b bVar) {
        super(bVar);
        this.f29096z = bVar;
    }
}
