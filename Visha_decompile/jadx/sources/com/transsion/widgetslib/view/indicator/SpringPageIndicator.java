package com.transsion.widgetslib.view.indicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.Scroller;
import androidx.annotation.ColorInt;
import com.transsion.widgetsmotionlibrary.R;
import defpackage.olb;
import java.util.ArrayList;

public class SpringPageIndicator extends View {
    public int A;
    public int B;
    public boolean C;
    public boolean D;
    public int E;
    public Path F;
    public Path G;
    public Path H;
    public Path I;
    public int J;
    public int K;
    public float L;
    public Paint M;
    public Scroller N;
    public int O;
    public RectF P;
    public PointF Q;
    public PointF R;
    public PointF S;
    public PorterDuffXfermode T;
    public PorterDuffXfermode U;
    public int V;
    public int W;
    public boolean b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public PointF i;
    public PointF j;
    public PointF k;
    public PointF l;
    public PointF m;
    public PointF n;
    public PointF o;
    public PointF p;
    public PointF q;
    public PointF r;
    public PointF s;
    public PointF t;
    public a u;
    public a v;
    public a w;
    public a x;
    public int y;
    public ArrayList z;

    public class a {
        public float a;
        public float b;
        public float c;

        public a() {
        }

        public String toString() {
            return "centerX: " + this.a + ", centerY" + this.b + ", radius" + this.c;
        }
    }

    public SpringPageIndicator(Context context) {
        this(context, null);
    }

    private void setAddPath(a aVar) {
        this.I.reset();
        float f = aVar.c;
        int i = (int) (f / 6.0f);
        int i2 = (int) ((f * 3.0f) / 4.0f);
        RectF rectF = this.P;
        float f2 = i2;
        float f3 = aVar.a - f2;
        rectF.left = f3;
        float f4 = i;
        float f5 = aVar.b - f4;
        rectF.top = f5;
        float f6 = i2 * 2;
        rectF.right = f3 + f6;
        float f7 = i * 2;
        rectF.bottom = f5 + f7;
        Path path = this.I;
        Path.Direction direction = Path.Direction.CW;
        path.addRect(rectF, direction);
        float f8 = aVar.a - f4;
        rectF.left = f8;
        float f9 = aVar.b - f2;
        rectF.top = f9;
        rectF.right = f8 + f7;
        rectF.bottom = f9 + f6;
        this.I.addRect(rectF, direction);
    }

    public static int setAlphaComponent(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i & 16777215) | (i2 << 24);
    }

    public final void a() {
        int iD;
        ArrayList arrayList = this.z;
        if (arrayList == null || arrayList.size() == 0) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int size = this.z.size();
        if (!hasWindowFocus() && (iD = d(size)) < measuredWidth) {
            measuredWidth = iD;
        }
        int i = this.f;
        int i2 = size - 1;
        int iMax = Math.max(((measuredWidth - ((i * 2) + (this.h * i2))) / 2) + i, this.d + i);
        if (this.D) {
            iMax -= this.h * this.E;
        }
        int measuredHeight = getMeasuredHeight() / 2;
        for (int i3 = 0; i3 < size; i3++) {
            a aVar = (a) this.z.get(i3);
            if (i3 == this.A) {
                aVar.c = this.f;
            } else {
                aVar.c = this.e;
            }
            if (this.b) {
                aVar.a = ((i2 - i3) * this.h) + iMax;
            } else {
                aVar.a = (this.h * i3) + iMax;
            }
            aVar.b = measuredHeight;
        }
        a aVar2 = this.v;
        float f = measuredHeight;
        this.x.b = f;
        aVar2.b = f;
    }

    public void addMarker() {
        this.z.add(new a());
        if (this.w == null || this.u == null) {
            this.A = 0;
            this.B = 0;
            a aVar = (a) this.z.get(0);
            this.u = aVar;
            this.w = aVar;
        }
        i();
        a();
        requestLayout();
    }

    public final int b(int i) {
        return (((((i - getPaddingLeft()) + getPaddingRight()) + (this.f * 2)) - (this.d * 2)) / this.h) + 1;
    }

    public final void c() {
        a aVar = this.u;
        float f = aVar.c;
        a aVar2 = this.v;
        double dAcos = Math.acos((f - aVar2.c) / (aVar2.a - aVar.a));
        PointF pointF = this.i;
        a aVar3 = this.u;
        pointF.x = aVar3.a + ((float) (((double) aVar3.c) * Math.cos(dAcos)));
        PointF pointF2 = this.i;
        a aVar4 = this.u;
        pointF2.y = aVar4.b - ((float) (((double) aVar4.c) * Math.sin(dAcos)));
        PointF pointF3 = this.k;
        a aVar5 = this.v;
        pointF3.x = aVar5.a + ((float) (((double) aVar5.c) * Math.cos(dAcos)));
        PointF pointF4 = this.k;
        a aVar6 = this.v;
        pointF4.y = aVar6.b - ((float) (((double) aVar6.c) * Math.sin(dAcos)));
        PointF pointF5 = this.j;
        pointF5.x = this.i.x;
        a aVar7 = this.u;
        pointF5.y = aVar7.b + ((float) (((double) aVar7.c) * Math.sin(dAcos)));
        PointF pointF6 = this.l;
        pointF6.x = this.k.x;
        a aVar8 = this.v;
        pointF6.y = aVar8.b + ((float) (((double) aVar8.c) * Math.sin(dAcos)));
        PointF pointF7 = this.m;
        PointF pointF8 = this.i;
        float f2 = pointF8.x;
        PointF pointF9 = this.k;
        float f3 = f2 + ((pointF9.x - f2) / 2.0f);
        pointF7.x = f3;
        float f4 = this.u.b;
        pointF7.y = f4 - ((pointF9.y - pointF8.y) / 2.0f);
        PointF pointF10 = this.n;
        pointF10.x = f3;
        pointF10.y = f4 + ((pointF9.y - pointF8.y) / 2.0f);
        a aVar9 = this.w;
        double dAcos2 = Math.acos((aVar9.c - this.v.c) / (this.x.a - aVar9.a));
        PointF pointF11 = this.o;
        a aVar10 = this.w;
        pointF11.x = aVar10.a + ((float) (((double) aVar10.c) * Math.cos(dAcos2)));
        PointF pointF12 = this.o;
        a aVar11 = this.w;
        pointF12.y = aVar11.b - ((float) (((double) aVar11.c) * Math.sin(dAcos2)));
        PointF pointF13 = this.q;
        a aVar12 = this.x;
        pointF13.x = aVar12.a + ((float) (((double) aVar12.c) * Math.cos(dAcos2)));
        PointF pointF14 = this.q;
        a aVar13 = this.x;
        pointF14.y = aVar13.b - ((float) (((double) aVar13.c) * Math.sin(dAcos2)));
        PointF pointF15 = this.p;
        pointF15.x = this.o.x;
        a aVar14 = this.w;
        pointF15.y = aVar14.b + ((float) (((double) aVar14.c) * Math.sin(dAcos2)));
        PointF pointF16 = this.r;
        pointF16.x = this.q.x;
        a aVar15 = this.x;
        pointF16.y = aVar15.b + ((float) (((double) aVar15.c) * Math.sin(dAcos2)));
        PointF pointF17 = this.s;
        PointF pointF18 = this.o;
        float f5 = pointF18.x;
        PointF pointF19 = this.q;
        float f6 = f5 + ((pointF19.x - f5) / 2.0f);
        pointF17.x = f6;
        float f7 = this.w.b;
        pointF17.y = f7 - ((pointF19.y - pointF18.y) / 2.0f);
        PointF pointF20 = this.t;
        pointF20.x = f6;
        pointF20.y = f7 + ((pointF19.y - pointF18.y) / 2.0f);
    }

    @Override
    public void computeScroll() {
        if (this.N.computeScrollOffset()) {
            scrollTo(this.N.getCurrX(), 0);
            invalidate();
        }
        super.computeScroll();
    }

    public final int d(int i) {
        return Math.max(getPaddingLeft() + getPaddingRight() + (this.d * 2), getPaddingLeft() + getPaddingRight() + (this.f * 2) + ((i - 1) * this.h) + (this.d * 2));
    }

    public final void e() {
        this.F.reset();
        Path path = this.F;
        a aVar = this.u;
        path.addCircle(aVar.a, aVar.b, aVar.c, this.y > 0 ? Path.Direction.CW : Path.Direction.CCW);
        if (this.A != this.B) {
            Path path2 = this.F;
            a aVar2 = this.v;
            path2.addCircle(aVar2.a, aVar2.b, aVar2.c, this.y > 0 ? Path.Direction.CW : Path.Direction.CCW);
            Path path3 = this.F;
            PointF pointF = this.i;
            path3.moveTo(pointF.x, pointF.y);
            Path path4 = this.F;
            PointF pointF2 = this.m;
            float f = pointF2.x;
            float f2 = pointF2.y;
            PointF pointF3 = this.k;
            path4.quadTo(f, f2, pointF3.x, pointF3.y);
            Path path5 = this.F;
            PointF pointF4 = this.l;
            path5.lineTo(pointF4.x, pointF4.y);
            Path path6 = this.F;
            PointF pointF5 = this.n;
            float f3 = pointF5.x;
            float f4 = pointF5.y;
            PointF pointF6 = this.j;
            path6.quadTo(f3, f4, pointF6.x, pointF6.y);
            Path path7 = this.F;
            PointF pointF7 = this.i;
            path7.lineTo(pointF7.x, pointF7.y);
            Path path8 = this.G;
            PointF pointF8 = this.o;
            path8.moveTo(pointF8.x, pointF8.y);
            Path path9 = this.G;
            PointF pointF9 = this.s;
            float f5 = pointF9.x;
            float f6 = pointF9.y;
            PointF pointF10 = this.q;
            path9.quadTo(f5, f6, pointF10.x, pointF10.y);
            Path path10 = this.G;
            PointF pointF11 = this.r;
            path10.lineTo(pointF11.x, pointF11.y);
            Path path11 = this.G;
            PointF pointF12 = this.t;
            float f7 = pointF12.x;
            float f8 = pointF12.y;
            PointF pointF13 = this.p;
            path11.quadTo(f7, f8, pointF13.x, pointF13.y);
            Path path12 = this.G;
            PointF pointF14 = this.o;
            path12.lineTo(pointF14.x, pointF14.y);
            Path path13 = this.G;
            a aVar3 = this.w;
            path13.addCircle(aVar3.a, aVar3.b, aVar3.c, this.y > 0 ? Path.Direction.CCW : Path.Direction.CW);
            Path path14 = this.G;
            a aVar4 = this.x;
            path14.addCircle(aVar4.a, aVar4.b, aVar4.c, this.y > 0 ? Path.Direction.CCW : Path.Direction.CW);
        }
    }

    public final a f(int i) {
        try {
            return (a) this.z.get(i);
        } catch (Exception unused) {
            return null;
        }
    }

    public final void g() {
        this.i = new PointF();
        this.j = new PointF();
        this.k = new PointF();
        this.l = new PointF();
        this.m = new PointF();
        this.n = new PointF();
        this.v = new a();
        this.x = new a();
        this.o = new PointF();
        this.p = new PointF();
        this.q = new PointF();
        this.r = new PointF();
        this.s = new PointF();
        this.t = new PointF();
        this.F = new Path();
        this.G = new Path();
        this.H = new Path();
        this.I = new Path();
        this.P = new RectF();
        this.Q = new PointF();
        this.R = new PointF();
        this.S = new PointF();
        this.T = new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER);
        this.U = new PorterDuffXfermode(PorterDuff.Mode.DST_OVER);
        this.z = new ArrayList();
        Paint paint = new Paint();
        this.M = paint;
        paint.setStyle(Paint.Style.FILL);
        this.M.setAntiAlias(true);
        setBackground(null);
        this.N = new Scroller(getContext(), AnimationUtils.loadInterpolator(getContext(), R.interpolator.os_motion_l1_easing_linear));
        int iH = olb.h(getContext(), 2);
        this.d = iH;
        this.c = iH;
    }

    public final void h(int i) {
        int i2;
        int i3;
        int i4;
        int size = this.z.size();
        int i5 = this.J;
        if (size < i5) {
            if (this.N.getCurrX() != 0) {
                this.N.startScroll(0, 0, 0, 0, 0);
                return;
            }
            return;
        }
        int i6 = (size - i5) * this.h;
        if (this.b && size >= i5 && i < i5 - 1 && this.N.getCurrX() != i6) {
            this.N.startScroll(0, 0, i6, 0, 0);
            return;
        }
        int i7 = this.J;
        int i8 = i7 / 2;
        boolean z = this.b;
        int i9 = 0;
        int i10 = z ? i6 : 0;
        if (i > i8 && i > i8 && (i2 = size - i7) != 0) {
            if (i2 <= i8) {
                i9 = i2 * this.h;
            } else {
                if (i <= i7 - 1) {
                    i3 = i - i8;
                    i4 = this.h;
                } else {
                    int i11 = (size - 1) - i;
                    if (i11 > i8) {
                        i3 = (i - (i7 - 1)) + i8;
                        i4 = this.h;
                    } else {
                        i3 = (i - (i7 - 1)) + i11;
                        i4 = this.h;
                    }
                }
                i9 = i3 * i4;
            }
        }
        this.N.startScroll(i10, 0, (int) (z ? -i9 : i9), 0, 350);
    }

    public void hideFrontMarkers(boolean z, int i) {
        this.D = z;
        this.E = i;
        i();
        a();
        requestLayout();
        invalidate();
    }

    public void i() {
        a aVar = this.u;
        if (aVar != null) {
            aVar.c = this.f;
        }
        for (int i = 0; i < this.z.size(); i++) {
            if (i != this.A) {
                ((a) this.z.get(i)).c = this.e;
            }
        }
        this.F.reset();
        this.G.reset();
    }

    public final boolean j(int i) {
        a aVar = (a) this.z.get(i);
        return aVar.a - aVar.c <= ((float) (getScrollX() + this.h));
    }

    public final boolean k(int i) {
        if (this.z.size() < this.J) {
            return false;
        }
        if (this.b && i == this.z.size() - 1) {
            return false;
        }
        return j(i) || l(i);
    }

    public final boolean l(int i) {
        a aVar = (a) this.z.get(i);
        return aVar.a + aVar.c >= ((float) ((getScrollX() + getWidth()) - this.h)) && (i < this.z.size() - 1 || getScrollX() == 0);
    }

    @Override
    public void onDraw(Canvas canvas) {
        a aVarF;
        if (this.z.size() <= 1) {
            return;
        }
        canvas.save();
        this.M.setXfermode(null);
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        canvas.clipRect(scrollX, scrollY, getWidth() + scrollX, getHeight() + scrollY);
        this.M.setColor(this.V);
        int size = this.z.size();
        for (int i = 0; i < size; i++) {
            if (i != this.A && ((!this.C || i != this.B || this.G.isEmpty()) && (aVarF = f(i)) != null)) {
                canvas.drawCircle(aVarF.a, aVarF.b, aVarF.c, this.M);
            }
        }
        if (this.C) {
            this.M.setColor(((double) this.L) < 1.0d ? this.V : this.W);
            canvas.drawPath(this.G, this.M);
        }
        this.M.setColor(this.L < 1.0f ? this.W : this.V);
        if (this.L < 1.0f) {
            this.M.setXfermode(this.T);
        } else {
            this.M.setXfermode(this.U);
        }
        if (this.F.isEmpty()) {
            a aVarF2 = f(this.A);
            if (aVarF2 != null) {
                canvas.drawCircle(aVarF2.a, aVarF2.b, aVarF2.c, this.M);
            }
        } else {
            canvas.drawPath(this.F, this.M);
            this.F.reset();
        }
        canvas.restore();
    }

    @Override
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            int iB = b(size);
            if (iB > 1) {
                this.J = Math.min(iB, this.K);
            }
            int iMin = Math.min(this.z.size(), this.J);
            if (this.D) {
                iMin -= this.E;
            }
            size = d(iMin);
        }
        if (mode2 != 1073741824) {
            size2 = getPaddingTop() + getPaddingBottom() + (this.f * 2) + (this.c * 2);
        }
        setMeasuredDimension(size, size2);
        a();
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 0) {
            float y = motionEvent.getY();
            if (this.z.size() == 0 || y > getHeight() || y < 0.0f) {
                return false;
            }
            float x = motionEvent.getX() + getScrollX();
            if (this.b) {
                ArrayList arrayList = this.z;
                if (x < ((a) arrayList.get(arrayList.size() - 1)).a + (this.h / 2)) {
                    this.O = this.z.size() - 1;
                } else if (x > ((a) this.z.get(0)).a - (this.h / 2)) {
                    this.O = 0;
                } else {
                    int size = this.z.size() - 1;
                    ArrayList arrayList2 = this.z;
                    float f = x + ((a) arrayList2.get(arrayList2.size() - 1)).a;
                    int i = this.h;
                    this.O = size - ((int) ((f - (i / 2)) / i));
                }
            } else if (x < ((a) this.z.get(0)).a + (this.h / 2)) {
                this.O = 0;
            } else {
                ArrayList arrayList3 = this.z;
                if (x > ((a) arrayList3.get(arrayList3.size() - 1)).a + (this.h / 2)) {
                    this.O = this.z.size() - 1;
                } else {
                    float f2 = x - ((a) this.z.get(0)).a;
                    int i2 = this.h;
                    this.O = (int) ((f2 + (i2 / 2)) / i2);
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (getVisibility() == 0) {
            h(this.A);
        }
    }

    public void removeAllMarkers() {
        this.z.clear();
        this.A = 0;
        this.B = 0;
        this.u = null;
        this.w = null;
        requestLayout();
    }

    public void removeMarker(int i) {
        if (i < 0 || i >= this.z.size()) {
            return;
        }
        if (i < this.A || (i == this.z.size() - 1 && this.A == i)) {
            int iMax = Math.max(0, this.A - 1);
            this.A = iMax;
            this.B = iMax;
            a aVar = this.z.size() > 1 ? (a) this.z.get(this.A) : null;
            this.u = aVar;
            this.w = aVar;
        }
        int size = this.z.size() - 1;
        float f = ((a) this.z.get(size)).a;
        this.z.remove(size);
        i();
        requestLayout();
        if (this.z.size() != 0) {
            a();
            if (getRight() - (f - getScrollX()) > this.f + this.d && getScrollX() > 0) {
                h(i);
            }
        }
        requestLayout();
    }

    public void resetAddPageIndex() {
        postInvalidate();
    }

    public void setCurrentMarker(int i) {
        if (i < 0 || i >= this.z.size() || i == this.A) {
            return;
        }
        this.A = i;
        this.B = i;
        a aVar = (a) this.z.get(i);
        this.u = aVar;
        this.w = aVar;
        i();
        if (k(i)) {
            h(i);
        }
        invalidate();
    }

    public void setMarkerClickListener(PageIndicatorWrapper.a aVar) {
    }

    public void setMaxMarkerNum(int i) {
        this.J = i;
        this.K = i;
    }

    public void setNormalColor(@ColorInt int i) {
        this.V = i;
        invalidate();
    }

    public void setSelectedColor(@ColorInt int i) {
        this.W = i;
        invalidate();
    }

    public void update(float f) {
        if (this.z.size() <= 1) {
            this.L = 0.0f;
            return;
        }
        if (Math.abs(f) == 1.0f) {
            f = 0.0f;
        }
        this.C = (((double) f) == 0.5d || f == 0.0f) ? false : true;
        i();
        if (this.b) {
            this.B = f > 0.0f ? Math.max(0, this.A - 1) : Math.min(this.z.size() - 1, this.A + 1);
        } else {
            this.B = f >= 0.0f ? Math.min(this.z.size() - 1, this.A + 1) : Math.max(0, this.A - 1);
        }
        this.u = (a) this.z.get(this.A);
        this.w = (a) this.z.get(this.B);
        if (this.A == this.B) {
            this.C = false;
        }
        this.y = f < 0.0f ? -1 : 1;
        float fAbs = Math.abs(f) * 2.0f;
        this.L = fAbs;
        if (fAbs <= 1.0f) {
            a aVar = this.u;
            int i = this.f;
            int i2 = this.g;
            aVar.c = i - ((i - i2) * fAbs);
            a aVar2 = this.v;
            aVar2.c = i2 * fAbs;
            float f2 = aVar.a;
            int i3 = this.y;
            a aVar3 = this.w;
            aVar2.a = (i * i3) + f2 + (((aVar3.a - f2) - (i * i3)) * fAbs);
            if (this.B != this.A) {
                int i4 = this.e;
                aVar3.c = i4 - ((i4 - i2) * fAbs);
                a aVar4 = this.x;
                aVar4.c = aVar2.c;
                float f3 = aVar3.a;
                aVar4.a = (f3 - (i4 * i3)) - (((f3 - (i4 * i3)) - aVar.a) * fAbs);
            }
        } else {
            a aVar5 = this.u;
            int i5 = this.g;
            int i6 = this.e;
            float f4 = fAbs - 1.0f;
            aVar5.c = i5 + ((i6 - i5) * f4);
            a aVar6 = this.v;
            float f5 = 2.0f - fAbs;
            aVar6.c = i5 * f5;
            float f6 = aVar5.a;
            int i7 = this.y;
            a aVar7 = this.w;
            aVar6.a = (i6 * i7) + f6 + (((aVar7.a - f6) - (i6 * i7)) * f5);
            if (this.B != this.A) {
                int i8 = this.f;
                aVar7.c = i5 + ((i8 - i5) * f4);
                a aVar8 = this.x;
                aVar8.c = aVar6.c;
                float f7 = aVar7.a;
                aVar8.a = (f7 - (i8 * i7)) - (((f7 - (i8 * i7)) - aVar5.a) * f5);
            }
        }
        Log.d("SpringPageIndicator", "generatePath: mCurrentMovedCircle = " + this.v.toString());
        c();
        e();
        invalidate();
    }

    public SpringPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A = 0;
        this.B = 0;
        this.C = true;
        this.D = false;
        this.E = 0;
        this.K = Integer.MAX_VALUE;
        this.O = -1;
        setLayerType(1, null);
        this.b = olb.l0();
        Resources resources = context.getResources();
        int i = com.transsion.widgetslib.R.dimen.os_spring_page_marker_radius;
        this.e = resources.getDimensionPixelOffset(i);
        this.f = resources.getDimensionPixelOffset(i);
        this.g = resources.getDimensionPixelOffset(i);
        this.h = resources.getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_spring_page_marker_distance);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.transsion.widgetslib.R.styleable.PageIndicatorWrapper);
        this.V = typedArrayObtainStyledAttributes.getColor(com.transsion.widgetslib.R.styleable.PageIndicatorWrapper_normalColor, olb.m(context, com.transsion.widgetslib.R.attr.os_comp_color_page_default, com.transsion.widgetslib.R.color.os_comp_color_page_default_hios));
        this.W = typedArrayObtainStyledAttributes.getColor(com.transsion.widgetslib.R.styleable.PageIndicatorWrapper_selectedColor, olb.m(context, com.transsion.widgetslib.R.attr.os_comp_color_page_focus, com.transsion.widgetslib.R.color.os_comp_color_page_focus_hios));
        typedArrayObtainStyledAttributes.recycle();
        g();
    }
}
