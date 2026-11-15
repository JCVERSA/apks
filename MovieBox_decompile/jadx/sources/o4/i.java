package o4;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.x;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.p0;

public class i extends a {
    private final p4.a A;
    private p4.q B;

    private final String f67527r;

    private final boolean f67528s;

    private final x f67529t;

    private final x f67530u;

    private final RectF f67531v;

    private final GradientType f67532w;

    private final int f67533x;

    private final p4.a f67534y;

    private final p4.a f67535z;

    public i(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.a aVar2) {
        super(lottieDrawable, aVar, aVar2.b().toPaintCap(), aVar2.g().toPaintJoin(), aVar2.i(), aVar2.k(), aVar2.m(), aVar2.h(), aVar2.c());
        this.f67529t = new x();
        this.f67530u = new x();
        this.f67531v = new RectF();
        this.f67527r = aVar2.j();
        this.f67532w = aVar2.f();
        this.f67528s = aVar2.n();
        this.f67533x = (int) (lottieDrawable.O().d() / 32.0f);
        p4.a aVarA = aVar2.e().a();
        this.f67534y = aVarA;
        aVarA.a(this);
        aVar.i(aVarA);
        p4.a aVarA2 = aVar2.l().a();
        this.f67535z = aVarA2;
        aVarA2.a(this);
        aVar.i(aVarA2);
        p4.a aVarA3 = aVar2.d().a();
        this.A = aVarA3;
        aVarA3.a(this);
        aVar.i(aVarA3);
    }

    private int[] j(int[] iArr) {
        p4.q qVar = this.B;
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

    private int k() {
        int iRound = Math.round(this.f67535z.f() * this.f67533x);
        int iRound2 = Math.round(this.A.f() * this.f67533x);
        int iRound3 = Math.round(this.f67534y.f() * this.f67533x);
        int i10 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    private LinearGradient l() {
        long jK = k();
        LinearGradient linearGradient = (LinearGradient) this.f67529t.e(jK);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointF = (PointF) this.f67535z.h();
        PointF pointF2 = (PointF) this.A.h();
        t4.d dVar = (t4.d) this.f67534y.h();
        LinearGradient linearGradient2 = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, j(dVar.d()), dVar.e(), Shader.TileMode.CLAMP);
        this.f67529t.k(jK, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient m() {
        long jK = k();
        RadialGradient radialGradient = (RadialGradient) this.f67530u.e(jK);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointF = (PointF) this.f67535z.h();
        PointF pointF2 = (PointF) this.A.h();
        t4.d dVar = (t4.d) this.f67534y.h();
        int[] iArrJ = j(dVar.d());
        float[] fArrE = dVar.e();
        float f10 = pointF.x;
        float f11 = pointF.y;
        RadialGradient radialGradient2 = new RadialGradient(f10, f11, (float) Math.hypot(pointF2.x - f10, pointF2.y - f11), iArrJ, fArrE, Shader.TileMode.CLAMP);
        this.f67530u.k(jK, radialGradient2);
        return radialGradient2;
    }

    @Override
    public void d(Object obj, y4.c cVar) {
        super.d(obj, cVar);
        if (obj == p0.L) {
            p4.q qVar = this.B;
            if (qVar != null) {
                this.f67459f.H(qVar);
            }
            if (cVar == null) {
                this.B = null;
                return;
            }
            p4.q qVar2 = new p4.q(cVar);
            this.B = qVar2;
            qVar2.a(this);
            this.f67459f.i(this.B);
        }
    }

    @Override
    public String getName() {
        return this.f67527r;
    }

    @Override
    public void h(Canvas canvas, Matrix matrix, int i10) {
        if (this.f67528s) {
            return;
        }
        f(this.f67531v, matrix, false);
        Shader shaderL = this.f67532w == GradientType.LINEAR ? l() : m();
        shaderL.setLocalMatrix(matrix);
        this.f67462i.setShader(shaderL);
        super.h(canvas, matrix, i10);
    }
}
