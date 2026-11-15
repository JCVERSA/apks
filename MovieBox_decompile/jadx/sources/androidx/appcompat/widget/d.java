package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;

class d {

    private final CheckedTextView f1659a;

    private ColorStateList f1660b = null;

    private PorterDuff.Mode f1661c = null;

    private boolean f1662d = false;

    private boolean f1663e = false;

    private boolean f1664f;

    d(CheckedTextView checkedTextView) {
        this.f1659a = checkedTextView;
    }

    void a() {
        Drawable drawableA = androidx.core.widget.a.a(this.f1659a);
        if (drawableA != null) {
            if (this.f1662d || this.f1663e) {
                Drawable drawableMutate = a1.a.r(drawableA).mutate();
                if (this.f1662d) {
                    a1.a.o(drawableMutate, this.f1660b);
                }
                if (this.f1663e) {
                    a1.a.p(drawableMutate, this.f1661c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f1659a.getDrawableState());
                }
                this.f1659a.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    ColorStateList b() {
        return this.f1660b;
    }

    PorterDuff.Mode c() {
        return this.f1661c;
    }

    void d(AttributeSet attributeSet, int i10) {
        int iN;
        int iN2;
        j0 j0VarV = j0.v(this.f1659a.getContext(), attributeSet, R$styleable.CheckedTextView, i10, 0);
        CheckedTextView checkedTextView = this.f1659a;
        ViewCompat.saveAttributeDataForStyleable(checkedTextView, checkedTextView.getContext(), R$styleable.CheckedTextView, attributeSet, j0VarV.r(), i10, 0);
        try {
            if (j0VarV.s(R$styleable.CheckedTextView_checkMarkCompat) && (iN2 = j0VarV.n(R$styleable.CheckedTextView_checkMarkCompat, 0)) != 0) {
                try {
                    CheckedTextView checkedTextView2 = this.f1659a;
                    checkedTextView2.setCheckMarkDrawable(g.a.b(checkedTextView2.getContext(), iN2));
                } catch (Resources.NotFoundException unused) {
                    if (j0VarV.s(R$styleable.CheckedTextView_android_checkMark)) {
                        CheckedTextView checkedTextView3 = this.f1659a;
                        checkedTextView3.setCheckMarkDrawable(g.a.b(checkedTextView3.getContext(), iN));
                    }
                }
            } else if (j0VarV.s(R$styleable.CheckedTextView_android_checkMark) && (iN = j0VarV.n(R$styleable.CheckedTextView_android_checkMark, 0)) != 0) {
                CheckedTextView checkedTextView4 = this.f1659a;
                checkedTextView4.setCheckMarkDrawable(g.a.b(checkedTextView4.getContext(), iN));
            }
            if (j0VarV.s(R$styleable.CheckedTextView_checkMarkTint)) {
                androidx.core.widget.a.b(this.f1659a, j0VarV.c(R$styleable.CheckedTextView_checkMarkTint));
            }
            if (j0VarV.s(R$styleable.CheckedTextView_checkMarkTintMode)) {
                androidx.core.widget.a.c(this.f1659a, y.e(j0VarV.k(R$styleable.CheckedTextView_checkMarkTintMode, -1), null));
            }
        } finally {
            j0VarV.x();
        }
    }

    void e() {
        if (this.f1664f) {
            this.f1664f = false;
        } else {
            this.f1664f = true;
            a();
        }
    }

    void f(ColorStateList colorStateList) {
        this.f1660b = colorStateList;
        this.f1662d = true;
        a();
    }

    void g(PorterDuff.Mode mode) {
        this.f1661c = mode;
        this.f1663e = true;
        a();
    }
}
