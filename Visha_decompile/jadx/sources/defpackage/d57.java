package defpackage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;

public class d57 extends Drawable implements cv8 {
    public final float A;
    public final float[] B;
    public final float[] C;
    public final float D;
    public final float E;
    public float F;
    public final RectF G;
    public final RectF H;
    public final boolean I;
    public int J;
    public final Paint K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public boolean R;
    public final float S;
    public final float T;
    public Bitmap U;
    public final ValueAnimator b;
    public final Context c;
    public Bitmap d;
    public Bitmap e;
    public Bitmap f;
    public Bitmap g;
    public boolean h;
    public int i;
    public int j;
    public final int k;
    public int l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public final float r;
    public final Paint s;
    public final Path t;
    public final Path u;
    public final PathMeasure v;
    public final float[] w;
    public final float[] x;
    public final PathMeasure y;
    public float z;

    public d57(Context context, boolean z) {
        this.k = 255;
        this.w = new float[2];
        this.x = new float[2];
        this.B = new float[2];
        this.C = new float[2];
        this.F = 1.0f;
        this.G = new RectF();
        this.H = new RectF();
        this.J = -1;
        this.K = new Paint(1);
        this.L = 0;
        this.M = Color.alpha(0);
        this.Q = -1;
        this.c = context;
        this.I = olb.q0(context);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Paint paint = new Paint(3);
        this.s = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeWidth(TypedValue.applyDimension(1, 2.0f, displayMetrics));
        paint.setColor(this.Q);
        this.b = ValueAnimator.ofFloat(new float[0]);
        this.t = new Path();
        this.u = new Path();
        PathMeasure pathMeasure = new PathMeasure();
        this.v = pathMeasure;
        Path path = new Path();
        PathMeasure pathMeasure2 = new PathMeasure();
        this.y = pathMeasure2;
        this.o = TypedValue.applyDimension(1, 4.0f, displayMetrics);
        int color = context.getColor(R.color.os_fill_quaternary_color);
        this.N = color;
        this.O = Color.alpha(color);
        this.P = olb.z(context);
        this.S = TypedValue.applyDimension(1, 3.0f, displayMetrics);
        this.T = TypedValue.applyDimension(1, 4.3f, displayMetrics);
        f();
        Path path2 = new Path();
        path2.moveTo(-TypedValue.applyDimension(1, 6.0f, displayMetrics), -TypedValue.applyDimension(1, 2.33f, displayMetrics));
        float f = -TypedValue.applyDimension(1, 1.0f, displayMetrics);
        this.D = f;
        float fApplyDimension = TypedValue.applyDimension(1, 2.67f, displayMetrics);
        this.E = fApplyDimension;
        path2.lineTo(f, fApplyDimension);
        path2.lineTo(TypedValue.applyDimension(1, 5.67f, displayMetrics), -TypedValue.applyDimension(1, 4.67f, displayMetrics));
        pathMeasure.setPath(path2, false);
        float fApplyDimension2 = TypedValue.applyDimension(1, 2.33f, displayMetrics);
        this.r = fApplyDimension2;
        path.reset();
        pathMeasure.getSegment(0.0f, fApplyDimension2 + TypedValue.applyDimension(1, 1.5f, displayMetrics), path, true);
        this.A = TypedValue.applyDimension(1, 1.0f, displayMetrics);
        pathMeasure2.setPath(path, false);
        g(z);
    }

    public static d57 b(Context context) {
        return c(context, false);
    }

    public static d57 c(Context context, boolean z) {
        return new d57(context, z);
    }

    public static d57 d(Context context, boolean z, boolean z2) {
        return new d57(context, z, z2);
    }

    public void a() {
        Bitmap bitmap = this.f;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f.recycle();
            this.f = null;
        }
        Bitmap bitmap2 = this.g;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        this.g.recycle();
        this.g = null;
    }

    @Override
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (this.d == null || this.e == null || bounds.isEmpty()) {
            return;
        }
        canvas.translate(bounds.centerX(), bounds.centerY());
        if (this.I) {
            canvas.scale(1.2220833f, 1.2220833f);
        }
        this.H.set(((-bounds.width()) / 2.0f) * this.n, ((-bounds.height()) / 2.0f) * this.n, (bounds.width() / 2.0f) * this.n, (bounds.height() / 2.0f) * this.n);
        this.G.set(((-bounds.width()) / 2.0f) * this.m, ((-bounds.height()) / 2.0f) * this.m, (bounds.width() / 2.0f) * this.m, (bounds.height() / 2.0f) * this.m);
        if (this.R) {
            canvas.drawBitmap(this.U, (Rect) null, this.H, (Paint) null);
        }
        this.K.setColor(this.L);
        int i = this.J;
        int i2 = this.M;
        if (i != -1) {
            i2 = (i2 * i) / 255;
        }
        this.K.setAlpha(i2);
        RectF rectF = this.H;
        float f = rectF.left;
        float f2 = this.S;
        float f3 = rectF.top + f2;
        float f4 = rectF.right - f2;
        float f5 = rectF.bottom - f2;
        float f6 = this.T;
        canvas.drawRoundRect(f + f2, f3, f4, f5, f6, f6, this.K);
        this.K.setColor(this.N);
        int i3 = this.J;
        int i4 = this.O;
        if (i3 != -1) {
            i4 = (i4 * i3) / 255;
        }
        this.K.setAlpha(i4);
        if (this.f == null) {
            this.f = this.d.extractAlpha();
        }
        canvas.drawBitmap(this.f, (Rect) null, this.H, this.K);
        int iSaveLayerAlpha = canvas.saveLayerAlpha(this.G, this.l, 31);
        canvas.clipPath(this.t, Region.Op.DIFFERENCE);
        this.K.setColor(this.P);
        int i5 = this.J;
        int i6 = i5 != -1 ? i5 : 255;
        this.K.setAlpha(i6);
        if (this.g == null) {
            this.g = this.e.extractAlpha();
        }
        canvas.drawBitmap(this.g, (Rect) null, this.G, this.K);
        canvas.restoreToCount(iSaveLayerAlpha);
        float f7 = this.m;
        canvas.scale(f7, f7);
        this.s.setColor(this.Q);
        this.s.setAlpha(i6);
        canvas.drawPath(this.u, this.s);
    }

    public final Bitmap e() {
        int intrinsicWidth = (int) (getIntrinsicWidth() - (this.S * 2.2f));
        int intrinsicHeight = (int) (getIntrinsicHeight() - (this.S * 2.2f));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setColor(-1);
        float f = this.T;
        canvas.drawRoundRect(0.0f, 0.0f, intrinsicWidth, intrinsicHeight, f, f, paint);
        return bitmapCreateBitmap;
    }

    public final void f() {
        Drawable drawable = ContextCompat.getDrawable(this.c, R.drawable.os_checked_drawable_unchecked);
        if (drawable == null) {
            return;
        }
        this.d = fy4.a(drawable);
        this.e = fy4.a(ContextCompat.getDrawable(this.c, R.drawable.os_checkbox_checked_bg));
        Bitmap bitmapA = fy4.a(ContextCompat.getDrawable(this.c, R.drawable.os_checked_drawable_shadow));
        Bitmap bitmapE = e();
        this.U = Bitmap.createBitmap(getIntrinsicWidth(), getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.U);
        Paint paint = new Paint(1);
        canvas.drawBitmap(bitmapA, 0.0f, 0.0f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        canvas.drawBitmap(bitmapE, (this.U.getWidth() - bitmapE.getWidth()) / 2.0f, (this.U.getHeight() - bitmapE.getHeight()) / 2.0f, paint);
        paint.setXfermode(null);
        bitmapE.recycle();
    }

    public void finalize() throws Throwable {
        a();
        super.finalize();
    }

    public final void g(boolean z) {
        this.h = z;
        this.i = z ? 0 : (-getIntrinsicWidth()) / 2;
        this.j = z ? 0 : (-getIntrinsicHeight()) / 2;
        this.l = z ? 255 : 0;
        this.m = z ? 1.0f : 0.0f;
        this.n = 1.0f;
        this.p = z ? 0.0f : this.o;
        this.t.reset();
        if (!z) {
            Path path = this.t;
            int i = this.i;
            float f = this.j;
            float intrinsicWidth = i + getIntrinsicWidth();
            float intrinsicHeight = this.j + getIntrinsicHeight();
            float f2 = this.p;
            path.addRoundRect(i, f, intrinsicWidth, intrinsicHeight, f2, f2, Path.Direction.CCW);
        }
        this.q = z ? this.v.getLength() - this.r : 0.0f;
        this.u.reset();
        if (z) {
            this.v.getSegment(this.r, this.q, this.u, true);
        }
        this.z = z ? this.y.getLength() - this.A : 0.0f;
    }

    @Override
    public int getIntrinsicHeight() {
        Bitmap bitmap = this.d;
        return bitmap == null ? this.c.getResources().getDimensionPixelSize(R.dimen.os_ctm_checked_box_wh) : bitmap.getHeight();
    }

    @Override
    public int getIntrinsicWidth() {
        Bitmap bitmap = this.d;
        return bitmap == null ? this.c.getResources().getDimensionPixelSize(R.dimen.os_ctm_checked_box_wh) : bitmap.getWidth();
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    public void h(boolean z, boolean z2) {
        if (z2) {
            if (z) {
                setUncheckedBorderColor(this.c.getColor(R.color.os_color_white100));
                setUncheckedFillColor(this.c.getColor(R.color.os_color_black30));
            } else {
                setUncheckedBorderColor(olb.m(this.c, R.attr.os_fill_base, R.color.os_fill_base_hios));
                setUncheckedFillColor(0);
            }
        } else if (z) {
            setUncheckedBorderColor(this.c.getColor(R.color.os_uncheck_box_pic_border_color));
            i(this.c.getColor(R.color.os_color_gray80), 128);
        } else {
            setUncheckedBorderColor(olb.m(this.c, R.attr.os_comp_color_checkbox_disabled, R.color.os_comp_color_checkbox_disabled_hios));
            setUncheckedFillColor(0);
        }
        invalidateSelf();
    }

    public void i(int i, int i2) {
        this.L = i;
        this.M = i2;
    }

    @Override
    public boolean isRunning() {
        return this.b.isRunning();
    }

    @Override
    public void setAlpha(int i) {
        this.J = i;
    }

    public void setCheckedFillColor(@ColorInt int i) {
        this.P = i;
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }

    public void setPictureMode(boolean z) {
        h(z, true);
    }

    public void setShowBorderShadow(boolean z) {
        this.R = z;
    }

    public void setTickColor(@ColorInt int i) {
        this.Q = i;
    }

    public void setUncheckedBorderColor(@ColorInt int i) {
        this.N = i;
        this.O = Color.alpha(i);
    }

    public void setUncheckedFillColor(@ColorInt int i) {
        this.L = i;
        this.M = Color.alpha(i);
    }

    @Override
    public void stop() {
        if (isRunning()) {
            this.b.cancel();
            g(this.h);
        }
    }

    public d57(Context context, boolean z, boolean z2) {
        this(context, z);
        h(false, z2);
    }
}
