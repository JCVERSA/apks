package o4;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.List;

public class g implements e, p4.a.b, k {

    private final Path f67493a;

    private final Paint f67494b;

    private final com.airbnb.lottie.model.layer.a f67495c;

    private final String f67496d;

    private final boolean f67497e;

    private final List f67498f;

    private final p4.a f67499g;

    private final p4.a f67500h;

    private p4.a f67501i;

    private final LottieDrawable f67502j;

    private p4.a f67503k;

    float f67504l;

    private p4.c f67505m;

    public g(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, t4.j jVar) {
        Path path = new Path();
        this.f67493a = path;
        this.f67494b = new n4.a(1);
        this.f67498f = new ArrayList();
        this.f67495c = aVar;
        this.f67496d = jVar.d();
        this.f67497e = jVar.f();
        this.f67502j = lottieDrawable;
        if (aVar.w() != null) {
            p4.d dVarA = aVar.w().a().a();
            this.f67503k = dVarA;
            dVarA.a(this);
            aVar.i(this.f67503k);
        }
        if (aVar.y() != null) {
            this.f67505m = new p4.c(this, aVar, aVar.y());
        }
        if (jVar.b() == null || jVar.e() == null) {
            this.f67499g = null;
            this.f67500h = null;
            return;
        }
        path.setFillType(jVar.c());
        p4.a aVarA = jVar.b().a();
        this.f67499g = aVarA;
        aVarA.a(this);
        aVar.i(aVarA);
        p4.a aVarA2 = jVar.e().a();
        this.f67500h = aVarA2;
        aVarA2.a(this);
        aVar.i(aVarA2);
    }

    @Override
    public void a() {
        this.f67502j.invalidateSelf();
    }

    @Override
    public void b(List list, List list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = (c) list2.get(i10);
            if (cVar instanceof m) {
                this.f67498f.add((m) cVar);
            }
        }
    }

    @Override
    public void c(r4.d dVar, int i10, List list, r4.d dVar2) {
        x4.k.k(dVar, i10, list, dVar2, this);
    }

    @Override
    public void d(Object obj, y4.c cVar) {
        p4.c cVar2;
        p4.c cVar3;
        p4.c cVar4;
        p4.c cVar5;
        p4.c cVar6;
        if (obj == p0.f17286a) {
            this.f67499g.o(cVar);
            return;
        }
        if (obj == p0.f17289d) {
            this.f67500h.o(cVar);
            return;
        }
        if (obj == p0.K) {
            p4.a aVar = this.f67501i;
            if (aVar != null) {
                this.f67495c.H(aVar);
            }
            if (cVar == null) {
                this.f67501i = null;
                return;
            }
            p4.q qVar = new p4.q(cVar);
            this.f67501i = qVar;
            qVar.a(this);
            this.f67495c.i(this.f67501i);
            return;
        }
        if (obj == p0.f17295j) {
            p4.a aVar2 = this.f67503k;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            p4.q qVar2 = new p4.q(cVar);
            this.f67503k = qVar2;
            qVar2.a(this);
            this.f67495c.i(this.f67503k);
            return;
        }
        if (obj == p0.f17290e && (cVar6 = this.f67505m) != null) {
            cVar6.c(cVar);
            return;
        }
        if (obj == p0.G && (cVar5 = this.f67505m) != null) {
            cVar5.f(cVar);
            return;
        }
        if (obj == p0.H && (cVar4 = this.f67505m) != null) {
            cVar4.d(cVar);
            return;
        }
        if (obj == p0.I && (cVar3 = this.f67505m) != null) {
            cVar3.e(cVar);
        } else {
            if (obj != p0.J || (cVar2 = this.f67505m) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }

    @Override
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        this.f67493a.reset();
        for (int i10 = 0; i10 < this.f67498f.size(); i10++) {
            this.f67493a.addPath(((m) this.f67498f.get(i10)).getPath(), matrix);
        }
        this.f67493a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override
    public String getName() {
        return this.f67496d;
    }

    @Override
    public void h(Canvas canvas, Matrix matrix, int i10) {
        if (this.f67497e) {
            return;
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("FillContent#draw");
        }
        int iQ = ((p4.b) this.f67499g).q();
        int iIntValue = (int) ((((i10 / 255.0f) * ((Integer) this.f67500h.h()).intValue()) / 100.0f) * 255.0f);
        this.f67494b.setColor((iQ & 16777215) | (x4.k.c(iIntValue, 0, 255) << 24));
        p4.a aVar = this.f67501i;
        if (aVar != null) {
            this.f67494b.setColorFilter((ColorFilter) aVar.h());
        }
        p4.a aVar2 = this.f67503k;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f67494b.setMaskFilter(null);
            } else if (fFloatValue != this.f67504l) {
                this.f67494b.setMaskFilter(this.f67495c.x(fFloatValue));
            }
            this.f67504l = fFloatValue;
        }
        p4.c cVar = this.f67505m;
        if (cVar != null) {
            cVar.b(this.f67494b, matrix, x4.l.l(i10, iIntValue));
        }
        this.f67493a.reset();
        for (int i11 = 0; i11 < this.f67498f.size(); i11++) {
            this.f67493a.addPath(((m) this.f67498f.get(i11)).getPath(), matrix);
        }
        canvas.drawPath(this.f67493a, this.f67494b);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("FillContent#draw");
        }
    }
}
