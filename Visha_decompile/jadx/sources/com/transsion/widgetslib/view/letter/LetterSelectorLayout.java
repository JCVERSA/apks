package com.transsion.widgetslib.view.letter;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.widgetslib.R;
import com.yandex.div.internal.widget.EllipsizedTextView;
import defpackage.bq5;
import defpackage.l97;
import defpackage.m97;
import defpackage.olb;
import defpackage.vob;
import io.github.inflationx.calligraphy3.HasTypeface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class LetterSelectorLayout extends FrameLayout implements HasTypeface {
    public static final int LETTER_TOUCH_ACTION_DOWN = 1;
    public static final int LETTER_TOUCH_ACTION_UP = 2;
    public static final int LETTER_TOUCH_MOVE = 3;
    public float A;
    public boolean A0;
    public float B;
    public boolean B0;
    public float C;
    public long D;
    public long E;
    public boolean F;
    public boolean G;
    public g H;
    public List I;
    public final List J;
    public final List K;
    public float L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public ArrayList W;
    public boolean a0;
    public int b;
    public Bitmap b0;
    public ValueAnimator c;
    public int c0;
    public ValueAnimator d;
    public boolean d0;
    public ValueAnimator e;
    public final RectF e0;
    public Runnable f;
    public boolean f0;
    public Runnable g;
    public final RectF g0;
    public int h;
    public final RectF h0;
    public float i;
    public final ArrayMap i0;
    public int j;
    public final RectF j0;
    public boolean k;
    public final RectF k0;
    public boolean l;
    public final List l0;
    public boolean m;
    public String m0;
    public Bitmap n;
    public int n0;
    public Bitmap o;
    public final List o0;
    public boolean p;
    public boolean p0;
    public int q;
    public boolean q0;
    public boolean r;
    public boolean r0;
    public float s;
    public int s0;
    public Interpolator t;
    public int t0;
    public final Paint u;
    public int u0;
    public final Paint v;
    public float v0;
    public final Paint w;
    public float w0;
    public final Paint x;
    public Paint x0;
    public final Paint y;
    public Rect y0;
    public final Paint z;
    public int z0;
    public static final String mHeart = "☆";
    public static final List C0 = Arrays.asList(mHeart, "#", EllipsizedTextView.DEFAULT_ELLIPSIS, "♤", mHeart, "Λ");
    public static final String D0 = LetterSelectorLayout.class.getSimpleName();

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            LetterSelectorLayout letterSelectorLayout = LetterSelectorLayout.this;
            letterSelectorLayout.h = (int) ((letterSelectorLayout.j * animatedFraction) + 0.0f);
            LetterSelectorLayout.this.i = (animatedFraction * 0.3f) + 0.7f;
            LetterSelectorLayout.this.invalidate();
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            LetterSelectorLayout.this.l = true;
            LetterSelectorLayout.this.m = false;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (!LetterSelectorLayout.this.l && LetterSelectorLayout.this.k) {
                LetterSelectorLayout letterSelectorLayout = LetterSelectorLayout.this;
                letterSelectorLayout.h = letterSelectorLayout.j;
                LetterSelectorLayout.this.i = 1.0f;
                LetterSelectorLayout.this.invalidate();
            }
            if (LetterSelectorLayout.this.m) {
                LetterSelectorLayout.this.m = false;
                if (LetterSelectorLayout.this.d == null || LetterSelectorLayout.this.d.isRunning()) {
                    return;
                }
                LetterSelectorLayout.this.D();
            }
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {
        public c() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            LetterSelectorLayout.this.i = 1.0f - (valueAnimator.getAnimatedFraction() * 0.3f);
            LetterSelectorLayout.this.invalidate();
        }
    }

    public class d extends AnimatorListenerAdapter {
        public d() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            LetterSelectorLayout.this.k = false;
            LetterSelectorLayout.this.i = 0.7f;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            LetterSelectorLayout.this.k = false;
            LetterSelectorLayout.this.i = 0.7f;
            LetterSelectorLayout.this.invalidate();
        }
    }

    public class e implements ValueAnimator.AnimatorUpdateListener {
        public e() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            LetterSelectorLayout letterSelectorLayout = LetterSelectorLayout.this;
            letterSelectorLayout.h = (int) (letterSelectorLayout.j - (animatedFraction * LetterSelectorLayout.this.j));
        }
    }

    public static class f {
        public int a;
        public String b;
        public boolean c;
        public float d;

        public f() {
            this.c = true;
        }
    }

    public static class g {
        public final LetterSelectorLayout a;
        public final Context b;
        public boolean c;

        public g(LetterSelectorLayout letterSelectorLayout) {
            this.c = true;
            this.a = letterSelectorLayout;
            this.b = letterSelectorLayout.getContext();
        }
    }

    public LetterSelectorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = 255;
        this.r = true;
        this.s = 0.0f;
        this.t = new DecelerateInterpolator();
        this.u = new Paint(1);
        this.v = new Paint(1);
        this.w = new Paint(1);
        this.x = new Paint(1);
        this.y = new Paint(1);
        this.z = new Paint(1);
        this.D = 200L;
        this.E = 1000L;
        this.F = false;
        this.G = true;
        this.J = new ArrayList();
        this.K = Arrays.asList(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, "T", "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z");
        this.L = 0.0f;
        this.T = -16731411;
        this.U = -1;
        this.V = -8750470;
        this.a0 = true;
        this.e0 = new RectF();
        this.f0 = true;
        this.g0 = new RectF();
        this.h0 = new RectF();
        this.i0 = new ArrayMap();
        this.j0 = new RectF();
        this.k0 = new RectF();
        this.l0 = new ArrayList();
        this.n0 = -1;
        this.o0 = new ArrayList();
        this.q0 = true;
        this.r0 = true;
        this.s0 = 1000;
        this.x0 = new Paint();
        this.y0 = new Rect();
        this.B0 = false;
        w(context, attributeSet);
    }

    public final void A() {
        int i;
        int i2;
        List list = this.J;
        if (list == null || list.size() == 0) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        if (width == 0 || height == 0) {
            return;
        }
        if (this.R != width) {
            this.R = width;
        }
        if (this.S != height) {
            this.S = height;
        }
        this.i0.clear();
        this.l0.clear();
        this.o0.clear();
        o();
        int size = this.J.size();
        float fMax = 0.0f;
        for (int i3 = 0; i3 < size; i3++) {
            String str = (String) this.J.get(i3);
            if (!TextUtils.isEmpty(str)) {
                f fVar = new f();
                fVar.a = i3;
                fVar.b = str;
                fVar.c = this.I.contains(str);
                float fMeasureText = this.u.measureText(str);
                fVar.d = fMeasureText / 2.0f;
                this.o0.add(fVar);
                fMax = Math.max(fMeasureText, fMax);
            }
        }
        int i4 = this.O;
        RectF rectF = new RectF();
        rectF.top = i4;
        if (olb.U(getContext())) {
            int iH = this.q;
            if (iH == 0) {
                iH = olb.h(getContext(), 8) + ((int) fMax) + (this.Q * 2);
            }
            this.u0 = iH;
        } else {
            int i5 = this.q;
            if (i5 == 0) {
                i5 = (this.Q * 2) + ((int) fMax);
            }
            this.u0 = i5;
        }
        float fMax2 = Math.max(this.v0, getAllLetterMaxHeight() + this.w0);
        this.v0 = fMax2;
        rectF.bottom = rectF.top + fMax2;
        if (this.F) {
            rectF.left = 0.0f;
            if (olb.U(getContext())) {
                rectF.left = olb.h(getContext(), 4);
            }
            rectF.right = rectF.left + this.u0;
        } else {
            rectF.right = this.R;
            if (olb.U(getContext())) {
                rectF.right = this.R - olb.h(getContext(), 4);
            }
            rectF.left = rectF.right - this.u0;
        }
        float fHeight = rectF.height();
        if (fHeight == 0.0f) {
            return;
        }
        boolean z = this.r0;
        if (z) {
            if (!this.A0) {
                this.P = 0;
            }
            i4 = 0;
        }
        int i6 = this.S;
        int i7 = this.P;
        float f2 = (i6 - i4) - i7;
        int i8 = z ? ((int) (f2 / fHeight)) - 2 : (int) (f2 / fHeight);
        if (i8 < 1) {
            return;
        }
        boolean z2 = size > i8;
        this.p0 = z2;
        if (!z2) {
            i8 = size;
        }
        if (z) {
            int i9 = (int) ((i6 - (i8 * fHeight)) / 2.0f);
            boolean z3 = this.A0;
            if (z3) {
                i9 -= i7 / 2;
            }
            if (i9 < 0) {
                i9 = 0;
            }
            if (!z3) {
                this.P = i9;
            }
            float f3 = i9;
            rectF.top = f3;
            rectF.bottom = f3 + fHeight;
        }
        this.j0.set(rectF);
        String str2 = D0;
        bq5.c(str2, "mIsOverUnits: " + this.p0 + ", mSelectedRectIndex: " + this.z0 + ", paintLen: " + i8);
        boolean z4 = this.z0 >= i8;
        if (this.p0) {
            if (z4) {
                this.z0 = i8 - 1;
            }
            if (TextUtils.isEmpty(this.m0) || !this.J.contains(this.m0) || (i2 = this.n0) <= -1) {
                i = 0;
                i2 = -1;
            } else {
                i = i2 - this.z0;
            }
            bq5.c(str2, "noSpaceShowSelectedRect: " + z4 + ", topLetterIndex: " + i + ", mSelectedRectIndex: " + this.z0 + ", mSelectedLetter: " + this.m0 + ", indexSelectedLetter: " + i2);
        } else {
            i = 0;
        }
        for (int i10 = 0; i10 < i8; i10++) {
            RectF rectF2 = new RectF(rectF.left, rectF.top, rectF.right, rectF.bottom);
            this.l0.add(rectF2);
            float f4 = rectF.bottom;
            rectF.top = f4;
            rectF.bottom = f4 + fHeight;
            int i11 = i10 + i;
            if (i11 > -1 && i11 < size) {
                this.i0.put(rectF2, (f) this.o0.get(i11));
            }
        }
        RectF rectF3 = this.h0;
        float f5 = rectF.left;
        float f6 = rectF.top;
        float f7 = fHeight * 2.0f;
        rectF3.set(f5, f6, rectF.right, f6 + f7);
        RectF rectF4 = this.j0;
        rectF4.bottom = this.h0.bottom;
        RectF rectF5 = this.g0;
        float f8 = rectF.left;
        float f9 = rectF4.top;
        rectF5.set(f8, f9 - f7, rectF.right, f9);
        RectF rectF6 = this.j0;
        rectF6.top = this.g0.top;
        this.k0.set(rectF6);
        int iWidth = this.q;
        if (iWidth == 0) {
            iWidth = (int) this.k0.width();
        }
        this.u0 = iWidth;
        if (this.l0.size() <= 0) {
            return;
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.os_letter_bubble_size);
        float f10 = this.u0 + this.N;
        if (!this.F) {
            f10 = (this.R - f10) - dimensionPixelOffset;
        }
        float f11 = dimensionPixelOffset;
        this.e0.set(f10, 0.0f, f10 + f11, f11);
    }

    public final void B() {
        if (!this.r) {
            bq5.o("vibrate Able is false");
            return;
        }
        Handler handler = getHandler();
        if (!olb.Y || handler == null || !olb.J || handler.hasCallbacks(this.g)) {
            return;
        }
        handler.postDelayed(this.g, 50L);
    }

    public final void C() {
        Handler handler = getHandler();
        if (handler.hasCallbacks(this.g)) {
            handler.removeCallbacks(this.g);
        }
    }

    public final void D() {
        n();
        if (getHandler() == null || !this.k) {
            return;
        }
        getHandler().postDelayed(this.f, this.s0);
    }

    public final void E() {
        ValueAnimator valueAnimator;
        if (getHandler() != null) {
            getHandler().removeCallbacks(this.f);
        }
        ValueAnimator valueAnimator2 = this.d;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.d.cancel();
        }
        ValueAnimator valueAnimator3 = this.e;
        if (valueAnimator3 != null && valueAnimator3.isRunning()) {
            this.e.cancel();
        }
        this.m = false;
        this.k = true;
        if (this.i == 1.0f) {
            this.h = this.j;
            invalidate();
            return;
        }
        ValueAnimator valueAnimator4 = this.c;
        if ((valueAnimator4 == null || !valueAnimator4.isRunning()) && (valueAnimator = this.c) != null) {
            valueAnimator.start();
            this.l = false;
        }
    }

    public final boolean F(float f2, float f3) {
        return this.o0.size() != 0 && this.l0.size() != 0 && this.a0 && this.j0.contains(f2, f3);
    }

    public final void G() {
        this.w.setTextSize(this.A);
        this.w.setTextSize(this.B);
        this.w.setTextSize(this.C);
    }

    @Override
    public void draw(Canvas canvas) {
        ArrayList arrayList;
        Bitmap bitmap;
        Bitmap bitmap2;
        super.draw(canvas);
        if (this.q0 && this.l0.size() > 0) {
            canvas.save();
            canvas.clipRect(this.k0);
            for (int i = 0; i < this.l0.size(); i++) {
                RectF rectF = (RectF) this.l0.get(i);
                f fVar = (f) this.i0.get(rectF);
                if (fVar != null) {
                    String str = fVar.b;
                    float fDescent = (this.u.descent() + this.u.ascent()) / 2.0f;
                    if ((str != null && str.equals(this.m0)) || ((arrayList = this.W) != null && arrayList.contains(str))) {
                        if (!mHeart.equals(this.m0) || (bitmap2 = this.o) == null) {
                            canvas.drawText(this.m0, rectF.centerX() - fVar.d, rectF.centerY() - fDescent, this.z);
                        } else {
                            canvas.drawBitmap(bitmap2.extractAlpha(), rectF.centerX() - (this.o.getWidth() / 2.0f), rectF.centerY() - (this.o.getHeight() / 2.0f), this.z);
                        }
                        float fHeight = this.e0.height();
                        float fMax = this.s;
                        if (!this.l0.isEmpty()) {
                            float f2 = fHeight / 2.0f;
                            float f3 = ((RectF) this.l0.get(0)).top + f2;
                            List list = this.l0;
                            fMax = Math.max(f3, Math.min(((RectF) list.get(list.size() - 1)).bottom - f2, fMax));
                        }
                        RectF rectF2 = this.e0;
                        float f4 = fMax - (fHeight / 2.0f);
                        rectF2.top = f4;
                        rectF2.bottom = f4 + fHeight;
                    } else if (!mHeart.equals(str) || (bitmap = this.o) == null) {
                        canvas.drawText(str, rectF.centerX() - fVar.d, rectF.centerY() - fDescent, this.u);
                    } else {
                        canvas.drawBitmap(bitmap.extractAlpha(), rectF.centerX() - (this.o.getWidth() / 2.0f), rectF.centerY() - (this.o.getHeight() / 2.0f), this.u);
                    }
                }
            }
            canvas.restore();
            q(canvas);
        }
    }

    public int getAllLetterMaxHeight() {
        List list;
        g gVar = this.H;
        int iMax = 0;
        if (gVar != null && (list = gVar.a.J) != null && list.size() > 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iMax = Math.max(iMax, r((String) it.next()));
            }
        }
        return iMax;
    }

    public g getLetterSelectorConfig(boolean z, boolean z2) {
        if (this.H == null) {
            this.H = new g();
        }
        this.G = z;
        this.H.c = z2;
        return this.H;
    }

    public int getPanelWidth() {
        return this.u0;
    }

    public boolean isShowSelector() {
        return this.q0;
    }

    public boolean isSlideOutside() {
        return this.p;
    }

    public final void n() {
        if (getHandler() != null) {
            getHandler().removeCallbacks(this.f);
        }
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.c.cancel();
        }
        ValueAnimator valueAnimator2 = this.d;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.d.cancel();
        }
        ValueAnimator valueAnimator3 = this.e;
        if (valueAnimator3 == null || !valueAnimator3.isRunning()) {
            return;
        }
        this.e.cancel();
    }

    public final void o() {
        boolean z = false;
        boolean z2 = getLayoutDirection() == 1;
        if ((z2 && this.G) || (!z2 && !this.G)) {
            z = true;
        }
        this.F = z;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.i0.clear();
        this.l0.clear();
        this.o0.clear();
        C();
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (y()) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() != 0 || !F(motionEvent.getX(), motionEvent.getY())) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        requestDisallowInterceptTouchEvent(true);
        return true;
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.R = i;
        this.S = i2;
        A();
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00cd  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        f fVar;
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        RectF rectF;
        f fVar2;
        if (y() || !this.q0) {
            if (this.B0) {
                u();
            }
            return super.onTouchEvent(motionEvent);
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (motionEvent.getAction() == 0 && !F(x, y)) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            requestDisallowInterceptTouchEvent(true);
            this.B0 = true;
            this.s = y;
            for (RectF rectF2 : this.l0) {
                if (rectF2.contains(x, y) && (fVar = (f) this.i0.get(rectF2)) != null) {
                    if (!fVar.c) {
                        break;
                    }
                    v(fVar, 1);
                    E();
                    break;
                }
            }
        } else if (action == 1) {
            u();
            valueAnimator = this.c;
            if (valueAnimator == null && valueAnimator.isRunning()) {
                this.m = true;
            } else {
                this.m = false;
                valueAnimator2 = this.d;
                if (valueAnimator2 != null && !valueAnimator2.isRunning()) {
                    D();
                }
            }
        } else if (action == 2) {
            if (!this.j0.contains(x, y)) {
                if (!this.p) {
                    return true;
                }
                List list = this.l0;
                if (list != null && !list.isEmpty()) {
                    x = ((RectF) this.l0.get(0)).left;
                }
            }
            this.B0 = true;
            this.s = y;
            boolean zContains = this.g0.contains(x, y);
            boolean zContains2 = this.h0.contains(x, y);
            if (zContains || zContains2) {
                if (zContains) {
                    rectF = (RectF) this.l0.get(0);
                } else {
                    List list2 = this.l0;
                    rectF = (RectF) list2.get(list2.size() - 1);
                }
                f fVar3 = (f) this.i0.get(rectF);
                if (fVar3 == null) {
                    return true;
                }
                s(rectF, fVar3);
            } else {
                for (RectF rectF3 : this.l0) {
                    if (rectF3.contains(x, y) && (fVar2 = (f) this.i0.get(rectF3)) != null) {
                        s(rectF3, fVar2);
                    }
                }
            }
        } else if (action == 3) {
            u();
            valueAnimator = this.c;
            if (valueAnimator == null) {
                this.m = false;
                valueAnimator2 = this.d;
                if (valueAnimator2 != null) {
                    D();
                }
            } else {
                this.m = false;
                valueAnimator2 = this.d;
                if (valueAnimator2 != null) {
                    D();
                }
            }
        }
        return true;
    }

    @Override
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (getHandler() != null && this.f != null) {
            getHandler().removeCallbacks(this.f);
        }
        n();
        this.m = false;
        this.k = false;
        this.i = 0.7f;
        this.h = 0;
    }

    public final int p(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public final void q(Canvas canvas) {
        Bitmap bitmap;
        if (TextUtils.isEmpty(this.m0)) {
            return;
        }
        if (this.k || this.i > 0.7f) {
            canvas.save();
            this.y.setAlpha(this.h);
            this.x.setAlpha(this.h);
            if (this.d0) {
                float f2 = this.i;
                canvas.scale(f2, f2, this.e0.centerX(), this.e0.centerY());
                canvas.drawBitmap(this.b0.extractAlpha(), (Rect) null, this.e0, this.x);
            } else {
                canvas.drawCircle(this.e0.centerX(), this.e0.centerY(), this.M, this.x);
            }
            canvas.save();
            float fMeasureText = this.y.measureText(this.m0);
            float width = this.b0.getWidth() - (this.t0 * 2);
            float f3 = fMeasureText > width ? width / fMeasureText : 1.0f;
            canvas.scale(f3, f3, this.e0.centerX(), this.e0.centerY());
            if (!mHeart.equals(this.m0) || (bitmap = this.n) == null) {
                this.y.setColor(olb.m(getContext(), R.attr.os_text_secondary, R.color.os_text_secondary_hios));
                canvas.drawText(this.m0, this.e0.centerX() - (fMeasureText / 2.0f), this.e0.centerY() - ((this.y.descent() + this.y.ascent()) / 2.0f), this.y);
            } else {
                canvas.drawBitmap(bitmap.extractAlpha(), this.e0.centerX() - (this.n.getWidth() / 2.0f), this.e0.centerY() - (this.n.getHeight() / 2.0f), this.y);
            }
            canvas.restore();
            canvas.restore();
        }
    }

    public int r(String str) {
        this.x0.setTextSize(this.A);
        this.x0.getTextBounds(str, 0, str.length(), this.y0);
        return this.y0.height();
    }

    public final void s(RectF rectF, f fVar) {
        if (fVar == null) {
            return;
        }
        int iIndexOf = this.o0.indexOf(fVar);
        int iIndexOf2 = this.l0.indexOf(rectF);
        if (this.p0) {
            int size = this.l0.size();
            int size2 = this.o0.size();
            int i = 0;
            if (iIndexOf2 == 0 && iIndexOf > 0) {
                int i2 = iIndexOf - 1;
                int i3 = 0;
                for (int i4 = i2; i4 < i2 + size; i4++) {
                    if (i3 < size && i4 < size2) {
                        this.i0.put((RectF) this.l0.get(i3), (f) this.o0.get(i4));
                    }
                    i3++;
                }
            }
            if (iIndexOf2 == size - 1 && iIndexOf < size2 - 1) {
                int iIndexOf3 = this.o0.indexOf(this.i0.get(this.l0.get(0))) + 1;
                for (int i5 = iIndexOf3; i5 < size + iIndexOf3; i5++) {
                    if (i < size && i5 < size2) {
                        this.i0.put((RectF) this.l0.get(i), (f) this.o0.get(i5));
                    }
                    i++;
                }
            }
        }
        this.z0 = iIndexOf2;
        if (fVar.c) {
            v(fVar, 3);
            E();
        }
    }

    public void setSelectedLetter(String str) {
        if (this.J == null || str == null || str.equals(this.m0)) {
            return;
        }
        setSelectedLetter(this.J.indexOf(str));
    }

    public void setShowSelector(boolean z) {
        this.q0 = z;
    }

    public void setSlideOutside(boolean z) {
        this.p = z;
    }

    @Override
    public void setTypeface(Typeface typeface) {
        Paint paint = this.u;
        if (paint != null) {
            paint.setTypeface(typeface);
        }
        Paint paint2 = this.v;
        if (paint2 != null) {
            paint2.setTypeface(typeface);
        }
        Paint paint3 = this.w;
        if (paint3 != null) {
            paint3.setTypeface(typeface);
        }
        Paint paint4 = this.x;
        if (paint4 != null) {
            paint4.setTypeface(typeface);
        }
        Paint paint5 = this.y;
        if (paint5 != null) {
            paint5.setTypeface(typeface);
        }
        Paint paint6 = this.z;
        if (paint6 != null) {
            paint6.setTypeface(typeface);
        }
    }

    public void setVibrateAble(boolean z) {
        this.r = z;
    }

    public final void t(String str, int i) {
        if (TextUtils.isEmpty(str) || i < 0) {
            return;
        }
        for (RectF rectF : this.l0) {
            f fVar = (f) this.i0.get(rectF);
            if (fVar != null && i == fVar.a) {
                this.z0 = this.l0.indexOf(rectF);
                return;
            }
        }
        int size = this.o0.size();
        int size2 = this.l0.size();
        if (this.n0 >= i) {
            int i2 = 0;
            while (i2 < size2 && i < size) {
                this.i0.put((RectF) this.l0.get(i2), (f) this.o0.get(i));
                i2++;
                i++;
            }
            this.z0 = 0;
            return;
        }
        int i3 = size2 - 1;
        for (int i4 = i3; i >= 0 && i < size && i4 >= 0; i4--) {
            this.i0.put((RectF) this.l0.get(i4), (f) this.o0.get(i));
            i--;
        }
        this.z0 = i3;
    }

    public final void u() {
        this.B0 = false;
    }

    public final void v(f fVar, int i) {
        if (fVar == null || fVar.b == null) {
            return;
        }
        int i2 = this.n0;
        int i3 = fVar.a;
        if (i2 == i3) {
            return;
        }
        setSelectedLetter(i3);
        B();
    }

    public final void w(Context context, AttributeSet attributeSet) {
        setWillNotDraw(false);
        setClickable(true);
        this.w0 = getContext().getResources().getDimensionPixelOffset(R.dimen.os_letter_panel_height_gap);
        this.O = context.getResources().getDimensionPixelSize(R.dimen.os_letter_top_padding);
        this.P = context.getResources().getDimensionPixelSize(R.dimen.os_letter_bottom_padding);
        this.Q = context.getResources().getDimensionPixelSize(R.dimen.os_letter_padding);
        this.A = getContext().getResources().getDimensionPixelSize(R.dimen.os_letter_size);
        this.B = getContext().getResources().getDimensionPixelSize(R.dimen.os_letter_max_size);
        this.C = getContext().getResources().getDimensionPixelSize(R.dimen.os_letter_indicator_size);
        this.M = getContext().getResources().getDimensionPixelOffset(R.dimen.letter_indicator_radius);
        this.N = p(24);
        this.u.setTextSize(this.A);
        this.u.setColor(this.b);
        Paint paint = this.u;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.v.setTextSize(this.B);
        this.v.setColor(this.b);
        this.z.setColor(this.V);
        this.z.setTextSize(this.A);
        this.y.setColor(this.U);
        this.y.setTextSize(this.C);
        this.x.setColor(this.T);
        this.x.setStyle(style);
        this.c0 = p(64);
        this.d0 = this.b0 != null;
        G();
        x();
        this.t0 = p(3);
        this.v0 = p(14);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSLetterSelectorLayout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.OSLetterSelectorLayout_os_letter_slide_outside) {
                    this.p = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSLetterSelectorLayout_os_letter_fixed_width) {
                    this.q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void x() {
        if (this.c == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.c = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(200L);
            this.c.addUpdateListener(new a());
            this.c.addListener(new b());
            this.c.setInterpolator(new m97());
        }
        if (this.d == null) {
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.d = valueAnimatorOfFloat2;
            valueAnimatorOfFloat2.setDuration(150L);
            this.d.addUpdateListener(new c());
            this.d.addListener(new d());
            this.d.setInterpolator(new l97());
            this.f = new Runnable() {
                @Override
                public void run() {
                    if (LetterSelectorLayout.this.d == null || LetterSelectorLayout.this.d.isRunning()) {
                        return;
                    }
                    LetterSelectorLayout.this.d.start();
                    LetterSelectorLayout.this.e.start();
                }
            };
            this.g = new Runnable() {
                @Override
                public final void run() {
                    this.b.z();
                }
            };
        }
        if (this.e == null) {
            ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.e = valueAnimatorOfFloat3;
            valueAnimatorOfFloat3.setDuration(150L);
            this.e.addUpdateListener(new e());
            this.e.setInterpolator(new l97());
        }
    }

    public final boolean y() {
        return this.o0.size() == 0 || !this.q0;
    }

    public final void z() {
        vob.b(getContext());
    }

    public void setSelectedLetter(int i) {
        String str;
        List list = this.J;
        if (list == null || i < 0 || i >= list.size() || (str = (String) this.J.get(i)) == null || str.equals(this.m0)) {
            return;
        }
        if (this.p0) {
            t(str, i);
        } else {
            this.z0 = i;
        }
        this.m0 = str;
        this.n0 = i;
        invalidate();
    }

    public LetterSelectorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = 255;
        this.r = true;
        this.s = 0.0f;
        this.t = new DecelerateInterpolator();
        this.u = new Paint(1);
        this.v = new Paint(1);
        this.w = new Paint(1);
        this.x = new Paint(1);
        this.y = new Paint(1);
        this.z = new Paint(1);
        this.D = 200L;
        this.E = 1000L;
        this.F = false;
        this.G = true;
        this.J = new ArrayList();
        this.K = Arrays.asList(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, "T", "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z");
        this.L = 0.0f;
        this.T = -16731411;
        this.U = -1;
        this.V = -8750470;
        this.a0 = true;
        this.e0 = new RectF();
        this.f0 = true;
        this.g0 = new RectF();
        this.h0 = new RectF();
        this.i0 = new ArrayMap();
        this.j0 = new RectF();
        this.k0 = new RectF();
        this.l0 = new ArrayList();
        this.n0 = -1;
        this.o0 = new ArrayList();
        this.q0 = true;
        this.r0 = true;
        this.s0 = 1000;
        this.x0 = new Paint();
        this.y0 = new Rect();
        this.B0 = false;
        w(context, attributeSet);
    }

    public LetterSelectorLayout(Context context) {
        super(context);
        this.j = 255;
        this.r = true;
        this.s = 0.0f;
        this.t = new DecelerateInterpolator();
        this.u = new Paint(1);
        this.v = new Paint(1);
        this.w = new Paint(1);
        this.x = new Paint(1);
        this.y = new Paint(1);
        this.z = new Paint(1);
        this.D = 200L;
        this.E = 1000L;
        this.F = false;
        this.G = true;
        this.J = new ArrayList();
        this.K = Arrays.asList(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, "T", "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z");
        this.L = 0.0f;
        this.T = -16731411;
        this.U = -1;
        this.V = -8750470;
        this.a0 = true;
        this.e0 = new RectF();
        this.f0 = true;
        this.g0 = new RectF();
        this.h0 = new RectF();
        this.i0 = new ArrayMap();
        this.j0 = new RectF();
        this.k0 = new RectF();
        this.l0 = new ArrayList();
        this.n0 = -1;
        this.o0 = new ArrayList();
        this.q0 = true;
        this.r0 = true;
        this.s0 = 1000;
        this.x0 = new Paint();
        this.y0 = new Rect();
        this.B0 = false;
        w(context, null);
    }
}
