package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;

public class j {

    private final ImageView f1730a;

    private h0 f1731b;

    private h0 f1732c;

    private h0 f1733d;

    private int f1734e = 0;

    public j(ImageView imageView) {
        this.f1730a = imageView;
    }

    private boolean a(Drawable drawable) {
        if (this.f1733d == null) {
            this.f1733d = new h0();
        }
        h0 h0Var = this.f1733d;
        h0Var.a();
        ColorStateList colorStateListA = androidx.core.widget.h.a(this.f1730a);
        if (colorStateListA != null) {
            h0Var.f1728d = true;
            h0Var.f1725a = colorStateListA;
        }
        PorterDuff.Mode modeB = androidx.core.widget.h.b(this.f1730a);
        if (modeB != null) {
            h0Var.f1727c = true;
            h0Var.f1726b = modeB;
        }
        if (!h0Var.f1728d && !h0Var.f1727c) {
            return false;
        }
        f.i(drawable, h0Var, this.f1730a.getDrawableState());
        return true;
    }

    private boolean l() {
        return this.f1731b != null;
    }

    void b() {
        if (this.f1730a.getDrawable() != null) {
            this.f1730a.getDrawable().setLevel(this.f1734e);
        }
    }

    void c() {
        Drawable drawable = this.f1730a.getDrawable();
        if (drawable != null) {
            y.b(drawable);
        }
        if (drawable != null) {
            if (l() && a(drawable)) {
                return;
            }
            h0 h0Var = this.f1732c;
            if (h0Var != null) {
                f.i(drawable, h0Var, this.f1730a.getDrawableState());
                return;
            }
            h0 h0Var2 = this.f1731b;
            if (h0Var2 != null) {
                f.i(drawable, h0Var2, this.f1730a.getDrawableState());
            }
        }
    }

    ColorStateList d() {
        h0 h0Var = this.f1732c;
        if (h0Var != null) {
            return h0Var.f1725a;
        }
        return null;
    }

    PorterDuff.Mode e() {
        h0 h0Var = this.f1732c;
        if (h0Var != null) {
            return h0Var.f1726b;
        }
        return null;
    }

    boolean f() {
        return !(this.f1730a.getBackground() instanceof RippleDrawable);
    }

    public void g(AttributeSet attributeSet, int i10) {
        int iN;
        j0 j0VarV = j0.v(this.f1730a.getContext(), attributeSet, R$styleable.AppCompatImageView, i10, 0);
        ImageView imageView = this.f1730a;
        ViewCompat.saveAttributeDataForStyleable(imageView, imageView.getContext(), R$styleable.AppCompatImageView, attributeSet, j0VarV.r(), i10, 0);
        try {
            Drawable drawable = this.f1730a.getDrawable();
            if (drawable == null && (iN = j0VarV.n(R$styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = g.a.b(this.f1730a.getContext(), iN)) != null) {
                this.f1730a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                y.b(drawable);
            }
            if (j0VarV.s(R$styleable.AppCompatImageView_tint)) {
                androidx.core.widget.h.c(this.f1730a, j0VarV.c(R$styleable.AppCompatImageView_tint));
            }
            if (j0VarV.s(R$styleable.AppCompatImageView_tintMode)) {
                androidx.core.widget.h.d(this.f1730a, y.e(j0VarV.k(R$styleable.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            j0VarV.x();
        }
    }

    void h(Drawable drawable) {
        this.f1734e = drawable.getLevel();
    }

    public void i(int i10) {
        if (i10 != 0) {
            Drawable drawableB = g.a.b(this.f1730a.getContext(), i10);
            if (drawableB != null) {
                y.b(drawableB);
            }
            this.f1730a.setImageDrawable(drawableB);
        } else {
            this.f1730a.setImageDrawable(null);
        }
        c();
    }

    void j(ColorStateList colorStateList) {
        if (this.f1732c == null) {
            this.f1732c = new h0();
        }
        h0 h0Var = this.f1732c;
        h0Var.f1725a = colorStateList;
        h0Var.f1728d = true;
        c();
    }

    void k(PorterDuff.Mode mode) {
        if (this.f1732c == null) {
            this.f1732c = new h0();
        }
        h0 h0Var = this.f1732c;
        h0Var.f1726b = mode;
        h0Var.f1727c = true;
        c();
    }
}
