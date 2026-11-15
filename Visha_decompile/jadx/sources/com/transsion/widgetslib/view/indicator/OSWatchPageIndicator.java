package com.transsion.widgetslib.view.indicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.widgetslib.R;
import defpackage.bq5;
import defpackage.olb;
import java.util.ArrayList;
import org.apache.commons.text.StringSubstitutor;

public class OSWatchPageIndicator extends View {
    public static final int DIRECTION_HORIZONTAL = 0;
    public static final int DIRECTION_VERTICAL = 1;
    public boolean b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public ArrayList j;
    public int k;
    public int l;
    public int m;
    public Paint n;
    public float o;
    public ViewPager2 p;
    public ViewPager q;
    public int r;
    public double s;
    public int t;
    public ViewPager2.OnPageChangeCallback u;
    public ViewPager.SimpleOnPageChangeListener v;

    public static class SaveState extends View.BaseSavedState {
        public static final Parcelable.Creator<SaveState> CREATOR = new a();
        int currentIndex;

        public class a implements Parcelable.Creator {
            @Override
            public SaveState createFromParcel(Parcel parcel) {
                return new SaveState(parcel);
            }

            @Override
            public SaveState[] newArray(int i) {
                return new SaveState[i];
            }
        }

        public String toString() {
            return ("OSWatchPageIndicator.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " currentIndex=" + this.currentIndex) + StringSubstitutor.DEFAULT_VAR_END;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentIndex);
        }

        public SaveState(Parcelable parcelable) {
            super(parcelable);
            this.currentIndex = 0;
        }

        private SaveState(Parcel parcel) {
            super(parcel);
            this.currentIndex = 0;
            this.currentIndex = parcel.readInt();
        }
    }

    public class a extends ViewPager2.OnPageChangeCallback {
        public a() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            super.onPageScrollStateChanged(i);
            OSWatchPageIndicator.this.pageScrollStateChanged(i);
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            super.onPageScrolled(i, f, i2);
            OSWatchPageIndicator.this.whenPageScroll(i, f, i2);
        }
    }

    public class b extends ViewPager.SimpleOnPageChangeListener {
        public b() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            super.onPageScrollStateChanged(i);
            OSWatchPageIndicator.this.whenPageScrollStateChanged(i);
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            super.onPageScrolled(i, f, i2);
            OSWatchPageIndicator.this.whenPageScroll(i, f, i2);
        }
    }

    public class c {
        public float a;
        public float b;
        public float c;
        public boolean d;

        public c() {
        }

        public String toString() {
            return "centerX: " + this.a + ", centerY" + this.b + ", radius" + this.c + ", isSelected = " + this.d;
        }
    }

    public interface d {
    }

    public OSWatchPageIndicator(Context context) {
        this(context, null);
    }

    public static int getAlphaComponent(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i & 16777215) | (i2 << 24);
    }

    private int getDynamicAlphaAc() {
        int i = this.g >>> 24;
        return (int) (i + (((this.h >>> 24) - i) * this.o));
    }

    private int getDynamicAlphaDe() {
        int i = this.g >>> 24;
        int i2 = this.h >>> 24;
        return (int) (i2 - ((i2 - i) * this.o));
    }

    public final int a(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        for (int i = 0; i < this.j.size(); i++) {
            c cVar = (c) this.j.get(i);
            double dSqrt = Math.sqrt(Math.pow(x - cVar.a, 2.0d) + Math.pow(y - cVar.b, 2.0d));
            bq5.o("getIndexOfMarkers sqrt = " + dSqrt);
            if (dSqrt <= this.e) {
                bq5.o("getIndexOfMarkers hit index = " + i);
                return i;
            }
        }
        return -1;
    }

    public void addMarker() {
        if (this.j.size() == 3) {
            throw new IllegalArgumentException("Out of bounds, this view can only accept the num within 3.");
        }
        this.j.add(new c());
        e();
        d();
        requestLayout();
    }

    public void addMarkers(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            this.j.add(new c());
        }
        e();
        d();
        requestLayout();
    }

    public final float b(int i, int i2) {
        return i + ((i2 - i) * this.o);
    }

    public void bindViewPager(ViewPager2 viewPager2) {
        this.p = viewPager2;
        if (viewPager2 != null) {
            viewPager2.registerOnPageChangeCallback(this.u);
        }
    }

    public final float c(int i, int i2) {
        return i - ((i - i2) * this.o);
    }

    public final void d() {
        int i;
        boolean z = true;
        float f = 2.0f;
        float size = (this.j.size() - 1) / 2.0f;
        int i2 = 0;
        while (i2 < this.j.size()) {
            c cVar = (c) this.j.get(i2);
            int i3 = this.k;
            cVar.c = i3 == i2 ? this.f : this.e;
            cVar.d = i3 == i2 ? z : false;
            if (this.i != z) {
                float measuredWidth = getMeasuredWidth() / f;
                float measuredHeight = (getMeasuredHeight() - this.c) - this.e;
                float f2 = i2;
                cVar.a = (float) (((double) measuredWidth) - (((double) this.r) * Math.sin(((double) (size - f2)) * this.s)));
                double d2 = measuredHeight;
                int i4 = this.r;
                cVar.b = (float) (d2 - (((double) i4) - (((double) i4) * Math.cos(((double) (f2 - size)) * this.s))));
                i = i2;
            } else {
                int i5 = i2;
                float measuredWidth2 = this.b ? this.d + this.e : (getMeasuredWidth() - this.d) - this.e;
                float measuredHeight2 = getMeasuredHeight() / f;
                double d3 = measuredWidth2;
                int i6 = this.r;
                double d4 = i6;
                double d5 = i6;
                i = i5;
                float f3 = i;
                cVar.a = (float) (d3 - ((d4 - (d5 * Math.cos(((double) (f3 - size)) * this.s))) * ((double) (this.b ? -1 : 1))));
                cVar.b = (float) (((double) measuredHeight2) - (((double) this.r) * Math.sin(((double) (size - f3)) * this.s)));
            }
            bq5.o(cVar.toString());
            i2 = i + 1;
            z = true;
            f = 2.0f;
        }
    }

    public final void e() {
        int i = (this.f - this.e) + 1;
        this.d = i;
        this.c = i;
    }

    public final void f(Context context) {
        if (this.i != 0) {
            this.r = (context.getResources().getDisplayMetrics().widthPixels / 2) - ((ViewGroup.MarginLayoutParams) getLayoutParams()).getMarginEnd();
        } else {
            this.r = (context.getResources().getDisplayMetrics().widthPixels / 2) - ((ViewGroup.MarginLayoutParams) getLayoutParams()).bottomMargin;
        }
    }

    public final boolean g() {
        return this.j.size() == 2;
    }

    public int getScrollState() {
        ViewPager2 viewPager2 = this.p;
        return viewPager2 != null ? viewPager2.getScrollState() : this.t;
    }

    public final int h() {
        if (this.j.isEmpty()) {
            return 0;
        }
        float size = (this.j.size() - 1) / 2.0f;
        if (this.i == 1) {
            return (int) (((double) ((this.c * 2) + (this.e * 2))) + (Math.sin(this.s * ((double) size)) * ((double) this.r) * 2.0d));
        }
        int i = this.r;
        return (int) ((((double) i) - (((double) i) * Math.cos(this.s * ((double) size)))) + ((double) (this.e * 2)) + ((double) (this.c * 2)));
    }

    public final int i() {
        if (this.j.isEmpty()) {
            return 0;
        }
        float size = (this.j.size() - 1) / 2.0f;
        if (this.i != 1) {
            return (int) (((double) ((this.d * 2) + (this.e * 2))) + (Math.sin(this.s * ((double) size)) * ((double) this.r) * 2.0d));
        }
        int i = this.r;
        return (int) ((((double) i) - (((double) i) * Math.cos(this.s * ((double) size)))) + ((double) (this.e * 2)) + ((double) (this.d * 2)));
    }

    public boolean isIDELState() {
        ViewPager2 viewPager2 = this.p;
        if (viewPager2 != null) {
            return viewPager2.getScrollState() == 0;
        }
        return this.t == 0;
    }

    public final void j() {
        int i = 0;
        while (i < this.j.size()) {
            ((c) this.j.get(i)).d = i == this.k;
            i++;
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager2 viewPager2 = this.p;
        if (viewPager2 != null) {
            viewPager2.unregisterOnPageChangeCallback(this.u);
        }
        ViewPager viewPager = this.q;
        if (viewPager != null) {
            viewPager.removeOnPageChangeListener(this.v);
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (this.j.size() <= 1) {
            return;
        }
        canvas.save();
        this.n.setColor(this.g);
        int size = this.j.size();
        for (int i = 0; i < size; i++) {
            c cVar = (c) this.j.get(i);
            boolean z = this.b;
            int i2 = (z && this.i == 0) ? (size - 1) - this.k : this.k;
            int i3 = (z && this.i == 0) ? (size - 1) - this.l : this.l;
            bq5.o("mIsRtl = " + this.b + " DIRECTION_HORIZONTAL = " + this.i + " mCurrentMarkerIndexTemp = " + i2 + " mNextMarkerIndexTemp = " + i3 + " mViewPager2.getScrollState() = " + getScrollState());
            if (isIDELState()) {
                if (i == i2) {
                    this.n.setColor(this.h);
                    canvas.drawCircle(cVar.a, cVar.b, this.f, this.n);
                } else {
                    this.n.setColor(this.g);
                    canvas.drawCircle(cVar.a, cVar.b, g() ? this.f : this.e, this.n);
                }
            } else if (i == i2 && i3 == i2) {
                this.n.setColor(this.h);
                canvas.drawCircle(cVar.a, cVar.b, this.f, this.n);
            } else if (i == i2) {
                this.n.setColor(getAlphaComponent(this.h, getDynamicAlphaDe()));
                canvas.drawCircle(cVar.a, cVar.b, c(this.f, g() ? this.f : this.e), this.n);
            } else if (i == i3) {
                this.n.setColor(getAlphaComponent(this.h, getDynamicAlphaAc()));
                canvas.drawCircle(cVar.a, cVar.b, b(g() ? this.f : this.e, this.f), this.n);
            } else {
                this.n.setColor(this.g);
                canvas.drawCircle(cVar.a, cVar.b, g() ? this.f : this.e, this.n);
            }
        }
        canvas.restore();
    }

    @Override
    public void onMeasure(int i, int i2) {
        f(getContext());
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            size = i();
        }
        if (mode2 != 1073741824) {
            size2 = h();
        }
        setMeasuredDimension(size, size2);
        d();
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        bq5.o("MotionEvent = " + MotionEvent.actionToString(motionEvent.getAction()));
        if (motionEvent.getAction() != 0) {
            return super.onTouchEvent(motionEvent);
        }
        return a(motionEvent) != -1;
    }

    public void pageScrollStateChanged(int i) {
        bq5.o("onPageScrollStateChanged state = " + i + " mFinalMarkerIndex = " + this.m);
        if (isIDELState()) {
            this.k = this.m;
            invalidate();
        }
    }

    public void removeMarker() {
        if (this.j.size() <= 2) {
            throw new RuntimeException("Out of bounds, at least 2 markers.");
        }
        int size = this.j.size() - 1;
        this.j.remove(size);
        if (this.k > size) {
            this.m = size;
            this.k = size;
        }
        d();
        requestLayout();
    }

    public void setCurrent(int i) {
        if (i == this.k) {
            return;
        }
        if (i < 0 || i > this.j.size() - 1) {
            throw new RuntimeException("OSWatchPageIndicator ArrayIndexOutOfBoundsException: index out of bounds.");
        }
        this.m = i;
        this.k = i;
        j();
        postInvalidate();
    }

    public void setDirection(int i) {
        this.i = i;
        requestLayout();
    }

    public void setIsRtl(boolean z) {
        this.b = z;
        requestLayout();
    }

    public void setNormalCircleRadius(int i) {
        this.e = i;
        requestLayout();
    }

    public void setNormalColor(@ColorInt int i) {
        this.g = i;
        invalidate();
    }

    public void setOnMarkerClickListener(d dVar) {
    }

    public void setSelectedCircleRadius(int i) {
        this.f = i;
        requestLayout();
    }

    public void setSelectedColor(@ColorInt int i) {
        this.h = i;
        invalidate();
    }

    public void update(float f) {
        this.o = Math.abs(f);
        if (f > 0.0f) {
            int i = this.k + 1 > this.j.size() + (-1) ? this.k : this.k + 1;
            this.l = i;
            if (f > 0.5f) {
                this.m = i;
            } else {
                this.m = this.k;
            }
        } else if (f < 0.0f) {
            int i2 = this.k;
            if (i2 - 1 >= 0) {
                i2--;
            }
            this.l = i2;
            if (Math.abs(f) > 0.5f) {
                this.m = this.l;
            } else {
                this.m = this.k;
            }
        }
        bq5.o("mNextMarkerIndex = " + this.l + " percent = " + f);
        postInvalidate();
    }

    public void whenPageScroll(int i, float f, int i2) {
        if ((i == 0 || i == this.j.size() - 1) && i2 == 0 && !isIDELState()) {
            return;
        }
        bq5.o("onPageScrolled position = " + i + " mCurrentMarkerIndex = " + this.k + " positionOffset = " + f + " positionOffsetPixels = " + i2 + " mViewPager2.getScrollState() = " + getScrollState());
        int i3 = this.k;
        if (i >= i3 && i2 != 0) {
            if (i != i3) {
                this.k = i;
            }
            update(f);
        } else if (i < i3 && i2 != 0) {
            if (i3 - i > 1) {
                this.k = i + 1;
            }
            update(f - 1.0f);
        } else if (f == 0.0f) {
            this.k = this.m;
            postInvalidate();
        }
    }

    public void whenPageScrollStateChanged(int i) {
        this.t = i;
        pageScrollStateChanged(i);
    }

    public OSWatchPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = 0;
        this.l = 0;
        this.m = 0;
        this.r = 233;
        this.t = 0;
        this.u = new a();
        this.v = new b();
        setLayerType(1, null);
        this.b = olb.l0();
        Resources resources = context.getResources();
        this.e = resources.getDimensionPixelOffset(R.dimen.os_watch_page_marker_normal_radius);
        this.f = resources.getDimensionPixelOffset(R.dimen.os_watch_page_marker_selected_radius);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSWatchPageIndicator);
        this.g = typedArrayObtainStyledAttributes.getColor(R.styleable.OSWatchPageIndicator_osWatchPINormalColor, getResources().getColor(R.color.os_watch_indicator_normal_color));
        int i = R.styleable.OSWatchPageIndicator_osWatchPISelectedColor;
        this.h = typedArrayObtainStyledAttributes.getColor(i, getResources().getColor(R.color.os_watch_indicator_selected_color));
        this.f = typedArrayObtainStyledAttributes.getColor(R.styleable.OSWatchPageIndicator_osWatchPISelectedRadius, this.f);
        this.e = typedArrayObtainStyledAttributes.getColor(i, this.e);
        this.s = ((double) (typedArrayObtainStyledAttributes.getInteger(R.styleable.OSWatchPageIndicator_osWatchPIAngle, 7) / 180.0f)) * 3.141592653589793d;
        this.i = typedArrayObtainStyledAttributes.getInt(R.styleable.OSWatchPageIndicator_osWatchPINDirection, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.j = new ArrayList();
        Paint paint = new Paint();
        this.n = paint;
        paint.setStyle(Paint.Style.FILL);
        this.n.setAntiAlias(true);
        this.n.setDither(true);
        e();
    }

    public void bindViewPager(ViewPager viewPager) {
        this.q = viewPager;
        if (viewPager != null) {
            viewPager.addOnPageChangeListener(this.v);
        }
    }
}
