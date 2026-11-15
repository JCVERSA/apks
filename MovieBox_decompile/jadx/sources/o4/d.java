package o4;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import java.util.ArrayList;
import java.util.List;

public class d implements e, m, p4.a.b, r4.e {

    private final Paint f67474a;

    private final RectF f67475b;

    private final Matrix f67476c;

    private final Path f67477d;

    private final RectF f67478e;

    private final String f67479f;

    private final boolean f67480g;

    private final List f67481h;

    private final LottieDrawable f67482i;

    private List f67483j;

    private p4.p f67484k;

    public d(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, t4.k kVar, com.airbnb.lottie.h hVar) {
        this(lottieDrawable, aVar, kVar.c(), kVar.d(), g(lottieDrawable, hVar, aVar, kVar.b()), i(kVar.b()));
    }

    private static List g(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, List list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVarA = ((t4.c) list.get(i10)).a(lottieDrawable, hVar, aVar);
            if (cVarA != null) {
                arrayList.add(cVarA);
            }
        }
        return arrayList;
    }

    static s4.n i(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            t4.c cVar = (t4.c) list.get(i10);
            if (cVar instanceof s4.n) {
                return (s4.n) cVar;
            }
        }
        return null;
    }

    private boolean m() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f67481h.size(); i11++) {
            if ((this.f67481h.get(i11) instanceof e) && (i10 = i10 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void a() {
        this.f67482i.invalidateSelf();
    }

    @Override
    public void b(List list, List list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f67481h.size());
        arrayList.addAll(list);
        for (int size = this.f67481h.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f67481h.get(size);
            cVar.b(arrayList, this.f67481h.subList(0, size));
            arrayList.add(cVar);
        }
    }

    @Override
    public void c(r4.d dVar, int i10, List list, r4.d dVar2) {
        if (dVar.g(getName(), i10) || "__container".equals(getName())) {
            if (!"__container".equals(getName())) {
                dVar2 = dVar2.a(getName());
                if (dVar.c(getName(), i10)) {
                    list.add(dVar2.i(this));
                }
            }
            if (dVar.h(getName(), i10)) {
                int iE = i10 + dVar.e(getName(), i10);
                for (int i11 = 0; i11 < this.f67481h.size(); i11++) {
                    c cVar = (c) this.f67481h.get(i11);
                    if (cVar instanceof r4.e) {
                        ((r4.e) cVar).c(dVar, iE, list, dVar2);
                    }
                }
            }
        }
    }

    @Override
    public void d(Object obj, y4.c cVar) {
        p4.p pVar = this.f67484k;
        if (pVar != null) {
            pVar.c(obj, cVar);
        }
    }

    @Override
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        this.f67476c.set(matrix);
        p4.p pVar = this.f67484k;
        if (pVar != null) {
            this.f67476c.preConcat(pVar.f());
        }
        this.f67478e.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f67481h.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f67481h.get(size);
            if (cVar instanceof e) {
                ((e) cVar).f(this.f67478e, this.f67476c, z10);
                rectF.union(this.f67478e);
            }
        }
    }

    @Override
    public String getName() {
        return this.f67479f;
    }

    @Override
    public Path getPath() {
        this.f67476c.reset();
        p4.p pVar = this.f67484k;
        if (pVar != null) {
            this.f67476c.set(pVar.f());
        }
        this.f67477d.reset();
        if (this.f67480g) {
            return this.f67477d;
        }
        for (int size = this.f67481h.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f67481h.get(size);
            if (cVar instanceof m) {
                this.f67477d.addPath(((m) cVar).getPath(), this.f67476c);
            }
        }
        return this.f67477d;
    }

    @Override
    public void h(Canvas canvas, Matrix matrix, int i10) {
        if (this.f67480g) {
            return;
        }
        this.f67476c.set(matrix);
        p4.p pVar = this.f67484k;
        if (pVar != null) {
            this.f67476c.preConcat(pVar.f());
            i10 = (int) (((((this.f67484k.h() == null ? 100 : ((Integer) this.f67484k.h().h()).intValue()) / 100.0f) * i10) / 255.0f) * 255.0f);
        }
        boolean z10 = this.f67482i.m0() && m() && i10 != 255;
        if (z10) {
            this.f67475b.set(0.0f, 0.0f, 0.0f, 0.0f);
            f(this.f67475b, this.f67476c, true);
            this.f67474a.setAlpha(i10);
            x4.l.n(canvas, this.f67475b, this.f67474a);
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.f67481h.size() - 1; size >= 0; size--) {
            Object obj = this.f67481h.get(size);
            if (obj instanceof e) {
                ((e) obj).h(canvas, this.f67476c, i10);
            }
        }
        if (z10) {
            canvas.restore();
        }
    }

    public List j() {
        return this.f67481h;
    }

    List k() {
        if (this.f67483j == null) {
            this.f67483j = new ArrayList();
            for (int i10 = 0; i10 < this.f67481h.size(); i10++) {
                c cVar = (c) this.f67481h.get(i10);
                if (cVar instanceof m) {
                    this.f67483j.add((m) cVar);
                }
            }
        }
        return this.f67483j;
    }

    Matrix l() {
        p4.p pVar = this.f67484k;
        if (pVar != null) {
            return pVar.f();
        }
        this.f67476c.reset();
        return this.f67476c;
    }

    d(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, String str, boolean z10, List list, s4.n nVar) {
        this.f67474a = new n4.a();
        this.f67475b = new RectF();
        this.f67476c = new Matrix();
        this.f67477d = new Path();
        this.f67478e = new RectF();
        this.f67479f = str;
        this.f67482i = lottieDrawable;
        this.f67480g = z10;
        this.f67481h = list;
        if (nVar != null) {
            p4.p pVarB = nVar.b();
            this.f67484k = pVarB;
            pVarB.a(aVar);
            this.f67484k.b(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = (c) list.get(size);
            if (cVar instanceof j) {
                arrayList.add((j) cVar);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((j) arrayList.get(size2)).g(list.listIterator(list.size()));
        }
    }
}
