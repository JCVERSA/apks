package defpackage;

import android.content.Context;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.os.Trace;
import androidx.annotation.RequiresApi;
import com.transsion.hubsdk.api.graphics.TranCanvas;
import com.transsion.hubsdk.api.graphics.TranPath;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a67 {
    public static final a O = new a(null);
    public float A;
    public float B;
    public int C;
    public TranCanvas D;
    public int E;
    public float F;
    public float G;
    public float H;
    public float I;
    public float[] J;
    public Integer K;
    public Shader L;
    public boolean M;
    public final Paint N;
    public final Context a;
    public float b;
    public int c;
    public boolean d;
    public boolean e;
    public boolean f;
    public final String g;
    public final float h;
    public float i;
    public final RectF j;
    public final RectF k;
    public float l;
    public Path m;
    public final Paint n;
    public final Paint o;
    public final Paint p;
    public boolean q;
    public float r;
    public float s;
    public float t;
    public int u;
    public float v;
    public float w;
    public boolean x;
    public int y;
    public int z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public a67(Context context, float f) {
        y45.j(context, "mContext");
        this.a = context;
        this.b = f;
        this.d = true;
        this.e = true;
        this.g = "OSLiquidDrawable";
        this.h = 1.0f;
        this.i = 6.0f;
        RectF rectF = new RectF();
        this.j = rectF;
        this.k = new RectF();
        this.l = Float.NaN;
        this.m = TranPath.getInstance().getSmoothCapsule(rectF.left, rectF.top, rectF.right, rectF.bottom, this.b);
        Paint paint = new Paint(1);
        this.n = paint;
        Paint paint2 = new Paint(1);
        this.o = paint2;
        Paint paint3 = new Paint(1);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        Paint.Style style = Paint.Style.FILL;
        paint3.setStyle(style);
        paint3.setColor(-16777216);
        this.p = paint3;
        this.u = -16777216;
        this.y = -1;
        this.z = -1;
        this.C = -1;
        this.D = new TranCanvas();
        this.E = 255;
        this.F = -1.0f;
        this.G = -1.0f;
        this.H = -1.0f;
        this.I = -1.0f;
        this.J = new float[]{0.0f, 1.0f};
        this.i = olb.h(context, 2);
        paint.setAntiAlias(true);
        paint.setStrokeWidth(this.i);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(-1);
        paint.setBlendMode(BlendMode.PLUS);
        paint2.setAntiAlias(true);
        paint2.setStyle(style);
        Paint paint4 = new Paint(1);
        paint4.setColor(0);
        paint4.setStyle(style);
        this.N = paint4;
    }

    public final void a() {
        if (this.I >= 0.0f) {
            this.I = -1.0f;
            this.L = null;
        }
    }

    public final void b() {
        if (this.H >= 0.0f) {
            this.H = -1.0f;
            this.L = null;
        }
    }

    public final void c(Canvas canvas, float f, float f2, boolean z) {
        y45.j(canvas, "canvas");
        this.M = z;
        if (f == 0.0f || f2 == 0.0f) {
            return;
        }
        int i = this.z;
        if (i != -1) {
            f2 = i;
        }
        int i2 = this.y;
        if (i2 != -1) {
            f = i2;
        }
        if (this.q) {
            p(f, f2);
        }
        int i3 = (int) f;
        int i4 = (int) f2;
        if (this.L == null) {
            o(i3, i4);
        }
        Trace.beginSection("GradientBorder");
        this.j.set(0.0f, 0.0f, f, f2);
        if (k()) {
            e(canvas, f, f2);
        } else {
            d(canvas, f, f2);
        }
        Trace.endSection();
    }

    public final void d(Canvas canvas, float f, float f2) {
        if (this.q) {
            f(canvas, f, f2);
        }
        this.o.setColor(this.c);
        this.o.setAlpha((int) (Color.alpha(this.c) * (this.E / 255.0f)));
        g(canvas, this.j, this.b, this.o);
        if (!m() || olb.r) {
            return;
        }
        this.n.setAlpha(this.E);
        this.n.setShader(this.L);
        g(canvas, this.j, this.b, this.n);
    }

    public final void e(Canvas canvas, float f, float f2) {
        boolean z;
        if (this.q && olb.O && !this.f) {
            f(canvas, f, f2);
        }
        boolean z2 = olb.O;
        if (!z2 || (z = this.f)) {
            d(canvas, f, f2);
            return;
        }
        if (!z2 || z) {
            this.n.setBlendMode(null);
        } else {
            this.n.setBlendMode(i());
        }
        if (m()) {
            this.n.setAlpha(this.E);
            this.n.setShader(this.L);
            g(canvas, this.j, this.b, this.n);
        }
    }

    public final void f(Canvas canvas, float f, float f2) {
        float fMax = this.r + Math.max(Math.abs(this.s), Math.abs(this.t));
        float f3 = -fMax;
        int iSaveLayer = canvas.saveLayer(f3, f3, f + fMax, f2 + fMax, null);
        this.N.setStyle(Paint.Style.FILL);
        this.N.setColor(-16777216);
        this.N.setAlpha(this.E);
        g(canvas, this.j, this.b, this.N);
        float f4 = (-this.i) / 2.0f;
        this.j.inset(f4, f4);
        g(canvas, this.j, Math.max(0.0f, this.b - f4), this.p);
        float f5 = -f4;
        this.j.inset(f5, f5);
        canvas.restoreToCount(iSaveLayer);
    }

    public final void g(Canvas canvas, RectF rectF, float f, Paint paint) {
        if (!nl5.a.d(rectF, f)) {
            canvas.drawRoundRect(rectF, f, f, paint);
        } else {
            n(rectF, f);
            canvas.drawPath(this.m, paint);
        }
    }

    public final float getCornerRadius() {
        return this.b;
    }

    public final float[] getPositionsLT() {
        return this.J;
    }

    public final void h(boolean z) {
        this.q = z;
        if (z) {
            this.x = false;
        }
    }

    public final BlendMode i() {
        return this.n.getBlendMode();
    }

    public final void j(int i, int i2, int i3, int i4) {
        if (i == i3 && i2 == i4) {
            return;
        }
        this.L = null;
        this.k.setEmpty();
        this.l = Float.NaN;
        this.C = y77.a.d(i, i2, this.b);
    }

    public final boolean k() {
        return olb.R;
    }

    public final void l(int i, int i2) {
        this.y = i;
        this.z = i2;
    }

    public final boolean m() {
        return olb.U && this.d;
    }

    public final void n(RectF rectF, float f) {
        RectF rectF2 = this.k;
        if (rectF2.left == rectF.left && rectF2.top == rectF.top && rectF2.right == rectF.right && rectF2.bottom == rectF.bottom && this.l == f) {
            return;
        }
        this.m = TranPath.getInstance().getSmoothCapsule(rectF.left, rectF.top, rectF.right, rectF.bottom, f);
        this.k.set(rectF);
        this.l = f;
    }

    public final void o(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            this.L = null;
            return;
        }
        y77 y77Var = y77.a;
        int iD = y77Var.d(i, i2, this.b);
        this.C = iD;
        r67 r67VarC = y77Var.c(this.a, iD);
        float f = this.F;
        if (0.0f <= f && f <= 1.0f) {
            r67VarC = r67.b(r67VarC, 0.0f, 0.0f, f, 0.0f, 0, 0.0f, 0.0f, 123, null);
        }
        r67 r67VarB = r67VarC;
        float f2 = this.G;
        if (0.0f <= f2 && f2 <= 1.0f) {
            r67VarB = r67.b(r67VarB, 0.0f, 0.0f, 0.0f, 0.0f, 0, 0.0f, f2, 63, null);
        }
        r67 r67VarB2 = r67VarB;
        float f3 = this.H;
        if (0.0f <= f3 && f3 <= 1.0f) {
            r67VarB2 = r67.b(r67VarB2, 0.0f, f3, 0.0f, 0.0f, 0, 0.0f, 0.0f, 125, null);
        }
        r67 r67VarB3 = r67VarB2;
        float f4 = this.I;
        if (0.0f <= f4 && f4 <= 360.0f) {
            r67VarB3 = r67.b(r67VarB3, f4, 0.0f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 126, null);
        }
        q(i, i2, r67VarB3);
    }

    public final void p(float f, float f2) {
        float[] fArrI;
        if (f <= 0.0f || f2 <= 0.0f || this.x || (fArrI = olb.I(this.a, 2)) == null) {
            return;
        }
        float f3 = fArrI[0];
        this.w = f3;
        this.v = fArrI[1];
        this.u = (int) fArrI[2];
        this.r = wn8.f(f3 * 0.6f, 50.0f);
        this.s = 0.0f;
        this.t = 0.0f;
        this.N.setShadowLayer(this.r, this.s, this.t, Color.argb(wn8.k((int) (Color.alpha(this.u) * this.v), 0, 255), Color.red(this.u), Color.green(this.u), Color.blue(this.u)));
        this.x = true;
    }

    public final void q(int i, int i2, r67 r67Var) {
        y77 y77Var = y77.a;
        float f = i;
        float f2 = i2;
        Integer num = this.K;
        z77 z77VarA = y77Var.a(f, f2, r67Var, num != null ? num.intValue() : -1);
        float f3 = f * 0.5f;
        float f4 = f2 * 0.5f;
        SweepGradient sweepGradient = new SweepGradient(f3, f4, z77VarA.getColors(), z77VarA.getPositions());
        if (z77VarA.getRotationDegrees() != 0.0f) {
            Matrix matrix = new Matrix();
            matrix.preRotate(z77VarA.getRotationDegrees(), f3, f4);
            sweepGradient.setLocalMatrix(matrix);
        }
        this.L = sweepGradient;
    }

    public final void setActualHeight(int i) {
        this.z = i;
    }

    public final void setActualWidth(int i) {
        this.y = i;
    }

    public final void setAlpha(int i) {
        this.E = i;
        this.n.setAlpha(i);
    }

    public final void setCornerRadius(float f) {
        this.b = f;
    }

    public final void setDefaultBgColor(int i) {
        bq5.c(this.g, "setDefaultBgColor: " + Integer.toHexString(i));
        this.c = i;
    }

    public final void setEndsLeftTop(float f) {
        this.A = f;
    }

    public final void setEndsRightBottom(float f) {
        this.B = f;
    }

    public final void setForceBCEffect(boolean z) {
        this.f = z;
        bq5.c(this.g, "setForceBCEffect: mForceBCEffect = " + z);
    }

    public final void setGapBrightness(float f) {
        if (this.G == f) {
            return;
        }
        this.G = f;
        this.L = null;
    }

    public final void setGapRotationDegrees(float f) {
        if (this.I == f) {
            return;
        }
        this.I = f;
        this.L = null;
    }

    public final void setGapSizeRatio(float f) {
        if (this.H == f) {
            return;
        }
        this.H = f;
        this.L = null;
    }

    public final void setGradientStrokeColor(int[] iArr) {
        this.K = iArr != null ? hi.X(iArr) : null;
        this.L = null;
    }

    public final void setGradientStrokePosition(float[] fArr) {
        this.L = null;
    }

    public final void setPositionsLT(float[] fArr) {
        y45.g(fArr);
        this.J = fArr;
        this.L = null;
    }

    public final void setRadius(float f) {
        if (this.b == f) {
            return;
        }
        int i = this.y;
        float fWidth = i > 0 ? i : this.j.width();
        int i2 = this.z;
        float fHeight = i2 > 0 ? i2 : this.j.height();
        int iD = (fWidth <= 0.0f || fHeight <= 0.0f) ? -1 : y77.a.d(fWidth, fHeight, f);
        this.b = f;
        this.l = Float.NaN;
        if (iD == -1 || iD == this.C) {
            return;
        }
        this.C = iD;
        this.L = null;
    }

    public final void setShowOutline(boolean z) {
        this.d = z;
        bq5.c(this.g, "setShowOutline: mShowOutLine = " + z);
    }

    public final void setShowOutlineMixColor(boolean z) {
        this.e = z;
        bq5.c(this.g, "setShowOutline: mShowOutLineMixColor = " + z);
    }

    @RequiresApi(29)
    public final void setStrokeBlendMode(BlendMode blendMode) {
        y45.j(blendMode, "blendMode");
        this.n.setBlendMode(blendMode);
    }

    public final void setStrokeBrightness(float f) {
        if (this.F == f) {
            return;
        }
        this.F = f;
        this.L = null;
    }

    public final void setStrokeWidth(float f) {
        this.i = f;
        this.n.setStrokeWidth(f);
    }
}
