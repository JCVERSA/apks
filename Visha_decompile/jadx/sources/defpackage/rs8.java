package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

public class rs8 implements u23, by7, sj4, ab0.b, vf5 {
    public final Matrix a = new Matrix();
    public final Path b = new Path();
    public final LottieDrawable c;
    public final a d;
    public final String e;
    public final boolean f;
    public final ab0 g;
    public final ab0 h;
    public final x6b i;
    public cg1 j;

    public rs8(LottieDrawable lottieDrawable, a aVar, qs8 qs8Var) {
        this.c = lottieDrawable;
        this.d = aVar;
        this.e = qs8Var.c();
        this.f = qs8Var.f();
        xy3 xy3VarH = qs8Var.b().h();
        this.g = xy3VarH;
        aVar.i(xy3VarH);
        xy3VarH.a(this);
        xy3 xy3VarH2 = qs8Var.d().h();
        this.h = xy3VarH2;
        aVar.i(xy3VarH2);
        xy3VarH2.a(this);
        x6b x6bVarB = qs8Var.e().b();
        this.i = x6bVarB;
        x6bVarB.a(aVar);
        x6bVarB.b(this);
    }

    @Override
    public void a(RectF rectF, Matrix matrix, boolean z) {
        this.j.a(rectF, matrix, z);
    }

    @Override
    public void b(ListIterator listIterator) {
        if (this.j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add((bg1) listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.j = new cg1(this.c, this.d, "Repeater", this.f, arrayList, null);
    }

    @Override
    public void c(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        xp6.k(tf5Var, i, list, tf5Var2, this);
        for (int i2 = 0; i2 < this.j.j().size(); i2++) {
            bg1 bg1Var = (bg1) this.j.j().get(i2);
            if (bg1Var instanceof vf5) {
                xp6.k(tf5Var, i, list, tf5Var2, (vf5) bg1Var);
            }
        }
    }

    @Override
    public void d(Canvas canvas, Matrix matrix, int i) {
        float fFloatValue = ((Float) this.g.h()).floatValue();
        float fFloatValue2 = ((Float) this.h.h()).floatValue();
        float fFloatValue3 = ((Float) this.i.i().h()).floatValue() / 100.0f;
        float fFloatValue4 = ((Float) this.i.e().h()).floatValue() / 100.0f;
        for (int i2 = ((int) fFloatValue) - 1; i2 >= 0; i2--) {
            this.a.set(matrix);
            float f = i2;
            this.a.preConcat(this.i.g(f + fFloatValue2));
            this.j.d(canvas, this.a, (int) (i * xp6.i(fFloatValue3, fFloatValue4, f / fFloatValue)));
        }
    }

    @Override
    public void e() {
        this.c.invalidateSelf();
    }

    @Override
    public void f(List list, List list2) {
        this.j.f(list, list2);
    }

    @Override
    public String getName() {
        return this.e;
    }

    @Override
    public Path getPath() {
        Path path = this.j.getPath();
        this.b.reset();
        float fFloatValue = ((Float) this.g.h()).floatValue();
        float fFloatValue2 = ((Float) this.h.h()).floatValue();
        for (int i = ((int) fFloatValue) - 1; i >= 0; i--) {
            this.a.set(this.i.g(i + fFloatValue2));
            this.b.addPath(path, this.a);
        }
        return this.b;
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        if (this.i.c(obj, iu5Var)) {
            return;
        }
        if (obj == it5.u) {
            this.g.o(iu5Var);
        } else if (obj == it5.v) {
            this.h.o(iu5Var);
        }
    }
}
