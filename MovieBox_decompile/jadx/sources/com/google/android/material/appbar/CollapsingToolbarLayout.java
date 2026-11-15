package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.x;

public class CollapsingToolbarLayout extends FrameLayout {
    private static final int F = R$style.Widget_Design_CollapsingToolbar;
    public static final int TITLE_COLLAPSE_MODE_FADE = 1;
    public static final int TITLE_COLLAPSE_MODE_SCALE = 0;
    WindowInsetsCompat A;
    private int B;
    private boolean C;
    private int D;
    private boolean E;

    private boolean f27391a;

    private int f27392b;

    private ViewGroup f27393c;

    private View f27394d;

    private View f27395e;

    private int f27396f;

    private int f27397g;

    private int f27398h;

    private int f27399i;

    private final Rect f27400j;

    final com.google.android.material.internal.b f27401k;

    final va.a f27402l;

    private boolean f27403m;

    private boolean f27404n;

    private Drawable f27405o;

    Drawable f27406p;

    private int f27407q;

    private boolean f27408r;

    private ValueAnimator f27409s;

    private long f27410t;

    private final TimeInterpolator f27411u;

    private final TimeInterpolator f27412v;

    private int f27413w;

    private AppBarLayout.g f27414x;

    int f27415y;

    private int f27416z;

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return CollapsingToolbarLayout.this.o(windowInsetsCompat);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    private class d implements AppBarLayout.g {
        d() {
        }

        @Override
        public void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.f27415y = i10;
            WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout.A;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i11);
                c cVar = (c) childAt.getLayoutParams();
                j jVarK = CollapsingToolbarLayout.k(childAt);
                int i12 = cVar.f27419a;
                if (i12 == 1) {
                    jVarK.f(d1.a.b(-i10, 0, CollapsingToolbarLayout.this.i(childAt)));
                } else if (i12 == 2) {
                    jVarK.f(Math.round((-i10) * cVar.f27420b));
                }
            }
            CollapsingToolbarLayout.this.u();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.f27406p != null && systemWindowInsetTop > 0) {
                ViewCompat.postInvalidateOnAnimation(collapsingToolbarLayout2);
            }
            int height = CollapsingToolbarLayout.this.getHeight();
            int minimumHeight = (height - ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this)) - systemWindowInsetTop;
            float f10 = minimumHeight;
            CollapsingToolbarLayout.this.f27401k.B0(Math.min(1.0f, (height - CollapsingToolbarLayout.this.getScrimVisibleHeightTrigger()) / f10));
            CollapsingToolbarLayout collapsingToolbarLayout3 = CollapsingToolbarLayout.this;
            collapsingToolbarLayout3.f27401k.o0(collapsingToolbarLayout3.f27415y + minimumHeight);
            CollapsingToolbarLayout.this.f27401k.z0(Math.abs(i10) / f10);
        }
    }

    public interface e extends x {
    }

    public CollapsingToolbarLayout(@NonNull Context context) {
        this(context, null);
    }

    private void a(int i10) {
        d();
        ValueAnimator valueAnimator = this.f27409s;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f27409s = valueAnimator2;
            valueAnimator2.setInterpolator(i10 > this.f27407q ? this.f27411u : this.f27412v);
            this.f27409s.addUpdateListener(new b());
        } else if (valueAnimator.isRunning()) {
            this.f27409s.cancel();
        }
        this.f27409s.setDuration(this.f27410t);
        this.f27409s.setIntValues(this.f27407q, i10);
        this.f27409s.start();
    }

    private TextUtils.TruncateAt b(int i10) {
        if (i10 == 0) {
            return TextUtils.TruncateAt.START;
        }
        if (i10 != 1) {
            return i10 != 3 ? TextUtils.TruncateAt.END : TextUtils.TruncateAt.MARQUEE;
        }
        return TextUtils.TruncateAt.MIDDLE;
    }

    private void c(AppBarLayout appBarLayout) {
        if (l()) {
            appBarLayout.setLiftOnScroll(false);
        }
    }

    private void d() {
        if (this.f27391a) {
            ViewGroup viewGroup = null;
            this.f27393c = null;
            this.f27394d = null;
            int i10 = this.f27392b;
            if (i10 != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i10);
                this.f27393c = viewGroup2;
                if (viewGroup2 != null) {
                    this.f27394d = e(viewGroup2);
                }
            }
            if (this.f27393c == null) {
                int childCount = getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = getChildAt(i11);
                    if (m(childAt)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                }
                this.f27393c = viewGroup;
            }
            t();
            this.f27391a = false;
        }
    }

    private View e(View view) {
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view = parent;
            }
        }
        return view;
    }

    private int getDefaultContentScrimColorForTitleCollapseFadeMode() {
        ColorStateList colorStateListG = com.google.android.material.color.b.g(getContext(), R$attr.colorSurfaceContainer);
        if (colorStateListG != null) {
            return colorStateListG.getDefaultColor();
        }
        return this.f27402l.d(getResources().getDimension(R$dimen.design_appbar_elevation));
    }

    private static int h(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getMeasuredHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private static CharSequence j(View view) {
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getTitle();
        }
        if (view instanceof android.widget.Toolbar) {
            return ((android.widget.Toolbar) view).getTitle();
        }
        return null;
    }

    static j k(View view) {
        j jVar = (j) view.getTag(R$id.view_offset_helper);
        if (jVar != null) {
            return jVar;
        }
        j jVar2 = new j(view);
        view.setTag(R$id.view_offset_helper, jVar2);
        return jVar2;
    }

    private boolean l() {
        return this.f27416z == 1;
    }

    private static boolean m(View view) {
        return (view instanceof Toolbar) || (view instanceof android.widget.Toolbar);
    }

    private boolean n(View view) {
        View view2 = this.f27394d;
        if (view2 == null || view2 == this) {
            if (view != this.f27393c) {
                return false;
            }
        } else if (view != view2) {
            return false;
        }
        return true;
    }

    private void p(boolean z10) {
        int titleMarginStart;
        int titleMarginBottom;
        int titleMarginEnd;
        int titleMarginTop;
        View view = this.f27394d;
        if (view == null) {
            view = this.f27393c;
        }
        int i10 = i(view);
        com.google.android.material.internal.d.a(this, this.f27395e, this.f27400j);
        ViewGroup viewGroup = this.f27393c;
        if (viewGroup instanceof Toolbar) {
            Toolbar toolbar = (Toolbar) viewGroup;
            titleMarginStart = toolbar.getTitleMarginStart();
            titleMarginEnd = toolbar.getTitleMarginEnd();
            titleMarginTop = toolbar.getTitleMarginTop();
            titleMarginBottom = toolbar.getTitleMarginBottom();
        } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup instanceof android.widget.Toolbar)) {
            titleMarginStart = 0;
            titleMarginBottom = 0;
            titleMarginEnd = 0;
            titleMarginTop = 0;
        } else {
            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
            titleMarginStart = toolbar2.getTitleMarginStart();
            titleMarginEnd = toolbar2.getTitleMarginEnd();
            titleMarginTop = toolbar2.getTitleMarginTop();
            titleMarginBottom = toolbar2.getTitleMarginBottom();
        }
        com.google.android.material.internal.b bVar = this.f27401k;
        Rect rect = this.f27400j;
        int i11 = rect.left + (z10 ? titleMarginEnd : titleMarginStart);
        int i12 = rect.top + i10 + titleMarginTop;
        int i13 = rect.right;
        if (!z10) {
            titleMarginStart = titleMarginEnd;
        }
        bVar.f0(i11, i12, i13 - titleMarginStart, (rect.bottom + i10) - titleMarginBottom);
    }

    private void q() {
        setContentDescription(getTitle());
    }

    private void r(Drawable drawable, int i10, int i11) {
        s(drawable, this.f27393c, i10, i11);
    }

    private void s(Drawable drawable, View view, int i10, int i11) {
        if (l() && view != null && this.f27403m) {
            i11 = view.getBottom();
        }
        drawable.setBounds(0, 0, i10, i11);
    }

    private void t() {
        View view;
        if (!this.f27403m && (view = this.f27395e) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f27395e);
            }
        }
        if (!this.f27403m || this.f27393c == null) {
            return;
        }
        if (this.f27395e == null) {
            this.f27395e = new View(getContext());
        }
        if (this.f27395e.getParent() == null) {
            this.f27393c.addView(this.f27395e, -1, -1);
        }
    }

    private void v(int i10, int i11, int i12, int i13, boolean z10) {
        View view;
        if (!this.f27403m || (view = this.f27395e) == null) {
            return;
        }
        boolean z11 = ViewCompat.isAttachedToWindow(view) && this.f27395e.getVisibility() == 0;
        this.f27404n = z11;
        if (z11 || z10) {
            boolean z12 = ViewCompat.getLayoutDirection(this) == 1;
            p(z12);
            this.f27401k.p0(z12 ? this.f27398h : this.f27396f, this.f27400j.top + this.f27397g, (i12 - i10) - (z12 ? this.f27396f : this.f27398h), (i13 - i11) - this.f27399i);
            this.f27401k.c0(z10);
        }
    }

    private void w() {
        if (this.f27393c != null && this.f27403m && TextUtils.isEmpty(this.f27401k.O())) {
            setTitle(j(this.f27393c));
        }
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        d();
        if (this.f27393c == null && (drawable = this.f27405o) != null && this.f27407q > 0) {
            drawable.mutate().setAlpha(this.f27407q);
            this.f27405o.draw(canvas);
        }
        if (this.f27403m && this.f27404n) {
            if (this.f27393c == null || this.f27405o == null || this.f27407q <= 0 || !l() || this.f27401k.F() >= this.f27401k.G()) {
                this.f27401k.l(canvas);
            } else {
                int iSave = canvas.save();
                canvas.clipRect(this.f27405o.getBounds(), Region.Op.DIFFERENCE);
                this.f27401k.l(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        if (this.f27406p == null || this.f27407q <= 0) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.A;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f27406p.setBounds(0, -this.f27415y, getWidth(), systemWindowInsetTop - this.f27415y);
            this.f27406p.mutate().setAlpha(this.f27407q);
            this.f27406p.draw(canvas);
        }
    }

    @Override
    protected boolean drawChild(Canvas canvas, View view, long j10) {
        boolean z10;
        if (this.f27405o == null || this.f27407q <= 0 || !n(view)) {
            z10 = false;
        } else {
            s(this.f27405o, view, getWidth(), getHeight());
            this.f27405o.mutate().setAlpha(this.f27407q);
            this.f27405o.draw(canvas);
            z10 = true;
        }
        return super.drawChild(canvas, view, j10) || z10;
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f27406p;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f27405o;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        com.google.android.material.internal.b bVar = this.f27401k;
        if (bVar != null) {
            state |= bVar.J0(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override
    public c generateDefaultLayoutParams() {
        return new c(-1, -1);
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    public int getCollapsedTitleGravity() {
        return this.f27401k.q();
    }

    public float getCollapsedTitleTextSize() {
        return this.f27401k.u();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.f27401k.v();
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.f27405o;
    }

    public int getExpandedTitleGravity() {
        return this.f27401k.B();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f27399i;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f27398h;
    }

    public int getExpandedTitleMarginStart() {
        return this.f27396f;
    }

    public int getExpandedTitleMarginTop() {
        return this.f27397g;
    }

    public float getExpandedTitleTextSize() {
        return this.f27401k.D();
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.f27401k.E();
    }

    public int getHyphenationFrequency() {
        return this.f27401k.H();
    }

    public int getLineCount() {
        return this.f27401k.I();
    }

    public float getLineSpacingAdd() {
        return this.f27401k.J();
    }

    public float getLineSpacingMultiplier() {
        return this.f27401k.K();
    }

    public int getMaxLines() {
        return this.f27401k.L();
    }

    int getScrimAlpha() {
        return this.f27407q;
    }

    public long getScrimAnimationDuration() {
        return this.f27410t;
    }

    public int getScrimVisibleHeightTrigger() {
        int i10 = this.f27413w;
        if (i10 >= 0) {
            return i10 + this.B + this.D;
        }
        WindowInsetsCompat windowInsetsCompat = this.A;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight()) : getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.f27406p;
    }

    @Nullable
    public CharSequence getTitle() {
        if (this.f27403m) {
            return this.f27401k.O();
        }
        return null;
    }

    public int getTitleCollapseMode() {
        return this.f27416z;
    }

    @Nullable
    public TimeInterpolator getTitlePositionInterpolator() {
        return this.f27401k.N();
    }

    @NonNull
    public TextUtils.TruncateAt getTitleTextEllipsize() {
        return this.f27401k.R();
    }

    final int i(View view) {
        return ((getHeight() - k(view).b()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((c) view.getLayoutParams())).bottomMargin;
    }

    public boolean isExtraMultilineHeightEnabled() {
        return this.E;
    }

    public boolean isForceApplySystemWindowInsetTop() {
        return this.C;
    }

    public boolean isRtlTextDirectionHeuristicsEnabled() {
        return this.f27401k.V();
    }

    public boolean isTitleEnabled() {
        return this.f27403m;
    }

    WindowInsetsCompat o(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!androidx.core.util.d.a(this.A, windowInsetsCompat2)) {
            this.A = windowInsetsCompat2;
            requestLayout();
        }
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            c(appBarLayout);
            ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows(appBarLayout));
            if (this.f27414x == null) {
                this.f27414x = new d();
            }
            appBarLayout.addOnOffsetChangedListener(this.f27414x);
            ViewCompat.requestApplyInsets(this);
        }
    }

    @Override
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f27401k.Z(configuration);
    }

    @Override
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.g gVar = this.f27414x;
        if (gVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(gVar);
        }
        super.onDetachedFromWindow();
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        WindowInsetsCompat windowInsetsCompat = this.A;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt = getChildAt(i14);
                if (!ViewCompat.getFitsSystemWindows(childAt) && childAt.getTop() < systemWindowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i15 = 0; i15 < childCount2; i15++) {
            k(getChildAt(i15)).d();
        }
        v(i10, i11, i12, i13, false);
        w();
        u();
        int childCount3 = getChildCount();
        for (int i16 = 0; i16 < childCount3; i16++) {
            k(getChildAt(i16)).a();
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        d();
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        WindowInsetsCompat windowInsetsCompat = this.A;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if ((mode == 0 || this.C) && systemWindowInsetTop > 0) {
            this.B = systemWindowInsetTop;
            super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + systemWindowInsetTop, 1073741824));
        }
        if (this.E && this.f27401k.L() > 1) {
            w();
            v(0, 0, getMeasuredWidth(), getMeasuredHeight(), true);
            int iZ = this.f27401k.z();
            if (iZ > 1) {
                this.D = Math.round(this.f27401k.A()) * (iZ - 1);
                super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + this.D, 1073741824));
            }
        }
        ViewGroup viewGroup = this.f27393c;
        if (viewGroup != null) {
            View view = this.f27394d;
            if (view == null || view == this) {
                setMinimumHeight(h(viewGroup));
            } else {
                setMinimumHeight(h(view));
            }
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        Drawable drawable = this.f27405o;
        if (drawable != null) {
            r(drawable, i10, i11);
        }
    }

    public void setCollapsedTitleGravity(int i10) {
        this.f27401k.k0(i10);
    }

    public void setCollapsedTitleTextAppearance(int i10) {
        this.f27401k.h0(i10);
    }

    public void setCollapsedTitleTextColor(int i10) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i10));
    }

    public void setCollapsedTitleTextSize(float f10) {
        this.f27401k.l0(f10);
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.f27401k.m0(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f27405o;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f27405o = drawableMutate;
            if (drawableMutate != null) {
                r(drawableMutate, getWidth(), getHeight());
                this.f27405o.setCallback(this);
                this.f27405o.setAlpha(this.f27407q);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setContentScrimColor(int i10) {
        setContentScrim(new ColorDrawable(i10));
    }

    public void setContentScrimResource(int i10) {
        setContentScrim(androidx.core.content.b.getDrawable(getContext(), i10));
    }

    public void setExpandedTitleColor(int i10) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i10));
    }

    public void setExpandedTitleGravity(int i10) {
        this.f27401k.v0(i10);
    }

    public void setExpandedTitleMargin(int i10, int i11, int i12, int i13) {
        this.f27396f = i10;
        this.f27397g = i11;
        this.f27398h = i12;
        this.f27399i = i13;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i10) {
        this.f27399i = i10;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i10) {
        this.f27398h = i10;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i10) {
        this.f27396f = i10;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i10) {
        this.f27397g = i10;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i10) {
        this.f27401k.s0(i10);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f27401k.u0(colorStateList);
    }

    public void setExpandedTitleTextSize(float f10) {
        this.f27401k.w0(f10);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.f27401k.x0(typeface);
    }

    public void setExtraMultilineHeightEnabled(boolean z10) {
        this.E = z10;
    }

    public void setForceApplySystemWindowInsetTop(boolean z10) {
        this.C = z10;
    }

    public void setHyphenationFrequency(int i10) {
        this.f27401k.C0(i10);
    }

    public void setLineSpacingAdd(float f10) {
        this.f27401k.E0(f10);
    }

    public void setLineSpacingMultiplier(float f10) {
        this.f27401k.F0(f10);
    }

    public void setMaxLines(int i10) {
        this.f27401k.G0(i10);
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z10) {
        this.f27401k.I0(z10);
    }

    void setScrimAlpha(int i10) {
        ViewGroup viewGroup;
        if (i10 != this.f27407q) {
            if (this.f27405o != null && (viewGroup = this.f27393c) != null) {
                ViewCompat.postInvalidateOnAnimation(viewGroup);
            }
            this.f27407q = i10;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setScrimAnimationDuration(long j10) {
        this.f27410t = j10;
    }

    public void setScrimVisibleHeightTrigger(int i10) {
        if (this.f27413w != i10) {
            this.f27413w = i10;
            u();
        }
    }

    public void setScrimsShown(boolean z10) {
        setScrimsShown(z10, ViewCompat.isLaidOut(this) && !isInEditMode());
    }

    public void setStaticLayoutBuilderConfigurer(@Nullable e eVar) {
        this.f27401k.K0(eVar);
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f27406p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f27406p = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f27406p.setState(getDrawableState());
                }
                a1.a.m(this.f27406p, ViewCompat.getLayoutDirection(this));
                this.f27406p.setVisible(getVisibility() == 0, false);
                this.f27406p.setCallback(this);
                this.f27406p.setAlpha(this.f27407q);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarScrimColor(int i10) {
        setStatusBarScrim(new ColorDrawable(i10));
    }

    public void setStatusBarScrimResource(int i10) {
        setStatusBarScrim(androidx.core.content.b.getDrawable(getContext(), i10));
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.f27401k.L0(charSequence);
        q();
    }

    public void setTitleCollapseMode(int i10) {
        this.f27416z = i10;
        boolean zL = l();
        this.f27401k.A0(zL);
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            c((AppBarLayout) parent);
        }
        if (zL && this.f27405o == null) {
            setContentScrimColor(getDefaultContentScrimColorForTitleCollapseFadeMode());
        }
    }

    public void setTitleEllipsize(@NonNull TextUtils.TruncateAt truncateAt) {
        this.f27401k.N0(truncateAt);
    }

    public void setTitleEnabled(boolean z10) {
        if (z10 != this.f27403m) {
            this.f27403m = z10;
            q();
            t();
            requestLayout();
        }
    }

    public void setTitlePositionInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.f27401k.H0(timeInterpolator);
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f27406p;
        if (drawable != null && drawable.isVisible() != z10) {
            this.f27406p.setVisible(z10, false);
        }
        Drawable drawable2 = this.f27405o;
        if (drawable2 == null || drawable2.isVisible() == z10) {
            return;
        }
        this.f27405o.setVisible(z10, false);
    }

    final void u() {
        if (this.f27405o == null && this.f27406p == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f27415y < getScrimVisibleHeightTrigger());
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f27405o || drawable == this.f27406p;
    }

    public CollapsingToolbarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.collapsingToolbarLayoutStyle);
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f27401k.j0(colorStateList);
    }

    public void setScrimsShown(boolean z10, boolean z11) {
        if (this.f27408r != z10) {
            if (z11) {
                a(z10 ? 255 : 0);
            } else {
                setScrimAlpha(z10 ? 255 : 0);
            }
            this.f27408r = z10;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CollapsingToolbarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = F;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f27391a = true;
        this.f27400j = new Rect();
        this.f27413w = -1;
        this.B = 0;
        this.D = 0;
        Context context2 = getContext();
        com.google.android.material.internal.b bVar = new com.google.android.material.internal.b(this);
        this.f27401k = bVar;
        bVar.M0(qa.a.f69581e);
        bVar.I0(false);
        this.f27402l = new va.a(context2);
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.CollapsingToolbarLayout, i10, i11, new int[0]);
        bVar.v0(typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_expandedTitleGravity, MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START));
        bVar.k0(typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.f27399i = dimensionPixelSize;
        this.f27398h = dimensionPixelSize;
        this.f27397g = dimensionPixelSize;
        this.f27396f = dimensionPixelSize;
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.f27396f = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.f27398h = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.f27397g = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.f27399i = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.f27403m = typedArrayI.getBoolean(R$styleable.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(typedArrayI.getText(R$styleable.CollapsingToolbarLayout_title));
        bVar.s0(R$style.TextAppearance_Design_CollapsingToolbar_Expanded);
        bVar.h0(androidx.appcompat.R$style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            bVar.s0(typedArrayI.getResourceId(R$styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            bVar.h0(typedArrayI.getResourceId(R$styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_titleTextEllipsize)) {
            setTitleEllipsize(b(typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_titleTextEllipsize, -1)));
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleTextColor)) {
            bVar.u0(za.c.a(context2, typedArrayI, R$styleable.CollapsingToolbarLayout_expandedTitleTextColor));
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_collapsedTitleTextColor)) {
            bVar.j0(za.c.a(context2, typedArrayI, R$styleable.CollapsingToolbarLayout_collapsedTitleTextColor));
        }
        this.f27413w = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_maxLines)) {
            bVar.G0(typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_maxLines, 1));
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_titlePositionInterpolator)) {
            bVar.H0(AnimationUtils.loadInterpolator(context2, typedArrayI.getResourceId(R$styleable.CollapsingToolbarLayout_titlePositionInterpolator, 0)));
        }
        this.f27410t = typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_scrimAnimationDuration, 600);
        this.f27411u = ya.j.g(context2, R$attr.motionEasingStandardInterpolator, qa.a.f69579c);
        this.f27412v = ya.j.g(context2, R$attr.motionEasingStandardInterpolator, qa.a.f69580d);
        setContentScrim(typedArrayI.getDrawable(R$styleable.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(typedArrayI.getDrawable(R$styleable.CollapsingToolbarLayout_statusBarScrim));
        setTitleCollapseMode(typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_titleCollapseMode, 0));
        this.f27392b = typedArrayI.getResourceId(R$styleable.CollapsingToolbarLayout_toolbarId, -1);
        this.C = typedArrayI.getBoolean(R$styleable.CollapsingToolbarLayout_forceApplySystemWindowInsetTop, false);
        this.E = typedArrayI.getBoolean(R$styleable.CollapsingToolbarLayout_extraMultilineHeightEnabled, false);
        typedArrayI.recycle();
        setWillNotDraw(false);
        ViewCompat.setOnApplyWindowInsetsListener(this, new a());
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public static class c extends FrameLayout.LayoutParams {

        int f27419a;

        float f27420b;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f27419a = 0;
            this.f27420b = 0.5f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CollapsingToolbarLayout_Layout);
            this.f27419a = typedArrayObtainStyledAttributes.getInt(R$styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            a(typedArrayObtainStyledAttributes.getFloat(R$styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            typedArrayObtainStyledAttributes.recycle();
        }

        public void a(float f10) {
            this.f27420b = f10;
        }

        public c(int i10, int i11) {
            super(i10, i11);
            this.f27419a = 0;
            this.f27420b = 0.5f;
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f27419a = 0;
            this.f27420b = 0.5f;
        }
    }
}
