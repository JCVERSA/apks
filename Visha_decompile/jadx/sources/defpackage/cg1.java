package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import java.util.ArrayList;
import java.util.List;

public class cg1 implements u23, by7, ab0.b, uf5 {
    public final Paint a;
    public final RectF b;
    public final Matrix c;
    public final Path d;
    public final RectF e;
    public final String f;
    public final boolean g;
    public final List h;
    public final LottieDrawable i;
    public List j;
    public x6b k;

    public cg1(LottieDrawable lottieDrawable, a aVar, wf9 wf9Var, ur5 ur5Var) {
        this(lottieDrawable, aVar, wf9Var.c(), wf9Var.d(), b(lottieDrawable, ur5Var, aVar, wf9Var.b()), i(wf9Var.b()));
    }

    public static List b(LottieDrawable lottieDrawable, ur5 ur5Var, a aVar, List list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            bg1 bg1VarA = ((ah1) list.get(i)).a(lottieDrawable, ur5Var, aVar);
            if (bg1VarA != null) {
                arrayList.add(bg1VarA);
            }
        }
        return arrayList;
    }

    public static rc i(List list) {
        for (int i = 0; i < list.size(); i++) {
            ah1 ah1Var = (ah1) list.get(i);
            if (ah1Var instanceof rc) {
                return (rc) ah1Var;
            }
        }
        return null;
    }

    @Override
    public void a(RectF rectF, Matrix matrix, boolean z) {
        this.c.set(matrix);
        x6b x6bVar = this.k;
        if (x6bVar != null) {
            this.c.preConcat(x6bVar.f());
        }
        this.e.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.h.size() - 1; size >= 0; size--) {
            bg1 bg1Var = (bg1) this.h.get(size);
            if (bg1Var instanceof u23) {
                ((u23) bg1Var).a(this.e, this.c, z);
                rectF.union(this.e);
            }
        }
    }

    @Override
    public void c(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        if (tf5Var.g(getName(), i) || "__container".equals(getName())) {
            if (!"__container".equals(getName())) {
                tf5Var2 = tf5Var2.a(getName());
                if (tf5Var.c(getName(), i)) {
                    list.add(tf5Var2.i(this));
                }
            }
            if (tf5Var.h(getName(), i)) {
                int iE = i + tf5Var.e(getName(), i);
                for (int i2 = 0; i2 < this.h.size(); i2++) {
                    bg1 bg1Var = (bg1) this.h.get(i2);
                    if (bg1Var instanceof uf5) {
                        ((uf5) bg1Var).c(tf5Var, iE, list, tf5Var2);
                    }
                }
            }
        }
    }

    @Override
    public void d(Canvas canvas, Matrix matrix, int i) {
        if (this.g) {
            return;
        }
        this.c.set(matrix);
        x6b x6bVar = this.k;
        if (x6bVar != null) {
            this.c.preConcat(x6bVar.f());
            i = (int) (((((this.k.h() == null ? 100 : ((Integer) this.k.h().h()).intValue()) / 100.0f) * i) / 255.0f) * 255.0f);
        }
        boolean z = this.i.m0() && m() && i != 255;
        if (z) {
            this.b.set(0.0f, 0.0f, 0.0f, 0.0f);
            a(this.b, this.c, true);
            this.a.setAlpha(i);
            plb.n(canvas, this.b, this.a);
        }
        if (z) {
            i = 255;
        }
        for (int size = this.h.size() - 1; size >= 0; size--) {
            Object obj = this.h.get(size);
            if (obj instanceof u23) {
                ((u23) obj).d(canvas, this.c, i);
            }
        }
        if (z) {
            canvas.restore();
        }
    }

    @Override
    public void e() {
        this.i.invalidateSelf();
    }

    @Override
    public void f(List list, List list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.h.size());
        arrayList.addAll(list);
        for (int size = this.h.size() - 1; size >= 0; size--) {
            bg1 bg1Var = (bg1) this.h.get(size);
            bg1Var.f(arrayList, this.h.subList(0, size));
            arrayList.add(bg1Var);
        }
    }

    @Override
    public String getName() {
        return this.f;
    }

    @Override
    public Path getPath() {
        this.c.reset();
        x6b x6bVar = this.k;
        if (x6bVar != null) {
            this.c.set(x6bVar.f());
        }
        this.d.reset();
        if (this.g) {
            return this.d;
        }
        for (int size = this.h.size() - 1; size >= 0; size--) {
            bg1 bg1Var = (bg1) this.h.get(size);
            if (bg1Var instanceof by7) {
                this.d.addPath(((by7) bg1Var).getPath(), this.c);
            }
        }
        return this.d;
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        x6b x6bVar = this.k;
        if (x6bVar != null) {
            x6bVar.c(obj, iu5Var);
        }
    }

    public List j() {
        return this.h;
    }

    public List k() {
        if (this.j == null) {
            this.j = new ArrayList();
            for (int i = 0; i < this.h.size(); i++) {
                bg1 bg1Var = (bg1) this.h.get(i);
                if (bg1Var instanceof by7) {
                    this.j.add((by7) bg1Var);
                }
            }
        }
        return this.j;
    }

    public Matrix l() {
        x6b x6bVar = this.k;
        if (x6bVar != null) {
            return x6bVar.f();
        }
        this.c.reset();
        return this.c;
    }

    public final boolean m() {
        int i = 0;
        for (int i2 = 0; i2 < this.h.size(); i2++) {
            if ((this.h.get(i2) instanceof u23) && (i = i + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    public cg1(LottieDrawable lottieDrawable, a aVar, String str, boolean z, List list, rc rcVar) {
        this.a = new ni5();
        this.b = new RectF();
        this.c = new Matrix();
        this.d = new Path();
        this.e = new RectF();
        this.f = str;
        this.i = lottieDrawable;
        this.g = z;
        this.h = list;
        if (rcVar != null) {
            x6b x6bVarB = rcVar.b();
            this.k = x6bVarB;
            x6bVarB.a(aVar);
            this.k.b(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            bg1 bg1Var = (bg1) list.get(size);
            if (bg1Var instanceof sj4) {
                arrayList.add((sj4) bg1Var);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((sj4) arrayList.get(size2)).b(list.listIterator(list.size()));
        }
    }
}
