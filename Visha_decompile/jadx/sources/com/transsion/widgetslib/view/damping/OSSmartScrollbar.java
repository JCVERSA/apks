package com.transsion.widgetslib.view.damping;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Property;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ScrollingView;
import com.transsion.widgetslib.R;
import defpackage.bq5;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class OSSmartScrollbar extends View {
    public static final String x = "OSSmartScrollbar";
    public Paint b;
    public float c;
    public float d;
    public PathMeasure e;
    public Path f;
    public Path g;
    public float h;
    public float i;
    public float j;
    public float k;
    public float l;
    public int m;
    public int n;
    public int o;
    public ObjectAnimator p;
    public View q;
    public ScrollingView r;
    public boolean s;
    public ViewGroup t;
    public ViewTreeObserver.OnGlobalLayoutListener u;
    public ViewTreeObserver.OnScrollChangedListener v;
    public final Runnable w;

    public static final class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public final WeakReference b;

        public a(OSSmartScrollbar oSSmartScrollbar) {
            this.b = new WeakReference(oSSmartScrollbar);
        }

        @Override
        public void onGlobalLayout() {
            float f;
            OSSmartScrollbar oSSmartScrollbar = (OSSmartScrollbar) this.b.get();
            if (oSSmartScrollbar == null) {
                return;
            }
            int scrollRange = oSSmartScrollbar.getScrollRange();
            int scrollOffset = oSSmartScrollbar.getScrollOffset();
            int scrollExtent = oSSmartScrollbar.getScrollExtent();
            int paddingBottom = (scrollRange - scrollExtent) + oSSmartScrollbar.q.getPaddingBottom();
            oSSmartScrollbar.g.reset();
            if (paddingBottom > 0) {
                paddingBottom = Math.min(paddingBottom, oSSmartScrollbar.m);
                float f2 = paddingBottom;
                oSSmartScrollbar.h = oSSmartScrollbar.j * (1.0f - ((f2 * 1.0f) / oSSmartScrollbar.m));
                oSSmartScrollbar.h = Math.max(oSSmartScrollbar.h, oSSmartScrollbar.i);
                oSSmartScrollbar.h = Math.min(oSSmartScrollbar.h, oSSmartScrollbar.j);
                oSSmartScrollbar.k = oSSmartScrollbar.e.getLength() - oSSmartScrollbar.h;
                f = (scrollOffset * 1.0f) / f2;
                if (oSSmartScrollbar.getLayoutDirection() == 0) {
                    f = 1.0f - f;
                }
                float f3 = oSSmartScrollbar.k * f;
                oSSmartScrollbar.e.getSegment(f3, oSSmartScrollbar.h + f3, oSSmartScrollbar.g, true);
            } else {
                f = 0.0f;
            }
            oSSmartScrollbar.l = f;
            bq5.c(OSSmartScrollbar.x, "onGlobalLayout, scrollRange: " + scrollRange + ", scrollOffset: " + scrollOffset + ", scrollExtent: " + scrollExtent + ", scrollDistance: " + paddingBottom + ", ratio: " + f);
            oSSmartScrollbar.invalidate();
        }
    }

    public static final class b implements ViewTreeObserver.OnScrollChangedListener {
        public final WeakReference b;

        public b(OSSmartScrollbar oSSmartScrollbar) {
            this.b = new WeakReference(oSSmartScrollbar);
        }

        @Override
        public void onScrollChanged() {
            float f;
            OSSmartScrollbar oSSmartScrollbar = (OSSmartScrollbar) this.b.get();
            if (oSSmartScrollbar == null) {
                return;
            }
            int scrollRange = oSSmartScrollbar.getScrollRange();
            int scrollOffset = oSSmartScrollbar.getScrollOffset();
            int scrollExtent = (scrollRange - oSSmartScrollbar.getScrollExtent()) + oSSmartScrollbar.q.getPaddingBottom();
            oSSmartScrollbar.g.reset();
            if (scrollExtent > 0) {
                f = (scrollOffset * 1.0f) / scrollExtent;
                if (oSSmartScrollbar.getLayoutDirection() == 0) {
                    f = 1.0f - f;
                }
                float f2 = oSSmartScrollbar.k * f;
                oSSmartScrollbar.e.getSegment(f2, oSSmartScrollbar.h + f2, oSSmartScrollbar.g, true);
            } else {
                f = 0.0f;
            }
            oSSmartScrollbar.l = f;
            oSSmartScrollbar.invalidate();
        }
    }

    public OSSmartScrollbar(@NonNull Context context) {
        super(context);
        this.t = null;
        this.w = new Runnable() {
            @Override
            public void run() {
                OSSmartScrollbar.this.p.start();
            }
        };
        q(null);
    }

    public int getScrollExtent() {
        ScrollingView scrollingView = this.r;
        return scrollingView == null ? r(this.q, "computeVerticalScrollExtent") : scrollingView.computeVerticalScrollExtent();
    }

    public int getScrollOffset() {
        ScrollingView scrollingView = this.r;
        return scrollingView == null ? r(this.q, "computeVerticalScrollOffset") : scrollingView.computeVerticalScrollOffset();
    }

    public int getScrollRange() {
        ScrollingView scrollingView = this.r;
        return scrollingView == null ? r(this.q, "computeVerticalScrollRange") : scrollingView.computeVerticalScrollRange();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void associateScrollableView(View view) {
        bq5.p(x, "associateScrollView, scrollingView: " + view);
        if (view == 0 || this.q == view) {
            return;
        }
        unregisterScrollChangedListener();
        this.q = view;
        this.r = view instanceof ScrollingView ? (ScrollingView) view : null;
        registerScrollChangedListener();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        s();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.g.isEmpty() || this.t == null) {
            return;
        }
        canvas.save();
        canvas.translate(this.t.getWidth() / 2.0f, getHeight() / 2.0f);
        this.b.setColor(this.n);
        canvas.drawPath(this.f, this.b);
        this.b.setColor(this.o);
        canvas.drawPath(this.g, this.b);
        canvas.restore();
        t();
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(View.MeasureSpec.getMode(i) == 1073741824 ? View.MeasureSpec.getSize(i) : (int) (((int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics())) + this.c + this.d), View.MeasureSpec.getMode(i2) == 1073741824 ? View.MeasureSpec.getSize(i2) : (int) TypedValue.applyDimension(1, 45.0f, getResources().getDisplayMetrics()));
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        refreshArc();
    }

    @Override
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (z) {
            registerScrollChangedListener();
        } else {
            s();
        }
    }

    public final void q(AttributeSet attributeSet) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.m = displayMetrics.heightPixels * 10;
        this.n = Color.parseColor("#33FFFFFF");
        this.o = Color.parseColor("#99FFFFFF");
        this.d = TypedValue.applyDimension(1, 3.0f, displayMetrics);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.OSSmartScrollbar);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.OSSmartScrollbar_arc_color) {
                    setArcColor(typedArrayObtainStyledAttributes.getColor(index, this.n));
                } else if (index == R.styleable.OSSmartScrollbar_bar_color) {
                    setBarColor(typedArrayObtainStyledAttributes.getColor(index, this.o));
                } else if (index == R.styleable.OSSmartScrollbar_bar_margin) {
                    setBarMargin(typedArrayObtainStyledAttributes.getDimension(index, this.d));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        Paint paint = new Paint(1);
        this.b = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.b.setStrokeCap(Paint.Cap.ROUND);
        float fApplyDimension = TypedValue.applyDimension(1, 2.5f, displayMetrics);
        this.c = fApplyDimension;
        this.b.setStrokeWidth(fApplyDimension);
        this.e = new PathMeasure();
        this.f = new Path();
        this.g = new Path();
        this.i = TypedValue.applyDimension(1, 9.0f, displayMetrics);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<OSSmartScrollbar, Float>) View.ALPHA, 1.0f, 0.0f);
        this.p = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(getScrollBarFadeDuration()).setStartDelay(((long) getScrollBarDefaultDelayBeforeFade()) * 4);
        this.u = new a(this);
        this.v = new b(this);
    }

    public final int r(View view, String str) {
        Method declaredMethod;
        try {
            declaredMethod = View.class.getDeclaredMethod(str, null);
        } catch (NoSuchMethodException e) {
            bq5.h(x, "get declared method error !", e);
            declaredMethod = null;
        }
        if (declaredMethod == null) {
            return 0;
        }
        declaredMethod.setAccessible(true);
        try {
            Object objInvoke = declaredMethod.invoke(view, null);
            if (objInvoke instanceof Integer) {
                return ((Integer) objInvoke).intValue();
            }
            return 0;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            bq5.h(x, "invoke method error !", e2);
            return 0;
        }
    }

    public void refreshArc() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            this.t = (ViewGroup) parent;
        } else {
            this.t = null;
        }
        ViewGroup viewGroup = this.t;
        if (viewGroup == null) {
            return;
        }
        int width = viewGroup.getWidth();
        int height = this.t.getHeight();
        float fMin = ((Math.min(width, height) - this.c) / 2.0f) - this.d;
        this.f.reset();
        float f = -fMin;
        this.f.addArc(f, f, fMin, fMin, -164.0f, -32.0f);
        if (getLayoutDirection() == 0) {
            setRotation(-180.0f);
        }
        this.e.setPath(this.f, false);
        float length = this.e.getLength();
        this.k = length - this.h;
        this.j = length - this.i;
        bq5.p(x, "refreshArc, arcLen: " + length + ", mBarLen: " + this.h + ", mMinBarLen: " + this.i + ", mMaxBarLen: " + this.j + ", mStopD: " + this.k + ", w: " + width + ", h: " + height + ", radius: " + fMin);
        this.g.reset();
        float f2 = this.k * this.l;
        this.e.getSegment(f2, this.h + f2, this.g, true);
    }

    public void registerScrollChangedListener() {
        View view = this.q;
        if (view == null || this.s) {
            return;
        }
        this.s = true;
        view.getViewTreeObserver().addOnGlobalLayoutListener(this.u);
        this.q.getViewTreeObserver().addOnScrollChangedListener(this.v);
    }

    public final void s() {
        unregisterScrollChangedListener();
        if (this.p.isRunning()) {
            this.p.cancel();
        }
        Handler handler = getHandler();
        if (handler == null || !handler.hasCallbacks(this.w)) {
            return;
        }
        handler.removeCallbacks(this.w);
    }

    public void setArcColor(int i) {
        this.n = i;
    }

    public void setBarColor(int i) {
        this.o = i;
    }

    public void setBarMargin(float f) {
        this.d = f;
    }

    public final void t() {
        if (this.p.isRunning()) {
            this.p.cancel();
        }
        setAlpha(1.0f);
        Handler handler = getHandler();
        if (handler != null) {
            if (handler.hasCallbacks(this.w)) {
                handler.removeCallbacks(this.w);
            }
            handler.postDelayed(this.w, 100L);
        }
    }

    public void unregisterScrollChangedListener() {
        View view = this.q;
        if (view != null && this.s) {
            this.s = false;
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this.u);
            this.q.getViewTreeObserver().removeOnScrollChangedListener(this.v);
        }
    }

    public OSSmartScrollbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.t = null;
        this.w = new Runnable() {
            @Override
            public void run() {
                OSSmartScrollbar.this.p.start();
            }
        };
        q(attributeSet);
    }

    public OSSmartScrollbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.t = null;
        this.w = new Runnable() {
            @Override
            public void run() {
                OSSmartScrollbar.this.p.start();
            }
        };
        q(attributeSet);
    }
}
