package o4;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

public class p implements e, m, j, p4.a.b, k {

    private final Matrix f67573a = new Matrix();

    private final Path f67574b = new Path();

    private final LottieDrawable f67575c;

    private final com.airbnb.lottie.model.layer.a f67576d;

    private final String f67577e;

    private final boolean f67578f;

    private final p4.a f67579g;

    private final p4.a f67580h;

    private final p4.p f67581i;

    private d f67582j;

    public p(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, t4.g gVar) {
        this.f67575c = lottieDrawable;
        this.f67576d = aVar;
        this.f67577e = gVar.c();
        this.f67578f = gVar.f();
        p4.d dVarA = gVar.b().a();
        this.f67579g = dVarA;
        aVar.i(dVarA);
        dVarA.a(this);
        p4.d dVarA2 = gVar.d().a();
        this.f67580h = dVarA2;
        aVar.i(dVarA2);
        dVarA2.a(this);
        p4.p pVarB = gVar.e().b();
        this.f67581i = pVarB;
        pVarB.a(aVar);
        pVarB.b(this);
    }

    @Override
    public void a() {
        this.f67575c.invalidateSelf();
    }

    @Override
    public void b(List list, List list2) {
        this.f67582j.b(list, list2);
    }

    @Override
    public void c(r4.d dVar, int i10, List list, r4.d dVar2) {
        x4.k.k(dVar, i10, list, dVar2, this);
        for (int i11 = 0; i11 < this.f67582j.j().size(); i11++) {
            c cVar = (c) this.f67582j.j().get(i11);
            if (cVar instanceof k) {
                x4.k.k(dVar, i10, list, dVar2, (k) cVar);
            }
        }
    }

    @Override
    public void d(Object obj, y4.c cVar) {
        if (this.f67581i.c(obj, cVar)) {
            return;
        }
        if (obj == p0.f17306u) {
            this.f67579g.o(cVar);
        } else if (obj == p0.f17307v) {
            this.f67580h.o(cVar);
        }
    }

    @Override
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        this.f67582j.f(rectF, matrix, z10);
    }

    @Override
    public void g(ListIterator listIterator) {
        if (this.f67582j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add((c) listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f67582j = new d(this.f67575c, this.f67576d, "Repeater", this.f67578f, arrayList, null);
    }

    @Override
    public String getName() {
        return this.f67577e;
    }

    @Override
    public Path getPath() {
        Path path = this.f67582j.getPath();
        this.f67574b.reset();
        float fFloatValue = ((Float) this.f67579g.h()).floatValue();
        float fFloatValue2 = ((Float) this.f67580h.h()).floatValue();
        for (int i10 = ((int) fFloatValue) - 1; i10 >= 0; i10--) {
            this.f67573a.set(this.f67581i.g(i10 + fFloatValue2));
            this.f67574b.addPath(path, this.f67573a);
        }
        return this.f67574b;
    }

    @Override
    public void h(Canvas canvas, Matrix matrix, int i10) {
        float fFloatValue = ((Float) this.f67579g.h()).floatValue();
        float fFloatValue2 = ((Float) this.f67580h.h()).floatValue();
        float fFloatValue3 = ((Float) this.f67581i.i().h()).floatValue() / 100.0f;
        float fFloatValue4 = ((Float) this.f67581i.e().h()).floatValue() / 100.0f;
        for (int i11 = ((int) fFloatValue) - 1; i11 >= 0; i11--) {
            this.f67573a.set(matrix);
            float f10 = i11;
            this.f67573a.preConcat(this.f67581i.g(f10 + fFloatValue2));
            this.f67582j.h(canvas, this.f67573a, (int) (i10 * x4.k.i(fFloatValue3, fFloatValue4, f10 / fFloatValue)));
        }
    }
}
