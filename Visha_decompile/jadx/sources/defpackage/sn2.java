package defpackage;

import android.util.DisplayMetrics;
import android.view.View;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivEdgeInsets;
import com.yandex.div2.DivPager;

public final class sn2 {
    public final oj3 a;
    public final DisplayMetrics b;
    public final boolean c;
    public final float d;
    public final float e;
    public final float f;
    public final float g;
    public final float h;
    public final float i;
    public final Integer j;
    public final Integer k;
    public final Integer l;
    public final Integer m;

    /* JADX WARN: Code duplicated, block: B:13:0x002f  */
    /* JADX WARN: Code duplicated, block: B:18:0x0039  */
    /* JADX WARN: Code duplicated, block: B:33:0x0063  */
    public sn2(DivEdgeInsets divEdgeInsets, oj3 oj3Var, View view, DisplayMetrics displayMetrics, boolean z, DivPager.ItemAlignment itemAlignment) {
        boolean z2;
        Expression expression;
        Expression expression2;
        float f;
        float f2;
        y45.j(oj3Var, "resolver");
        y45.j(view, "parent");
        y45.j(displayMetrics, "metrics");
        y45.j(itemAlignment, "alignment");
        this.a = oj3Var;
        this.b = displayMetrics;
        if ((divEdgeInsets != null ? divEdgeInsets.e : null) != null) {
            z2 = true;
        } else {
            if ((divEdgeInsets != null ? divEdgeInsets.b : null) != null) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        this.c = z2;
        if (z2) {
            if (pdc.f(view)) {
                if (divEdgeInsets != null) {
                    expression = divEdgeInsets.b;
                } else {
                    expression = null;
                }
            } else if (divEdgeInsets != null) {
                expression = divEdgeInsets.e;
            } else {
                expression = null;
            }
        } else if (divEdgeInsets != null) {
            expression = divEdgeInsets.c;
        } else {
            expression = null;
        }
        float fK = k(expression);
        this.d = fK;
        float fK2 = k(divEdgeInsets != null ? divEdgeInsets.f : null);
        this.e = fK2;
        if (z2) {
            if (pdc.f(view)) {
                if (divEdgeInsets != null) {
                    expression2 = divEdgeInsets.e;
                } else {
                    expression2 = null;
                }
            } else if (divEdgeInsets != null) {
                expression2 = divEdgeInsets.b;
            } else {
                expression2 = null;
            }
        } else if (divEdgeInsets != null) {
            expression2 = divEdgeInsets.d;
        } else {
            expression2 = null;
        }
        float fK3 = k(expression2);
        this.f = fK3;
        float fK4 = k(divEdgeInsets != null ? divEdgeInsets.a : null);
        this.g = fK4;
        if (z) {
            f = pdc.f(view) ? fK3 : fK;
        } else {
            f = fK2;
        }
        this.h = f;
        if (z) {
            f2 = pdc.f(view) ? fK : fK3;
        } else {
            f2 = fK4;
        }
        this.i = f2;
        this.j = (!z || (itemAlignment == DivPager.ItemAlignment.START && !pdc.f(view)) || (itemAlignment == DivPager.ItemAlignment.END && pdc.f(view))) ? Integer.valueOf(s86.c(fK)) : null;
        this.k = (z || itemAlignment == DivPager.ItemAlignment.START) ? Integer.valueOf(s86.c(fK2)) : null;
        this.l = (!z || (itemAlignment == DivPager.ItemAlignment.START && pdc.f(view)) || (itemAlignment == DivPager.ItemAlignment.END && !pdc.f(view))) ? Integer.valueOf(s86.c(fK3)) : null;
        this.m = (z || itemAlignment == DivPager.ItemAlignment.END) ? Integer.valueOf(s86.c(fK4)) : null;
    }

    public final Integer a() {
        return this.m;
    }

    public final Integer b() {
        return this.j;
    }

    public final Integer c() {
        return this.l;
    }

    public final Integer d() {
        return this.k;
    }

    public final float e() {
        return this.g;
    }

    public final float f() {
        return this.i;
    }

    public final float g() {
        return this.d;
    }

    public final float h() {
        return this.f;
    }

    public final float i() {
        return this.h;
    }

    public final float j() {
        return this.e;
    }

    public final float k(Expression expression) {
        if (expression != null) {
            return BaseDivViewExtensionsKt.M(Long.valueOf(((Number) expression.b(this.a)).longValue()), this.b);
        }
        return 0.0f;
    }
}
