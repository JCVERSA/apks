package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;

class e {

    private final CompoundButton f1673a;

    private ColorStateList f1674b = null;

    private PorterDuff.Mode f1675c = null;

    private boolean f1676d = false;

    private boolean f1677e = false;

    private boolean f1678f;

    e(CompoundButton compoundButton) {
        this.f1673a = compoundButton;
    }

    void a() {
        Drawable drawableA = androidx.core.widget.b.a(this.f1673a);
        if (drawableA != null) {
            if (this.f1676d || this.f1677e) {
                Drawable drawableMutate = a1.a.r(drawableA).mutate();
                if (this.f1676d) {
                    a1.a.o(drawableMutate, this.f1674b);
                }
                if (this.f1677e) {
                    a1.a.p(drawableMutate, this.f1675c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f1673a.getDrawableState());
                }
                this.f1673a.setButtonDrawable(drawableMutate);
            }
        }
    }

    ColorStateList b() {
        return this.f1674b;
    }

    PorterDuff.Mode c() {
        return this.f1675c;
    }

    void d(AttributeSet attributeSet, int i10) {
        int iN;
        int iN2;
        j0 j0VarV = j0.v(this.f1673a.getContext(), attributeSet, R$styleable.CompoundButton, i10, 0);
        CompoundButton compoundButton = this.f1673a;
        ViewCompat.saveAttributeDataForStyleable(compoundButton, compoundButton.getContext(), R$styleable.CompoundButton, attributeSet, j0VarV.r(), i10, 0);
        try {
            if (j0VarV.s(R$styleable.CompoundButton_buttonCompat) && (iN2 = j0VarV.n(R$styleable.CompoundButton_buttonCompat, 0)) != 0) {
                try {
                    CompoundButton compoundButton2 = this.f1673a;
                    compoundButton2.setButtonDrawable(g.a.b(compoundButton2.getContext(), iN2));
                } catch (Resources.NotFoundException unused) {
                    if (j0VarV.s(R$styleable.CompoundButton_android_button)) {
                        CompoundButton compoundButton3 = this.f1673a;
                        compoundButton3.setButtonDrawable(g.a.b(compoundButton3.getContext(), iN));
                    }
                }
            } else if (j0VarV.s(R$styleable.CompoundButton_android_button) && (iN = j0VarV.n(R$styleable.CompoundButton_android_button, 0)) != 0) {
                CompoundButton compoundButton4 = this.f1673a;
                compoundButton4.setButtonDrawable(g.a.b(compoundButton4.getContext(), iN));
            }
            if (j0VarV.s(R$styleable.CompoundButton_buttonTint)) {
                androidx.core.widget.b.d(this.f1673a, j0VarV.c(R$styleable.CompoundButton_buttonTint));
            }
            if (j0VarV.s(R$styleable.CompoundButton_buttonTintMode)) {
                androidx.core.widget.b.e(this.f1673a, y.e(j0VarV.k(R$styleable.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            j0VarV.x();
        }
    }

    void e() {
        if (this.f1678f) {
            this.f1678f = false;
        } else {
            this.f1678f = true;
            a();
        }
    }

    void f(ColorStateList colorStateList) {
        this.f1674b = colorStateList;
        this.f1676d = true;
        a();
    }

    void g(PorterDuff.Mode mode) {
        this.f1675c = mode;
        this.f1677e = true;
        a();
    }
}
