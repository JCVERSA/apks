package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import eightbitlab.com.blurview.BlurView;

public final class sd8 implements zf0 {
    public final yf0 b;
    public eg0 c;
    public Bitmap d;
    public final BlurView e;
    public int f;
    public final ViewGroup g;
    public boolean l;
    public Drawable m;
    public float a = 16.0f;
    public final int[] h = new int[2];
    public final int[] i = new int[2];
    public final ViewTreeObserver.OnPreDrawListener j = new a();
    public boolean k = true;

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public a() {
        }

        @Override
        public boolean onPreDraw() {
            sd8.this.j();
            return true;
        }
    }

    public sd8(BlurView blurView, ViewGroup viewGroup, int i, yf0 yf0Var) {
        this.g = viewGroup;
        this.e = blurView;
        this.f = i;
        this.b = yf0Var;
        if (yf0Var instanceof hs8) {
            ((hs8) yf0Var).f(blurView.getContext());
        }
        h(blurView.getMeasuredWidth(), blurView.getMeasuredHeight());
    }

    @Override
    public fg0 a(boolean z) {
        this.k = z;
        e(z);
        this.e.invalidate();
        return this;
    }

    @Override
    public void b() {
        h(this.e.getMeasuredWidth(), this.e.getMeasuredHeight());
    }

    @Override
    public fg0 c(float f) {
        this.a = f;
        return this;
    }

    @Override
    public fg0 d(int i) {
        if (this.f != i) {
            this.f = i;
            this.e.invalidate();
        }
        return this;
    }

    @Override
    public void destroy() {
        e(false);
        this.b.destroy();
        this.l = false;
    }

    @Override
    public boolean draw(Canvas canvas) {
        if (this.k && this.l) {
            if (canvas instanceof eg0) {
                return false;
            }
            float height = this.e.getHeight() / this.d.getHeight();
            float width = this.e.getWidth() / this.d.getWidth();
            canvas.save();
            canvas.scale(width, height);
            this.b.d(canvas, this.d);
            canvas.restore();
            int i = this.f;
            if (i != 0) {
                canvas.drawColor(i);
            }
        }
        return true;
    }

    @Override
    public fg0 e(boolean z) {
        this.g.getViewTreeObserver().removeOnPreDrawListener(this.j);
        if (z) {
            this.g.getViewTreeObserver().addOnPreDrawListener(this.j);
        }
        return this;
    }

    @Override
    public fg0 f(Drawable drawable) {
        this.m = drawable;
        return this;
    }

    public final void g() {
        this.d = this.b.e(this.d, this.a);
        if (this.b.b()) {
            return;
        }
        this.c.setBitmap(this.d);
    }

    public void h(int i, int i2) {
        e(true);
        vn9 vn9Var = new vn9(this.b.c());
        if (vn9Var.b(i, i2)) {
            this.e.setWillNotDraw(true);
            return;
        }
        this.e.setWillNotDraw(false);
        vn9.a aVarD = vn9Var.d(i, i2);
        this.d = Bitmap.createBitmap(aVarD.a, aVarD.b, this.b.a());
        this.c = new eg0(this.d);
        this.l = true;
        j();
    }

    public final void i() {
        this.g.getLocationOnScreen(this.h);
        this.e.getLocationOnScreen(this.i);
        int[] iArr = this.i;
        int i = iArr[0];
        int[] iArr2 = this.h;
        int i2 = i - iArr2[0];
        int i3 = iArr[1] - iArr2[1];
        float height = this.e.getHeight() / this.d.getHeight();
        float width = this.e.getWidth() / this.d.getWidth();
        this.c.translate((-i2) / width, (-i3) / height);
        this.c.scale(1.0f / width, 1.0f / height);
    }

    public void j() {
        if (this.k && this.l) {
            Drawable drawable = this.m;
            if (drawable == null) {
                this.d.eraseColor(0);
            } else {
                drawable.draw(this.c);
            }
            this.c.save();
            i();
            this.g.draw(this.c);
            this.c.restore();
            g();
        }
    }
}
