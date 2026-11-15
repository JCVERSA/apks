package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;

class c {

    private final View f1652a;

    private h0 f1655d;

    private h0 f1656e;

    private h0 f1657f;

    private int f1654c = -1;

    private final f f1653b = f.b();

    c(View view) {
        this.f1652a = view;
    }

    private boolean a(Drawable drawable) {
        if (this.f1657f == null) {
            this.f1657f = new h0();
        }
        h0 h0Var = this.f1657f;
        h0Var.a();
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(this.f1652a);
        if (backgroundTintList != null) {
            h0Var.f1728d = true;
            h0Var.f1725a = backgroundTintList;
        }
        PorterDuff.Mode backgroundTintMode = ViewCompat.getBackgroundTintMode(this.f1652a);
        if (backgroundTintMode != null) {
            h0Var.f1727c = true;
            h0Var.f1726b = backgroundTintMode;
        }
        if (!h0Var.f1728d && !h0Var.f1727c) {
            return false;
        }
        f.i(drawable, h0Var, this.f1652a.getDrawableState());
        return true;
    }

    private boolean k() {
        return this.f1655d != null;
    }

    void b() {
        Drawable background = this.f1652a.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            h0 h0Var = this.f1656e;
            if (h0Var != null) {
                f.i(background, h0Var, this.f1652a.getDrawableState());
                return;
            }
            h0 h0Var2 = this.f1655d;
            if (h0Var2 != null) {
                f.i(background, h0Var2, this.f1652a.getDrawableState());
            }
        }
    }

    ColorStateList c() {
        h0 h0Var = this.f1656e;
        if (h0Var != null) {
            return h0Var.f1725a;
        }
        return null;
    }

    PorterDuff.Mode d() {
        h0 h0Var = this.f1656e;
        if (h0Var != null) {
            return h0Var.f1726b;
        }
        return null;
    }

    void e(AttributeSet attributeSet, int i10) {
        j0 j0VarV = j0.v(this.f1652a.getContext(), attributeSet, R$styleable.ViewBackgroundHelper, i10, 0);
        View view = this.f1652a;
        ViewCompat.saveAttributeDataForStyleable(view, view.getContext(), R$styleable.ViewBackgroundHelper, attributeSet, j0VarV.r(), i10, 0);
        try {
            if (j0VarV.s(R$styleable.ViewBackgroundHelper_android_background)) {
                this.f1654c = j0VarV.n(R$styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList colorStateListF = this.f1653b.f(this.f1652a.getContext(), this.f1654c);
                if (colorStateListF != null) {
                    h(colorStateListF);
                }
            }
            if (j0VarV.s(R$styleable.ViewBackgroundHelper_backgroundTint)) {
                ViewCompat.setBackgroundTintList(this.f1652a, j0VarV.c(R$styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (j0VarV.s(R$styleable.ViewBackgroundHelper_backgroundTintMode)) {
                ViewCompat.setBackgroundTintMode(this.f1652a, y.e(j0VarV.k(R$styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            j0VarV.x();
        }
    }

    void f(Drawable drawable) {
        this.f1654c = -1;
        h(null);
        b();
    }

    void g(int i10) {
        this.f1654c = i10;
        f fVar = this.f1653b;
        h(fVar != null ? fVar.f(this.f1652a.getContext(), i10) : null);
        b();
    }

    void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1655d == null) {
                this.f1655d = new h0();
            }
            h0 h0Var = this.f1655d;
            h0Var.f1725a = colorStateList;
            h0Var.f1728d = true;
        } else {
            this.f1655d = null;
        }
        b();
    }

    void i(ColorStateList colorStateList) {
        if (this.f1656e == null) {
            this.f1656e = new h0();
        }
        h0 h0Var = this.f1656e;
        h0Var.f1725a = colorStateList;
        h0Var.f1728d = true;
        b();
    }

    void j(PorterDuff.Mode mode) {
        if (this.f1656e == null) {
            this.f1656e = new h0();
        }
        h0 h0Var = this.f1656e;
        h0Var.f1726b = mode;
        h0Var.f1727c = true;
        b();
    }
}
