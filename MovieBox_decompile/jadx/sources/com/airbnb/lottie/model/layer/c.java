package com.airbnb.lottie.model.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.l0;
import com.airbnb.lottie.p0;
import p4.q;
import x4.l;

public class c extends a {
    private final Paint E;
    private final Rect F;
    private final Rect G;
    private final l0 H;
    private p4.a I;
    private p4.a J;
    private p4.c K;

    c(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.E = new n4.a(3);
        this.F = new Rect();
        this.G = new Rect();
        this.H = lottieDrawable.U(layer.n());
        if (y() != null) {
            this.K = new p4.c(this, this, y());
        }
    }

    private Bitmap P() {
        Bitmap bitmap;
        p4.a aVar = this.J;
        if (aVar != null && (bitmap = (Bitmap) aVar.h()) != null) {
            return bitmap;
        }
        Bitmap bitmapL = this.f17256p.L(this.f17257q.n());
        if (bitmapL != null) {
            return bitmapL;
        }
        l0 l0Var = this.H;
        if (l0Var != null) {
            return l0Var.b();
        }
        return null;
    }

    @Override
    public void d(Object obj, y4.c cVar) {
        super.d(obj, cVar);
        if (obj == p0.K) {
            if (cVar == null) {
                this.I = null;
                return;
            } else {
                this.I = new q(cVar);
                return;
            }
        }
        if (obj == p0.N) {
            if (cVar == null) {
                this.J = null;
            } else {
                this.J = new q(cVar);
            }
        }
    }

    @Override
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        super.f(rectF, matrix, z10);
        if (this.H != null) {
            float fE = l.e();
            rectF.set(0.0f, 0.0f, this.H.f() * fE, this.H.d() * fE);
            this.f17255o.mapRect(rectF);
        }
    }

    @Override
    public void t(Canvas canvas, Matrix matrix, int i10) {
        Bitmap bitmapP = P();
        if (bitmapP == null || bitmapP.isRecycled() || this.H == null) {
            return;
        }
        float fE = l.e();
        this.E.setAlpha(i10);
        p4.a aVar = this.I;
        if (aVar != null) {
            this.E.setColorFilter((ColorFilter) aVar.h());
        }
        canvas.save();
        canvas.concat(matrix);
        this.F.set(0, 0, bitmapP.getWidth(), bitmapP.getHeight());
        if (this.f17256p.V()) {
            this.G.set(0, 0, (int) (this.H.f() * fE), (int) (this.H.d() * fE));
        } else {
            this.G.set(0, 0, (int) (bitmapP.getWidth() * fE), (int) (bitmapP.getHeight() * fE));
        }
        p4.c cVar = this.K;
        if (cVar != null) {
            cVar.b(this.E, matrix, i10);
        }
        canvas.drawBitmap(bitmapP, this.F, this.G, this.E);
        canvas.restore();
    }
}
