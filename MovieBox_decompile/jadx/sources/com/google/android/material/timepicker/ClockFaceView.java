package com.google.android.material.timepicker;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import java.util.Arrays;

class ClockFaceView extends g implements ClockHandView.c {

    private final ClockHandView f29207d;

    private final Rect f29208e;

    private final RectF f29209f;

    private final Rect f29210g;

    private final SparseArray f29211h;

    private final AccessibilityDelegateCompat f29212i;

    private final int[] f29213j;

    private final float[] f29214k;

    private final int f29215l;

    private final int f29216m;

    private final int f29217n;

    private final int f29218o;

    private String[] f29219p;

    private float f29220q;

    private final ColorStateList f29221r;

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.l(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.f29207d.j()) - ClockFaceView.this.f29215l);
            return true;
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            int iIntValue = ((Integer) view.getTag(R$id.material_value_index)).intValue();
            if (iIntValue > 0) {
                accessibilityNodeInfoCompat.setTraversalAfter((View) ClockFaceView.this.f29211h.get(iIntValue - 1));
            }
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, iIntValue, 1, false, view.isSelected()));
            accessibilityNodeInfoCompat.setClickable(true);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }

        @Override
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 != 16) {
                return super.performAccessibilityAction(view, i10, bundle);
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            view.getHitRect(ClockFaceView.this.f29208e);
            float fCenterX = ClockFaceView.this.f29208e.centerX();
            float fCenterY = ClockFaceView.this.f29208e.centerY();
            ClockFaceView.this.f29207d.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, fCenterX, fCenterY, 0));
            ClockFaceView.this.f29207d.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, fCenterX, fCenterY, 0));
            return true;
        }
    }

    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialClockStyle);
    }

    private void A(int i10) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = this.f29211h.size();
        boolean z10 = false;
        for (int i11 = 0; i11 < Math.max(this.f29219p.length, size); i11++) {
            TextView textView = (TextView) this.f29211h.get(i11);
            if (i11 >= this.f29219p.length) {
                removeView(textView);
                this.f29211h.remove(i11);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R$layout.material_clockface_textview, (ViewGroup) this, false);
                    this.f29211h.put(i11, textView);
                    addView(textView);
                }
                textView.setText(this.f29219p[i11]);
                textView.setTag(R$id.material_value_index, Integer.valueOf(i11));
                int i12 = (i11 / 12) + 1;
                textView.setTag(R$id.material_clock_level, Integer.valueOf(i12));
                if (i12 > 1) {
                    z10 = true;
                }
                ViewCompat.setAccessibilityDelegate(textView, this.f29212i);
                textView.setTextColor(this.f29221r);
                if (i10 != 0) {
                    textView.setContentDescription(getResources().getString(i10, this.f29219p[i11]));
                }
            }
        }
        this.f29207d.t(z10);
    }

    private void t() {
        RectF rectFF = this.f29207d.f();
        TextView textViewW = w(rectFF);
        for (int i10 = 0; i10 < this.f29211h.size(); i10++) {
            TextView textView = (TextView) this.f29211h.get(i10);
            if (textView != null) {
                textView.setSelected(textView == textViewW);
                textView.getPaint().setShader(v(rectFF, textView));
                textView.invalidate();
            }
        }
    }

    private RadialGradient v(RectF rectF, TextView textView) {
        textView.getHitRect(this.f29208e);
        this.f29209f.set(this.f29208e);
        textView.getLineBounds(0, this.f29210g);
        RectF rectF2 = this.f29209f;
        Rect rect = this.f29210g;
        rectF2.inset(rect.left, rect.top);
        if (RectF.intersects(rectF, this.f29209f)) {
            return new RadialGradient(rectF.centerX() - this.f29209f.left, rectF.centerY() - this.f29209f.top, rectF.width() * 0.5f, this.f29213j, this.f29214k, Shader.TileMode.CLAMP);
        }
        return null;
    }

    private TextView w(RectF rectF) {
        float f10 = Float.MAX_VALUE;
        TextView textView = null;
        for (int i10 = 0; i10 < this.f29211h.size(); i10++) {
            TextView textView2 = (TextView) this.f29211h.get(i10);
            if (textView2 != null) {
                textView2.getHitRect(this.f29208e);
                this.f29209f.set(this.f29208e);
                this.f29209f.union(rectF);
                float fWidth = this.f29209f.width() * this.f29209f.height();
                if (fWidth < f10) {
                    textView = textView2;
                    f10 = fWidth;
                }
            }
        }
        return textView;
    }

    private static float x(float f10, float f11, float f12) {
        return Math.max(Math.max(f10, f11), f12);
    }

    @Override
    public void d(float f10, boolean z10) {
        if (Math.abs(this.f29220q - f10) > 0.001f) {
            this.f29220q = f10;
            t();
        }
    }

    @Override
    public void l(int i10) {
        if (i10 != k()) {
            super.l(i10);
            this.f29207d.o(k());
        }
    }

    @Override
    protected void n() {
        super.n();
        for (int i10 = 0; i10 < this.f29211h.size(); i10++) {
            ((TextView) this.f29211h.get(i10)).setVisibility(0);
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f29219p.length, false, 1));
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        t();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iX = (int) (this.f29218o / x(this.f29216m / displayMetrics.heightPixels, this.f29217n / displayMetrics.widthPixels, 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iX, 1073741824);
        setMeasuredDimension(iX, iX);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    int u() {
        return this.f29207d.e();
    }

    void y(int i10) {
        this.f29207d.p(i10);
    }

    public void z(String[] strArr, int i10) {
        this.f29219p = strArr;
        A(i10);
    }

    public ClockFaceView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f29208e = new Rect();
        this.f29209f = new RectF();
        this.f29210g = new Rect();
        this.f29211h = new SparseArray();
        this.f29214k = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClockFaceView, i10, R$style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListA = za.c.a(context, typedArrayObtainStyledAttributes, R$styleable.ClockFaceView_clockNumberTextColor);
        this.f29221r = colorStateListA;
        LayoutInflater.from(context).inflate(R$layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R$id.material_clock_hand);
        this.f29207d = clockHandView;
        this.f29215l = resources.getDimensionPixelSize(R$dimen.material_clock_hand_padding);
        int colorForState = colorStateListA.getColorForState(new int[]{R.attr.state_selected}, colorStateListA.getDefaultColor());
        this.f29213j = new int[]{colorForState, colorForState, colorStateListA.getDefaultColor()};
        clockHandView.b(this);
        int defaultColor = g.a.a(context, R$color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListA2 = za.c.a(context, typedArrayObtainStyledAttributes, R$styleable.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(colorStateListA2 != null ? colorStateListA2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new a());
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.f29212i = new b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        z(strArr, 0);
        this.f29216m = resources.getDimensionPixelSize(R$dimen.material_time_picker_minimum_screen_height);
        this.f29217n = resources.getDimensionPixelSize(R$dimen.material_time_picker_minimum_screen_width);
        this.f29218o = resources.getDimensionPixelSize(R$dimen.material_clock_size);
    }
}
