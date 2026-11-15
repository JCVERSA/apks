package defpackage;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.a;

public class pj4 extends pc0 {
    public final ab0 A;
    public hnb B;
    public final String r;
    public final boolean s;
    public final LongSparseArray t;
    public final LongSparseArray u;
    public final RectF v;
    public final GradientType w;
    public final int x;
    public final ab0 y;
    public final ab0 z;

    public pj4(LottieDrawable lottieDrawable, a aVar, com.airbnb.lottie.model.content.a aVar2) {
        super(lottieDrawable, aVar, aVar2.b().toPaintCap(), aVar2.g().toPaintJoin(), aVar2.i(), aVar2.k(), aVar2.m(), aVar2.h(), aVar2.c());
        this.t = new LongSparseArray();
        this.u = new LongSparseArray();
        this.v = new RectF();
        this.r = aVar2.j();
        this.w = aVar2.f();
        this.s = aVar2.n();
        this.x = (int) (lottieDrawable.O().d() / 32.0f);
        ab0 ab0VarH = aVar2.e().h();
        this.y = ab0VarH;
        ab0VarH.a(this);
        aVar.i(ab0VarH);
        ab0 ab0VarH2 = aVar2.l().h();
        this.z = ab0VarH2;
        ab0VarH2.a(this);
        aVar.i(ab0VarH2);
        ab0 ab0VarH3 = aVar2.d().h();
        this.A = ab0VarH3;
        ab0VarH3.a(this);
        aVar.i(ab0VarH3);
    }

    @Override
    public void d(Canvas canvas, Matrix matrix, int i) {
        if (this.s) {
            return;
        }
        a(this.v, matrix, false);
        this.i.setShader(this.w == GradientType.LINEAR ? l() : m());
        super.d(canvas, matrix, i);
    }

    @Override
    public String getName() {
        return this.r;
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        super.h(obj, iu5Var);
        if (obj == it5.L) {
            hnb hnbVar = this.B;
            if (hnbVar != null) {
                this.f.H(hnbVar);
            }
            if (iu5Var == null) {
                this.B = null;
                return;
            }
            hnb hnbVar2 = new hnb(iu5Var);
            this.B = hnbVar2;
            hnbVar2.a(this);
            this.f.i(this.B);
        }
    }

    public final int[] j(int[] iArr) {
        hnb hnbVar = this.B;
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

    public final int k() {
        int iRound = Math.round(this.z.f() * this.x);
        int iRound2 = Math.round(this.A.f() * this.x);
        int iRound3 = Math.round(this.y.f() * this.x);
        int i = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i = i * 31 * iRound2;
        }
        return iRound3 != 0 ? i * 31 * iRound3 : i;
    }

    public final LinearGradient l() {
        long jK = k();
        LinearGradient linearGradient = (LinearGradient) this.t.get(jK);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointF = (PointF) this.z.h();
        PointF pointF2 = (PointF) this.A.h();
        jj4 jj4Var = (jj4) this.y.h();
        LinearGradient linearGradient2 = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, j(jj4Var.d()), jj4Var.e(), Shader.TileMode.CLAMP);
        this.t.put(jK, linearGradient2);
        return linearGradient2;
    }

    public final RadialGradient m() {
        long jK = k();
        RadialGradient radialGradient = (RadialGradient) this.u.get(jK);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointF = (PointF) this.z.h();
        PointF pointF2 = (PointF) this.A.h();
        jj4 jj4Var = (jj4) this.y.h();
        int[] iArrJ = j(jj4Var.d());
        float[] fArrE = jj4Var.e();
        float f = pointF.x;
        float f2 = pointF.y;
        RadialGradient radialGradient2 = new RadialGradient(f, f2, (float) Math.hypot(pointF2.x - f, pointF2.y - f2), iArrJ, fArrE, Shader.TileMode.CLAMP);
        this.u.put(jK, radialGradient2);
        return radialGradient2;
    }
}
