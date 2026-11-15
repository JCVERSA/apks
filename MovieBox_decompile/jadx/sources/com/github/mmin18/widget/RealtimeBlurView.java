package com.github.mmin18.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import com.github.mmin18.realtimeblurview.R$styleable;

public class RealtimeBlurView extends View {

    private static int f23475p;

    private static int f23476q;

    private static StopException f23477r = new StopException(null);

    private float f23478a;

    private int f23479b;

    private float f23480c;

    private final c f23481d;

    private boolean f23482e;

    private Bitmap f23483f;

    private Bitmap f23484g;

    private Canvas f23485h;

    private boolean f23486i;

    private Paint f23487j;

    private final Rect f23488k;

    private final Rect f23489l;

    private View f23490m;

    private boolean f23491n;

    private final ViewTreeObserver.OnPreDrawListener f23492o;

    private static class StopException extends RuntimeException {
        private StopException() {
        }

        StopException(a aVar) {
            this();
        }
    }

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override
        public boolean onPreDraw() {
            int[] iArr = new int[2];
            Bitmap bitmap = RealtimeBlurView.this.f23484g;
            View view = RealtimeBlurView.this.f23490m;
            if (view != null && RealtimeBlurView.this.isShown() && RealtimeBlurView.this.l()) {
                boolean z10 = RealtimeBlurView.this.f23484g != bitmap;
                view.getLocationOnScreen(iArr);
                int i10 = -iArr[0];
                int i11 = -iArr[1];
                RealtimeBlurView.this.getLocationOnScreen(iArr);
                int i12 = i10 + iArr[0];
                int i13 = i11 + iArr[1];
                RealtimeBlurView.this.f23483f.eraseColor(RealtimeBlurView.this.f23479b & 16777215);
                int iSave = RealtimeBlurView.this.f23485h.save();
                RealtimeBlurView.this.f23486i = true;
                RealtimeBlurView.g();
                try {
                    RealtimeBlurView.this.f23485h.scale((RealtimeBlurView.this.f23483f.getWidth() * 1.0f) / RealtimeBlurView.this.getWidth(), (RealtimeBlurView.this.f23483f.getHeight() * 1.0f) / RealtimeBlurView.this.getHeight());
                    RealtimeBlurView.this.f23485h.translate(-i12, -i13);
                    if (view.getBackground() != null) {
                        view.getBackground().draw(RealtimeBlurView.this.f23485h);
                    }
                    view.draw(RealtimeBlurView.this.f23485h);
                } catch (StopException unused) {
                } finally {
                    RealtimeBlurView.this.f23486i = false;
                    RealtimeBlurView.h();
                    RealtimeBlurView.this.f23485h.restoreToCount(iSave);
                }
                RealtimeBlurView realtimeBlurView = RealtimeBlurView.this;
                realtimeBlurView.j(realtimeBlurView.f23483f, RealtimeBlurView.this.f23484g);
                if (z10 || RealtimeBlurView.this.f23491n) {
                    RealtimeBlurView.this.invalidate();
                }
            }
            return true;
        }
    }

    public RealtimeBlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23488k = new Rect();
        this.f23489l = new Rect();
        this.f23492o = new a();
        this.f23481d = getBlurImpl();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RealtimeBlurView);
        this.f23480c = typedArrayObtainStyledAttributes.getDimension(R$styleable.RealtimeBlurView_realtimeBlurRadius, TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics()));
        this.f23478a = typedArrayObtainStyledAttributes.getFloat(R$styleable.RealtimeBlurView_realtimeDownsampleFactor, 4.0f);
        this.f23479b = typedArrayObtainStyledAttributes.getColor(R$styleable.RealtimeBlurView_realtimeOverlayColor, -1426063361);
        typedArrayObtainStyledAttributes.recycle();
        this.f23487j = new Paint();
    }

    static int g() {
        int i10 = f23475p;
        f23475p = i10 + 1;
        return i10;
    }

    static int h() {
        int i10 = f23475p;
        f23475p = i10 - 1;
        return i10;
    }

    private void n() {
        Bitmap bitmap = this.f23483f;
        if (bitmap != null) {
            bitmap.recycle();
            this.f23483f = null;
        }
        Bitmap bitmap2 = this.f23484g;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.f23484g = null;
        }
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.f23486i) {
            throw f23477r;
        }
        if (f23475p > 0) {
            return;
        }
        super.draw(canvas);
    }

    protected View getActivityDecorView() {
        Context context = getContext();
        for (int i10 = 0; i10 < 4 && context != null && !(context instanceof Activity) && (context instanceof ContextWrapper); i10++) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof Activity) {
            return ((Activity) context).getWindow().getDecorView();
        }
        return null;
    }

    protected c getBlurImpl() {
        if (f23476q == 0) {
            try {
                com.github.mmin18.widget.a aVar = new com.github.mmin18.widget.a();
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888);
                aVar.b(getContext(), bitmapCreateBitmap, 4.0f);
                aVar.release();
                bitmapCreateBitmap.recycle();
                f23476q = 3;
            } catch (Throwable unused) {
            }
        }
        if (f23476q == 0) {
            try {
                getClass().getClassLoader().loadClass("androidx.renderscript.RenderScript");
                b bVar = new b();
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888);
                bVar.b(getContext(), bitmapCreateBitmap2, 4.0f);
                bVar.release();
                bitmapCreateBitmap2.recycle();
                f23476q = 1;
            } catch (Throwable unused2) {
            }
        }
        if (f23476q == 0) {
            try {
                getClass().getClassLoader().loadClass("androidx.renderscript.RenderScript");
                e eVar = new e();
                Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888);
                eVar.b(getContext(), bitmapCreateBitmap3, 4.0f);
                eVar.release();
                bitmapCreateBitmap3.recycle();
                f23476q = 2;
            } catch (Throwable unused3) {
            }
        }
        if (f23476q == 0) {
            f23476q = -1;
        }
        int i10 = f23476q;
        if (i10 == 1) {
            return new b();
        }
        if (i10 != 2) {
            return i10 != 3 ? new d() : new com.github.mmin18.widget.a();
        }
        return new e();
    }

    protected void j(Bitmap bitmap, Bitmap bitmap2) {
        this.f23481d.a(bitmap, bitmap2);
    }

    protected void k(Canvas canvas, Bitmap bitmap, int i10) {
        if (bitmap != null) {
            this.f23488k.right = bitmap.getWidth();
            this.f23488k.bottom = bitmap.getHeight();
            this.f23489l.right = getWidth();
            this.f23489l.bottom = getHeight();
            canvas.drawBitmap(bitmap, this.f23488k, this.f23489l, (Paint) null);
        }
        this.f23487j.setColor(i10);
        canvas.drawRect(this.f23489l, this.f23487j);
    }

    protected boolean l() {
        Bitmap bitmap;
        float f10 = this.f23480c;
        if (f10 == 0.0f) {
            m();
            return false;
        }
        float f11 = this.f23478a;
        float f12 = f10 / f11;
        if (f12 > 25.0f) {
            f11 = (f11 * f12) / 25.0f;
            f12 = 25.0f;
        }
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(1, (int) (width / f11));
        int iMax2 = Math.max(1, (int) (height / f11));
        boolean z10 = this.f23482e;
        if (this.f23485h == null || (bitmap = this.f23484g) == null || bitmap.getWidth() != iMax || this.f23484g.getHeight() != iMax2) {
            n();
            try {
                Bitmap.Config config = Bitmap.Config.ARGB_8888;
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax2, config);
                this.f23483f = bitmapCreateBitmap;
                if (bitmapCreateBitmap == null) {
                    m();
                    return false;
                }
                this.f23485h = new Canvas(this.f23483f);
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iMax, iMax2, config);
                this.f23484g = bitmapCreateBitmap2;
                if (bitmapCreateBitmap2 == null) {
                    m();
                    return false;
                }
                z10 = true;
            } catch (OutOfMemoryError unused) {
                m();
                return false;
            } catch (Throwable unused2) {
                m();
                return false;
            }
        }
        if (z10) {
            if (!this.f23481d.b(getContext(), this.f23483f, f12)) {
                return false;
            }
            this.f23482e = false;
        }
        return true;
    }

    protected void m() {
        n();
        this.f23481d.release();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        View activityDecorView = getActivityDecorView();
        this.f23490m = activityDecorView;
        if (activityDecorView == null) {
            this.f23491n = false;
            return;
        }
        activityDecorView.getViewTreeObserver().addOnPreDrawListener(this.f23492o);
        boolean z10 = this.f23490m.getRootView() != getRootView();
        this.f23491n = z10;
        if (z10) {
            this.f23490m.postInvalidate();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        View view = this.f23490m;
        if (view != null) {
            view.getViewTreeObserver().removeOnPreDrawListener(this.f23492o);
        }
        m();
        super.onDetachedFromWindow();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        k(canvas, this.f23484g, this.f23479b);
    }

    public void setBlurRadius(float f10) {
        if (this.f23480c != f10) {
            this.f23480c = f10;
            this.f23482e = true;
            invalidate();
        }
    }

    public void setDownsampleFactor(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Downsample factor must be greater than 0.");
        }
        if (this.f23478a != f10) {
            this.f23478a = f10;
            this.f23482e = true;
            n();
            invalidate();
        }
    }

    public void setOverlayColor(int i10) {
        if (this.f23479b != i10) {
            this.f23479b = i10;
            invalidate();
        }
    }
}
