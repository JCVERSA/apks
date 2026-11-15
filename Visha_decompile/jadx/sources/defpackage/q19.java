package defpackage;

import android.animation.ArgbEvaluator;
import android.graphics.RectF;
import android.util.SparseArray;
import com.yandex.div.internal.widget.indicator.b;
import com.yandex.div.internal.widget.indicator.c;
import kotlin.NoWhenBranchMatchedException;

public final class q19 implements pz4 {
    public final sz4 a;
    public final ArgbEvaluator b;
    public final SparseArray c;
    public int d;

    public q19(sz4 sz4Var) {
        y45.j(sz4Var, "styleParams");
        this.a = sz4Var;
        this.b = new ArgbEvaluator();
        this.c = new SparseArray();
    }

    @Override
    public void b(int i) {
        this.d = i;
    }

    @Override
    public RectF c(float f, float f2, float f3, boolean z) {
        return null;
    }

    @Override
    public float e(int i) {
        c cVarA = this.a.a();
        if (!(cVarA instanceof c.b)) {
            return 0.0f;
        }
        c cVarC = this.a.c();
        y45.h(cVarC, "null cannot be cast to non-null type com.yandex.div.internal.widget.indicator.IndicatorParams.Shape.RoundedRect");
        c.b bVar = (c.b) cVarC;
        return bVar.g() + ((((c.b) cVarA).g() - bVar.g()) * k(i));
    }

    @Override
    public b f(int i) {
        c cVarA = this.a.a();
        if (cVarA instanceof c.a) {
            c cVarC = this.a.c();
            y45.h(cVarC, "null cannot be cast to non-null type com.yandex.div.internal.widget.indicator.IndicatorParams.Shape.Circle");
            return new b.a(l(((c.a) cVarC).d().d(), ((c.a) cVarA).d().d(), k(i)));
        }
        if (!(cVarA instanceof c.b)) {
            throw new NoWhenBranchMatchedException();
        }
        c cVarC2 = this.a.c();
        y45.h(cVarC2, "null cannot be cast to non-null type com.yandex.div.internal.widget.indicator.IndicatorParams.Shape.RoundedRect");
        c.b bVar = (c.b) cVarC2;
        c.b bVar2 = (c.b) cVarA;
        return new b.C0303b(l(bVar.d().g() + bVar.g(), bVar2.d().g() + bVar2.g(), k(i)), l(bVar.d().f() + bVar.g(), bVar2.d().f() + bVar2.g(), k(i)), l(bVar.d().e(), bVar2.d().e(), k(i)));
    }

    @Override
    public int g(int i) {
        c cVarA = this.a.a();
        if (!(cVarA instanceof c.b)) {
            return 0;
        }
        c cVarC = this.a.c();
        y45.h(cVarC, "null cannot be cast to non-null type com.yandex.div.internal.widget.indicator.IndicatorParams.Shape.RoundedRect");
        return j(k(i), ((c.b) cVarC).f(), ((c.b) cVarA).f());
    }

    @Override
    public void h(int i, float f) {
        m(i, 1.0f - f);
        int i2 = this.d;
        if (i < i2 - 1) {
            m(i + 1, f);
        } else if (i2 > 1) {
            m(0, f);
        }
    }

    @Override
    public int i(int i) {
        return j(k(i), this.a.c().c(), this.a.a().c());
    }

    public final int j(float f, int i, int i2) {
        Object objEvaluate = this.b.evaluate(f, Integer.valueOf(i), Integer.valueOf(i2));
        y45.h(objEvaluate, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objEvaluate).intValue();
    }

    public final float k(int i) {
        Object obj = this.c.get(i, Float.valueOf(0.0f));
        y45.i(obj, "itemsScale.get(position, 0f)");
        return ((Number) obj).floatValue();
    }

    public final float l(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    public final void m(int i, float f) {
        if (f == 0.0f) {
            this.c.remove(i);
        } else {
            this.c.put(i, Float.valueOf(Math.abs(f)));
        }
    }

    @Override
    public void onPageSelected(int i) {
        this.c.clear();
        this.c.put(i, Float.valueOf(1.0f));
    }
}
