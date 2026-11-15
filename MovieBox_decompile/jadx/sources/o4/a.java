package o4;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.List;

public abstract class a implements p4.a.b, k, e {

    private final LottieDrawable f67458e;

    protected final com.airbnb.lottie.model.layer.a f67459f;

    private final float[] f67461h;

    final Paint f67462i;

    private final p4.a f67463j;

    private final p4.a f67464k;

    private final List f67465l;

    private final p4.a f67466m;

    private p4.a f67467n;

    private p4.a f67468o;

    float f67469p;

    private p4.c f67470q;

    private final PathMeasure f67454a = new PathMeasure();

    private final Path f67455b = new Path();

    private final Path f67456c = new Path();

    private final RectF f67457d = new RectF();

    private final List f67460g = new ArrayList();

    private static final class b {

        private final List f67471a;

        private final u f67472b;

        private b(u uVar) {
            this.f67471a = new ArrayList();
            this.f67472b = uVar;
        }
    }

    a(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, Paint.Cap cap, Paint.Join join, float f10, s4.d dVar, s4.b bVar, List list, s4.b bVar2) {
        n4.a aVar2 = new n4.a(1);
        this.f67462i = aVar2;
        this.f67469p = 0.0f;
        this.f67458e = lottieDrawable;
        this.f67459f = aVar;
        aVar2.setStyle(Paint.Style.STROKE);
        aVar2.setStrokeCap(cap);
        aVar2.setStrokeJoin(join);
        aVar2.setStrokeMiter(f10);
        this.f67464k = dVar.a();
        this.f67463j = bVar.a();
        if (bVar2 == null) {
            this.f67466m = null;
        } else {
            this.f67466m = bVar2.a();
        }
        this.f67465l = new ArrayList(list.size());
        this.f67461h = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f67465l.add(((s4.b) list.get(i10)).a());
        }
        aVar.i(this.f67464k);
        aVar.i(this.f67463j);
        for (int i11 = 0; i11 < this.f67465l.size(); i11++) {
            aVar.i((p4.a) this.f67465l.get(i11));
        }
        p4.a aVar3 = this.f67466m;
        if (aVar3 != null) {
            aVar.i(aVar3);
        }
        this.f67464k.a(this);
        this.f67463j.a(this);
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((p4.a) this.f67465l.get(i12)).a(this);
        }
        p4.a aVar4 = this.f67466m;
        if (aVar4 != null) {
            aVar4.a(this);
        }
        if (aVar.w() != null) {
            p4.d dVarA = aVar.w().a().a();
            this.f67468o = dVarA;
            dVarA.a(this);
            aVar.i(this.f67468o);
        }
        if (aVar.y() != null) {
            this.f67470q = new p4.c(this, aVar, aVar.y());
        }
    }

    private void g(Matrix matrix) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("StrokeContent#applyDashPattern");
        }
        if (this.f67465l.isEmpty()) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("StrokeContent#applyDashPattern");
                return;
            }
            return;
        }
        float fG = x4.l.g(matrix);
        for (int i10 = 0; i10 < this.f67465l.size(); i10++) {
            this.f67461h[i10] = ((Float) ((p4.a) this.f67465l.get(i10)).h()).floatValue();
            if (i10 % 2 == 0) {
                float[] fArr = this.f67461h;
                if (fArr[i10] < 1.0f) {
                    fArr[i10] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f67461h;
                if (fArr2[i10] < 0.1f) {
                    fArr2[i10] = 0.1f;
                }
            }
            float[] fArr3 = this.f67461h;
            fArr3[i10] = fArr3[i10] * fG;
        }
        p4.a aVar = this.f67466m;
        this.f67462i.setPathEffect(new DashPathEffect(this.f67461h, aVar == null ? 0.0f : fG * ((Float) aVar.h()).floatValue()));
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("StrokeContent#applyDashPattern");
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x012e  */
    private void i(Canvas canvas, b bVar, Matrix matrix) {
        float f10;
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("StrokeContent#applyTrimPath");
        }
        if (bVar.f67472b == null) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("StrokeContent#applyTrimPath");
                return;
            }
            return;
        }
        this.f67455b.reset();
        for (int size = bVar.f67471a.size() - 1; size >= 0; size--) {
            this.f67455b.addPath(((m) bVar.f67471a.get(size)).getPath(), matrix);
        }
        float fFloatValue = ((Float) bVar.f67472b.i().h()).floatValue() / 100.0f;
        float fFloatValue2 = ((Float) bVar.f67472b.d().h()).floatValue() / 100.0f;
        float fFloatValue3 = ((Float) bVar.f67472b.g().h()).floatValue() / 360.0f;
        if (fFloatValue < 0.01f && fFloatValue2 > 0.99f) {
            canvas.drawPath(this.f67455b, this.f67462i);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("StrokeContent#applyTrimPath");
                return;
            }
            return;
        }
        this.f67454a.setPath(this.f67455b, false);
        float length = this.f67454a.getLength();
        while (this.f67454a.nextContour()) {
            length += this.f67454a.getLength();
        }
        float f11 = fFloatValue3 * length;
        float f12 = (fFloatValue * length) + f11;
        float fMin = Math.min((fFloatValue2 * length) + f11, (f12 + length) - 1.0f);
        float f13 = 0.0f;
        for (int size2 = bVar.f67471a.size() - 1; size2 >= 0; size2--) {
            this.f67456c.set(((m) bVar.f67471a.get(size2)).getPath());
            this.f67456c.transform(matrix);
            this.f67454a.setPath(this.f67456c, false);
            float length2 = this.f67454a.getLength();
            if (fMin > length) {
                float f14 = fMin - length;
                if (f14 >= f13 + length2 || f13 >= f14) {
                    f10 = f13 + length2;
                    if (f10 < f12 && f13 <= fMin) {
                        if (f10 > fMin || f12 >= f13) {
                            x4.l.a(this.f67456c, f12 < f13 ? 0.0f : (f12 - f13) / length2, fMin > f10 ? 1.0f : (fMin - f13) / length2, 0.0f);
                            canvas.drawPath(this.f67456c, this.f67462i);
                        } else {
                            canvas.drawPath(this.f67456c, this.f67462i);
                        }
                    }
                } else {
                    x4.l.a(this.f67456c, f12 > length ? (f12 - length) / length2 : 0.0f, Math.min(f14 / length2, 1.0f), 0.0f);
                    canvas.drawPath(this.f67456c, this.f67462i);
                }
            } else {
                f10 = f13 + length2;
                if (f10 < f12) {
                }
            }
            f13 += length2;
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("StrokeContent#applyTrimPath");
        }
    }

    @Override
    public void a() {
        this.f67458e.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    /* JADX WARN: Code duplicated, block: B:23:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0069 A[SYNTHETIC] */
    @Override
    public void b(List list, List list2) {
        u uVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = (c) list.get(size);
            if (cVar instanceof u) {
                u uVar2 = (u) cVar;
                if (uVar2.j() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    uVar = uVar2;
                }
            }
        }
        if (uVar != null) {
            uVar.c(this);
        }
        b bVar = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            c cVar2 = (c) list2.get(size2);
            if (cVar2 instanceof u) {
                u uVar3 = (u) cVar2;
                if (uVar3.j() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    if (bVar != null) {
                        this.f67460g.add(bVar);
                    }
                    bVar = new b(uVar3);
                    uVar3.c(this);
                } else if (!(cVar2 instanceof m)) {
                    if (bVar == null) {
                        bVar = new b(uVar);
                    }
                    bVar.f67471a.add((m) cVar2);
                }
            } else if (!(cVar2 instanceof m)) {
                if (bVar == null) {
                    bVar = new b(uVar);
                }
                bVar.f67471a.add((m) cVar2);
            }
        }
        if (bVar != null) {
            this.f67460g.add(bVar);
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
        if (obj == p0.f17289d) {
            this.f67464k.o(cVar);
            return;
        }
        if (obj == p0.f17304s) {
            this.f67463j.o(cVar);
            return;
        }
        if (obj == p0.K) {
            p4.a aVar = this.f67467n;
            if (aVar != null) {
                this.f67459f.H(aVar);
            }
            if (cVar == null) {
                this.f67467n = null;
                return;
            }
            p4.q qVar = new p4.q(cVar);
            this.f67467n = qVar;
            qVar.a(this);
            this.f67459f.i(this.f67467n);
            return;
        }
        if (obj == p0.f17295j) {
            p4.a aVar2 = this.f67468o;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            p4.q qVar2 = new p4.q(cVar);
            this.f67468o = qVar2;
            qVar2.a(this);
            this.f67459f.i(this.f67468o);
            return;
        }
        if (obj == p0.f17290e && (cVar6 = this.f67470q) != null) {
            cVar6.c(cVar);
            return;
        }
        if (obj == p0.G && (cVar5 = this.f67470q) != null) {
            cVar5.f(cVar);
            return;
        }
        if (obj == p0.H && (cVar4 = this.f67470q) != null) {
            cVar4.d(cVar);
            return;
        }
        if (obj == p0.I && (cVar3 = this.f67470q) != null) {
            cVar3.e(cVar);
        } else {
            if (obj != p0.J || (cVar2 = this.f67470q) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }

    @Override
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("StrokeContent#getBounds");
        }
        this.f67455b.reset();
        for (int i10 = 0; i10 < this.f67460g.size(); i10++) {
            b bVar = (b) this.f67460g.get(i10);
            for (int i11 = 0; i11 < bVar.f67471a.size(); i11++) {
                this.f67455b.addPath(((m) bVar.f67471a.get(i11)).getPath(), matrix);
            }
        }
        this.f67455b.computeBounds(this.f67457d, false);
        float fQ = ((p4.d) this.f67463j).q();
        RectF rectF2 = this.f67457d;
        float f10 = fQ / 2.0f;
        rectF2.set(rectF2.left - f10, rectF2.top - f10, rectF2.right + f10, rectF2.bottom + f10);
        rectF.set(this.f67457d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("StrokeContent#getBounds");
        }
    }

    @Override
    public void h(Canvas canvas, Matrix matrix, int i10) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("StrokeContent#draw");
        }
        if (x4.l.h(matrix)) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("StrokeContent#draw");
                return;
            }
            return;
        }
        int iQ = (int) ((((i10 / 255.0f) * ((p4.f) this.f67464k).q()) / 100.0f) * 255.0f);
        this.f67462i.setAlpha(x4.k.c(iQ, 0, 255));
        this.f67462i.setStrokeWidth(((p4.d) this.f67463j).q() * x4.l.g(matrix));
        if (this.f67462i.getStrokeWidth() <= 0.0f) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("StrokeContent#draw");
                return;
            }
            return;
        }
        g(matrix);
        p4.a aVar = this.f67467n;
        if (aVar != null) {
            this.f67462i.setColorFilter((ColorFilter) aVar.h());
        }
        p4.a aVar2 = this.f67468o;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f67462i.setMaskFilter(null);
            } else if (fFloatValue != this.f67469p) {
                this.f67462i.setMaskFilter(this.f67459f.x(fFloatValue));
            }
            this.f67469p = fFloatValue;
        }
        p4.c cVar = this.f67470q;
        if (cVar != null) {
            cVar.b(this.f67462i, matrix, x4.l.l(i10, iQ));
        }
        for (int i11 = 0; i11 < this.f67460g.size(); i11++) {
            b bVar = (b) this.f67460g.get(i11);
            if (bVar.f67472b != null) {
                i(canvas, bVar, matrix);
            } else {
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.b("StrokeContent#buildPath");
                }
                this.f67455b.reset();
                for (int size = bVar.f67471a.size() - 1; size >= 0; size--) {
                    this.f67455b.addPath(((m) bVar.f67471a.get(size)).getPath(), matrix);
                }
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.c("StrokeContent#buildPath");
                    com.airbnb.lottie.d.b("StrokeContent#drawPath");
                }
                canvas.drawPath(this.f67455b, this.f67462i);
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.c("StrokeContent#drawPath");
                }
            }
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("StrokeContent#draw");
        }
    }
}
