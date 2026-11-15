package defpackage;

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
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.a;
import java.util.ArrayList;
import java.util.List;

public class nj4 implements u23, ab0.b, vf5 {
    public final String a;
    public final boolean b;
    public final a c;
    public final LongSparseArray d = new LongSparseArray();
    public final LongSparseArray e = new LongSparseArray();
    public final Path f;
    public final Paint g;
    public final RectF h;
    public final List i;
    public final GradientType j;
    public final ab0 k;
    public final ab0 l;
    public final ab0 m;
    public final ab0 n;
    public ab0 o;
    public hnb p;
    public final LottieDrawable q;
    public final int r;
    public ab0 s;
    public float t;
    public n33 u;

    public nj4(LottieDrawable lottieDrawable, ur5 ur5Var, a aVar, mj4 mj4Var) {
        Path path = new Path();
        this.f = path;
        this.g = new ni5(1);
        this.h = new RectF();
        this.i = new ArrayList();
        this.t = 0.0f;
        this.c = aVar;
        this.a = mj4Var.f();
        this.b = mj4Var.i();
        this.q = lottieDrawable;
        this.j = mj4Var.e();
        path.setFillType(mj4Var.c());
        this.r = (int) (ur5Var.d() / 32.0f);
        ab0 ab0VarH = mj4Var.d().h();
        this.k = ab0VarH;
        ab0VarH.a(this);
        aVar.i(ab0VarH);
        ab0 ab0VarH2 = mj4Var.g().h();
        this.l = ab0VarH2;
        ab0VarH2.a(this);
        aVar.i(ab0VarH2);
        ab0 ab0VarH3 = mj4Var.h().h();
        this.m = ab0VarH3;
        ab0VarH3.a(this);
        aVar.i(ab0VarH3);
        ab0 ab0VarH4 = mj4Var.b().h();
        this.n = ab0VarH4;
        ab0VarH4.a(this);
        aVar.i(ab0VarH4);
        if (aVar.w() != null) {
            xy3 xy3VarH = aVar.w().a().h();
            this.s = xy3VarH;
            xy3VarH.a(this);
            aVar.i(this.s);
        }
        if (aVar.y() != null) {
            this.u = new n33(this, aVar, aVar.y());
        }
    }

    private int[] b(int[] iArr) {
        hnb hnbVar = this.p;
        if (hnbVar != null) {
            Integer[] numArr = (Integer[]) hnbVar.h();
            int i = 0;
            if (iArr.length == numArr.length) {
                while (i < iArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i < numArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            }
        }
        return iArr;
    }

    private int i() {
        int iRound = Math.round(this.m.f() * this.r);
        int iRound2 = Math.round(this.n.f() * this.r);
        int iRound3 = Math.round(this.k.f() * this.r);
        int i = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i = i * 31 * iRound2;
        }
        return iRound3 != 0 ? i * 31 * iRound3 : i;
    }

    private LinearGradient j() {
        long jI = i();
        LinearGradient linearGradient = (LinearGradient) this.d.get(jI);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointF = (PointF) this.m.h();
        PointF pointF2 = (PointF) this.n.h();
        jj4 jj4Var = (jj4) this.k.h();
        LinearGradient linearGradient2 = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, b(jj4Var.d()), jj4Var.e(), Shader.TileMode.CLAMP);
        this.d.put(jI, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient k() {
        long jI = i();
        RadialGradient radialGradient = (RadialGradient) this.e.get(jI);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointF = (PointF) this.m.h();
        PointF pointF2 = (PointF) this.n.h();
        jj4 jj4Var = (jj4) this.k.h();
        int[] iArrB = b(jj4Var.d());
        float[] fArrE = jj4Var.e();
        float f = pointF.x;
        float f2 = pointF.y;
        float fHypot = (float) Math.hypot(pointF2.x - f, pointF2.y - f2);
        if (fHypot <= 0.0f) {
            fHypot = 0.001f;
        }
        RadialGradient radialGradient2 = new RadialGradient(f, f2, fHypot, iArrB, fArrE, Shader.TileMode.CLAMP);
        this.e.put(jI, radialGradient2);
        return radialGradient2;
    }

    @Override
    public void a(RectF rectF, Matrix matrix, boolean z) {
        this.f.reset();
        for (int i = 0; i < this.i.size(); i++) {
            this.f.addPath(((by7) this.i.get(i)).getPath(), matrix);
        }
        this.f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override
    public void c(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        xp6.k(tf5Var, i, list, tf5Var2, this);
    }

    @Override
    public void d(Canvas canvas, Matrix matrix, int i) {
        if (this.b) {
            return;
        }
        if (yh5.h()) {
            yh5.b("GradientFillContent#draw");
        }
        this.f.reset();
        for (int i2 = 0; i2 < this.i.size(); i2++) {
            this.f.addPath(((by7) this.i.get(i2)).getPath(), matrix);
        }
        this.f.computeBounds(this.h, false);
        Shader shaderJ = this.j == GradientType.LINEAR ? j() : k();
        shaderJ.setLocalMatrix(matrix);
        this.g.setShader(shaderJ);
        ab0 ab0Var = this.o;
        if (ab0Var != null) {
            this.g.setColorFilter((ColorFilter) ab0Var.h());
        }
        ab0 ab0Var2 = this.s;
        if (ab0Var2 != null) {
            float fFloatValue = ((Float) ab0Var2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.g.setMaskFilter(null);
            } else if (fFloatValue != this.t) {
                this.g.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.t = fFloatValue;
        }
        int iIntValue = (int) ((((i / 255.0f) * ((Integer) this.l.h()).intValue()) / 100.0f) * 255.0f);
        this.g.setAlpha(xp6.c(iIntValue, 0, 255));
        n33 n33Var = this.u;
        if (n33Var != null) {
            n33Var.a(this.g, matrix, plb.l(i, iIntValue));
        }
        canvas.drawPath(this.f, this.g);
        if (yh5.h()) {
            yh5.c("GradientFillContent#draw");
        }
    }

    @Override
    public void e() {
        this.q.invalidateSelf();
    }

    @Override
    public void f(List list, List list2) {
        for (int i = 0; i < list2.size(); i++) {
            bg1 bg1Var = (bg1) list2.get(i);
            if (bg1Var instanceof by7) {
                this.i.add((by7) bg1Var);
            }
        }
    }

    @Override
    public String getName() {
        return this.a;
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        n33 n33Var;
        n33 n33Var2;
        n33 n33Var3;
        n33 n33Var4;
        n33 n33Var5;
        if (obj == it5.d) {
            this.l.o(iu5Var);
            return;
        }
        if (obj == it5.K) {
            ab0 ab0Var = this.o;
            if (ab0Var != null) {
                this.c.H(ab0Var);
            }
            if (iu5Var == null) {
                this.o = null;
                return;
            }
            hnb hnbVar = new hnb(iu5Var);
            this.o = hnbVar;
            hnbVar.a(this);
            this.c.i(this.o);
            return;
        }
        if (obj == it5.L) {
            hnb hnbVar2 = this.p;
            if (hnbVar2 != null) {
                this.c.H(hnbVar2);
            }
            if (iu5Var == null) {
                this.p = null;
                return;
            }
            this.d.clear();
            this.e.clear();
            hnb hnbVar3 = new hnb(iu5Var);
            this.p = hnbVar3;
            hnbVar3.a(this);
            this.c.i(this.p);
            return;
        }
        if (obj == it5.j) {
            ab0 ab0Var2 = this.s;
            if (ab0Var2 != null) {
                ab0Var2.o(iu5Var);
                return;
            }
            hnb hnbVar4 = new hnb(iu5Var);
            this.s = hnbVar4;
            hnbVar4.a(this);
            this.c.i(this.s);
            return;
        }
        if (obj == it5.e && (n33Var5 = this.u) != null) {
            n33Var5.b(iu5Var);
            return;
        }
        if (obj == it5.G && (n33Var4 = this.u) != null) {
            n33Var4.f(iu5Var);
            return;
        }
        if (obj == it5.H && (n33Var3 = this.u) != null) {
            n33Var3.c(iu5Var);
            return;
        }
        if (obj == it5.I && (n33Var2 = this.u) != null) {
            n33Var2.d(iu5Var);
        } else {
            if (obj != it5.J || (n33Var = this.u) == null) {
                return;
            }
            n33Var.g(iu5Var);
        }
    }
}
