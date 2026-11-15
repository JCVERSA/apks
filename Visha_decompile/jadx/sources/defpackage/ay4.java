package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.model.layer.a;

public class ay4 extends a {
    public final Paint E;
    public final Rect F;
    public final Rect G;
    public final ct5 H;
    public ab0 I;
    public ab0 J;
    public n33 K;

    public ay4(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.E = new ni5(3);
        this.F = new Rect();
        this.G = new Rect();
        this.H = lottieDrawable.U(layer.n());
        if (y() != null) {
            this.K = new n33(this, this, y());
        }
    }

    public final Bitmap P() {
        Bitmap bitmap;
        ab0 ab0Var = this.J;
        if (ab0Var != null && (bitmap = (Bitmap) ab0Var.h()) != null) {
            return bitmap;
        }
        Bitmap bitmapL = this.p.L(this.q.n());
        if (bitmapL != null) {
            return bitmapL;
        }
        ct5 ct5Var = this.H;
        if (ct5Var != null) {
            return ct5Var.b();
        }
        return null;
    }

    @Override
    public void a(RectF rectF, Matrix matrix, boolean z) {
        super.a(rectF, matrix, z);
        if (this.H != null) {
            float fE = plb.e();
            rectF.set(0.0f, 0.0f, this.H.f() * fE, this.H.d() * fE);
            this.o.mapRect(rectF);
        }
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        super.h(obj, iu5Var);
        if (obj == it5.K) {
            if (iu5Var == null) {
                this.I = null;
                return;
            } else {
                this.I = new hnb(iu5Var);
                return;
            }
        }
        if (obj == it5.N) {
            if (iu5Var == null) {
                this.J = null;
            } else {
                this.J = new hnb(iu5Var);
            }
        }
    }

    @Override
    public void t(Canvas canvas, Matrix matrix, int i) {
        Bitmap bitmapP = P();
        if (bitmapP == null || bitmapP.isRecycled() || this.H == null) {
            return;
        }
        float fE = plb.e();
        this.E.setAlpha(i);
        ab0 ab0Var = this.I;
        if (ab0Var != null) {
            this.E.setColorFilter((ColorFilter) ab0Var.h());
        }
        canvas.save();
        canvas.concat(matrix);
        this.F.set(0, 0, bitmapP.getWidth(), bitmapP.getHeight());
        if (this.p.V()) {
            this.G.set(0, 0, (int) (this.H.f() * fE), (int) (this.H.d() * fE));
        } else {
            this.G.set(0, 0, (int) (bitmapP.getWidth() * fE), (int) (bitmapP.getHeight() * fE));
        }
        n33 n33Var = this.K;
        if (n33Var != null) {
            n33Var.a(this.E, matrix, i);
        }
        canvas.drawBitmap(bitmapP, this.F, this.G, this.E);
        canvas.restore();
    }
}
