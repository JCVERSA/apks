package o4;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.x;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.List;

public class h implements e, p4.a.b, k {

    private final String f67506a;

    private final boolean f67507b;

    private final com.airbnb.lottie.model.layer.a f67508c;

    private final x f67509d = new x();

    private final x f67510e = new x();

    private final Path f67511f;

    private final Paint f67512g;

    private final RectF f67513h;

    private final List f67514i;

    private final GradientType f67515j;

    private final p4.a f67516k;

    private final p4.a f67517l;

    private final p4.a f67518m;

    private final p4.a f67519n;

    private p4.a f67520o;

    private p4.q f67521p;

    private final LottieDrawable f67522q;

    private final int f67523r;

    private p4.a f67524s;

    float f67525t;

    private p4.c f67526u;

    public h(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, t4.e eVar) {
        Path path = new Path();
        this.f67511f = path;
        this.f67512g = new n4.a(1);
        this.f67513h = new RectF();
        this.f67514i = new ArrayList();
        this.f67525t = 0.0f;
        this.f67508c = aVar;
        this.f67506a = eVar.f();
        this.f67507b = eVar.i();
        this.f67522q = lottieDrawable;
        this.f67515j = eVar.e();
        path.setFillType(eVar.c());
        this.f67523r = (int) (hVar.d() / 32.0f);
        p4.a aVarA = eVar.d().a();
        this.f67516k = aVarA;
        aVarA.a(this);
        aVar.i(aVarA);
        p4.a aVarA2 = eVar.g().a();
        this.f67517l = aVarA2;
        aVarA2.a(this);
        aVar.i(aVarA2);
        p4.a aVarA3 = eVar.h().a();
        this.f67518m = aVarA3;
        aVarA3.a(this);
        aVar.i(aVarA3);
        p4.a aVarA4 = eVar.b().a();
        this.f67519n = aVarA4;
        aVarA4.a(this);
        aVar.i(aVarA4);
        if (aVar.w() != null) {
            p4.d dVarA = aVar.w().a().a();
            this.f67524s = dVarA;
            dVarA.a(this);
            aVar.i(this.f67524s);
        }
        if (aVar.y() != null) {
            this.f67526u = new p4.c(this, aVar, aVar.y());
        }
    }

    private int[] g(int[] iArr) {
        p4.q qVar = this.f67521p;
        if (qVar != null) {
            Integer[] numArr = (Integer[]) qVar.h();
            int i10 = 0;
            if (iArr.length == numArr.length) {
                while (i10 < iArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i10 < numArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            }
        }
        return iArr;
    }

    private int i() {
        int iRound = Math.round(this.f67518m.f() * this.f67523r);
        int iRound2 = Math.round(this.f67519n.f() * this.f67523r);
        int iRound3 = Math.round(this.f67516k.f() * this.f67523r);
        int i10 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    private LinearGradient j() {
        long jI = i();
        LinearGradient linearGradient = (LinearGradient) this.f67509d.e(jI);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointF = (PointF) this.f67518m.h();
        PointF pointF2 = (PointF) this.f67519n.h();
        t4.d dVar = (t4.d) this.f67516k.h();
        LinearGradient linearGradient2 = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, g(dVar.d()), dVar.e(), Shader.TileMode.CLAMP);
        this.f67509d.k(jI, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient k() {
        long jI = i();
        RadialGradient radialGradient = (RadialGradient) this.f67510e.e(jI);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointF = (PointF) this.f67518m.h();
        PointF pointF2 = (PointF) this.f67519n.h();
        t4.d dVar = (t4.d) this.f67516k.h();
        int[] iArrG = g(dVar.d());
        float[] fArrE = dVar.e();
        float f10 = pointF.x;
        float f11 = pointF.y;
        float fHypot = (float) Math.hypot(pointF2.x - f10, pointF2.y - f11);
        if (fHypot <= 0.0f) {
            fHypot = 0.001f;
        }
        RadialGradient radialGradient2 = new RadialGradient(f10, f11, fHypot, iArrG, fArrE, Shader.TileMode.CLAMP);
        this.f67510e.k(jI, radialGradient2);
        return radialGradient2;
    }

    @Override
    public void a() {
        this.f67522q.invalidateSelf();
    }

    @Override
    public void b(List list, List list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = (c) list2.get(i10);
            if (cVar instanceof m) {
                this.f67514i.add((m) cVar);
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
        if (obj == p0.f17289d) {
            this.f67517l.o(cVar);
            return;
        }
        if (obj == p0.K) {
            p4.a aVar = this.f67520o;
            if (aVar != null) {
                this.f67508c.H(aVar);
            }
            if (cVar == null) {
                this.f67520o = null;
                return;
            }
            p4.q qVar = new p4.q(cVar);
            this.f67520o = qVar;
            qVar.a(this);
            this.f67508c.i(this.f67520o);
            return;
        }
        if (obj == p0.L) {
            p4.q qVar2 = this.f67521p;
            if (qVar2 != null) {
                this.f67508c.H(qVar2);
            }
            if (cVar == null) {
                this.f67521p = null;
                return;
            }
            this.f67509d.b();
            this.f67510e.b();
            p4.q qVar3 = new p4.q(cVar);
            this.f67521p = qVar3;
            qVar3.a(this);
            this.f67508c.i(this.f67521p);
            return;
        }
        if (obj == p0.f17295j) {
            p4.a aVar2 = this.f67524s;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            p4.q qVar4 = new p4.q(cVar);
            this.f67524s = qVar4;
            qVar4.a(this);
            this.f67508c.i(this.f67524s);
            return;
        }
        if (obj == p0.f17290e && (cVar6 = this.f67526u) != null) {
            cVar6.c(cVar);
            return;
        }
        if (obj == p0.G && (cVar5 = this.f67526u) != null) {
            cVar5.f(cVar);
            return;
        }
        if (obj == p0.H && (cVar4 = this.f67526u) != null) {
            cVar4.d(cVar);
            return;
        }
        if (obj == p0.I && (cVar3 = this.f67526u) != null) {
            cVar3.e(cVar);
        } else {
            if (obj != p0.J || (cVar2 = this.f67526u) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }

    @Override
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        this.f67511f.reset();
        for (int i10 = 0; i10 < this.f67514i.size(); i10++) {
            this.f67511f.addPath(((m) this.f67514i.get(i10)).getPath(), matrix);
        }
        this.f67511f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override
    public String getName() {
        return this.f67506a;
    }

    @Override
    public void h(Canvas canvas, Matrix matrix, int i10) {
        if (this.f67507b) {
            return;
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("GradientFillContent#draw");
        }
        this.f67511f.reset();
        for (int i11 = 0; i11 < this.f67514i.size(); i11++) {
            this.f67511f.addPath(((m) this.f67514i.get(i11)).getPath(), matrix);
        }
        this.f67511f.computeBounds(this.f67513h, false);
        Shader shaderJ = this.f67515j == GradientType.LINEAR ? j() : k();
        shaderJ.setLocalMatrix(matrix);
        this.f67512g.setShader(shaderJ);
        p4.a aVar = this.f67520o;
        if (aVar != null) {
            this.f67512g.setColorFilter((ColorFilter) aVar.h());
        }
        p4.a aVar2 = this.f67524s;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f67512g.setMaskFilter(null);
            } else if (fFloatValue != this.f67525t) {
                this.f67512g.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.f67525t = fFloatValue;
        }
        int iIntValue = (int) ((((i10 / 255.0f) * ((Integer) this.f67517l.h()).intValue()) / 100.0f) * 255.0f);
        this.f67512g.setAlpha(x4.k.c(iIntValue, 0, 255));
        p4.c cVar = this.f67526u;
        if (cVar != null) {
            cVar.b(this.f67512g, matrix, x4.l.l(i10, iIntValue));
        }
        canvas.drawPath(this.f67511f, this.f67512g);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("GradientFillContent#draw");
        }
    }
}
