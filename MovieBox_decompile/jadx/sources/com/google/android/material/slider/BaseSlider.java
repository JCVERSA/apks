package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import cb.i;
import cb.n;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.d0;
import com.google.android.material.internal.f0;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import ya.j;

abstract class BaseSlider extends View {

    private static final String f28849v0 = "BaseSlider";
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private int M;
    private float N;
    private MotionEvent O;
    private boolean P;
    private float Q;
    private float R;
    private ArrayList S;
    private int T;
    private int U;
    private float V;
    private float[] W;

    private final Paint f28854a;

    private boolean f28855a0;

    private final Paint f28856b;

    private int f28857b0;

    private final Paint f28858c;

    private int f28859c0;

    private final Paint f28860d;

    private int f28861d0;

    private final Paint f28862e;

    private boolean f28863e0;

    private final Paint f28864f;

    private boolean f28865f0;

    private final Paint f28866g;

    private boolean f28867g0;

    private final d f28868h;

    private ColorStateList f28869h0;

    private final AccessibilityManager f28870i;

    private ColorStateList f28871i0;

    private AccessibilityEventSender f28872j;

    private ColorStateList f28873j0;

    private int f28874k;

    private ColorStateList f28875k0;

    private final List f28876l;

    private ColorStateList f28877l0;

    private final List f28878m;

    private final Path f28879m0;

    private final List f28880n;

    private final RectF f28881n0;

    private boolean f28882o;

    private final RectF f28883o0;

    private ValueAnimator f28884p;

    private final i f28885p0;

    private ValueAnimator f28886q;

    private Drawable f28887q0;

    private final int f28888r;

    private List f28889r0;

    private int f28890s;

    private float f28891s0;

    private int f28892t;

    private int f28893t0;

    private int f28894u;

    private final ViewTreeObserver.OnScrollChangedListener f28895u0;

    private int f28896v;

    private int f28897w;

    private int f28898x;

    private int f28899y;

    private int f28900z;

    static final int f28850w0 = R$style.Widget_MaterialComponents_Slider;

    private static final int f28851x0 = R$attr.motionDurationMedium4;

    private static final int f28852y0 = R$attr.motionDurationShort3;

    private static final int f28853z0 = R$attr.motionEasingEmphasizedInterpolator;
    private static final int A0 = R$attr.motionEasingEmphasizedAccelerateInterpolator;

    private enum FullCornerDirection {
        BOTH,
        LEFT,
        RIGHT,
        NONE
    }

    static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new a();

        float f28901a;

        float f28902b;

        ArrayList f28903c;

        float f28904d;

        boolean f28905e;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public SliderState createFromParcel(Parcel parcel) {
                return new SliderState(parcel, null);
            }

            @Override
            public SliderState[] newArray(int i10) {
                return new SliderState[i10];
            }
        }

        SliderState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeFloat(this.f28901a);
            parcel.writeFloat(this.f28902b);
            parcel.writeList(this.f28903c);
            parcel.writeFloat(this.f28904d);
            parcel.writeBooleanArray(new boolean[]{this.f28905e});
        }

        SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        private SliderState(Parcel parcel) {
            super(parcel);
            this.f28901a = parcel.readFloat();
            this.f28902b = parcel.readFloat();
            ArrayList arrayList = new ArrayList();
            this.f28903c = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.f28904d = parcel.readFloat();
            this.f28905e = parcel.createBooleanArray()[0];
        }
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Iterator it = BaseSlider.this.f28876l.iterator();
            while (it.hasNext()) {
                ((eb.a) it.next()).D0(fFloatValue);
            }
            ViewCompat.postInvalidateOnAnimation(BaseSlider.this);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            d0 d0VarK = f0.k(BaseSlider.this);
            Iterator it = BaseSlider.this.f28876l.iterator();
            while (it.hasNext()) {
                d0VarK.b((eb.a) it.next());
            }
        }
    }

    static class c {

        static final int[] f28908a;

        static {
            int[] iArr = new int[FullCornerDirection.values().length];
            f28908a = iArr;
            try {
                iArr[FullCornerDirection.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28908a[FullCornerDirection.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28908a[FullCornerDirection.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f28908a[FullCornerDirection.BOTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static class d extends androidx.customview.widget.a {

        private final BaseSlider f28909n;

        final Rect f28910o;

        d(BaseSlider baseSlider) {
            super(baseSlider);
            this.f28910o = new Rect();
            this.f28909n = baseSlider;
        }

        private String L(int i10) {
            if (i10 == this.f28909n.getValues().size() - 1) {
                return this.f28909n.getContext().getString(R$string.material_slider_range_end);
            }
            return i10 == 0 ? this.f28909n.getContext().getString(R$string.material_slider_range_start) : "";
        }

        @Override
        protected void C(int i10, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            List<Float> values = this.f28909n.getValues();
            float fFloatValue = values.get(i10).floatValue();
            float valueFrom = this.f28909n.getValueFrom();
            float valueTo = this.f28909n.getValueTo();
            if (this.f28909n.isEnabled()) {
                if (fFloatValue > valueFrom) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (fFloatValue < valueTo) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, fFloatValue));
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            StringBuilder sb2 = new StringBuilder();
            if (this.f28909n.getContentDescription() != null) {
                sb2.append(this.f28909n.getContentDescription());
                sb2.append(",");
            }
            String strA = this.f28909n.A(fFloatValue);
            String string = this.f28909n.getContext().getString(R$string.material_slider_value);
            if (values.size() > 1) {
                string = L(i10);
            }
            sb2.append(String.format(Locale.US, "%s, %s", string, strA));
            accessibilityNodeInfoCompat.setContentDescription(sb2.toString());
            this.f28909n.q0(i10, this.f28910o);
            accessibilityNodeInfoCompat.setBoundsInParent(this.f28910o);
        }

        @Override
        protected int o(float f10, float f11) {
            for (int i10 = 0; i10 < this.f28909n.getValues().size(); i10++) {
                this.f28909n.q0(i10, this.f28910o);
                if (this.f28910o.contains((int) f10, (int) f11)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override
        protected void p(List list) {
            for (int i10 = 0; i10 < this.f28909n.getValues().size(); i10++) {
                list.add(Integer.valueOf(i10));
            }
        }

        @Override
        protected boolean y(int i10, int i11, Bundle bundle) {
            if (!this.f28909n.isEnabled()) {
                return false;
            }
            if (i11 != 4096 && i11 != 8192) {
                if (i11 == 16908349 && bundle != null && bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE)) {
                    if (this.f28909n.o0(i10, bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE))) {
                        this.f28909n.r0();
                        this.f28909n.postInvalidate();
                        r(i10);
                        return true;
                    }
                }
                return false;
            }
            float fL = this.f28909n.l(20);
            if (i11 == 8192) {
                fL = -fL;
            }
            if (this.f28909n.P()) {
                fL = -fL;
            }
            if (!this.f28909n.o0(i10, d1.a.a(this.f28909n.getValues().get(i10).floatValue() + fL, this.f28909n.getValueFrom(), this.f28909n.getValueTo()))) {
                return false;
            }
            this.f28909n.r0();
            this.f28909n.postInvalidate();
            r(i10);
            return true;
        }
    }

    public BaseSlider(Context context, AttributeSet attributeSet, int i10) {
        super(db.a.c(context, attributeSet, i10, f28850w0), attributeSet, i10);
        this.f28876l = new ArrayList();
        this.f28878m = new ArrayList();
        this.f28880n = new ArrayList();
        this.f28882o = false;
        this.I = -1;
        this.J = -1;
        this.P = false;
        this.S = new ArrayList();
        this.T = -1;
        this.U = -1;
        this.V = 0.0f;
        this.f28855a0 = true;
        this.f28865f0 = false;
        this.f28879m0 = new Path();
        this.f28881n0 = new RectF();
        this.f28883o0 = new RectF();
        i iVar = new i();
        this.f28885p0 = iVar;
        this.f28889r0 = Collections.emptyList();
        this.f28893t0 = 0;
        this.f28895u0 = new ViewTreeObserver.OnScrollChangedListener() {
            @Override
            public final void onScrollChanged() {
                this.f28911a.s0();
            }
        };
        Context context2 = getContext();
        this.f28854a = new Paint();
        this.f28856b = new Paint();
        Paint paint = new Paint(1);
        this.f28858c = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint2 = new Paint(1);
        this.f28860d = paint2;
        paint2.setStyle(style);
        Paint paint3 = new Paint();
        this.f28862e = paint3;
        Paint.Style style2 = Paint.Style.STROKE;
        paint3.setStyle(style2);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint3.setStrokeCap(cap);
        Paint paint4 = new Paint();
        this.f28864f = paint4;
        paint4.setStyle(style2);
        paint4.setStrokeCap(cap);
        Paint paint5 = new Paint();
        this.f28866g = paint5;
        paint5.setStyle(style);
        paint5.setStrokeCap(cap);
        R(context2.getResources());
        g0(context2, attributeSet, i10);
        setFocusable(true);
        setClickable(true);
        iVar.k0(2);
        this.f28888r = ViewConfiguration.get(context2).getScaledTouchSlop();
        d dVar = new d(this);
        this.f28868h = dVar;
        ViewCompat.setAccessibilityDelegate(this, dVar);
        this.f28870i = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    public String A(float f10) {
        if (hasLabelFormatter()) {
            throw null;
        }
        return String.format(((float) ((int) f10)) == f10 ? "%.0f" : "%.2f", Float.valueOf(f10));
    }

    private void A0() {
        if (this.R <= this.Q) {
            throw new IllegalStateException(String.format("valueTo(%s) must be greater than valueFrom(%s)", Float.valueOf(this.R), Float.valueOf(this.Q)));
        }
    }

    private float[] B() {
        float fFloatValue = ((Float) this.S.get(0)).floatValue();
        ArrayList arrayList = this.S;
        float fFloatValue2 = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
        if (this.S.size() == 1) {
            fFloatValue = this.Q;
        }
        float fA0 = a0(fFloatValue);
        float fA1 = a0(fFloatValue2);
        return P() ? new float[]{fA1, fA0} : new float[]{fA0, fA1};
    }

    private void B0() {
        for (Float f10 : this.S) {
            if (f10.floatValue() < this.Q || f10.floatValue() > this.R) {
                throw new IllegalStateException(String.format("Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)", f10, Float.valueOf(this.Q), Float.valueOf(this.R)));
            }
            if (this.V > 0.0f && !C0(f10.floatValue())) {
                throw new IllegalStateException(String.format("Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)", f10, Float.valueOf(this.Q), Float.valueOf(this.V), Float.valueOf(this.V)));
            }
        }
    }

    private static float C(ValueAnimator valueAnimator, float f10) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return f10;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        valueAnimator.cancel();
        return fFloatValue;
    }

    private boolean C0(float f10) {
        return N(new BigDecimal(Float.toString(f10)).subtract(new BigDecimal(Float.toString(this.Q)), MathContext.DECIMAL64).doubleValue());
    }

    private float D(int i10, float f10) {
        float minSeparation = getMinSeparation();
        if (this.f28893t0 == 0) {
            minSeparation = q(minSeparation);
        }
        if (P()) {
            minSeparation = -minSeparation;
        }
        int i11 = i10 + 1;
        int i12 = i10 - 1;
        return d1.a.a(f10, i12 < 0 ? this.Q : ((Float) this.S.get(i12)).floatValue() + minSeparation, i11 >= this.S.size() ? this.R : ((Float) this.S.get(i11)).floatValue() - minSeparation);
    }

    private float D0(float f10) {
        return (a0(f10) * this.f28861d0) + this.D;
    }

    private int E(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    private void E0() {
        float f10 = this.V;
        if (f10 == 0.0f) {
            return;
        }
        if (((int) f10) != f10) {
            Log.w(f28849v0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "stepSize", Float.valueOf(f10)));
        }
        float f11 = this.Q;
        if (((int) f11) != f11) {
            Log.w(f28849v0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "valueFrom", Float.valueOf(f11)));
        }
        float f12 = this.R;
        if (((int) f12) != f12) {
            Log.w(f28849v0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "valueTo", Float.valueOf(f12)));
        }
    }

    private float[] F(float f10, float f11) {
        return new float[]{f10, f10, f11, f11, f11, f11, f10, f10};
    }

    private float G() {
        double dN0 = n0(this.f28891s0);
        if (P()) {
            dN0 = 1.0d - dN0;
        }
        float f10 = this.R;
        float f11 = this.Q;
        return (float) ((dN0 * ((double) (f10 - f11))) + ((double) f11));
    }

    private float H() {
        float f10 = this.f28891s0;
        if (P()) {
            f10 = 1.0f - f10;
        }
        float f11 = this.R;
        float f12 = this.Q;
        return (f10 * (f11 - f12)) + f12;
    }

    private boolean I() {
        return this.H > 0;
    }

    private Drawable J(Drawable drawable) {
        Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
        h(drawableNewDrawable);
        return drawableNewDrawable;
    }

    private void K() {
        this.f28854a.setStrokeWidth(this.C);
        this.f28856b.setStrokeWidth(this.C);
    }

    private boolean L() {
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    private static boolean M(MotionEvent motionEvent) {
        return motionEvent.getToolType(0) == 3;
    }

    private boolean N(double d10) {
        double dDoubleValue = new BigDecimal(Double.toString(d10)).divide(new BigDecimal(Float.toString(this.V)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(dDoubleValue)) - dDoubleValue) < 1.0E-4d;
    }

    private boolean O(MotionEvent motionEvent) {
        return !M(motionEvent) && L();
    }

    private boolean Q() {
        Rect rect = new Rect();
        f0.j(this).getHitRect(rect);
        return getLocalVisibleRect(rect);
    }

    private void R(Resources resources) {
        this.f28900z = resources.getDimensionPixelSize(R$dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R$dimen.mtrl_slider_track_side_padding);
        this.f28890s = dimensionPixelOffset;
        this.D = dimensionPixelOffset;
        this.f28892t = resources.getDimensionPixelSize(R$dimen.mtrl_slider_thumb_radius);
        this.f28894u = resources.getDimensionPixelSize(R$dimen.mtrl_slider_track_height);
        this.f28896v = resources.getDimensionPixelSize(R$dimen.mtrl_slider_tick_radius);
        this.f28897w = resources.getDimensionPixelSize(R$dimen.mtrl_slider_tick_radius);
        this.f28898x = resources.getDimensionPixelSize(R$dimen.mtrl_slider_tick_min_spacing);
        this.M = resources.getDimensionPixelSize(R$dimen.mtrl_slider_label_padding);
    }

    private void S() {
        if (this.V <= 0.0f) {
            return;
        }
        w0();
        int iMin = Math.min((int) (((this.R - this.Q) / this.V) + 1.0f), (this.f28861d0 / this.f28898x) + 1);
        float[] fArr = this.W;
        if (fArr == null || fArr.length != iMin * 2) {
            this.W = new float[iMin * 2];
        }
        float f10 = this.f28861d0 / (iMin - 1);
        for (int i10 = 0; i10 < iMin * 2; i10 += 2) {
            float[] fArr2 = this.W;
            fArr2[i10] = this.D + ((i10 / 2.0f) * f10);
            fArr2[i10 + 1] = m();
        }
    }

    private void T(Canvas canvas, int i10, int i11) {
        if (l0()) {
            int iA0 = (int) (this.D + (a0(((Float) this.S.get(this.U)).floatValue()) * i10));
            if (Build.VERSION.SDK_INT < 28) {
                int i12 = this.G;
                canvas.clipRect(iA0 - i12, i11 - i12, iA0 + i12, i12 + i11, Region.Op.UNION);
            }
            canvas.drawCircle(iA0, i11, this.G, this.f28860d);
        }
    }

    private void U(Canvas canvas, int i10) {
        if (this.K <= 0) {
            return;
        }
        if (this.S.size() >= 1) {
            ArrayList arrayList = this.S;
            float fFloatValue = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
            float f10 = this.R;
            if (fFloatValue < f10) {
                canvas.drawPoint(D0(f10), i10, this.f28866g);
            }
        }
        if (this.S.size() > 1) {
            float fFloatValue2 = ((Float) this.S.get(0)).floatValue();
            float f11 = this.Q;
            if (fFloatValue2 > f11) {
                canvas.drawPoint(D0(f11), i10, this.f28866g);
            }
        }
    }

    private void V(Canvas canvas) {
        if (!this.f28855a0 || this.V <= 0.0f) {
            return;
        }
        float[] fArrB = B();
        int iCeil = (int) Math.ceil(fArrB[0] * ((this.W.length / 2.0f) - 1.0f));
        int iFloor = (int) Math.floor(fArrB[1] * ((this.W.length / 2.0f) - 1.0f));
        if (iCeil > 0) {
            canvas.drawPoints(this.W, 0, iCeil * 2, this.f28862e);
        }
        if (iCeil <= iFloor) {
            canvas.drawPoints(this.W, iCeil * 2, ((iFloor - iCeil) + 1) * 2, this.f28864f);
        }
        int i10 = (iFloor + 1) * 2;
        float[] fArr = this.W;
        if (i10 < fArr.length) {
            canvas.drawPoints(fArr, i10, fArr.length - i10, this.f28862e);
        }
    }

    private boolean W() {
        int iMax = this.f28890s + Math.max(Math.max(Math.max((this.E / 2) - this.f28892t, 0), Math.max((this.C - this.f28894u) / 2, 0)), Math.max(Math.max(this.f28857b0 - this.f28896v, 0), Math.max(this.f28859c0 - this.f28897w, 0)));
        if (this.D == iMax) {
            return false;
        }
        this.D = iMax;
        if (!ViewCompat.isLaidOut(this)) {
            return true;
        }
        u0(getWidth());
        return true;
    }

    private boolean X() {
        int iMax = Math.max(this.f28900z, Math.max(this.C + getPaddingTop() + getPaddingBottom(), this.F + getPaddingTop() + getPaddingBottom()));
        if (iMax == this.A) {
            return false;
        }
        this.A = iMax;
        return true;
    }

    private boolean Y(int i10) {
        int i11 = this.U;
        int iC = (int) d1.a.c(((long) i11) + ((long) i10), 0L, this.S.size() - 1);
        this.U = iC;
        if (iC == i11) {
            return false;
        }
        if (this.T != -1) {
            this.T = iC;
        }
        r0();
        postInvalidate();
        return true;
    }

    private boolean Z(int i10) {
        if (P()) {
            i10 = i10 == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i10;
        }
        return Y(i10);
    }

    private float a0(float f10) {
        float f11 = this.Q;
        float f12 = (f10 - f11) / (this.R - f11);
        return P() ? 1.0f - f12 : f12;
    }

    private Boolean b0(int i10, KeyEvent keyEvent) {
        if (i10 == 61) {
            if (keyEvent.hasNoModifiers()) {
                return Boolean.valueOf(Y(1));
            }
            return keyEvent.isShiftPressed() ? Boolean.valueOf(Y(-1)) : Boolean.FALSE;
        }
        if (i10 != 66) {
            if (i10 != 81) {
                if (i10 == 69) {
                    Y(-1);
                    return Boolean.TRUE;
                }
                if (i10 != 70) {
                    switch (i10) {
                        case 21:
                            Z(-1);
                            return Boolean.TRUE;
                        case 22:
                            Z(1);
                            return Boolean.TRUE;
                        case 23:
                            break;
                        default:
                            return null;
                    }
                }
            }
            Y(1);
            return Boolean.TRUE;
        }
        this.T = this.U;
        postInvalidate();
        return Boolean.TRUE;
    }

    private void c0() {
        Iterator it = this.f28880n.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    private void d0() {
        Iterator it = this.f28880n.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    private void f0(eb.a aVar, float f10) {
        int iA0 = (this.D + ((int) (a0(f10) * this.f28861d0))) - (aVar.getIntrinsicWidth() / 2);
        int iM = m() - (this.M + (this.F / 2));
        aVar.setBounds(iA0, iM - aVar.getIntrinsicHeight(), aVar.getIntrinsicWidth() + iA0, iM);
        Rect rect = new Rect(aVar.getBounds());
        com.google.android.material.internal.d.c(f0.j(this), this, rect);
        aVar.setBounds(rect);
    }

    private void g0(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.Slider, i10, f28850w0, new int[0]);
        this.f28874k = typedArrayI.getResourceId(R$styleable.Slider_labelStyle, R$style.Widget_MaterialComponents_Tooltip);
        this.Q = typedArrayI.getFloat(R$styleable.Slider_android_valueFrom, 0.0f);
        this.R = typedArrayI.getFloat(R$styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.Q));
        this.V = typedArrayI.getFloat(R$styleable.Slider_android_stepSize, 0.0f);
        this.f28899y = (int) Math.ceil(typedArrayI.getDimension(R$styleable.Slider_minTouchTargetSize, (float) Math.ceil(f0.g(getContext(), 48))));
        boolean zHasValue = typedArrayI.hasValue(R$styleable.Slider_trackColor);
        int i11 = zHasValue ? R$styleable.Slider_trackColor : R$styleable.Slider_trackColorInactive;
        int i12 = zHasValue ? R$styleable.Slider_trackColor : R$styleable.Slider_trackColorActive;
        ColorStateList colorStateListA = za.c.a(context, typedArrayI, i11);
        if (colorStateListA == null) {
            colorStateListA = g.a.a(context, R$color.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(colorStateListA);
        ColorStateList colorStateListA2 = za.c.a(context, typedArrayI, i12);
        if (colorStateListA2 == null) {
            colorStateListA2 = g.a.a(context, R$color.material_slider_active_track_color);
        }
        setTrackActiveTintList(colorStateListA2);
        this.f28885p0.d0(za.c.a(context, typedArrayI, R$styleable.Slider_thumbColor));
        if (typedArrayI.hasValue(R$styleable.Slider_thumbStrokeColor)) {
            setThumbStrokeColor(za.c.a(context, typedArrayI, R$styleable.Slider_thumbStrokeColor));
        }
        setThumbStrokeWidth(typedArrayI.getDimension(R$styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList colorStateListA3 = za.c.a(context, typedArrayI, R$styleable.Slider_haloColor);
        if (colorStateListA3 == null) {
            colorStateListA3 = g.a.a(context, R$color.material_slider_halo_color);
        }
        setHaloTintList(colorStateListA3);
        this.f28855a0 = typedArrayI.getBoolean(R$styleable.Slider_tickVisible, true);
        boolean zHasValue2 = typedArrayI.hasValue(R$styleable.Slider_tickColor);
        int i13 = zHasValue2 ? R$styleable.Slider_tickColor : R$styleable.Slider_tickColorInactive;
        int i14 = zHasValue2 ? R$styleable.Slider_tickColor : R$styleable.Slider_tickColorActive;
        ColorStateList colorStateListA4 = za.c.a(context, typedArrayI, i13);
        if (colorStateListA4 == null) {
            colorStateListA4 = g.a.a(context, R$color.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(colorStateListA4);
        ColorStateList colorStateListA5 = za.c.a(context, typedArrayI, i14);
        if (colorStateListA5 == null) {
            colorStateListA5 = g.a.a(context, R$color.material_slider_active_tick_marks_color);
        }
        setTickActiveTintList(colorStateListA5);
        setThumbTrackGapSize(typedArrayI.getDimensionPixelSize(R$styleable.Slider_thumbTrackGapSize, 0));
        setTrackStopIndicatorSize(typedArrayI.getDimensionPixelSize(R$styleable.Slider_trackStopIndicatorSize, 0));
        setTrackInsideCornerSize(typedArrayI.getDimensionPixelSize(R$styleable.Slider_trackInsideCornerSize, 0));
        int dimensionPixelSize = typedArrayI.getDimensionPixelSize(R$styleable.Slider_thumbRadius, 0) * 2;
        int dimensionPixelSize2 = typedArrayI.getDimensionPixelSize(R$styleable.Slider_thumbWidth, dimensionPixelSize);
        int dimensionPixelSize3 = typedArrayI.getDimensionPixelSize(R$styleable.Slider_thumbHeight, dimensionPixelSize);
        setThumbWidth(dimensionPixelSize2);
        setThumbHeight(dimensionPixelSize3);
        setHaloRadius(typedArrayI.getDimensionPixelSize(R$styleable.Slider_haloRadius, 0));
        setThumbElevation(typedArrayI.getDimension(R$styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(typedArrayI.getDimensionPixelSize(R$styleable.Slider_trackHeight, 0));
        setTickActiveRadius(typedArrayI.getDimensionPixelSize(R$styleable.Slider_tickRadiusActive, this.K / 2));
        setTickInactiveRadius(typedArrayI.getDimensionPixelSize(R$styleable.Slider_tickRadiusInactive, this.K / 2));
        setLabelBehavior(typedArrayI.getInt(R$styleable.Slider_labelBehavior, 0));
        if (!typedArrayI.getBoolean(R$styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        typedArrayI.recycle();
    }

    private void h(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, this.E, this.F);
        } else {
            float fMax = Math.max(this.E, this.F) / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * fMax), (int) (intrinsicHeight * fMax));
        }
    }

    private void h0(int i10) {
        AccessibilityEventSender accessibilityEventSender = this.f28872j;
        if (accessibilityEventSender == null) {
            this.f28872j = new AccessibilityEventSender(this, null);
        } else {
            removeCallbacks(accessibilityEventSender);
        }
        this.f28872j.setVirtualViewId(i10);
        postDelayed(this.f28872j, 200L);
    }

    private void i(eb.a aVar) {
        aVar.C0(f0.j(this));
    }

    private void i0(eb.a aVar, float f10) {
        aVar.E0(A(f10));
        f0(aVar, f10);
        f0.k(this).a(aVar);
    }

    private Float j(int i10) {
        float fL = this.f28865f0 ? l(20) : k();
        if (i10 == 21) {
            if (!P()) {
                fL = -fL;
            }
            return Float.valueOf(fL);
        }
        if (i10 == 22) {
            if (P()) {
                fL = -fL;
            }
            return Float.valueOf(fL);
        }
        if (i10 == 69) {
            return Float.valueOf(-fL);
        }
        if (i10 == 70 || i10 == 81) {
            return Float.valueOf(fL);
        }
        return null;
    }

    private void j0(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.S.size() == arrayList.size() && this.S.equals(arrayList)) {
            return;
        }
        this.S = arrayList;
        this.f28867g0 = true;
        this.U = 0;
        r0();
        o();
        s();
        postInvalidate();
    }

    private float k() {
        float f10 = this.V;
        if (f10 == 0.0f) {
            return 1.0f;
        }
        return f10;
    }

    private boolean k0() {
        return this.B == 3;
    }

    public float l(int i10) {
        float fK = k();
        float f10 = (this.R - this.Q) / fK;
        float f11 = i10;
        return f10 <= f11 ? fK : Math.round(f10 / f11) * fK;
    }

    private boolean l0() {
        return this.f28863e0 || !(getBackground() instanceof RippleDrawable);
    }

    private int m() {
        return (this.A / 2) + ((this.B == 1 || k0()) ? ((eb.a) this.f28876l.get(0)).getIntrinsicHeight() : 0);
    }

    private boolean m0(float f10) {
        return o0(this.T, f10);
    }

    private ValueAnimator n(boolean z10) {
        int iF;
        TimeInterpolator timeInterpolatorG;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(C(z10 ? this.f28886q : this.f28884p, z10 ? 0.0f : 1.0f), z10 ? 1.0f : 0.0f);
        if (z10) {
            iF = j.f(getContext(), f28851x0, 83);
            timeInterpolatorG = j.g(getContext(), f28853z0, qa.a.f69581e);
        } else {
            iF = j.f(getContext(), f28852y0, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
            timeInterpolatorG = j.g(getContext(), A0, qa.a.f69579c);
        }
        valueAnimatorOfFloat.setDuration(iF);
        valueAnimatorOfFloat.setInterpolator(timeInterpolatorG);
        valueAnimatorOfFloat.addUpdateListener(new a());
        return valueAnimatorOfFloat;
    }

    private double n0(float f10) {
        float f11 = this.V;
        if (f11 <= 0.0f) {
            return f10;
        }
        int i10 = (int) ((this.R - this.Q) / f11);
        return ((double) Math.round(f10 * i10)) / ((double) i10);
    }

    private void o() {
        if (this.f28876l.size() > this.S.size()) {
            List<eb.a> listSubList = this.f28876l.subList(this.S.size(), this.f28876l.size());
            for (eb.a aVar : listSubList) {
                if (ViewCompat.isAttachedToWindow(this)) {
                    p(aVar);
                }
            }
            listSubList.clear();
        }
        while (true) {
            if (this.f28876l.size() >= this.S.size()) {
                break;
            }
            eb.a aVarW0 = eb.a.w0(getContext(), null, 0, this.f28874k);
            this.f28876l.add(aVarW0);
            if (ViewCompat.isAttachedToWindow(this)) {
                i(aVarW0);
            }
        }
        int i10 = this.f28876l.size() != 1 ? 1 : 0;
        Iterator it = this.f28876l.iterator();
        while (it.hasNext()) {
            ((eb.a) it.next()).o0(i10);
        }
    }

    public boolean o0(int i10, float f10) {
        this.U = i10;
        if (Math.abs(f10 - ((Float) this.S.get(i10)).floatValue()) < 1.0E-4d) {
            return false;
        }
        this.S.set(i10, Float.valueOf(D(i10, f10)));
        r(i10);
        return true;
    }

    private void p(eb.a aVar) {
        d0 d0VarK = f0.k(this);
        if (d0VarK != null) {
            d0VarK.b(aVar);
            aVar.y0(f0.j(this));
        }
    }

    private boolean p0() {
        return m0(G());
    }

    private float q(float f10) {
        if (f10 == 0.0f) {
            return 0.0f;
        }
        float f11 = (f10 - this.D) / this.f28861d0;
        float f12 = this.Q;
        return (f11 * (f12 - this.R)) + f12;
    }

    private void r(int i10) {
        Iterator it = this.f28878m.iterator();
        while (it.hasNext()) {
            ((com.google.android.material.slider.a) it.next()).a(this, ((Float) this.S.get(i10)).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.f28870i;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        h0(i10);
    }

    public void r0() {
        if (l0() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int iA0 = (int) ((a0(((Float) this.S.get(this.U)).floatValue()) * this.f28861d0) + this.D);
            int iM = m();
            int i10 = this.G;
            a1.a.l(background, iA0 - i10, iM - i10, iA0 + i10, iM + i10);
        }
    }

    private void s() {
        for (com.google.android.material.slider.a aVar : this.f28878m) {
            Iterator it = this.S.iterator();
            while (it.hasNext()) {
                aVar.a(this, ((Float) it.next()).floatValue(), false);
            }
        }
    }

    public void s0() {
        int i10 = this.B;
        if (i10 == 0 || i10 == 1) {
            if (this.T == -1 || !isEnabled()) {
                y();
                return;
            } else {
                x();
                return;
            }
        }
        if (i10 == 2) {
            y();
            return;
        }
        if (i10 != 3) {
            throw new IllegalArgumentException("Unexpected labelBehavior: " + this.B);
        }
        if (isEnabled() && Q()) {
            x();
        } else {
            y();
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009f  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b5 A[SYNTHETIC] */
    private void t(Canvas canvas, int i10, int i11) {
        int i12;
        float[] fArrB = B();
        int i13 = this.D;
        float f10 = i10;
        float f11 = i13 + (fArrB[1] * f10);
        float fD0 = i13 + (fArrB[0] * f10);
        if (!I()) {
            this.f28856b.setStyle(Paint.Style.STROKE);
            this.f28856b.setStrokeCap(Paint.Cap.ROUND);
            float f12 = i11;
            canvas.drawLine(fD0, f12, f11, f12, this.f28856b);
            return;
        }
        FullCornerDirection fullCornerDirection = FullCornerDirection.NONE;
        if (this.S.size() == 1) {
            fullCornerDirection = P() ? FullCornerDirection.RIGHT : FullCornerDirection.LEFT;
        }
        for (int i14 = 0; i14 < this.S.size(); i14++) {
            if (this.S.size() > 1) {
                if (i14 > 0) {
                    fD0 = D0(((Float) this.S.get(i14 - 1)).floatValue());
                }
                float fD1 = D0(((Float) this.S.get(i14)).floatValue());
                if (P()) {
                    f11 = fD0;
                    fD0 = fD1;
                } else {
                    f11 = fD1;
                }
            }
            int i15 = c.f28908a[fullCornerDirection.ordinal()];
            if (i15 != 1) {
                if (i15 == 2) {
                    fD0 -= this.C / 2.0f;
                    i12 = this.H;
                } else if (i15 == 3) {
                    fD0 += this.H;
                    f11 += this.C / 2.0f;
                }
                if (fD0 >= f11) {
                    RectF rectF = this.f28881n0;
                    float f13 = i11;
                    int i16 = this.C;
                    rectF.set(fD0, f13 - (i16 / 2.0f), f11, f13 + (i16 / 2.0f));
                    t0(canvas, this.f28856b, this.f28881n0, fullCornerDirection);
                }
            } else {
                i12 = this.H;
                fD0 += i12;
            }
            f11 -= i12;
            if (fD0 >= f11) {
                RectF rectF2 = this.f28881n0;
                float f14 = i11;
                int i17 = this.C;
                rectF2.set(fD0, f14 - (i17 / 2.0f), f11, f14 + (i17 / 2.0f));
                t0(canvas, this.f28856b, this.f28881n0, fullCornerDirection);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0042  */
    /* JADX WARN: Code duplicated, block: B:14:0x0053  */
    /* JADX WARN: Code duplicated, block: B:16:0x0072 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0074  */
    /* JADX WARN: Code duplicated, block: B:18:0x0088  */
    /* JADX WARN: Code duplicated, block: B:19:0x0097  */
    private void t0(Canvas canvas, Paint paint, RectF rectF, FullCornerDirection fullCornerDirection) {
        int i10;
        float fMax;
        int i11;
        int i12 = this.C;
        float f10 = i12 / 2.0f;
        float f11 = i12 / 2.0f;
        int[] iArr = c.f28908a;
        int i13 = iArr[fullCornerDirection.ordinal()];
        if (i13 != 1) {
            if (i13 == 2) {
                i10 = this.L;
            } else if (i13 == 3) {
                f10 = this.L;
            }
            paint.setStyle(Paint.Style.FILL);
            paint.setStrokeCap(Paint.Cap.BUTT);
            paint.setAntiAlias(true);
            this.f28879m0.reset();
            if (rectF.width() >= f10 + f11) {
                this.f28879m0.addRoundRect(rectF, F(f10, f11), Path.Direction.CW);
                canvas.drawPath(this.f28879m0, paint);
                return;
            }
            float fMin = Math.min(f10, f11);
            fMax = Math.max(f10, f11);
            canvas.save();
            this.f28879m0.addRoundRect(rectF, fMin, fMin, Path.Direction.CW);
            canvas.clipPath(this.f28879m0);
            i11 = iArr[fullCornerDirection.ordinal()];
            if (i11 != 2) {
                RectF rectF2 = this.f28883o0;
                float f12 = rectF.left;
                rectF2.set(f12, rectF.top, (2.0f * fMax) + f12, rectF.bottom);
            } else if (i11 != 3) {
                this.f28883o0.set(rectF.centerX() - fMax, rectF.top, rectF.centerX() + fMax, rectF.bottom);
            } else {
                RectF rectF3 = this.f28883o0;
                float f13 = rectF.right;
                rectF3.set(f13 - (2.0f * fMax), rectF.top, f13, rectF.bottom);
            }
            canvas.drawRoundRect(this.f28883o0, fMax, fMax, paint);
            canvas.restore();
        }
        i10 = this.L;
        f10 = i10;
        f11 = i10;
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        this.f28879m0.reset();
        if (rectF.width() >= f10 + f11) {
            this.f28879m0.addRoundRect(rectF, F(f10, f11), Path.Direction.CW);
            canvas.drawPath(this.f28879m0, paint);
            return;
        }
        float fMin2 = Math.min(f10, f11);
        fMax = Math.max(f10, f11);
        canvas.save();
        this.f28879m0.addRoundRect(rectF, fMin2, fMin2, Path.Direction.CW);
        canvas.clipPath(this.f28879m0);
        i11 = iArr[fullCornerDirection.ordinal()];
        if (i11 != 2) {
            RectF rectF4 = this.f28883o0;
            float f14 = rectF.left;
            rectF4.set(f14, rectF.top, (2.0f * fMax) + f14, rectF.bottom);
        } else if (i11 != 3) {
            this.f28883o0.set(rectF.centerX() - fMax, rectF.top, rectF.centerX() + fMax, rectF.bottom);
        } else {
            RectF rectF5 = this.f28883o0;
            float f15 = rectF.right;
            rectF5.set(f15 - (2.0f * fMax), rectF.top, f15, rectF.bottom);
        }
        canvas.drawRoundRect(this.f28883o0, fMax, fMax, paint);
        canvas.restore();
    }

    private void u(Canvas canvas, int i10, int i11) {
        float[] fArrB = B();
        int i12 = this.D;
        float f10 = i10;
        float f11 = i12 + (fArrB[1] * f10);
        if (f11 < i12 + i10) {
            if (I()) {
                RectF rectF = this.f28881n0;
                float f12 = f11 + this.H;
                float f13 = i11;
                int i13 = this.C;
                rectF.set(f12, f13 - (i13 / 2.0f), this.D + i10 + (i13 / 2.0f), f13 + (i13 / 2.0f));
                t0(canvas, this.f28854a, this.f28881n0, FullCornerDirection.RIGHT);
            } else {
                this.f28854a.setStyle(Paint.Style.STROKE);
                this.f28854a.setStrokeCap(Paint.Cap.ROUND);
                float f14 = i11;
                canvas.drawLine(f11, f14, this.D + i10, f14, this.f28854a);
            }
        }
        int i14 = this.D;
        float f15 = i14 + (fArrB[0] * f10);
        if (f15 > i14) {
            if (!I()) {
                this.f28854a.setStyle(Paint.Style.STROKE);
                this.f28854a.setStrokeCap(Paint.Cap.ROUND);
                float f16 = i11;
                canvas.drawLine(this.D, f16, f15, f16, this.f28854a);
                return;
            }
            RectF rectF2 = this.f28881n0;
            float f17 = this.D;
            int i15 = this.C;
            float f18 = i11;
            rectF2.set(f17 - (i15 / 2.0f), f18 - (i15 / 2.0f), f15 - this.H, f18 + (i15 / 2.0f));
            t0(canvas, this.f28854a, this.f28881n0, FullCornerDirection.LEFT);
        }
    }

    private void u0(int i10) {
        this.f28861d0 = Math.max(i10 - (this.D * 2), 0);
        S();
    }

    private void v(Canvas canvas, int i10, int i11, float f10, Drawable drawable) {
        canvas.save();
        canvas.translate((this.D + ((int) (a0(f10) * i10))) - (drawable.getBounds().width() / 2.0f), i11 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    private void v0() {
        boolean zX = X();
        boolean zW = W();
        if (zX) {
            requestLayout();
        } else if (zW) {
            postInvalidate();
        }
    }

    private void w(Canvas canvas, int i10, int i11) {
        for (int i12 = 0; i12 < this.S.size(); i12++) {
            float fFloatValue = ((Float) this.S.get(i12)).floatValue();
            Drawable drawable = this.f28887q0;
            if (drawable != null) {
                v(canvas, i10, i11, fFloatValue, drawable);
            } else if (i12 < this.f28889r0.size()) {
                v(canvas, i10, i11, fFloatValue, (Drawable) this.f28889r0.get(i12));
            } else {
                if (!isEnabled()) {
                    canvas.drawCircle(this.D + (a0(fFloatValue) * i10), i11, getThumbRadius(), this.f28858c);
                }
                v(canvas, i10, i11, fFloatValue, this.f28885p0);
            }
        }
    }

    private void w0() {
        if (this.f28867g0) {
            z0();
            A0();
            y0();
            B0();
            x0();
            E0();
            this.f28867g0 = false;
        }
    }

    private void x() {
        if (!this.f28882o) {
            this.f28882o = true;
            ValueAnimator valueAnimatorN = n(true);
            this.f28884p = valueAnimatorN;
            this.f28886q = null;
            valueAnimatorN.start();
        }
        Iterator it = this.f28876l.iterator();
        for (int i10 = 0; i10 < this.S.size() && it.hasNext(); i10++) {
            if (i10 != this.U) {
                i0((eb.a) it.next(), ((Float) this.S.get(i10)).floatValue());
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f28876l.size()), Integer.valueOf(this.S.size())));
        }
        i0((eb.a) it.next(), ((Float) this.S.get(this.U)).floatValue());
    }

    private void x0() {
        float minSeparation = getMinSeparation();
        if (minSeparation < 0.0f) {
            throw new IllegalStateException(String.format("minSeparation(%s) must be greater or equal to 0", Float.valueOf(minSeparation)));
        }
        float f10 = this.V;
        if (f10 <= 0.0f || minSeparation <= 0.0f) {
            return;
        }
        if (this.f28893t0 != 1) {
            throw new IllegalStateException(String.format("minSeparation(%s) cannot be set as a dimension when using stepSize(%s)", Float.valueOf(minSeparation), Float.valueOf(this.V)));
        }
        if (minSeparation < f10 || !N(minSeparation)) {
            throw new IllegalStateException(String.format("minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)", Float.valueOf(minSeparation), Float.valueOf(this.V), Float.valueOf(this.V)));
        }
    }

    private void y() {
        if (this.f28882o) {
            this.f28882o = false;
            ValueAnimator valueAnimatorN = n(false);
            this.f28886q = valueAnimatorN;
            this.f28884p = null;
            valueAnimatorN.addListener(new b());
            this.f28886q.start();
        }
    }

    private void y0() {
        if (this.V > 0.0f && !C0(this.R)) {
            throw new IllegalStateException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.valueOf(this.V), Float.valueOf(this.Q), Float.valueOf(this.R)));
        }
    }

    private void z(int i10) {
        if (i10 == 1) {
            Y(Integer.MAX_VALUE);
            return;
        }
        if (i10 == 2) {
            Y(Integer.MIN_VALUE);
        } else if (i10 == 17) {
            Z(Integer.MAX_VALUE);
        } else {
            if (i10 != 66) {
                return;
            }
            Z(Integer.MIN_VALUE);
        }
    }

    private void z0() {
        if (this.Q >= this.R) {
            throw new IllegalStateException(String.format("valueFrom(%s) must be smaller than valueTo(%s)", Float.valueOf(this.Q), Float.valueOf(this.R)));
        }
    }

    final boolean P() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public void addOnChangeListener(com.google.android.material.slider.a aVar) {
        this.f28878m.add(aVar);
    }

    public void addOnSliderTouchListener(com.google.android.material.slider.b bVar) {
        this.f28880n.add(bVar);
    }

    public void clearOnChangeListeners() {
        this.f28878m.clear();
    }

    public void clearOnSliderTouchListeners() {
        this.f28880n.clear();
    }

    @Override
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.f28868h.i(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f28854a.setColor(E(this.f28877l0));
        this.f28856b.setColor(E(this.f28875k0));
        this.f28862e.setColor(E(this.f28873j0));
        this.f28864f.setColor(E(this.f28871i0));
        this.f28866g.setColor(E(this.f28875k0));
        for (eb.a aVar : this.f28876l) {
            if (aVar.isStateful()) {
                aVar.setState(getDrawableState());
            }
        }
        if (this.f28885p0.isStateful()) {
            this.f28885p0.setState(getDrawableState());
        }
        this.f28860d.setColor(E(this.f28869h0));
        this.f28860d.setAlpha(63);
    }

    protected boolean e0() {
        if (this.T != -1) {
            return true;
        }
        float fH = H();
        float fD0 = D0(fH);
        this.T = 0;
        float fAbs = Math.abs(((Float) this.S.get(0)).floatValue() - fH);
        for (int i10 = 1; i10 < this.S.size(); i10++) {
            float fAbs2 = Math.abs(((Float) this.S.get(i10)).floatValue() - fH);
            float fD1 = D0(((Float) this.S.get(i10)).floatValue());
            if (Float.compare(fAbs2, fAbs) > 0) {
                break;
            }
            boolean z10 = !P() ? fD1 - fD0 >= 0.0f : fD1 - fD0 <= 0.0f;
            if (Float.compare(fAbs2, fAbs) < 0) {
                this.T = i10;
            } else {
                if (Float.compare(fAbs2, fAbs) != 0) {
                    continue;
                } else {
                    if (Math.abs(fD1 - fD0) < this.f28888r) {
                        this.T = -1;
                        return false;
                    }
                    if (z10) {
                        this.T = i10;
                    }
                }
            }
            fAbs = fAbs2;
        }
        return this.T != -1;
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    final int getAccessibilityFocusedVirtualViewId() {
        return this.f28868h.k();
    }

    public int getActiveThumbIndex() {
        return this.T;
    }

    public int getFocusedThumbIndex() {
        return this.U;
    }

    public int getHaloRadius() {
        return this.G;
    }

    public ColorStateList getHaloTintList() {
        return this.f28869h0;
    }

    public int getLabelBehavior() {
        return this.B;
    }

    protected float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.V;
    }

    public float getThumbElevation() {
        return this.f28885p0.y();
    }

    public int getThumbHeight() {
        return this.F;
    }

    public int getThumbRadius() {
        return this.E / 2;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.f28885p0.H();
    }

    public float getThumbStrokeWidth() {
        return this.f28885p0.J();
    }

    public ColorStateList getThumbTintList() {
        return this.f28885p0.z();
    }

    public int getThumbTrackGapSize() {
        return this.H;
    }

    public int getThumbWidth() {
        return this.E;
    }

    public int getTickActiveRadius() {
        return this.f28857b0;
    }

    public ColorStateList getTickActiveTintList() {
        return this.f28871i0;
    }

    public int getTickInactiveRadius() {
        return this.f28859c0;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.f28873j0;
    }

    public ColorStateList getTickTintList() {
        if (this.f28873j0.equals(this.f28871i0)) {
            return this.f28871i0;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    public ColorStateList getTrackActiveTintList() {
        return this.f28875k0;
    }

    public int getTrackHeight() {
        return this.C;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.f28877l0;
    }

    public int getTrackInsideCornerSize() {
        return this.L;
    }

    public int getTrackSidePadding() {
        return this.D;
    }

    public int getTrackStopIndicatorSize() {
        return this.K;
    }

    public ColorStateList getTrackTintList() {
        if (this.f28877l0.equals(this.f28875k0)) {
            return this.f28875k0;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    public int getTrackWidth() {
        return this.f28861d0;
    }

    public float getValueFrom() {
        return this.Q;
    }

    public float getValueTo() {
        return this.R;
    }

    @NonNull
    List<Float> getValues() {
        return new ArrayList(this.S);
    }

    public boolean hasLabelFormatter() {
        return false;
    }

    public boolean isTickVisible() {
        return this.f28855a0;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.f28895u0);
        Iterator it = this.f28876l.iterator();
        while (it.hasNext()) {
            i((eb.a) it.next());
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        AccessibilityEventSender accessibilityEventSender = this.f28872j;
        if (accessibilityEventSender != null) {
            removeCallbacks(accessibilityEventSender);
        }
        this.f28882o = false;
        Iterator it = this.f28876l.iterator();
        while (it.hasNext()) {
            p((eb.a) it.next());
        }
        getViewTreeObserver().removeOnScrollChangedListener(this.f28895u0);
        super.onDetachedFromWindow();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        if (this.f28867g0) {
            w0();
            S();
        }
        super.onDraw(canvas);
        int iM = m();
        float fFloatValue = ((Float) this.S.get(0)).floatValue();
        ArrayList arrayList = this.S;
        float fFloatValue2 = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
        if (fFloatValue2 < this.R || (this.S.size() > 1 && fFloatValue > this.Q)) {
            u(canvas, this.f28861d0, iM);
        }
        if (fFloatValue2 > this.Q) {
            t(canvas, this.f28861d0, iM);
        }
        V(canvas);
        U(canvas, iM);
        if ((this.P || isFocused()) && isEnabled()) {
            T(canvas, this.f28861d0, iM);
        }
        s0();
        w(canvas, this.f28861d0, iM);
    }

    @Override
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (z10) {
            z(i10);
            this.f28868h.I(this.U);
        } else {
            this.T = -1;
            this.f28868h.b(this.U);
        }
    }

    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i10, keyEvent);
        }
        if (this.S.size() == 1) {
            this.T = 0;
        }
        if (this.T == -1) {
            Boolean boolB0 = b0(i10, keyEvent);
            return boolB0 != null ? boolB0.booleanValue() : super.onKeyDown(i10, keyEvent);
        }
        this.f28865f0 |= keyEvent.isLongPress();
        Float fJ = j(i10);
        if (fJ != null) {
            if (m0(((Float) this.S.get(this.T)).floatValue() + fJ.floatValue())) {
                r0();
                postInvalidate();
            }
            return true;
        }
        if (i10 != 23) {
            if (i10 == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return Y(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return Y(-1);
                }
                return false;
            }
            if (i10 != 66) {
                return super.onKeyDown(i10, keyEvent);
            }
        }
        this.T = -1;
        postInvalidate();
        return true;
    }

    @Override
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        this.f28865f0 = false;
        return super.onKeyUp(i10, keyEvent);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(this.A + ((this.B == 1 || k0()) ? ((eb.a) this.f28876l.get(0)).getIntrinsicHeight() : 0), 1073741824));
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.Q = sliderState.f28901a;
        this.R = sliderState.f28902b;
        j0(sliderState.f28903c);
        this.V = sliderState.f28904d;
        if (sliderState.f28905e) {
            requestFocus();
        }
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f28901a = this.Q;
        sliderState.f28902b = this.R;
        sliderState.f28903c = new ArrayList(this.S);
        sliderState.f28904d = this.V;
        sliderState.f28905e = hasFocus();
        return sliderState;
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        u0(i10);
        r0();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006f  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b5  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        int i10;
        if (!isEnabled()) {
            return false;
        }
        float x10 = motionEvent.getX();
        float f10 = (x10 - this.D) / this.f28861d0;
        this.f28891s0 = f10;
        float fMax = Math.max(0.0f, f10);
        this.f28891s0 = fMax;
        this.f28891s0 = Math.min(1.0f, fMax);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.N = x10;
            if (!O(motionEvent)) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (e0()) {
                    requestFocus();
                    this.P = true;
                    p0();
                    r0();
                    if (I()) {
                        int i11 = this.E;
                        this.I = i11;
                        this.J = this.H;
                        int iRound = Math.round(i11 * 0.5f);
                        int i12 = this.E - iRound;
                        setThumbWidth(iRound);
                        setThumbTrackGapSize(this.H - (i12 / 2));
                    }
                    invalidate();
                    c0();
                }
            }
        } else if (actionMasked == 1) {
            this.P = false;
            motionEvent2 = this.O;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.O.getX() - motionEvent.getX()) <= this.f28888r && Math.abs(this.O.getY() - motionEvent.getY()) <= this.f28888r && e0()) {
                c0();
            }
            if (this.T != -1) {
                p0();
                r0();
                if (I() && (i10 = this.I) != -1 && this.J != -1) {
                    setThumbWidth(i10);
                    setThumbTrackGapSize(this.J);
                }
                this.T = -1;
                d0();
            }
            invalidate();
        } else if (actionMasked == 2) {
            if (!this.P) {
                if (O(motionEvent) && Math.abs(x10 - this.N) < this.f28888r) {
                    return false;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                c0();
            }
            if (e0()) {
                this.P = true;
                p0();
                r0();
                invalidate();
            }
        } else if (actionMasked == 3) {
            this.P = false;
            motionEvent2 = this.O;
            if (motionEvent2 != null) {
                c0();
            }
            if (this.T != -1) {
                p0();
                r0();
                if (I()) {
                    setThumbWidth(i10);
                    setThumbTrackGapSize(this.J);
                }
                this.T = -1;
                d0();
            }
            invalidate();
        }
        setPressed(this.P);
        this.O = MotionEvent.obtain(motionEvent);
        return true;
    }

    @Override
    protected void onVisibilityChanged(View view, int i10) {
        d0 d0VarK;
        super.onVisibilityChanged(view, i10);
        if (i10 == 0 || (d0VarK = f0.k(this)) == null) {
            return;
        }
        Iterator it = this.f28876l.iterator();
        while (it.hasNext()) {
            d0VarK.b((eb.a) it.next());
        }
    }

    void q0(int i10, Rect rect) {
        int iA0 = this.D + ((int) (a0(getValues().get(i10).floatValue()) * this.f28861d0));
        int iM = m();
        int iMax = Math.max(this.E / 2, this.f28899y / 2);
        int iMax2 = Math.max(this.F / 2, this.f28899y / 2);
        rect.set(iA0 - iMax, iM - iMax2, iA0 + iMax, iM + iMax2);
    }

    public void removeOnChangeListener(com.google.android.material.slider.a aVar) {
        this.f28878m.remove(aVar);
    }

    public void removeOnSliderTouchListener(com.google.android.material.slider.b bVar) {
        this.f28880n.remove(bVar);
    }

    protected void setActiveThumbIndex(int i10) {
        this.T = i10;
    }

    void setCustomThumbDrawable(int i10) {
        setCustomThumbDrawable(getResources().getDrawable(i10));
    }

    void setCustomThumbDrawablesForValues(@NonNull int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            drawableArr[i10] = getResources().getDrawable(iArr[i10]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        setLayerType(z10 ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i10) {
        if (i10 < 0 || i10 >= this.S.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.U = i10;
        this.f28868h.I(i10);
        postInvalidate();
    }

    public void setHaloRadius(int i10) {
        if (i10 == this.G) {
            return;
        }
        this.G = i10;
        Drawable background = getBackground();
        if (l0() || !(background instanceof RippleDrawable)) {
            postInvalidate();
        } else {
            com.google.android.material.drawable.d.m((RippleDrawable) background, this.G);
        }
    }

    public void setHaloRadiusResource(int i10) {
        setHaloRadius(getResources().getDimensionPixelSize(i10));
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f28869h0)) {
            return;
        }
        this.f28869h0 = colorStateList;
        Drawable background = getBackground();
        if (!l0() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.f28860d.setColor(E(colorStateList));
        this.f28860d.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i10) {
        if (this.B != i10) {
            this.B = i10;
            requestLayout();
        }
    }

    public void setLabelFormatter(com.google.android.material.slider.d dVar) {
    }

    protected void setSeparationUnit(int i10) {
        this.f28893t0 = i10;
        this.f28867g0 = true;
        postInvalidate();
    }

    public void setStepSize(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.valueOf(f10), Float.valueOf(this.Q), Float.valueOf(this.R)));
        }
        if (this.V != f10) {
            this.V = f10;
            this.f28867g0 = true;
            postInvalidate();
        }
    }

    public void setThumbElevation(float f10) {
        this.f28885p0.c0(f10);
    }

    public void setThumbElevationResource(int i10) {
        setThumbElevation(getResources().getDimension(i10));
    }

    public void setThumbHeight(int i10) {
        if (i10 == this.F) {
            return;
        }
        this.F = i10;
        this.f28885p0.setBounds(0, 0, this.E, i10);
        Drawable drawable = this.f28887q0;
        if (drawable != null) {
            h(drawable);
        }
        Iterator it = this.f28889r0.iterator();
        while (it.hasNext()) {
            h((Drawable) it.next());
        }
        v0();
    }

    public void setThumbHeightResource(int i10) {
        setThumbHeight(getResources().getDimensionPixelSize(i10));
    }

    public void setThumbRadius(int i10) {
        int i11 = i10 * 2;
        setThumbWidth(i11);
        setThumbHeight(i11);
    }

    public void setThumbRadiusResource(int i10) {
        setThumbRadius(getResources().getDimensionPixelSize(i10));
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.f28885p0.n0(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i10) {
        if (i10 != 0) {
            setThumbStrokeColor(g.a.a(getContext(), i10));
        }
    }

    public void setThumbStrokeWidth(float f10) {
        this.f28885p0.o0(f10);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i10) {
        if (i10 != 0) {
            setThumbStrokeWidth(getResources().getDimension(i10));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f28885p0.z())) {
            return;
        }
        this.f28885p0.d0(colorStateList);
        invalidate();
    }

    public void setThumbTrackGapSize(int i10) {
        if (this.H == i10) {
            return;
        }
        this.H = i10;
        invalidate();
    }

    public void setThumbWidth(int i10) {
        if (i10 == this.E) {
            return;
        }
        this.E = i10;
        this.f28885p0.setShapeAppearanceModel(n.a().q(0, this.E / 2.0f).m());
        this.f28885p0.setBounds(0, 0, this.E, this.F);
        Drawable drawable = this.f28887q0;
        if (drawable != null) {
            h(drawable);
        }
        Iterator it = this.f28889r0.iterator();
        while (it.hasNext()) {
            h((Drawable) it.next());
        }
        v0();
    }

    public void setThumbWidthResource(int i10) {
        setThumbWidth(getResources().getDimensionPixelSize(i10));
    }

    public void setTickActiveRadius(int i10) {
        if (this.f28857b0 != i10) {
            this.f28857b0 = i10;
            this.f28864f.setStrokeWidth(i10 * 2);
            v0();
        }
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f28871i0)) {
            return;
        }
        this.f28871i0 = colorStateList;
        this.f28864f.setColor(E(colorStateList));
        invalidate();
    }

    public void setTickInactiveRadius(int i10) {
        if (this.f28859c0 != i10) {
            this.f28859c0 = i10;
            this.f28862e.setStrokeWidth(i10 * 2);
            v0();
        }
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f28873j0)) {
            return;
        }
        this.f28873j0 = colorStateList;
        this.f28862e.setColor(E(colorStateList));
        invalidate();
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z10) {
        if (this.f28855a0 != z10) {
            this.f28855a0 = z10;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f28875k0)) {
            return;
        }
        this.f28875k0 = colorStateList;
        this.f28856b.setColor(E(colorStateList));
        this.f28866g.setColor(E(this.f28875k0));
        invalidate();
    }

    public void setTrackHeight(int i10) {
        if (this.C != i10) {
            this.C = i10;
            K();
            v0();
        }
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f28877l0)) {
            return;
        }
        this.f28877l0 = colorStateList;
        this.f28854a.setColor(E(colorStateList));
        invalidate();
    }

    public void setTrackInsideCornerSize(int i10) {
        if (this.L == i10) {
            return;
        }
        this.L = i10;
        invalidate();
    }

    public void setTrackStopIndicatorSize(int i10) {
        if (this.K == i10) {
            return;
        }
        this.K = i10;
        this.f28866g.setStrokeWidth(i10);
        invalidate();
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f10) {
        this.Q = f10;
        this.f28867g0 = true;
        postInvalidate();
    }

    public void setValueTo(float f10) {
        this.R = f10;
        this.f28867g0 = true;
        postInvalidate();
    }

    void setValues(@NonNull Float... fArr) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, fArr);
        j0(arrayList);
    }

    private class AccessibilityEventSender implements Runnable {
        int virtualViewId;

        private AccessibilityEventSender() {
            this.virtualViewId = -1;
        }

        @Override
        public void run() {
            BaseSlider.this.f28868h.J(this.virtualViewId, 4);
        }

        void setVirtualViewId(int i10) {
            this.virtualViewId = i10;
        }

        AccessibilityEventSender(BaseSlider baseSlider, a aVar) {
            this();
        }
    }

    void setCustomThumbDrawable(Drawable drawable) {
        this.f28887q0 = J(drawable);
        this.f28889r0.clear();
        postInvalidate();
    }

    void setValues(@NonNull List<Float> list) {
        j0(new ArrayList(list));
    }

    void setCustomThumbDrawablesForValues(@NonNull Drawable... drawableArr) {
        this.f28887q0 = null;
        this.f28889r0 = new ArrayList();
        for (Drawable drawable : drawableArr) {
            this.f28889r0.add(J(drawable));
        }
        postInvalidate();
    }
}
