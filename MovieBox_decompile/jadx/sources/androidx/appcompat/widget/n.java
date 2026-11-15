package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;

class n extends l {

    private final SeekBar f1746d;

    private Drawable f1747e;

    private ColorStateList f1748f;

    private PorterDuff.Mode f1749g;

    private boolean f1750h;

    private boolean f1751i;

    n(SeekBar seekBar) {
        super(seekBar);
        this.f1748f = null;
        this.f1749g = null;
        this.f1750h = false;
        this.f1751i = false;
        this.f1746d = seekBar;
    }

    private void f() {
        Drawable drawable = this.f1747e;
        if (drawable != null) {
            if (this.f1750h || this.f1751i) {
                Drawable drawableR = a1.a.r(drawable.mutate());
                this.f1747e = drawableR;
                if (this.f1750h) {
                    a1.a.o(drawableR, this.f1748f);
                }
                if (this.f1751i) {
                    a1.a.p(this.f1747e, this.f1749g);
                }
                if (this.f1747e.isStateful()) {
                    this.f1747e.setState(this.f1746d.getDrawableState());
                }
            }
        }
    }

    @Override
    void c(AttributeSet attributeSet, int i10) {
        super.c(attributeSet, i10);
        j0 j0VarV = j0.v(this.f1746d.getContext(), attributeSet, R$styleable.AppCompatSeekBar, i10, 0);
        SeekBar seekBar = this.f1746d;
        ViewCompat.saveAttributeDataForStyleable(seekBar, seekBar.getContext(), R$styleable.AppCompatSeekBar, attributeSet, j0VarV.r(), i10, 0);
        Drawable drawableH = j0VarV.h(R$styleable.AppCompatSeekBar_android_thumb);
        if (drawableH != null) {
            this.f1746d.setThumb(drawableH);
        }
        j(j0VarV.g(R$styleable.AppCompatSeekBar_tickMark));
        if (j0VarV.s(R$styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.f1749g = y.e(j0VarV.k(R$styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.f1749g);
            this.f1751i = true;
        }
        if (j0VarV.s(R$styleable.AppCompatSeekBar_tickMarkTint)) {
            this.f1748f = j0VarV.c(R$styleable.AppCompatSeekBar_tickMarkTint);
            this.f1750h = true;
        }
        j0VarV.x();
        f();
    }

    void g(Canvas canvas) {
        if (this.f1747e != null) {
            int max = this.f1746d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f1747e.getIntrinsicWidth();
                int intrinsicHeight = this.f1747e.getIntrinsicHeight();
                int i10 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i11 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f1747e.setBounds(-i10, -i11, i10, i11);
                float width = ((this.f1746d.getWidth() - this.f1746d.getPaddingLeft()) - this.f1746d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f1746d.getPaddingLeft(), this.f1746d.getHeight() / 2);
                for (int i12 = 0; i12 <= max; i12++) {
                    this.f1747e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }

    void h() {
        Drawable drawable = this.f1747e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f1746d.getDrawableState())) {
            this.f1746d.invalidateDrawable(drawable);
        }
    }

    void i() {
        Drawable drawable = this.f1747e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    void j(Drawable drawable) {
        Drawable drawable2 = this.f1747e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1747e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f1746d);
            a1.a.m(drawable, this.f1746d.getLayoutDirection());
            if (drawable.isStateful()) {
                drawable.setState(this.f1746d.getDrawableState());
            }
            f();
        }
        this.f1746d.invalidate();
    }
}
