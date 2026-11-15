package com.transsion.blur;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.transsion.common.R;
import defpackage.cg0;
import defpackage.n93;
import defpackage.raa;
import defpackage.wb;
import defpackage.y6a;
import defpackage.zb;

public class ShapeBlurView extends View {
    public static final int DEFAULT_BORDER_COLOR = -1;
    public static int I;
    public static int J;
    public static StopException K = new StopException();
    public ColorStateList A;
    public Matrix B;
    public BitmapShader C;
    public boolean D;
    public int E;
    public int F;
    public Point G;
    public final ViewTreeObserver.OnPreDrawListener H;
    public Context b;
    public float c;
    public int d;
    public float e;
    public final cg0 f;
    public boolean g;
    public Bitmap h;
    public Bitmap i;
    public Canvas j;
    public boolean k;
    public final Rect l;
    public final RectF m;
    public View n;
    public boolean o;
    public int p;
    public final Paint q;
    public float r;
    public float s;
    public float t;
    public final float[] u;
    public final Path v;
    public float[] w;
    public final RectF x;
    public final Paint y;
    public float z;

    public static class StopException extends RuntimeException {
        private StopException() {
        }
    }

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public a() {
        }

        @Override
        public boolean onPreDraw() {
            int[] iArr = new int[2];
            Bitmap bitmap = ShapeBlurView.this.i;
            View view = ShapeBlurView.this.n;
            if ((ShapeBlurView.this.D || ShapeBlurView.this.i == null) && view != null && ShapeBlurView.this.isShown() && ShapeBlurView.this.s()) {
                boolean z = ShapeBlurView.this.i != bitmap;
                view.getLocationOnScreen(iArr);
                int i = -iArr[0];
                int i2 = -iArr[1];
                ShapeBlurView.this.getLocationOnScreen(iArr);
                int i3 = i + iArr[0];
                int i4 = i2 + iArr[1];
                ShapeBlurView.this.h.eraseColor(ShapeBlurView.this.d & 16777215);
                int iSave = ShapeBlurView.this.j.save();
                ShapeBlurView.this.k = true;
                ShapeBlurView.I++;
                try {
                    ShapeBlurView.this.j.scale((ShapeBlurView.this.h.getWidth() * 1.0f) / ShapeBlurView.this.getWidth(), (ShapeBlurView.this.h.getHeight() * 1.0f) / ShapeBlurView.this.getHeight());
                    ShapeBlurView.this.j.translate(-i3, -i4);
                    if (view.getBackground() != null) {
                        view.getBackground().draw(ShapeBlurView.this.j);
                    }
                    view.draw(ShapeBlurView.this.j);
                } catch (StopException unused) {
                } finally {
                    ShapeBlurView.this.k = false;
                    ShapeBlurView.I--;
                    ShapeBlurView.this.j.restoreToCount(iSave);
                }
                ShapeBlurView shapeBlurView = ShapeBlurView.this;
                shapeBlurView.l(shapeBlurView.h, ShapeBlurView.this.i);
                if (z || ShapeBlurView.this.o) {
                    ShapeBlurView.this.invalidate();
                }
            }
            return true;
        }
    }

    public static class b {
        public float a;
        public int b;
        public float c;
        public float d;
        public ColorStateList e;
        public int f;
        public final float[] g;
        public Context h;

        public b(Context context) {
            this.a = -1.0f;
            this.b = -1;
            this.c = -1.0f;
            this.d = -1.0f;
            this.e = null;
            this.f = -1;
            this.g = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
            this.h = context.getApplicationContext();
        }
    }

    public ShapeBlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = new Rect();
        this.m = new RectF();
        this.p = 0;
        this.r = 0.0f;
        this.s = 0.0f;
        this.t = 0.0f;
        float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f};
        this.u = fArr;
        this.v = new Path();
        this.x = new RectF();
        this.z = 0.0f;
        this.A = ColorStateList.valueOf(-1);
        this.G = new Point();
        this.H = new a();
        this.b = context;
        this.f = getBlurImpl();
        try {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ShapeBlurView);
            this.e = typedArrayObtainStyledAttributes.getDimension(R.styleable.ShapeBlurView_blur_radius, TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics()));
            this.c = typedArrayObtainStyledAttributes.getFloat(R.styleable.ShapeBlurView_blur_down_sample, 4.0f);
            this.d = typedArrayObtainStyledAttributes.getColor(R.styleable.ShapeBlurView_blur_overlay_color, 1293556250);
            float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeBlurView_blur_corner_radius, -1);
            fArr[0] = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeBlurView_blur_corner_radius_top_left, -1);
            fArr[1] = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeBlurView_blur_corner_radius_top_right, -1);
            fArr[2] = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeBlurView_blur_corner_radius_bottom_right, -1);
            fArr[3] = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeBlurView_blur_corner_radius_bottom_left, -1);
            q(dimensionPixelSize);
            this.p = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeBlurView_blur_mode, 0);
            this.D = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ShapeBlurView_support_dynamic_blur, true);
            float dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeBlurView_blur_border_width, -1);
            this.z = dimensionPixelSize2;
            if (dimensionPixelSize2 < 0.0f) {
                this.z = 0.0f;
            }
            ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.ShapeBlurView_blur_border_color);
            this.A = colorStateList;
            if (colorStateList == null) {
                this.A = ColorStateList.valueOf(-1);
            }
            typedArrayObtainStyledAttributes.recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Paint paint = new Paint();
        this.q = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.y = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.A.getColorForState(getState(), -1));
        paint2.setStrokeWidth(this.z);
        raa.d(this.G);
        this.E = getResources().getConfiguration().screenHeightDp;
    }

    public static b build(Context context) {
        return new b(context);
    }

    public void callDraw() {
        int[] iArr = new int[2];
        Bitmap bitmap = this.i;
        View view = this.n;
        if (view != null && isShown() && s()) {
            boolean z = this.i != bitmap;
            view.getLocationOnScreen(iArr);
            int i = -iArr[0];
            int i2 = -iArr[1];
            getLocationOnScreen(iArr);
            int i3 = i + iArr[0];
            int i4 = i2 + iArr[1];
            this.h.eraseColor(this.d & 16777215);
            int iSave = this.j.save();
            this.k = true;
            I++;
            try {
                this.j.scale((this.h.getWidth() * 1.0f) / getWidth(), (this.h.getHeight() * 1.0f) / getHeight());
                this.j.translate(-i3, -i4);
                if (view.getBackground() != null) {
                    view.getBackground().draw(this.j);
                }
                view.draw(this.j);
            } catch (StopException unused) {
            } finally {
                this.k = false;
                I--;
                this.j.restoreToCount(iSave);
            }
            l(this.h, this.i);
            if (z || this.o) {
                invalidate();
            }
        }
    }

    public int dp2px(float f) {
        return (int) ((f * this.b.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.k) {
            throw K;
        }
        if (I > 0) {
            return;
        }
        super.draw(canvas);
    }

    public View getActivityDecorView() {
        Context context = getContext();
        for (int i = 0; i < 4 && !(context instanceof Activity) && (context instanceof ContextWrapper); i++) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof Activity) {
            return ((Activity) context).getWindow().getDecorView();
        }
        return null;
    }

    public cg0 getBlurImpl() {
        if (J == 0) {
            try {
                wb wbVar = new wb();
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888);
                wbVar.b(getContext(), bitmapCreateBitmap, 4.0f);
                wbVar.release();
                bitmapCreateBitmap.recycle();
                J = 3;
            } catch (Throwable unused) {
            }
        }
        if (J == 0) {
            try {
                getClass().getClassLoader().loadClass("androidx.renderscript.RenderScript");
                zb zbVar = new zb();
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888);
                zbVar.b(getContext(), bitmapCreateBitmap2, 4.0f);
                zbVar.release();
                bitmapCreateBitmap2.recycle();
                J = 1;
            } catch (Throwable unused2) {
            }
        }
        if (J == 0) {
            try {
                getClass().getClassLoader().loadClass("android.support.v8.renderscript.RenderScript");
                y6a y6aVar = new y6a();
                Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888);
                y6aVar.b(getContext(), bitmapCreateBitmap3, 4.0f);
                y6aVar.release();
                bitmapCreateBitmap3.recycle();
                J = 2;
            } catch (Throwable unused3) {
            }
        }
        if (J == 0) {
            J = -1;
        }
        int i = J;
        if (i == 1) {
            return new zb();
        }
        if (i != 2) {
            return i != 3 ? new n93() : new wb();
        }
        return new y6a();
    }

    public int getBlurMode() {
        return this.p;
    }

    @ColorInt
    public int getBorderColor() {
        return this.A.getDefaultColor();
    }

    public float getBorderWidth() {
        return this.z;
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float fMax = 0.0f;
        for (float f : this.u) {
            fMax = Math.max(f, fMax);
        }
        return fMax;
    }

    @NonNull
    public int[] getState() {
        return StateSet.WILD_CARD;
    }

    public void l(Bitmap bitmap, Bitmap bitmap2) {
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.C = new BitmapShader(bitmap2, tileMode, tileMode);
        this.f.a(bitmap, bitmap2);
    }

    public void m(Canvas canvas, Bitmap bitmap, int i) {
        if (bitmap != null) {
            int i2 = this.p;
            if (i2 == 1) {
                n(canvas, bitmap, i);
            } else if (i2 == 2) {
                o(canvas, bitmap, i);
            } else {
                p(canvas, bitmap, i);
            }
        }
    }

    public final void n(Canvas canvas, Bitmap bitmap, int i) {
        try {
            this.m.right = getMeasuredWidth();
            this.m.bottom = getMeasuredHeight();
            this.l.right = bitmap.getWidth();
            this.l.bottom = bitmap.getHeight();
            this.q.reset();
            this.q.setAntiAlias(true);
            if (this.C == null) {
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.C = new BitmapShader(bitmap, tileMode, tileMode);
            }
            if (this.B == null) {
                this.B = new Matrix();
            }
            this.B.postScale(this.m.width() / this.l.width(), this.m.height() / this.l.height());
            this.C.setLocalMatrix(this.B);
            this.q.setShader(this.C);
            if (this.m.width() >= this.l.width()) {
                this.r = this.m.width() / 2.0f;
                this.s = this.m.height() / 2.0f;
                this.t = Math.min(this.m.width(), this.m.height()) / 2.0f;
                this.x.set(this.m);
            } else {
                this.r = this.l.width() / 2.0f;
                this.s = this.l.height() / 2.0f;
                this.t = Math.min(this.l.width(), this.l.height()) / 2.0f;
                this.x.set(this.l);
            }
            canvas.drawCircle(this.r, this.s, this.t, this.q);
            this.q.reset();
            this.q.setAntiAlias(true);
            this.q.setColor(i);
            canvas.drawCircle(this.r, this.s, this.t, this.q);
            if (this.z > 0.0f) {
                if (this.x.width() > this.x.height()) {
                    float fAbs = Math.abs(this.x.height() - this.x.width()) / 2.0f;
                    RectF rectF = this.x;
                    rectF.left = fAbs;
                    rectF.right = Math.min(rectF.width(), this.x.height()) + fAbs;
                    RectF rectF2 = this.x;
                    rectF2.bottom = Math.min(rectF2.width(), this.x.height());
                } else if (this.x.width() < this.x.height()) {
                    float fAbs2 = Math.abs(this.x.height() - this.x.width()) / 2.0f;
                    RectF rectF3 = this.x;
                    rectF3.top = fAbs2;
                    rectF3.right = Math.min(rectF3.width(), this.x.height());
                    RectF rectF4 = this.x;
                    rectF4.bottom = Math.min(rectF4.width(), this.x.height()) + fAbs2;
                } else {
                    RectF rectF5 = this.x;
                    rectF5.right = Math.min(rectF5.width(), this.x.height());
                    RectF rectF6 = this.x;
                    rectF6.bottom = Math.min(rectF6.width(), this.x.height());
                }
                RectF rectF7 = this.x;
                float f = this.z;
                rectF7.inset(f / 2.0f, f / 2.0f);
                canvas.drawOval(this.x, this.y);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void o(Canvas canvas, Bitmap bitmap, int i) {
        try {
            this.m.right = getWidth();
            this.m.bottom = getHeight();
            this.q.reset();
            this.q.setAntiAlias(true);
            if (this.C == null) {
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.C = new BitmapShader(bitmap, tileMode, tileMode);
            }
            if (this.B == null) {
                this.B = new Matrix();
            }
            this.B.postScale(this.m.width() / bitmap.getWidth(), this.m.height() / bitmap.getHeight());
            this.C.setLocalMatrix(this.B);
            this.q.setShader(this.C);
            canvas.drawOval(this.m, this.q);
            this.q.reset();
            this.q.setAntiAlias(true);
            this.q.setColor(i);
            canvas.drawOval(this.m, this.q);
            if (this.z > 0.0f) {
                this.x.set(this.m);
                RectF rectF = this.x;
                float f = this.z;
                rectF.inset(f / 2.0f, f / 2.0f);
                canvas.drawOval(this.x, this.y);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        View activityDecorView = getActivityDecorView();
        this.n = activityDecorView;
        if (activityDecorView != null) {
            postDelayed(new Runnable() {
                @Override
                public void run() {
                    ShapeBlurView.this.n.getViewTreeObserver().addOnPreDrawListener(ShapeBlurView.this.H);
                }
            }, 300L);
            this.o = this.n.getRootView() != getRootView();
            this.n.postInvalidate();
        } else {
            this.o = false;
        }
        v();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.E != configuration.screenHeightDp) {
            raa.d(this.G);
            this.E = configuration.screenHeightDp;
            v();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        View view = this.n;
        if (view != null) {
            view.getViewTreeObserver().removeOnPreDrawListener(this.H);
        }
        t();
        super.onDetachedFromWindow();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m(canvas, this.i, this.d);
    }

    public final void p(Canvas canvas, Bitmap bitmap, int i) {
        try {
            this.m.right = getWidth();
            RectF rectF = this.m;
            rectF.bottom = this.G.y - this.F;
            this.v.addRoundRect(rectF, this.w, Path.Direction.CW);
            this.v.close();
            canvas.clipPath(this.v);
            this.l.right = bitmap.getWidth();
            this.l.bottom = bitmap.getHeight();
            canvas.drawBitmap(bitmap, this.l, this.m, (Paint) null);
            this.q.setColor(i);
            canvas.drawRect(this.m, this.q);
            float f = this.z;
            if (f > 0.0f) {
                this.y.setStrokeWidth(f * 2.0f);
                canvas.drawPath(this.v, this.y);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void q(float f) {
        int length = this.u.length;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            float[] fArr = this.u;
            if (fArr[i] < 0.0f) {
                fArr[i] = 0.0f;
            } else {
                z = true;
            }
        }
        if (!z) {
            if (f < 0.0f) {
                f = 0.0f;
            }
            int length2 = this.u.length;
            for (int i2 = 0; i2 < length2; i2++) {
                this.u[i2] = f;
            }
        }
        r();
    }

    public final void r() {
        float[] fArr = this.w;
        if (fArr == null) {
            float[] fArr2 = this.u;
            float f = fArr2[0];
            float f2 = fArr2[1];
            float f3 = fArr2[2];
            float f4 = fArr2[3];
            this.w = new float[]{f, f, f2, f2, f3, f3, f4, f4};
            return;
        }
        float[] fArr3 = this.u;
        fArr[0] = fArr3[0];
        fArr[1] = fArr3[0];
        float f5 = fArr3[1];
        fArr[2] = f5;
        fArr[3] = f5;
        float f6 = fArr3[2];
        fArr[4] = f6;
        fArr[5] = f6;
        float f7 = fArr3[3];
        fArr[6] = f7;
        fArr[7] = f7;
    }

    public void refreshView(b bVar) {
        boolean z;
        if (bVar == null) {
            return;
        }
        boolean z2 = true;
        if (bVar.f == -1 || this.p == bVar.f) {
            z = false;
        } else {
            this.p = bVar.f;
            z = true;
        }
        if (bVar.e != null && !this.A.equals(bVar.e)) {
            ColorStateList colorStateList = bVar.e;
            this.A = colorStateList;
            this.y.setColor(colorStateList.getColorForState(getState(), -1));
            if (this.z > 0.0f) {
                z = true;
            }
        }
        if (bVar.d > 0.0f) {
            float f = bVar.d;
            this.z = f;
            this.y.setStrokeWidth(f);
            z = true;
        }
        if (this.u[0] != bVar.g[0] || this.u[1] != bVar.g[1] || this.u[2] != bVar.g[2] || this.u[3] != bVar.g[3]) {
            this.u[0] = bVar.g[0];
            this.u[1] = bVar.g[1];
            this.u[3] = bVar.g[3];
            this.u[2] = bVar.g[2];
            r();
            z = true;
        }
        if (bVar.b != -1 && this.d != bVar.b) {
            this.d = bVar.b;
            z = true;
        }
        if (bVar.c > 0.0f && this.e != bVar.c) {
            this.e = bVar.c;
            this.g = true;
            z = true;
        }
        if (bVar.a <= 0.0f || this.c == bVar.a) {
            z2 = z;
        } else {
            this.c = bVar.a;
            this.g = true;
            u();
        }
        if (z2) {
            invalidate();
        }
    }

    public boolean s() {
        Bitmap bitmap;
        try {
            float f = this.e;
            if (f == 0.0f) {
                t();
                return false;
            }
            float f2 = this.c;
            float f3 = f / f2;
            if (f3 > 25.0f) {
                f2 = (f2 * f3) / 25.0f;
                f3 = 25.0f;
            }
            int width = getWidth();
            int height = getHeight();
            int iMax = Math.max(1, (int) (width / f2));
            int iMax2 = Math.max(1, (int) (height / f2));
            boolean z = this.g;
            if (this.j == null || (bitmap = this.i) == null || bitmap.getWidth() != iMax || this.i.getHeight() != iMax2) {
                u();
                try {
                    try {
                        Bitmap.Config config = Bitmap.Config.ARGB_8888;
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax2, config);
                        this.h = bitmapCreateBitmap;
                        if (bitmapCreateBitmap == null) {
                            t();
                            return false;
                        }
                        this.j = new Canvas(this.h);
                        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iMax, iMax2, config);
                        this.i = bitmapCreateBitmap2;
                        if (bitmapCreateBitmap2 == null) {
                            t();
                            return false;
                        }
                        z = true;
                    } catch (Throwable th) {
                        t();
                        throw th;
                    }
                } catch (OutOfMemoryError unused) {
                    t();
                    return false;
                }
            }
            if (z) {
                if (!this.f.b(getContext(), this.h, f3)) {
                    return false;
                }
                this.g = false;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void t() {
        u();
        this.f.release();
    }

    public final void u() {
        Bitmap bitmap = this.h;
        if (bitmap != null) {
            bitmap.recycle();
            this.h = null;
        }
        Bitmap bitmap2 = this.i;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.i = null;
        }
        if (this.B != null) {
            this.B = null;
        }
        if (this.C != null) {
            this.C = null;
        }
        this.b = null;
    }

    public final void v() {
        WindowInsets rootWindowInsets = getRootWindowInsets();
        if (rootWindowInsets != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.F = rootWindowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom;
            } else {
                this.F = rootWindowInsets.getSystemWindowInsetBottom();
            }
        }
    }
}
