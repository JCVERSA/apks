package defpackage;

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
import java.util.ArrayList;
import java.util.List;

public abstract class pc0 implements ab0.b, vf5, u23 {
    public final LottieDrawable e;
    public final com.airbnb.lottie.model.layer.a f;
    public final float[] h;
    public final Paint i;
    public final ab0 j;
    public final ab0 k;
    public final List l;
    public final ab0 m;
    public ab0 n;
    public ab0 o;
    public float p;
    public n33 q;
    public final PathMeasure a = new PathMeasure();
    public final Path b = new Path();
    public final Path c = new Path();
    public final RectF d = new RectF();
    public final List g = new ArrayList();

    public static final class b {
        public final List a;
        public final bab b;

        public b(bab babVar) {
            this.a = new ArrayList();
            this.b = babVar;
        }
    }

    public pc0(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, Paint.Cap cap, Paint.Join join, float f, fc fcVar, dc dcVar, List list, dc dcVar2) {
        ni5 ni5Var = new ni5(1);
        this.i = ni5Var;
        this.p = 0.0f;
        this.e = lottieDrawable;
        this.f = aVar;
        ni5Var.setStyle(Paint.Style.STROKE);
        ni5Var.setStrokeCap(cap);
        ni5Var.setStrokeJoin(join);
        ni5Var.setStrokeMiter(f);
        this.k = fcVar.h();
        this.j = dcVar.h();
        if (dcVar2 == null) {
            this.m = null;
        } else {
            this.m = dcVar2.h();
        }
        this.l = new ArrayList(list.size());
        this.h = new float[list.size()];
        for (int i = 0; i < list.size(); i++) {
            this.l.add(((dc) list.get(i)).h());
        }
        aVar.i(this.k);
        aVar.i(this.j);
        for (int i2 = 0; i2 < this.l.size(); i2++) {
            aVar.i((ab0) this.l.get(i2));
        }
        ab0 ab0Var = this.m;
        if (ab0Var != null) {
            aVar.i(ab0Var);
        }
        this.k.a(this);
        this.j.a(this);
        for (int i3 = 0; i3 < list.size(); i3++) {
            ((ab0) this.l.get(i3)).a(this);
        }
        ab0 ab0Var2 = this.m;
        if (ab0Var2 != null) {
            ab0Var2.a(this);
        }
        if (aVar.w() != null) {
            xy3 xy3VarH = aVar.w().a().h();
            this.o = xy3VarH;
            xy3VarH.a(this);
            aVar.i(this.o);
        }
        if (aVar.y() != null) {
            this.q = new n33(this, aVar, aVar.y());
        }
    }

    @Override
    public void a(RectF rectF, Matrix matrix, boolean z) {
        if (yh5.h()) {
            yh5.b("StrokeContent#getBounds");
        }
        this.b.reset();
        for (int i = 0; i < this.g.size(); i++) {
            b bVar = (b) this.g.get(i);
            for (int i2 = 0; i2 < bVar.a.size(); i2++) {
                this.b.addPath(((by7) bVar.a.get(i2)).getPath(), matrix);
            }
        }
        this.b.computeBounds(this.d, false);
        float fQ = ((xy3) this.j).q();
        RectF rectF2 = this.d;
        float f = fQ / 2.0f;
        rectF2.set(rectF2.left - f, rectF2.top - f, rectF2.right + f, rectF2.bottom + f);
        rectF.set(this.d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        if (yh5.h()) {
            yh5.c("StrokeContent#getBounds");
        }
    }

    public final void b() {
        if (yh5.h()) {
            yh5.b("StrokeContent#applyDashPattern");
        }
        if (this.l.isEmpty()) {
            if (yh5.h()) {
                yh5.c("StrokeContent#applyDashPattern");
                return;
            }
            return;
        }
        for (int i = 0; i < this.l.size(); i++) {
            this.h[i] = ((Float) ((ab0) this.l.get(i)).h()).floatValue();
            if (i % 2 == 0) {
                float[] fArr = this.h;
                if (fArr[i] < 1.0f) {
                    fArr[i] = 1.0f;
                }
            } else {
                float[] fArr2 = this.h;
                if (fArr2[i] < 0.1f) {
                    fArr2[i] = 0.1f;
                }
            }
        }
        ab0 ab0Var = this.m;
        this.i.setPathEffect(new DashPathEffect(this.h, ab0Var == null ? 0.0f : ((Float) ab0Var.h()).floatValue()));
        if (yh5.h()) {
            yh5.c("StrokeContent#applyDashPattern");
        }
    }

    @Override
    public void c(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        xp6.k(tf5Var, i, list, tf5Var2, this);
    }

    public void d(Canvas canvas, Matrix matrix, int i) {
        if (yh5.h()) {
            yh5.b("StrokeContent#draw");
        }
        if (plb.h(matrix)) {
            if (yh5.h()) {
                yh5.c("StrokeContent#draw");
                return;
            }
            return;
        }
        int iQ = (int) ((((i / 255.0f) * ((c25) this.k).q()) / 100.0f) * 255.0f);
        this.i.setAlpha(xp6.c(iQ, 0, 255));
        this.i.setStrokeWidth(((xy3) this.j).q());
        if (this.i.getStrokeWidth() <= 0.0f) {
            if (yh5.h()) {
                yh5.c("StrokeContent#draw");
                return;
            }
            return;
        }
        b();
        ab0 ab0Var = this.n;
        if (ab0Var != null) {
            this.i.setColorFilter((ColorFilter) ab0Var.h());
        }
        ab0 ab0Var2 = this.o;
        if (ab0Var2 != null) {
            float fFloatValue = ((Float) ab0Var2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.i.setMaskFilter(null);
            } else if (fFloatValue != this.p) {
                this.i.setMaskFilter(this.f.x(fFloatValue));
            }
            this.p = fFloatValue;
        }
        n33 n33Var = this.q;
        if (n33Var != null) {
            n33Var.a(this.i, matrix, plb.l(i, iQ));
        }
        canvas.save();
        canvas.concat(matrix);
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            b bVar = (b) this.g.get(i2);
            if (bVar.b != null) {
                i(canvas, bVar);
            } else {
                if (yh5.h()) {
                    yh5.b("StrokeContent#buildPath");
                }
                this.b.reset();
                for (int size = bVar.a.size() - 1; size >= 0; size--) {
                    this.b.addPath(((by7) bVar.a.get(size)).getPath());
                }
                if (yh5.h()) {
                    yh5.c("StrokeContent#buildPath");
                    yh5.b("StrokeContent#drawPath");
                }
                canvas.drawPath(this.b, this.i);
                if (yh5.h()) {
                    yh5.c("StrokeContent#drawPath");
                }
            }
        }
        canvas.restore();
        if (yh5.h()) {
            yh5.c("StrokeContent#draw");
        }
    }

    @Override
    public void e() {
        this.e.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    /* JADX WARN: Code duplicated, block: B:23:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0069 A[SYNTHETIC] */
    @Override
    public void f(List list, List list2) {
        bab babVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            bg1 bg1Var = (bg1) list.get(size);
            if (bg1Var instanceof bab) {
                bab babVar2 = (bab) bg1Var;
                if (babVar2.j() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    babVar = babVar2;
                }
            }
        }
        if (babVar != null) {
            babVar.b(this);
        }
        b bVar = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            bg1 bg1Var2 = (bg1) list2.get(size2);
            if (bg1Var2 instanceof bab) {
                bab babVar3 = (bab) bg1Var2;
                if (babVar3.j() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    if (bVar != null) {
                        this.g.add(bVar);
                    }
                    bVar = new b(babVar3);
                    babVar3.b(this);
                } else if (!(bg1Var2 instanceof by7)) {
                    if (bVar == null) {
                        bVar = new b(babVar);
                    }
                    bVar.a.add((by7) bg1Var2);
                }
            } else if (!(bg1Var2 instanceof by7)) {
                if (bVar == null) {
                    bVar = new b(babVar);
                }
                bVar.a.add((by7) bg1Var2);
            }
        }
        if (bVar != null) {
            this.g.add(bVar);
        }
    }

    public void h(Object obj, iu5 iu5Var) {
        n33 n33Var;
        n33 n33Var2;
        n33 n33Var3;
        n33 n33Var4;
        n33 n33Var5;
        if (obj == it5.d) {
            this.k.o(iu5Var);
            return;
        }
        if (obj == it5.s) {
            this.j.o(iu5Var);
            return;
        }
        if (obj == it5.K) {
            ab0 ab0Var = this.n;
            if (ab0Var != null) {
                this.f.H(ab0Var);
            }
            if (iu5Var == null) {
                this.n = null;
                return;
            }
            hnb hnbVar = new hnb(iu5Var);
            this.n = hnbVar;
            hnbVar.a(this);
            this.f.i(this.n);
            return;
        }
        if (obj == it5.j) {
            ab0 ab0Var2 = this.o;
            if (ab0Var2 != null) {
                ab0Var2.o(iu5Var);
                return;
            }
            hnb hnbVar2 = new hnb(iu5Var);
            this.o = hnbVar2;
            hnbVar2.a(this);
            this.f.i(this.o);
            return;
        }
        if (obj == it5.e && (n33Var5 = this.q) != null) {
            n33Var5.b(iu5Var);
            return;
        }
        if (obj == it5.G && (n33Var4 = this.q) != null) {
            n33Var4.f(iu5Var);
            return;
        }
        if (obj == it5.H && (n33Var3 = this.q) != null) {
            n33Var3.c(iu5Var);
            return;
        }
        if (obj == it5.I && (n33Var2 = this.q) != null) {
            n33Var2.d(iu5Var);
        } else {
            if (obj != it5.J || (n33Var = this.q) == null) {
                return;
            }
            n33Var.g(iu5Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0123  */
    public final void i(Canvas canvas, b bVar) {
        float f;
        if (yh5.h()) {
            yh5.b("StrokeContent#applyTrimPath");
        }
        if (bVar.b == null) {
            if (yh5.h()) {
                yh5.c("StrokeContent#applyTrimPath");
                return;
            }
            return;
        }
        this.b.reset();
        for (int size = bVar.a.size() - 1; size >= 0; size--) {
            this.b.addPath(((by7) bVar.a.get(size)).getPath());
        }
        float fFloatValue = ((Float) bVar.b.i().h()).floatValue() / 100.0f;
        float fFloatValue2 = ((Float) bVar.b.c().h()).floatValue() / 100.0f;
        float fFloatValue3 = ((Float) bVar.b.h().h()).floatValue() / 360.0f;
        if (fFloatValue < 0.01f && fFloatValue2 > 0.99f) {
            canvas.drawPath(this.b, this.i);
            if (yh5.h()) {
                yh5.c("StrokeContent#applyTrimPath");
                return;
            }
            return;
        }
        this.a.setPath(this.b, false);
        float length = this.a.getLength();
        while (this.a.nextContour()) {
            length += this.a.getLength();
        }
        float f2 = fFloatValue3 * length;
        float f3 = (fFloatValue * length) + f2;
        float fMin = Math.min((fFloatValue2 * length) + f2, (f3 + length) - 1.0f);
        float f4 = 0.0f;
        for (int size2 = bVar.a.size() - 1; size2 >= 0; size2--) {
            this.c.set(((by7) bVar.a.get(size2)).getPath());
            this.a.setPath(this.c, false);
            float length2 = this.a.getLength();
            if (fMin > length) {
                float f5 = fMin - length;
                if (f5 >= f4 + length2 || f4 >= f5) {
                    f = f4 + length2;
                    if (f < f3 && f4 <= fMin) {
                        if (f > fMin || f3 >= f4) {
                            plb.a(this.c, f3 < f4 ? 0.0f : (f3 - f4) / length2, fMin > f ? 1.0f : (fMin - f4) / length2, 0.0f);
                            canvas.drawPath(this.c, this.i);
                        } else {
                            canvas.drawPath(this.c, this.i);
                        }
                    }
                } else {
                    plb.a(this.c, f3 > length ? (f3 - length) / length2 : 0.0f, Math.min(f5 / length2, 1.0f), 0.0f);
                    canvas.drawPath(this.c, this.i);
                }
            } else {
                f = f4 + length2;
                if (f < f3) {
                }
            }
            f4 += length2;
        }
        if (yh5.h()) {
            yh5.c("StrokeContent#applyTrimPath");
        }
    }
}
