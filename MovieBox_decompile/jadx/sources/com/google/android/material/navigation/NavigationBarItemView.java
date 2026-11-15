package com.google.android.material.navigation;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.o0;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.l;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$integer;
import com.google.android.material.R$string;
import com.google.android.material.badge.BadgeDrawable;
import ya.j;

public abstract class NavigationBarItemView extends FrameLayout implements m.a {
    private static final int[] G = {R.attr.state_checked};
    private static final c H;
    private static final c I;
    private boolean A;
    private int B;
    private int C;
    private boolean D;
    private int E;
    private BadgeDrawable F;

    private boolean f28475a;

    private ColorStateList f28476b;

    Drawable f28477c;

    private int f28478d;

    private int f28479e;

    private int f28480f;

    private float f28481g;

    private float f28482h;

    private float f28483i;

    private int f28484j;

    private boolean f28485k;

    private final FrameLayout f28486l;

    private final View f28487m;

    private final ImageView f28488n;

    private final ViewGroup f28489o;

    private final TextView f28490p;

    private final TextView f28491q;

    private int f28492r;

    private int f28493s;

    private h f28494t;

    private ColorStateList f28495u;

    private Drawable f28496v;

    private Drawable f28497w;

    private ValueAnimator f28498x;

    private c f28499y;

    private float f28500z;

    class a implements View.OnLayoutChangeListener {
        a() {
        }

        @Override
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            if (NavigationBarItemView.this.f28488n.getVisibility() == 0) {
                NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
                navigationBarItemView.u(navigationBarItemView.f28488n);
            }
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {

        final float f28502a;

        b(float f10) {
            this.f28502a = f10;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            NavigationBarItemView.this.o(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f28502a);
        }
    }

    private static class c {
        private c() {
        }

        protected float a(float f10, float f11) {
            return qa.a.b(0.0f, 1.0f, f11 == 0.0f ? 0.8f : 0.0f, f11 == 0.0f ? 1.0f : 0.2f, f10);
        }

        protected float b(float f10, float f11) {
            return qa.a.a(0.4f, 1.0f, f10);
        }

        protected float c(float f10, float f11) {
            return 1.0f;
        }

        public void d(float f10, float f11, View view) {
            view.setScaleX(b(f10, f11));
            view.setScaleY(c(f10, f11));
            view.setAlpha(a(f10, f11));
        }

        c(a aVar) {
            this();
        }
    }

    private static class d extends c {
        private d() {
            super(null);
        }

        @Override
        protected float c(float f10, float f11) {
            return b(f10, f11);
        }

        d(a aVar) {
            this();
        }
    }

    static {
        a aVar = null;
        H = new c(aVar);
        I = new d(aVar);
    }

    public NavigationBarItemView(@NonNull Context context) {
        super(context);
        this.f28475a = false;
        this.f28492r = -1;
        this.f28493s = 0;
        this.f28499y = H;
        this.f28500z = 0.0f;
        this.A = false;
        this.B = 0;
        this.C = 0;
        this.D = false;
        this.E = 0;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.f28486l = (FrameLayout) findViewById(R$id.navigation_bar_item_icon_container);
        this.f28487m = findViewById(R$id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(R$id.navigation_bar_item_icon_view);
        this.f28488n = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(R$id.navigation_bar_item_labels_group);
        this.f28489o = viewGroup;
        TextView textView = (TextView) findViewById(R$id.navigation_bar_item_small_label_view);
        this.f28490p = textView;
        TextView textView2 = (TextView) findViewById(R$id.navigation_bar_item_large_label_view);
        this.f28491q = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.f28478d = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.f28479e = viewGroup.getPaddingBottom();
        this.f28480f = getResources().getDimensionPixelSize(R$dimen.m3_navigation_item_active_indicator_label_padding);
        ViewCompat.setImportantForAccessibility(textView, 2);
        ViewCompat.setImportantForAccessibility(textView2, 2);
        setFocusable(true);
        e(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new a());
        }
    }

    private void e(float f10, float f11) {
        this.f28481g = f10 - f11;
        this.f28482h = (f11 * 1.0f) / f10;
        this.f28483i = (f10 * 1.0f) / f11;
    }

    private static Drawable g(ColorStateList colorStateList) {
        return new RippleDrawable(ab.b.a(colorStateList), null, null);
    }

    private View getIconOrContainer() {
        FrameLayout frameLayout = this.f28486l;
        return frameLayout != null ? frameLayout : this.f28488n;
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i10 = 0;
        for (int i11 = 0; i11 < iIndexOfChild; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i10++;
            }
        }
        return i10;
    }

    private int getSuggestedIconHeight() {
        return ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin + getIconOrContainer().getMeasuredHeight();
    }

    private int getSuggestedIconWidth() {
        BadgeDrawable badgeDrawable = this.F;
        int minimumWidth = badgeDrawable == null ? 0 : badgeDrawable.getMinimumWidth() - this.F.l();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(minimumWidth, layoutParams.leftMargin) + this.f28488n.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.rightMargin);
    }

    private FrameLayout h(View view) {
        ImageView imageView = this.f28488n;
        if (view == imageView && com.google.android.material.badge.c.f27481a) {
            return (FrameLayout) imageView.getParent();
        }
        return null;
    }

    private boolean i() {
        return this.F != null;
    }

    private boolean j() {
        return this.D && this.f28484j == 2;
    }

    private void k(float f10) {
        if (!this.A || !this.f28475a || !ViewCompat.isAttachedToWindow(this)) {
            o(f10, f10);
            return;
        }
        ValueAnimator valueAnimator = this.f28498x;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f28498x = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f28500z, f10);
        this.f28498x = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new b(f10));
        this.f28498x.setInterpolator(j.g(getContext(), R$attr.motionEasingEmphasizedInterpolator, qa.a.f69578b));
        this.f28498x.setDuration(j.f(getContext(), R$attr.motionDurationLong2, getResources().getInteger(R$integer.material_motion_duration_long_1)));
        this.f28498x.start();
    }

    private void l() {
        h hVar = this.f28494t;
        if (hVar != null) {
            setChecked(hVar.isChecked());
        }
    }

    private void m() {
        Drawable drawableG = this.f28477c;
        RippleDrawable rippleDrawable = null;
        boolean z10 = true;
        if (this.f28476b != null) {
            Drawable activeIndicatorDrawable = getActiveIndicatorDrawable();
            if (this.A && getActiveIndicatorDrawable() != null && this.f28486l != null && activeIndicatorDrawable != null) {
                rippleDrawable = new RippleDrawable(ab.b.d(this.f28476b), null, activeIndicatorDrawable);
                z10 = false;
            } else if (drawableG == null) {
                drawableG = g(this.f28476b);
            }
        }
        FrameLayout frameLayout = this.f28486l;
        if (frameLayout != null) {
            frameLayout.setPadding(0, 0, 0, 0);
            this.f28486l.setForeground(rippleDrawable);
        }
        ViewCompat.setBackground(this, drawableG);
        if (Build.VERSION.SDK_INT >= 26) {
            setDefaultFocusHighlightEnabled(z10);
        }
    }

    public void o(float f10, float f11) {
        View view = this.f28487m;
        if (view != null) {
            this.f28499y.d(f10, f11, view);
        }
        this.f28500z = f10;
    }

    private static void p(TextView textView, int i10) {
        l.p(textView, i10);
        int i11 = za.c.i(textView.getContext(), i10, 0);
        if (i11 != 0) {
            textView.setTextSize(0, i11);
        }
    }

    private static void q(View view, float f10, float f11, int i10) {
        view.setScaleX(f10);
        view.setScaleY(f11);
        view.setVisibility(i10);
    }

    private static void r(View view, int i10, int i11) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i10;
        layoutParams.bottomMargin = i10;
        layoutParams.gravity = i11;
        view.setLayoutParams(layoutParams);
    }

    private void s(View view) {
        if (i() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            com.google.android.material.badge.c.c(this.F, view, h(view));
        }
    }

    private void t(View view) {
        if (i()) {
            if (view != null) {
                setClipChildren(true);
                setClipToPadding(true);
                com.google.android.material.badge.c.f(this.F, view);
            }
            this.F = null;
        }
    }

    public void u(View view) {
        if (i()) {
            com.google.android.material.badge.c.g(this.F, view, h(view));
        }
    }

    public void v(int i10) {
        if (this.f28487m == null || i10 <= 0) {
            return;
        }
        int iMin = Math.min(this.B, i10 - (this.E * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28487m.getLayoutParams();
        layoutParams.height = j() ? iMin : this.C;
        layoutParams.width = iMin;
        this.f28487m.setLayoutParams(layoutParams);
    }

    private void w() {
        if (j()) {
            this.f28499y = I;
        } else {
            this.f28499y = H;
        }
    }

    private static void x(View view, int i10) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i10);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        FrameLayout frameLayout = this.f28486l;
        if (frameLayout != null && this.A) {
            frameLayout.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    void f() {
        n();
        this.f28494t = null;
        this.f28500z = 0.0f;
        this.f28475a = false;
    }

    @Nullable
    public Drawable getActiveIndicatorDrawable() {
        View view = this.f28487m;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    @Nullable
    public BadgeDrawable getBadge() {
        return this.F;
    }

    protected int getItemBackgroundResId() {
        return R$drawable.mtrl_navigation_bar_item_background;
    }

    @Override
    @Nullable
    public h getItemData() {
        return this.f28494t;
    }

    protected int getItemDefaultMarginResId() {
        return R$dimen.mtrl_navigation_bar_item_default_margin;
    }

    protected abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.f28492r;
    }

    @Override
    protected int getSuggestedMinimumHeight() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28489o.getLayoutParams();
        return getSuggestedIconHeight() + (this.f28489o.getVisibility() == 0 ? this.f28480f : 0) + layoutParams.topMargin + this.f28489o.getMeasuredHeight() + layoutParams.bottomMargin;
    }

    @Override
    protected int getSuggestedMinimumWidth() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28489o.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), layoutParams.leftMargin + this.f28489o.getMeasuredWidth() + layoutParams.rightMargin);
    }

    @Override
    public void initialize(@NonNull h hVar, int i10) {
        this.f28494t = hVar;
        setCheckable(hVar.isCheckable());
        setChecked(hVar.isChecked());
        setEnabled(hVar.isEnabled());
        setIcon(hVar.getIcon());
        setTitle(hVar.getTitle());
        setId(hVar.getItemId());
        if (!TextUtils.isEmpty(hVar.getContentDescription())) {
            setContentDescription(hVar.getContentDescription());
        }
        CharSequence tooltipText = !TextUtils.isEmpty(hVar.getTooltipText()) ? hVar.getTooltipText() : hVar.getTitle();
        if (Build.VERSION.SDK_INT > 23) {
            o0.a(this, tooltipText);
        }
        setVisibility(hVar.isVisible() ? 0 : 8);
        this.f28475a = true;
    }

    void n() {
        t(this.f28488n);
    }

    @Override
    @NonNull
    public int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        h hVar = this.f28494t;
        if (hVar != null && hVar.isCheckable() && this.f28494t.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, G);
        }
        return iArrOnCreateDrawableState;
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.F;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.f28494t.getTitle();
            if (!TextUtils.isEmpty(this.f28494t.getContentDescription())) {
                title = this.f28494t.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.F.i()));
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            accessibilityNodeInfoCompatWrap.setClickable(false);
            accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(R$string.item_view_role_description));
    }

    @Override
    protected void onSizeChanged(final int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        post(new Runnable() {
            @Override
            public void run() {
                NavigationBarItemView.this.v(i10);
            }
        });
    }

    @Override
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setActiveIndicatorDrawable(@Nullable Drawable drawable) {
        View view = this.f28487m;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
        m();
    }

    public void setActiveIndicatorEnabled(boolean z10) {
        this.A = z10;
        m();
        View view = this.f28487m;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorHeight(int i10) {
        this.C = i10;
        v(getWidth());
    }

    public void setActiveIndicatorLabelPadding(int i10) {
        if (this.f28480f != i10) {
            this.f28480f = i10;
            l();
        }
    }

    public void setActiveIndicatorMarginHorizontal(int i10) {
        this.E = i10;
        v(getWidth());
    }

    public void setActiveIndicatorResizeable(boolean z10) {
        this.D = z10;
    }

    public void setActiveIndicatorWidth(int i10) {
        this.B = i10;
        v(getWidth());
    }

    void setBadge(@NonNull BadgeDrawable badgeDrawable) {
        if (this.F == badgeDrawable) {
            return;
        }
        if (i() && this.f28488n != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            t(this.f28488n);
        }
        this.F = badgeDrawable;
        ImageView imageView = this.f28488n;
        if (imageView != null) {
            s(imageView);
        }
    }

    public void setCheckable(boolean z10) {
        refreshDrawableState();
    }

    public void setChecked(boolean z10) {
        TextView textView = this.f28491q;
        textView.setPivotX(textView.getWidth() / 2);
        TextView textView2 = this.f28491q;
        textView2.setPivotY(textView2.getBaseline());
        TextView textView3 = this.f28490p;
        textView3.setPivotX(textView3.getWidth() / 2);
        TextView textView4 = this.f28490p;
        textView4.setPivotY(textView4.getBaseline());
        k(z10 ? 1.0f : 0.0f);
        int i10 = this.f28484j;
        if (i10 != -1) {
            if (i10 == 0) {
                if (z10) {
                    r(getIconOrContainer(), this.f28478d, 49);
                    x(this.f28489o, this.f28479e);
                    this.f28491q.setVisibility(0);
                } else {
                    r(getIconOrContainer(), this.f28478d, 17);
                    x(this.f28489o, 0);
                    this.f28491q.setVisibility(4);
                }
                this.f28490p.setVisibility(4);
            } else if (i10 == 1) {
                x(this.f28489o, this.f28479e);
                if (z10) {
                    r(getIconOrContainer(), (int) (this.f28478d + this.f28481g), 49);
                    q(this.f28491q, 1.0f, 1.0f, 0);
                    TextView textView5 = this.f28490p;
                    float f10 = this.f28482h;
                    q(textView5, f10, f10, 4);
                } else {
                    r(getIconOrContainer(), this.f28478d, 49);
                    TextView textView6 = this.f28491q;
                    float f11 = this.f28483i;
                    q(textView6, f11, f11, 4);
                    q(this.f28490p, 1.0f, 1.0f, 0);
                }
            } else if (i10 == 2) {
                r(getIconOrContainer(), this.f28478d, 17);
                this.f28491q.setVisibility(8);
                this.f28490p.setVisibility(8);
            }
        } else if (this.f28485k) {
            if (z10) {
                r(getIconOrContainer(), this.f28478d, 49);
                x(this.f28489o, this.f28479e);
                this.f28491q.setVisibility(0);
            } else {
                r(getIconOrContainer(), this.f28478d, 17);
                x(this.f28489o, 0);
                this.f28491q.setVisibility(4);
            }
            this.f28490p.setVisibility(4);
        } else {
            x(this.f28489o, this.f28479e);
            if (z10) {
                r(getIconOrContainer(), (int) (this.f28478d + this.f28481g), 49);
                q(this.f28491q, 1.0f, 1.0f, 0);
                TextView textView7 = this.f28490p;
                float f12 = this.f28482h;
                q(textView7, f12, f12, 4);
            } else {
                r(getIconOrContainer(), this.f28478d, 49);
                TextView textView8 = this.f28491q;
                float f13 = this.f28483i;
                q(textView8, f13, f13, 4);
                q(this.f28490p, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z10);
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.f28490p.setEnabled(z10);
        this.f28491q.setEnabled(z10);
        this.f28488n.setEnabled(z10);
        if (z10) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (drawable == this.f28496v) {
            return;
        }
        this.f28496v = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = a1.a.r(drawable).mutate();
            this.f28497w = drawable;
            ColorStateList colorStateList = this.f28495u;
            if (colorStateList != null) {
                a1.a.o(drawable, colorStateList);
            }
        }
        this.f28488n.setImageDrawable(drawable);
    }

    public void setIconSize(int i10) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28488n.getLayoutParams();
        layoutParams.width = i10;
        layoutParams.height = i10;
        this.f28488n.setLayoutParams(layoutParams);
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        this.f28495u = colorStateList;
        if (this.f28494t == null || (drawable = this.f28497w) == null) {
            return;
        }
        a1.a.o(drawable, colorStateList);
        this.f28497w.invalidateSelf();
    }

    public void setItemBackground(int i10) {
        setItemBackground(i10 == 0 ? null : androidx.core.content.b.getDrawable(getContext(), i10));
    }

    public void setItemPaddingBottom(int i10) {
        if (this.f28479e != i10) {
            this.f28479e = i10;
            l();
        }
    }

    public void setItemPaddingTop(int i10) {
        if (this.f28478d != i10) {
            this.f28478d = i10;
            l();
        }
    }

    public void setItemPosition(int i10) {
        this.f28492r = i10;
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f28476b = colorStateList;
        m();
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.f28484j != i10) {
            this.f28484j = i10;
            w();
            v(getWidth());
            l();
        }
    }

    public void setShifting(boolean z10) {
        if (this.f28485k != z10) {
            this.f28485k = z10;
            l();
        }
    }

    public void setShortcut(boolean z10, char c10) {
    }

    public void setTextAppearanceActive(int i10) {
        this.f28493s = i10;
        p(this.f28491q, i10);
        e(this.f28490p.getTextSize(), this.f28491q.getTextSize());
    }

    public void setTextAppearanceActiveBoldEnabled(boolean z10) {
        setTextAppearanceActive(this.f28493s);
        TextView textView = this.f28491q;
        textView.setTypeface(textView.getTypeface(), z10 ? 1 : 0);
    }

    public void setTextAppearanceInactive(int i10) {
        p(this.f28490p, i10);
        e(this.f28490p.getTextSize(), this.f28491q.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f28490p.setTextColor(colorStateList);
            this.f28491q.setTextColor(colorStateList);
        }
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.f28490p.setText(charSequence);
        this.f28491q.setText(charSequence);
        h hVar = this.f28494t;
        if (hVar == null || TextUtils.isEmpty(hVar.getContentDescription())) {
            setContentDescription(charSequence);
        }
        h hVar2 = this.f28494t;
        if (hVar2 != null && !TextUtils.isEmpty(hVar2.getTooltipText())) {
            charSequence = this.f28494t.getTooltipText();
        }
        if (Build.VERSION.SDK_INT > 23) {
            o0.a(this, charSequence);
        }
    }

    public boolean showsIcon() {
        return true;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        this.f28477c = drawable;
        m();
    }
}
