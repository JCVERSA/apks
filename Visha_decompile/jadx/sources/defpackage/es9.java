package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.model.layer.a;

public class es9 extends a {
    public final RectF E;
    public final Paint F;
    public final float[] G;
    public final Path H;
    public final Layer I;
    public ab0 J;
    public ab0 K;

    public es9(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.E = new RectF();
        ni5 ni5Var = new ni5();
        this.F = ni5Var;
        this.G = new float[8];
        this.H = new Path();
        this.I = layer;
        ni5Var.setAlpha(0);
        ni5Var.setStyle(Paint.Style.FILL);
        ni5Var.setColor(layer.p());
    }

    @Override
    public void a(RectF rectF, Matrix matrix, boolean z) {
        super.a(rectF, matrix, z);
        this.E.set(0.0f, 0.0f, this.I.r(), this.I.q());
        this.o.mapRect(this.E);
        rectF.set(this.E);
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        super.h(obj, iu5Var);
        if (obj == it5.K) {
            if (iu5Var == null) {
                this.J = null;
                return;
            } else {
                this.J = new hnb(iu5Var);
                return;
            }
        }
        if (obj == it5.a) {
            if (iu5Var != null) {
                this.K = new hnb(iu5Var);
            } else {
                this.K = null;
                this.F.setColor(this.I.p());
            }
        }
    }

    @Override
    public void t(Canvas canvas, Matrix matrix, int i) {
        int iAlpha = Color.alpha(this.I.p());
        if (iAlpha == 0) {
            return;
        }
        ab0 ab0Var = this.K;
        Integer num = ab0Var == null ? null : (Integer) ab0Var.h();
        if (num != null) {
            this.F.setColor(num.intValue());
        } else {
            this.F.setColor(this.I.p());
        }
        int iIntValue = (int) ((i / 255.0f) * (((iAlpha / 255.0f) * (this.x.h() == null ? 100 : ((Integer) this.x.h().h()).intValue())) / 100.0f) * 255.0f);
        this.F.setAlpha(iIntValue);
        ab0 ab0Var2 = this.J;
        if (ab0Var2 != null) {
            this.F.setColorFilter((ColorFilter) ab0Var2.h());
        }
        if (iIntValue > 0) {
            float[] fArr = this.G;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.I.r();
            float[] fArr2 = this.G;
            fArr2[3] = 0.0f;
            fArr2[4] = this.I.r();
            this.G[5] = this.I.q();
            float[] fArr3 = this.G;
            fArr3[6] = 0.0f;
            fArr3[7] = this.I.q();
            matrix.mapPoints(this.G);
            this.H.reset();
            Path path = this.H;
            float[] fArr4 = this.G;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.H;
            float[] fArr5 = this.G;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.H;
            float[] fArr6 = this.G;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.H;
            float[] fArr7 = this.G;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.H;
            float[] fArr8 = this.G;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.H.close();
            canvas.drawPath(this.H, this.F);
        }
    }
}
