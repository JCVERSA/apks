package com.transsion.widgetslib.widget.tablayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.timepicker.TimeModel;
import com.transsion.effectengine.bounceeffect.IOverScrollDecor;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.BadgeView;
import defpackage.n97;
import defpackage.olb;
import defpackage.p97;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import org.slf4j.Marker;

@ViewPager.DecorView
public class TabLayout extends HorizontalScrollView {
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    public static final int GRAVITY_START = 2;
    public static final int INDICATOR_GRAVITY_BOTTOM = 0;
    public static final int INDICATOR_GRAVITY_CENTER = 1;
    public static final int INDICATOR_GRAVITY_STRETCH = 3;
    public static final int INDICATOR_GRAVITY_TOP = 2;
    public static final int MODE_AUTO = 2;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    public static final int TAB_LABEL_VISIBILITY_LABELED = 1;
    public static final int TAB_LABEL_VISIBILITY_UNLABELED = 0;
    public static final Pools.Pool V = new Pools.SynchronizedPool(16);
    public int A;
    public int B;
    public boolean C;
    public boolean D;
    public boolean E;
    public c F;
    public final ArrayList G;
    public c H;
    public ValueAnimator I;
    public ViewPager J;
    public PagerAdapter K;
    public DataSetObserver L;
    public TabLayoutOnPageChangeListener M;
    public b N;
    public boolean O;
    public boolean P;
    public int Q;
    public AttributeSet R;
    public boolean S;
    public final Pools.Pool T;
    public IOverScrollDecor U;
    public String b;
    public int c;
    public OSTabLayout d;
    public boolean e;
    public final ArrayList f;
    public g g;
    public final RectF h;
    public final f i;
    public int j;
    public int k;
    public int l;
    public int m;
    public ColorStateList n;
    public ColorStateList o;
    public Drawable p;
    public float q;
    public float r;
    public final int s;
    public int t;
    public final int u;
    public final int v;
    public final int w;
    public int x;
    public int y;
    public int z;

    public static class TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {
        public final WeakReference b;
        public int c;
        public int d;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.b = new WeakReference(tabLayout);
        }

        public void a() {
            this.d = 0;
            this.c = 0;
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            this.c = this.d;
            this.d = i;
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = (TabLayout) this.b.get();
            if (tabLayout != null) {
                int i3 = this.d;
                tabLayout.setScrollPosition(i, f, i3 != 2 || this.c == 1, (i3 == 2 && this.c == 0) ? false : true);
            }
        }

        @Override
        public void onPageSelected(int i) {
            TabLayout tabLayout = (TabLayout) this.b.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            int i2 = this.d;
            tabLayout.selectTab(tabLayout.getTabAt(i), i2 == 0 || (i2 == 2 && this.c == 0));
        }
    }

    public final class TabView extends LinearLayout {
        public final int A;
        public RectF B;
        public Runnable C;
        public g b;
        public TextView c;
        public ImageView d;
        public View e;
        public BadgeDrawable f;
        public View g;
        public TextView h;
        public ImageView i;
        public Drawable j;
        public int k;
        public boolean l;
        public float m;
        public Paint n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public final int v;
        public int w;
        public int x;
        public String y;
        public final int z;

        public class a implements View.OnTouchListener {
            public final TabLayout b;

            public a(TabLayout tabLayout) {
                this.b = tabLayout;
            }

            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                TabView tabView = (TabView) view;
                if (tabView.c != null && !tabView.isSelected()) {
                    TextView textView = tabView.c;
                    if (motionEvent.getAction() == 0) {
                        textView.animate().alpha(0.2f).setDuration(100L).setInterpolator(new n97()).start();
                    } else if (motionEvent.getAction() == 1) {
                        textView.animate().alpha(1.0f).setDuration(200L).setInterpolator(new n97()).start();
                        view.performClick();
                    } else if (motionEvent.getAction() == 3) {
                        textView.animate().alpha(1.0f).setDuration(200L).setInterpolator(new n97()).start();
                    }
                }
                return true;
            }
        }

        public class b implements View.OnLayoutChangeListener {
            public final View b;

            public b(View view) {
                this.b = view;
            }

            @Override
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (this.b.getVisibility() == 0) {
                    TabView.this.r(this.b);
                }
            }
        }

        public TabView(Context context) {
            super(context);
            this.k = 1;
            this.v = 9;
            this.x = 9;
            this.z = getContext().getColor(R.color.os_warning_primary_hios);
            this.A = Color.parseColor("#FFFFFF");
            u(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.j, TabLayout.this.k, TabLayout.this.l, TabLayout.this.m);
            setGravity(17);
            setOrientation(1 ^ (TabLayout.this.C ? 1 : 0));
            setClickable(false);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
            setWillNotDraw(false);
            m(context);
            setOnTouchListener(new a(TabLayout.this));
        }

        @Nullable
        public BadgeDrawable getBadge() {
            return this.f;
        }

        public int getContentWidth() {
            View[] viewArr = {this.c, this.d, this.g};
            int iMax = 0;
            int iMin = 0;
            boolean z = false;
            for (int i = 0; i < 3; i++) {
                View view = viewArr[i];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z ? Math.min(iMin, view.getLeft()) : view.getLeft();
                    iMax = z ? Math.max(iMax, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return iMax - iMin;
        }

        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            if (this.f == null) {
                this.f = BadgeDrawable.create(getContext());
            }
            q();
            BadgeDrawable badgeDrawable = this.f;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        @Override
        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.j;
            if ((drawable == null || !drawable.isStateful()) ? false : this.j.setState(drawableState)) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public final void g(View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new b(view));
        }

        @Nullable
        public g getTab() {
            return this.b;
        }

        public final void h(Canvas canvas) {
            Drawable drawable = this.j;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.j.draw(canvas);
            }
        }

        public void hideBadgeView() {
            this.l = false;
            v(true);
            invalidate();
        }

        public final FrameLayout i(View view) {
            return null;
        }

        public final boolean j() {
            return this.f != null;
        }

        public final void k() {
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup) this, false);
            this.d = imageView;
            addView(imageView, 0);
            if (TabLayout.this.e) {
                setBackgroundResource(R.drawable.os_press_primary_bg);
            } else {
                setBackground(null);
            }
        }

        public final void l() {
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.os_design_layout_tab_text, (ViewGroup) this, false);
            this.c = textView;
            textView.setId(R.id.os_id_tab_layout_text_view_id);
            if (olb.q0(getContext())) {
                TextView textView2 = this.c;
                textView2.setPadding(textView2.getPaddingLeft(), getContext().getResources().getDimensionPixelSize(R.dimen.os_tab_text_top_offset), this.c.getPaddingRight(), this.c.getPaddingBottom());
            }
            addView(this.c);
            if (TabLayout.this.e) {
                setBackgroundResource(R.drawable.os_press_primary_bg);
            } else {
                setBackground(null);
            }
        }

        public final void m(Context context) {
            this.m = olb.h(getContext(), BadgeView.getNotWidthByType(0)) / 2.0f;
            Paint paint = new Paint();
            this.n = paint;
            paint.setAntiAlias(true);
            this.n.setDither(true);
            this.n.setColor(this.z);
            if (olb.Z(context)) {
                this.n.setTextSize(context.getResources().getDimensionPixelSize(R.dimen.os_ultra_small_tab_badgeview_num_size));
                this.o = context.getResources().getDimensionPixelSize(R.dimen.os_ultra_small_tab_badgeview_height);
                this.q = context.getResources().getDimensionPixelSize(R.dimen.os_ultra_small_tab_badgeview_padding);
                this.r = context.getResources().getDimensionPixelSize(R.dimen.os_ultra_small_tab_badgeview_text_size);
                this.s = context.getResources().getDimensionPixelSize(R.dimen.os_ultra_small_tab_badgeview_plus_text_size);
            } else {
                this.n.setTextSize(context.getResources().getDimensionPixelSize(R.dimen.os_tab_badgeview_num_size));
                this.o = context.getResources().getDimensionPixelSize(R.dimen.os_tab_badgeview_height);
                this.q = context.getResources().getDimensionPixelSize(R.dimen.os_tab_badgeview_padding);
                this.r = context.getResources().getDimensionPixelSize(R.dimen.os_tab_badgeview_text_size);
                this.s = context.getResources().getDimensionPixelSize(R.dimen.os_tab_badgeview_plus_text_size);
            }
            this.n.setTextSize(this.r);
            this.B = new RectF();
        }

        public void n() {
            setTab(null);
            setSelected(false);
        }

        public final void o(View view) {
            if (j() && view != null) {
                setClipChildren(false);
                setClipToPadding(false);
                BadgeUtils.attachBadgeDrawable(this.f, view, i(view));
                this.e = view;
            }
        }

        @Override
        public void onDraw(Canvas canvas) {
            TextView textView;
            super.onDraw(canvas);
            if (this.l && (textView = this.c) != null && textView.getVisibility() == 0) {
                this.n.setColor(this.z);
                if (this.w < 0) {
                    canvas.drawCircle(olb.l0() ? this.c.getLeft() - this.m : this.c.getRight() + this.m, (this.c.getTop() + this.m) - olb.h(getContext(), 2), this.m, this.n);
                    return;
                }
                int i = this.o / 2;
                this.B.set(olb.l0() ? this.c.getLeft() - this.p : this.c.getRight(), this.c.getTop() - olb.h(getContext(), 2), olb.l0() ? this.c.getLeft() : this.c.getRight() + this.p, (this.c.getTop() - olb.h(getContext(), 2)) + this.o);
                float f = i;
                canvas.drawRoundRect(this.B, f, f, this.n);
                this.n.setColor(this.A);
                this.n.setTextSize(this.r);
                Paint.FontMetrics fontMetrics = this.n.getFontMetrics();
                float f2 = fontMetrics.bottom;
                float f3 = (((f2 - fontMetrics.top) / 2.0f) - f2) + f;
                RectF rectF = this.B;
                int i2 = (int) (f3 + rectF.top);
                int i3 = (int) (((this.p - this.u) / 2) + rectF.left);
                if (this.w <= this.x) {
                    canvas.drawText(this.y, i3, i2, this.n);
                    return;
                }
                boolean zL0 = olb.l0();
                int i4 = this.u;
                int i5 = this.t;
                float f4 = i4 - i5;
                float f5 = zL0 ? i5 + i3 : i3;
                float f6 = i3;
                if (!zL0) {
                    f6 += f4;
                }
                canvas.drawText(this.y, f5, i2, this.n);
                this.n.setTextSize(this.s);
                Paint.FontMetrics fontMetrics2 = this.n.getFontMetrics();
                float f7 = fontMetrics2.bottom;
                canvas.drawText(Marker.ANY_NON_NULL_MARKER, f6, (int) (f + (((f7 - fontMetrics2.top) / 2.0f) - f7) + this.B.top), this.n);
            }
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.f;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                accessibilityNodeInfo.setContentDescription(((Object) getContentDescription()) + ", " + ((Object) this.f.getContentDescription()));
            }
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.b.getPosition(), 1, false, isSelected()));
            if (isSelected()) {
                accessibilityNodeInfoCompatWrap.setClickable(false);
                accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            accessibilityNodeInfoCompatWrap.setRoleDescription("Tab");
        }

        @Override
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(TabLayout.this.t, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.c != null) {
                float f = TabLayout.this.q;
                int i3 = this.k;
                ImageView imageView = this.d;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.c;
                    if (textView != null && textView.getLineCount() > 1) {
                        f = TabLayout.this.r;
                    }
                } else {
                    i3 = 1;
                }
                float textSize = this.c.getTextSize();
                this.c.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.c);
                if (f != textSize || (maxLines >= 0 && i3 != maxLines)) {
                    this.c.setTextSize(0, f);
                    this.c.setMaxLines(i3);
                    super.onMeasure(i, i2);
                }
            }
        }

        public final void p() {
            if (j() && this.e != null) {
                setClipChildren(true);
                setClipToPadding(true);
                BadgeDrawable badgeDrawable = this.f;
                View view = this.e;
                BadgeUtils.detachBadgeDrawable(badgeDrawable, view, i(view));
                this.e = null;
            }
        }

        @Override
        public boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.b == null) {
                return zPerformClick;
            }
            if (!zPerformClick) {
                playSoundEffect(0);
            }
            this.b.f();
            return true;
        }

        public final void q() {
            g gVar;
            g gVar2;
            if (j()) {
                if (this.g != null) {
                    p();
                    return;
                }
                if (this.d != null && (gVar2 = this.b) != null && gVar2.getIcon() != null) {
                    View view = this.e;
                    ImageView imageView = this.d;
                    if (view == imageView) {
                        r(imageView);
                        return;
                    } else {
                        p();
                        o(this.d);
                        return;
                    }
                }
                if (this.c == null || (gVar = this.b) == null || gVar.getTabLabelVisibility() != 1) {
                    p();
                    return;
                }
                View view2 = this.e;
                TextView textView = this.c;
                if (view2 == textView) {
                    r(textView);
                } else {
                    p();
                    o(this.c);
                }
            }
        }

        public final void r(View view) {
            if (j() && view == this.e) {
                BadgeUtils.setBadgeDrawableBounds(this.f, view, i(view));
            }
        }

        public final void s() {
            if (this.w > -1) {
                this.n.setTextSize(this.r);
                if (this.w > this.x) {
                    String str = String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(this.x));
                    this.y = str;
                    float fMeasureText = this.n.measureText(str);
                    this.n.setTextSize(this.s);
                    int iMeasureText = (int) this.n.measureText(Marker.ANY_NON_NULL_MARKER);
                    this.t = iMeasureText;
                    this.u = (int) (fMeasureText + iMeasureText);
                } else {
                    String badgeNum = BadgeView.formatBadgeNum(getContext(), this.w);
                    this.y = badgeNum;
                    this.u = (int) this.n.measureText(badgeNum);
                }
                this.p = this.u + (this.q * 2);
            } else {
                this.p = this.o;
            }
            this.p = Math.max(this.p, this.o);
        }

        @Override
        public void setSelected(final boolean z) {
            isSelected();
            super.setSelected(z);
            TextView textView = this.c;
            if (textView != null) {
                textView.setSelected(z);
                Runnable runnable = this.C;
                if (runnable != null) {
                    this.c.removeCallbacks(runnable);
                }
                Runnable runnable2 = new Runnable() {
                    @Override
                    public void run() {
                        if (z) {
                            if (TabLayout.this.P) {
                                TabView.this.c.setTextAppearance(R.style.os_semibold_font);
                                return;
                            } else {
                                TabView.this.c.setTextAppearance(R.style.os_semibold_font);
                                return;
                            }
                        }
                        if (TabLayout.this.P) {
                            TabView.this.c.setTextAppearance(R.style.os_regular_fontweight);
                        } else {
                            TabView.this.c.setTextAppearance(R.style.os_regular_fontweight);
                        }
                    }
                };
                this.C = runnable2;
                this.c.postDelayed(runnable2, 100L);
            }
            ImageView imageView = this.d;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.g;
            if (view != null) {
                view.setSelected(z);
            }
        }

        public void setTab(@Nullable g gVar) {
            if (gVar != this.b) {
                this.b = gVar;
                t();
            }
        }

        public void showBadgeView() {
            showBadgeView(-1);
        }

        public final void t() {
            g gVar = this.b;
            View customView = gVar != null ? gVar.getCustomView() : null;
            if (customView != null) {
                ViewParent parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(customView);
                    }
                    addView(customView);
                }
                this.g = customView;
                TextView textView = this.c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.d.setImageDrawable(null);
                }
                TextView textView2 = (TextView) customView.findViewById(android.R.id.text1);
                this.h = textView2;
                if (textView2 != null) {
                    this.k = TextViewCompat.getMaxLines(textView2);
                }
                this.i = (ImageView) customView.findViewById(android.R.id.icon);
            } else {
                View view = this.g;
                if (view != null) {
                    removeView(view);
                    this.g = null;
                }
                this.h = null;
                this.i = null;
            }
            if (this.g == null) {
                if (this.d == null) {
                    k();
                }
                if (gVar != null && gVar.getIcon() != null) {
                    DrawableCompat.wrap(gVar.getIcon()).mutate();
                }
                if (this.c == null) {
                    l();
                }
                ColorStateList colorStateList = TabLayout.this.n;
                if (colorStateList != null) {
                    this.c.setTextColor(colorStateList);
                }
                x(this.c, this.d);
                q();
                g(this.d);
                g(this.c);
            } else {
                TextView textView3 = this.h;
                if (textView3 != null || this.i != null) {
                    x(textView3, this.i);
                }
            }
            if (gVar != null && !TextUtils.isEmpty(gVar.d)) {
                setContentDescription(gVar.d);
            }
            setSelected(gVar != null && gVar.d());
        }

        public final void u(Context context) {
            GradientDrawable gradientDrawable;
            if (TabLayout.this.s != 0) {
                Drawable drawable = getResources().getDrawable(TabLayout.this.s);
                this.j = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.j.setState(getDrawableState());
                }
            } else {
                this.j = null;
            }
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(0);
            Drawable rippleDrawable = gradientDrawable2;
            if (TabLayout.this.o != null) {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setCornerRadius(126.0f);
                gradientDrawable3.setColor(-1);
                ColorStateList colorStateList = TabLayout.this.o;
                boolean z = TabLayout.this.E;
                if (z) {
                    gradientDrawable = gradientDrawable2;
                    gradientDrawable = null;
                }
                rippleDrawable = new RippleDrawable(colorStateList, gradientDrawable, z ? null : gradientDrawable3);
            }
            ViewCompat.setBackground(this, rippleDrawable);
            TabLayout.this.invalidate();
        }

        public final void v(boolean z) {
            ViewParent parent = getParent();
            int i = 0;
            while (parent instanceof ViewGroup) {
                i++;
                ViewGroup viewGroup = (ViewGroup) parent;
                viewGroup.setClipToPadding(z);
                viewGroup.setClipChildren(z);
                parent = parent.getParent();
                if ((parent instanceof TabLayout) || i > 3) {
                    return;
                }
            }
        }

        public final void w() {
            setOrientation(!TabLayout.this.C ? 1 : 0);
            TextView textView = this.h;
            if (textView == null && this.i == null) {
                x(this.c, this.d);
            } else {
                x(textView, this.i);
            }
        }

        public final void x(TextView textView, ImageView imageView) {
            g gVar = this.b;
            Drawable drawableMutate = (gVar == null || gVar.getIcon() == null) ? null : DrawableCompat.wrap(this.b.getIcon()).mutate();
            g gVar2 = this.b;
            CharSequence text = gVar2 != null ? gVar2.getText() : null;
            if (imageView != null) {
                if (drawableMutate != null) {
                    imageView.setImageDrawable(drawableMutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean zIsEmpty = TextUtils.isEmpty(text);
            if (textView != null) {
                if (imageView != null && imageView.getVisibility() == 0) {
                    textView.setVisibility(8);
                } else if (zIsEmpty) {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                } else {
                    textView.setText(text);
                    if (this.b.g == 1) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                    setVisibility(0);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int iDpToPx = (zIsEmpty || imageView.getVisibility() != 0) ? 0 : (int) ViewUtils.dpToPx(getContext(), 8);
                if (TabLayout.this.C) {
                    if (iDpToPx != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, iDpToPx);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (iDpToPx != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = iDpToPx;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            g gVar3 = this.b;
            CharSequence charSequence = gVar3 != null ? gVar3.d : null;
            if (zIsEmpty) {
                setTooltipText(charSequence);
            } else {
                setTooltipText(null);
            }
        }

        public void showBadgeView(int i, int i2) {
            this.l = true;
            this.w = i;
            this.x = i2;
            s();
            v(false);
            invalidate();
        }

        public void showBadgeView(int i) {
            showBadgeView(i, 9);
        }
    }

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    public class b implements ViewPager.OnAdapterChangeListener {
        public boolean b;

        public b() {
        }

        public void a(boolean z) {
            this.b = z;
        }

        @Override
        public void onAdapterChanged(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.J == viewPager) {
                tabLayout.B(pagerAdapter2, this.b);
            }
        }
    }

    public interface c {
        void a(g gVar);

        void b(g gVar);

        void c(g gVar);
    }

    public interface d extends c {
    }

    public class e extends DataSetObserver {
        public e() {
        }

        @Override
        public void onChanged() {
            TabLayout.this.y();
        }

        @Override
        public void onInvalidated() {
            TabLayout.this.y();
        }
    }

    public class f extends LinearLayout {
        public int b;
        public final Paint c;
        public final GradientDrawable d;
        public int e;
        public float f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public ValueAnimator l;
        public int m;
        public int n;

        public class a implements ValueAnimator.AnimatorUpdateListener {
            public final int b;
            public final int c;

            public a(int i, int i2) {
                this.b = i;
                this.c = i2;
            }

            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                f fVar = f.this;
                fVar.g(AnimationUtils.lerp(fVar.m, this.b, animatedFraction), AnimationUtils.lerp(f.this.n, this.c, animatedFraction));
            }
        }

        public class b extends AnimatorListenerAdapter {
            public final int b;

            public b(int i) {
                this.b = i;
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                f fVar = f.this;
                fVar.e = this.b;
                fVar.f = 0.0f;
            }

            @Override
            public void onAnimationStart(Animator animator) {
                f.this.e = this.b;
            }
        }

        public f(Context context) {
            super(context);
            this.e = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = 0;
            this.k = 0;
            this.m = -1;
            this.n = -1;
            setWillNotDraw(false);
            this.c = new Paint();
            this.d = new GradientDrawable();
        }

        public void c(int i) {
            ValueAnimator valueAnimator = this.l;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.l.cancel();
            }
            m(true, i);
        }

        public final void d(TabView tabView, RectF rectF) {
            int contentWidth = tabView.getContentWidth();
            int iDpToPx = (int) ViewUtils.dpToPx(getContext(), 24);
            if (contentWidth < iDpToPx) {
                contentWidth = iDpToPx;
            }
            int left = (tabView.getLeft() + tabView.getRight()) / 2;
            int i = contentWidth / 2;
            rectF.set(left - i, 0.0f, left + i, 0.0f);
        }

        @Override
        public void draw(Canvas canvas) {
            Drawable drawable = TabLayout.this.p;
            int height = 0;
            int intrinsicHeight = drawable != null ? drawable.getIntrinsicHeight() : 0;
            int i = this.b;
            if (i >= 0) {
                intrinsicHeight = i;
            }
            int i2 = TabLayout.this.A;
            if (i2 == 0) {
                height = getHeight() - intrinsicHeight;
                intrinsicHeight = getHeight();
            } else if (i2 == 1) {
                height = (getHeight() - intrinsicHeight) / 2;
                intrinsicHeight = (getHeight() + intrinsicHeight) / 2;
            } else if (i2 != 2) {
                intrinsicHeight = i2 != 3 ? 0 : getHeight();
            }
            int i3 = this.h;
            if (i3 >= 0 && this.i > i3) {
                Drawable drawable2 = TabLayout.this.p;
                if (drawable2 == null) {
                    drawable2 = this.d;
                }
                Drawable drawableWrap = DrawableCompat.wrap(drawable2);
                int i4 = this.h;
                int i5 = this.j;
                drawableWrap.setBounds(i4, height - i5, this.i, intrinsicHeight - i5);
                Paint paint = this.c;
                if (paint != null) {
                    DrawableCompat.setTint(drawableWrap, paint.getColor());
                }
                drawableWrap.draw(canvas);
            }
            super.draw(canvas);
        }

        public boolean e() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        public void f(int i) {
            if (this.k != i) {
                this.k = i;
                this.d.setCornerRadius(i);
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        public void g(int i, int i2) {
            if (i == this.h && i2 == this.i) {
                return;
            }
            this.h = i;
            this.i = i2;
            ViewCompat.postInvalidateOnAnimation(this);
        }

        public void h(int i, float f) {
            ValueAnimator valueAnimator = this.l;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.l.cancel();
            }
            this.e = i;
            this.f = f;
            l();
        }

        public void i(int i) {
            if (this.j != i) {
                this.j = i;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        public void j(int i) {
            if (this.c.getColor() != i) {
                this.c.setColor(i);
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        public void k(int i) {
            if (this.b != i) {
                this.b = i;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        public final void l() {
            int left;
            int right;
            View childAt = getChildAt(this.e);
            if (childAt == null || childAt.getWidth() <= 0) {
                left = -1;
                right = -1;
            } else {
                left = childAt.getLeft();
                right = childAt.getRight();
                TabLayout tabLayout = TabLayout.this;
                if (!tabLayout.D && (childAt instanceof TabView)) {
                    d((TabView) childAt, tabLayout.h);
                    left = (int) TabLayout.this.h.left;
                    right = (int) TabLayout.this.h.right;
                }
                if (this.f > 0.0f && this.e < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.e + 1);
                    int left2 = childAt2.getLeft();
                    int right2 = childAt2.getRight();
                    TabLayout tabLayout2 = TabLayout.this;
                    if (!tabLayout2.D && (childAt2 instanceof TabView)) {
                        d((TabView) childAt2, tabLayout2.h);
                        left2 = (int) TabLayout.this.h.left;
                        right2 = (int) TabLayout.this.h.right;
                    }
                    float f = this.f;
                    left = (int) ((left2 * f) + ((1.0f - f) * left));
                    right = (int) ((right2 * f) + ((1.0f - f) * right));
                }
            }
            g(left, right);
        }

        public final void m(boolean z, int i) {
            View childAt = getChildAt(i);
            if (childAt == null) {
                l();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            TabLayout tabLayout = TabLayout.this;
            if (!tabLayout.D && (childAt instanceof TabView)) {
                d((TabView) childAt, tabLayout.h);
                left = (int) TabLayout.this.h.left;
                right = (int) TabLayout.this.h.right;
            }
            int i2 = this.h;
            int i3 = this.i;
            if (i2 == left && i3 == right) {
                return;
            }
            if (z) {
                this.m = i2;
                this.n = i3;
            }
            long jK = TabLayout.this.k(olb.E0(getContext(), Math.abs(left - this.m)));
            a aVar = new a(left, right);
            if (!z) {
                this.l.removeAllUpdateListeners();
                this.l.addUpdateListener(aVar);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.l = valueAnimator;
            valueAnimator.setInterpolator(new p97());
            valueAnimator.setDuration(jK);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(aVar);
            valueAnimator.addListener(new b(i));
            valueAnimator.start();
        }

        @Override
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.l;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                l();
            } else {
                m(false, this.e);
            }
        }

        @Override
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z = true;
            if (tabLayout.y == 1 || tabLayout.B == 2) {
                int childCount = getChildCount();
                int iMax = 0;
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (childAt.getVisibility() == 0) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                if (iMax <= 0) {
                    return;
                }
                if (iMax * childCount <= getMeasuredWidth() - (((int) ViewUtils.dpToPx(getContext(), 16)) * 2)) {
                    boolean z2 = false;
                    for (int i4 = 0; i4 < childCount; i4++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams();
                        if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                            layoutParams.width = iMax;
                            layoutParams.weight = 0.0f;
                            z2 = true;
                        }
                    }
                    z = z2;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.y = 0;
                    tabLayout2.H(false);
                }
                if (z) {
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
        }
    }

    public static class g {
        public Object a;
        public Drawable b;
        public CharSequence c;
        public CharSequence d;
        public View f;
        public TabLayout h;
        public TabView i;
        public int e = -1;
        public int g = 1;

        public boolean d() {
            TabLayout tabLayout = this.h;
            if (tabLayout != null) {
                return tabLayout.getSelectedTabPosition() == this.e;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public void e() {
            this.h = null;
            this.i = null;
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = -1;
            this.f = null;
        }

        public void f() {
            TabLayout tabLayout = this.h;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.selectTab(this);
        }

        public g g(CharSequence charSequence) {
            this.d = charSequence;
            m();
            return this;
        }

        @Nullable
        public BadgeDrawable getBadge() {
            return this.i.getBadge();
        }

        @Nullable
        public CharSequence getContentDescription() {
            TabView tabView = this.i;
            if (tabView == null) {
                return null;
            }
            return tabView.getContentDescription();
        }

        @Nullable
        public View getCustomView() {
            return this.f;
        }

        @Nullable
        public Drawable getIcon() {
            return this.b;
        }

        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            return this.i.getOrCreateBadge();
        }

        public int getPosition() {
            return this.e;
        }

        public int getTabLabelVisibility() {
            return this.g;
        }

        @Nullable
        public Object getTag() {
            return this.a;
        }

        @Nullable
        public CharSequence getText() {
            return this.c;
        }

        public g h(int i) {
            return i(LayoutInflater.from(this.i.getContext()).inflate(i, (ViewGroup) this.i, false));
        }

        public g i(View view) {
            this.f = view;
            m();
            return this;
        }

        public g j(Drawable drawable) {
            this.b = drawable;
            TabLayout tabLayout = this.h;
            if (tabLayout.y == 1 || tabLayout.B == 2) {
                tabLayout.H(true);
            }
            m();
            return this;
        }

        public void k(int i) {
            this.e = i;
        }

        public g l(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.d) && !TextUtils.isEmpty(charSequence)) {
                this.i.setContentDescription(charSequence);
            }
            this.c = charSequence;
            m();
            return this;
        }

        public void m() {
            TabView tabView = this.i;
            if (tabView != null) {
                tabView.t();
            }
        }
    }

    public static class h implements d {
        public final ViewPager a;

        public h(ViewPager viewPager) {
            this.a = viewPager;
        }

        @Override
        public void a(g gVar) {
        }

        @Override
        public void b(g gVar) {
            this.a.setCurrentItem(gVar.getPosition());
        }

        @Override
        public void c(g gVar) {
        }
    }

    public TabLayout(@NonNull Context context) {
        this(context, null);
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            g gVar = (g) this.f.get(i);
            if (gVar != null && gVar.getIcon() != null && !TextUtils.isEmpty(gVar.getText())) {
                if (this.C) {
                    break;
                }
                return Math.round(ViewUtils.dpToPx(getContext(), 72));
            }
        }
        return this.c;
    }

    private int getTabMinWidth() {
        int i = this.u;
        if (i != -1) {
            return i;
        }
        int i2 = this.B;
        if (i2 == 0 || i2 == 2) {
            return this.w;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.i.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    public static ColorStateList n(int i, int i2) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i});
    }

    public static ColorStateList o(int i, int i2, int i3) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.PRESSED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i3, i});
    }

    private void setSelectedTabView(int i) {
        int childCount = this.i.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.i.getChildAt(i2);
                boolean z = true;
                childAt.setSelected(i2 == i);
                if (i2 != i) {
                    z = false;
                }
                childAt.setActivated(z);
                i2++;
            }
        }
    }

    public final void A(int i) {
        TabView tabView = (TabView) this.i.getChildAt(i);
        this.i.removeViewAt(i);
        if (tabView != null) {
            tabView.n();
            this.T.release(tabView);
        }
        requestLayout();
    }

    public void B(PagerAdapter pagerAdapter, boolean z) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.K;
        if (pagerAdapter2 != null && (dataSetObserver = this.L) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.K = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.L == null) {
                this.L = new e();
            }
            pagerAdapter.registerDataSetObserver(this.L);
        }
        y();
    }

    public final void C() {
        Resources.Theme theme = getContext().getTheme();
        if (this.P) {
            Resources resources = getResources();
            int i = R.dimen.os_tab_first_level_title_size;
            this.q = resources.getDimensionPixelOffset(i);
            this.r = getResources().getDimensionPixelSize(i);
            this.n = getResources().getColorStateList(R.color.os_text_tertiary_hios, theme);
        } else {
            Resources resources2 = getResources();
            int i2 = R.dimen.os_tab_second_level_title_size;
            this.q = resources2.getDimensionPixelOffset(i2);
            this.r = getResources().getDimensionPixelSize(i2);
            this.n = getResources().getColorStateList(R.color.os_text_tertiary_hios, theme);
        }
        this.n = o(this.n.getDefaultColor(), olb.m(getContext(), R.attr.os_text_primary, R.color.os_text_primary_hios), getContext().getColor(R.color.os_text_secondary_press_color));
    }

    public final void D(ViewPager viewPager, boolean z, boolean z2) {
        ViewPager viewPager2 = this.J;
        if (viewPager2 != null) {
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = this.M;
            if (tabLayoutOnPageChangeListener != null) {
                viewPager2.removeOnPageChangeListener(tabLayoutOnPageChangeListener);
            }
            b bVar = this.N;
            if (bVar != null) {
                this.J.removeOnAdapterChangeListener(bVar);
            }
        }
        c cVar = this.H;
        if (cVar != null) {
            removeOnTabSelectedListener(cVar);
            this.H = null;
        }
        if (viewPager != null) {
            this.J = viewPager;
            if (this.M == null) {
                this.M = new TabLayoutOnPageChangeListener(this);
            }
            this.M.a();
            viewPager.addOnPageChangeListener(this.M);
            h hVar = new h(viewPager);
            this.H = hVar;
            addOnTabSelectedListener((c) hVar);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                B(adapter, z);
            }
            if (this.N == null) {
                this.N = new b();
            }
            this.N.a(z);
            viewPager.addOnAdapterChangeListener(this.N);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.J = null;
            B(null, false);
        }
        this.O = z2;
    }

    public final void E() {
        for (int i = 0; i < getTabCount(); i++) {
            ViewCompat.setPaddingRelative(getTabAt(i).i, this.j, this.k, this.l, this.m);
        }
    }

    public final void F() {
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            ((g) this.f.get(i)).m();
        }
    }

    public final void G(LinearLayout.LayoutParams layoutParams) {
        if (this.B == 1 && this.y == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    public void H(boolean z) {
        for (int i = 0; i < this.i.getChildCount(); i++) {
            View childAt = this.i.getChildAt(i);
            childAt.setMinimumWidth(getTabMinWidth());
            G((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    public void addOnTabSelectedListener(@NonNull d dVar) {
        addOnTabSelectedListener((c) dVar);
    }

    public void addTab(@NonNull g gVar) {
        addTab(gVar, this.f.isEmpty());
    }

    @Override
    public void addView(View view) {
        g(view);
    }

    public void bindOSTabLayout(OSTabLayout oSTabLayout) {
        this.d = oSTabLayout;
    }

    public void clearOnTabSelectedListeners() {
        this.G.clear();
    }

    public final void e(TabItem tabItem) {
        g gVarNewTab = newTab();
        CharSequence charSequence = tabItem.text;
        if (charSequence != null) {
            gVarNewTab.l(charSequence);
        }
        Drawable drawable = tabItem.icon;
        if (drawable != null) {
            gVarNewTab.j(drawable);
        }
        int i = tabItem.customLayout;
        if (i != 0) {
            gVarNewTab.h(i);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            gVarNewTab.g(tabItem.getContentDescription());
        }
        addTab(gVarNewTab);
    }

    public void enableOverScroll() {
        IOverScrollDecor iOverScrollDecor = this.U;
        if (iOverScrollDecor == null) {
            this.U = OverScrollDecorHelper.setUpOverScroll(this);
        } else {
            iOverScrollDecor.enable();
        }
    }

    public final void f(g gVar) {
        TabView tabView = gVar.i;
        tabView.setSelected(false);
        tabView.setActivated(false);
        this.i.addView(tabView, gVar.getPosition(), p());
    }

    public final void g(View view) {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        e((TabItem) view);
    }

    public int getSelectedTabPosition() {
        g gVar = this.g;
        if (gVar != null) {
            return gVar.getPosition();
        }
        return -1;
    }

    @Nullable
    public g getTabAt(int i) {
        if (i < 0 || i >= getTabCount()) {
            return null;
        }
        return (g) this.f.get(i);
    }

    public int getTabCount() {
        return this.f.size();
    }

    public int getTabGravity() {
        return this.y;
    }

    public int getTabIndicatorGravity() {
        return this.A;
    }

    public int getTabMaxWidth() {
        return this.t;
    }

    public int getTabMode() {
        return this.B;
    }

    public int getTabPaddingBottom() {
        return this.m;
    }

    public int getTabPaddingEnd() {
        return this.l;
    }

    public int getTabPaddingStart() {
        return this.j;
    }

    public int getTabPaddingTop() {
        return this.k;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.n;
    }

    public float getTabTextSize() {
        return this.q;
    }

    public final void h(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() == null || !ViewCompat.isLaidOut(this) || this.i.e()) {
            setScrollPosition(i, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int iL = l(i, 0.0f);
        if (scrollX != iL) {
            v();
            this.I.setDuration(k(olb.E0(getContext(), Math.abs(iL - scrollX))));
            this.I.setIntValues(scrollX, iL);
            this.I.start();
        }
        this.i.c(i);
    }

    public boolean hasUnboundedRipple() {
        return this.E;
    }

    public final void i(int i) {
        if (i == 0) {
            Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
        } else if (i == 1) {
            this.i.setGravity(1);
            return;
        } else if (i != 2) {
            return;
        }
        this.i.setGravity(GravityCompat.START);
    }

    public void isFirstLevelTab(boolean z) {
        this.P = z;
        C();
        Resources resources = getContext().getResources();
        this.c = this.P ? resources.getDimensionPixelOffset(R.dimen.os_tab_default_height_first_level) : resources.getDimensionPixelOffset(R.dimen.os_tab_default_height_second_level);
        this.i.i(resources.getDimensionPixelOffset(this.P ? R.dimen.os_tab_default_selected_bottom_offset_fl : R.dimen.os_tab_default_selected_bottom_offset_sl));
        requestLayout();
    }

    public boolean isFixPadding() {
        return this.S;
    }

    public boolean isInlineLabel() {
        return this.C;
    }

    public boolean isTabIndicatorFullWidth() {
        return this.D;
    }

    public final void j() {
        int i = this.B;
        ViewCompat.setPaddingRelative(this.i, (i == 0 || i == 2) ? Math.max(0, this.x - this.j) : 0, 0, 0, 0);
        int i2 = this.B;
        if (i2 == 0) {
            i(this.y);
        } else if (i2 == 1 || i2 == 2) {
            if (this.y == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.i.setGravity(1);
        }
        H(true);
    }

    public final long k(float f2) {
        return ((long) (((Math.max(100.0f, Math.min(800.0f, f2)) - 100.0f) / 700.0f) * 100)) + 250;
    }

    public final int l(int i, float f2) {
        int i2 = this.B;
        if (i2 != 0 && i2 != 2) {
            return 0;
        }
        View childAt = this.i.getChildAt(i);
        int i3 = i + 1;
        View childAt2 = i3 < this.i.getChildCount() ? this.i.getChildAt(i3) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i4 = (int) ((width + width2) * 0.5f * f2);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i4 : left - i4;
    }

    public final void m(g gVar, int i) {
        gVar.k(i);
        this.f.add(i, gVar);
        int size = this.f.size();
        while (true) {
            i++;
            if (i >= size) {
                return;
            } else {
                ((g) this.f.get(i)).k(i);
            }
        }
    }

    @NonNull
    public g newTab() {
        g gVarQ = q();
        gVarQ.h = this;
        gVarQ.i = r(gVarQ);
        return gVarQ;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
        if (this.J == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                D((ViewPager) parent, true, true);
            }
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.R != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(this.R, R.styleable.TabLayout, this.Q, R.style.OSTablayout);
            w(typedArrayObtainStyledAttributes);
            x();
            typedArrayObtainStyledAttributes.recycle();
            E();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.O) {
            setupWithViewPager(null);
            this.O = false;
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        for (int i = 0; i < this.i.getChildCount(); i++) {
            View childAt = this.i.getChildAt(i);
            if (childAt instanceof TabView) {
                ((TabView) childAt).h(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0075  */
    /* JADX WARN: Code duplicated, block: B:32:0x007f  */
    @Override
    public void onMeasure(int i, int i2) {
        int defaultHeight = getDefaultHeight();
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i2 = View.MeasureSpec.makeMeasureSpec(defaultHeight + getPaddingTop() + getPaddingBottom(), 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i2) >= defaultHeight) {
            getChildAt(0).setMinimumHeight(defaultHeight);
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            int iDpToPx = this.v;
            if (iDpToPx <= 0) {
                iDpToPx = (int) (size - ViewUtils.dpToPx(getContext(), 56));
            }
            this.t = iDpToPx;
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i3 = this.B;
            if (i3 == 0) {
                if (childAt.getMeasuredWidth() < getMeasuredWidth()) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
                }
            } else if (i3 != 1) {
                if (i3 == 2) {
                    if (childAt.getMeasuredWidth() < getMeasuredWidth()) {
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
                    }
                }
            } else if (childAt.getMeasuredWidth() != getMeasuredWidth()) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
            if (childAt.getMeasuredWidth() > getMeasuredWidth()) {
                enableOverScroll();
            } else {
                unableOverScroll();
            }
        }
    }

    public final LinearLayout.LayoutParams p() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        G(layoutParams);
        return layoutParams;
    }

    public g q() {
        g gVar = (g) V.acquire();
        return gVar == null ? new g() : gVar;
    }

    public final TabView r(g gVar) {
        Pools.Pool pool = this.T;
        TabView tabView = pool != null ? (TabView) pool.acquire() : null;
        if (tabView == null) {
            tabView = new TabView(getContext());
        }
        tabView.setTab(gVar);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(gVar.d)) {
            tabView.setContentDescription(gVar.c);
        } else {
            tabView.setContentDescription(gVar.d);
        }
        return tabView;
    }

    public void removeAllTabs() {
        for (int childCount = this.i.getChildCount() - 1; childCount >= 0; childCount--) {
            A(childCount);
        }
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            g gVar = (g) it.next();
            it.remove();
            gVar.e();
            z(gVar);
        }
        this.g = null;
    }

    public void removeOnTabSelectedListener(@NonNull d dVar) {
        removeOnTabSelectedListener((c) dVar);
    }

    public void removeTab(@NonNull g gVar) {
        if (gVar.h != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        removeTabAt(gVar.getPosition());
    }

    public void removeTabAt(int i) {
        g gVar = this.g;
        int position = gVar != null ? gVar.getPosition() : 0;
        A(i);
        g gVar2 = (g) this.f.remove(i);
        if (gVar2 != null) {
            gVar2.e();
            z(gVar2);
        }
        int size = this.f.size();
        for (int i2 = i; i2 < size; i2++) {
            ((g) this.f.get(i2)).k(i2);
        }
        if (position == i) {
            selectTab(this.f.isEmpty() ? null : (g) this.f.get(Math.max(0, i - 1)));
        }
    }

    public final void s(g gVar) {
        for (int size = this.G.size() - 1; size >= 0; size--) {
            ((c) this.G.get(size)).a(gVar);
        }
    }

    public void selectTab(@Nullable g gVar) {
        selectTab(gVar, true);
    }

    public void setDefaultSelectedIndicatorRadius(int i) {
        this.i.f(i);
    }

    @Override
    @RequiresApi(21)
    public void setElevation(float f2) {
        super.setElevation(f2);
        MaterialShapeUtils.setElevation(this, f2);
    }

    public void setFixPadding(boolean z) {
        this.S = z;
    }

    public void setInlineLabel(boolean z) {
        if (this.C != z) {
            this.C = z;
            for (int i = 0; i < this.i.getChildCount(); i++) {
                View childAt = this.i.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).w();
                }
            }
            j();
        }
    }

    public void setInlineLabelResource(@BoolRes int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable d dVar) {
        setOnTabSelectedListener((c) dVar);
    }

    public void setRelativeTabPadding(@Px int i, @Px int i2, @Px int i3, @Px int i4) {
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = i4;
        E();
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        v();
        this.I.addListener(animatorListener);
    }

    public void setScrollPosition(int i, float f2, boolean z) {
        setScrollPosition(i, f2, z, true);
    }

    public void setSelectedIndicatorBottomOffset(int i) {
        this.i.i(i);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (this.p != drawable) {
            this.p = drawable;
            ViewCompat.postInvalidateOnAnimation(this.i);
        }
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i) {
        this.i.j(i);
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.A != i) {
            this.A = i;
            ViewCompat.postInvalidateOnAnimation(this.i);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.i.k(i);
    }

    public void setTabChildEnable(boolean z) {
        TabView tabView;
        int tabCount = getTabCount();
        for (int i = 0; i < tabCount; i++) {
            g tabAt = getTabAt(i);
            if (tabAt != null && (tabView = tabAt.i) != null) {
                tabView.setEnabled(z);
            }
        }
    }

    public void setTabGravity(int i) {
        if (this.y != i) {
            this.y = i;
            j();
        }
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.D = z;
        ViewCompat.postInvalidateOnAnimation(this.i);
    }

    public void setTabMode(int i) {
        if (i != this.B) {
            this.B = i;
            x();
            j();
            E();
            if (getTabMode() == 0) {
                enableOverScroll();
            } else {
                unableOverScroll();
            }
        }
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.n != colorStateList) {
            this.n = colorStateList;
            F();
        }
    }

    public void setTabTextSize(float f2) {
        this.q = f2;
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        B(pagerAdapter, false);
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    public final void t(g gVar) {
        for (int size = this.G.size() - 1; size >= 0; size--) {
            ((c) this.G.get(size)).b(gVar);
        }
    }

    public final void u(g gVar) {
        for (int size = this.G.size() - 1; size >= 0; size--) {
            ((c) this.G.get(size)).c(gVar);
        }
    }

    public void unableOverScroll() {
        IOverScrollDecor iOverScrollDecor = this.U;
        if (iOverScrollDecor != null) {
            iOverScrollDecor.disable();
        }
    }

    public final void v() {
        if (this.I == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.I = valueAnimator;
            valueAnimator.setInterpolator(new p97());
            this.I.addUpdateListener(new a());
        }
    }

    public final void w(TypedArray typedArray) {
        if (typedArray == null || this.S) {
            return;
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
        this.m = dimensionPixelSize;
        this.k = dimensionPixelSize;
        this.l = dimensionPixelSize;
        this.j = dimensionPixelSize;
        this.j = typedArray.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, dimensionPixelSize);
        this.k = typedArray.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.k);
        this.l = typedArray.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.l);
        this.m = typedArray.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.m);
        this.S = typedArray.getBoolean(R.styleable.TabLayout_isFixPadding, false);
    }

    public final void x() {
        if (getTabMode() == 0) {
            int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(R.dimen.os_tab_item_scroll_padding_start);
            this.l = dimensionPixelOffset;
            this.j = dimensionPixelOffset;
        }
    }

    public void y() {
        int currentItem;
        removeAllTabs();
        PagerAdapter pagerAdapter = this.K;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i = 0; i < count; i++) {
                addTab(newTab().l(this.K.getPageTitle(i)), false);
            }
            ViewPager viewPager = this.J;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            selectTab(getTabAt(currentItem));
        }
    }

    public boolean z(g gVar) {
        return V.release(gVar);
    }

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public void addOnTabSelectedListener(@Nullable c cVar) {
        if (this.G.contains(cVar)) {
            return;
        }
        this.G.add(cVar);
    }

    public void addTab(@NonNull g gVar, int i) {
        addTab(gVar, i, this.f.isEmpty());
    }

    @Override
    public void addView(View view, int i) {
        g(view);
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void removeOnTabSelectedListener(@Nullable c cVar) {
        this.G.remove(cVar);
    }

    public void selectTab(@Nullable g gVar, boolean z) {
        g gVar2 = this.g;
        if (gVar2 == gVar) {
            if (gVar2 != null) {
                s(gVar);
                h(gVar.getPosition());
                return;
            }
            return;
        }
        int position = gVar != null ? gVar.getPosition() : -1;
        if (z) {
            if ((gVar2 == null || gVar2.getPosition() == -1) && position != -1) {
                setScrollPosition(position, 0.0f, true);
            } else {
                h(position);
            }
            if (position != -1) {
                setSelectedTabView(position);
            }
        }
        this.g = gVar;
        if (gVar2 != null) {
            u(gVar2);
        }
        if (gVar != null) {
            t(gVar);
        }
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable c cVar) {
        c cVar2 = this.F;
        if (cVar2 != null) {
            removeOnTabSelectedListener(cVar2);
        }
        this.F = cVar;
        if (cVar != null) {
            addOnTabSelectedListener(cVar);
        }
    }

    public void setScrollPosition(int i, float f2, boolean z, boolean z2) {
        int iRound = Math.round(i + f2);
        if (iRound < 0 || iRound >= this.i.getChildCount()) {
            return;
        }
        if (z2) {
            this.i.h(i, f2);
        }
        ValueAnimator valueAnimator = this.I;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.I.cancel();
        }
        scrollTo(l(i, f2), 0);
        if (z) {
            setSelectedTabView(iRound);
        }
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager, boolean z) {
        D(viewPager, z, false);
    }

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = "TabLayout";
        this.f = new ArrayList();
        this.h = new RectF();
        this.t = Integer.MAX_VALUE;
        this.G = new ArrayList();
        this.T = new Pools.SimplePool(12);
        Context context2 = getContext();
        this.R = attributeSet;
        this.Q = i;
        setHorizontalScrollBarEnabled(false);
        f fVar = new f(context2);
        this.i = fVar;
        super.addView(fVar, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.TabLayout, i, R.style.OSTablayout);
        fVar.k(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, -1));
        fVar.j(typedArrayObtainStyledAttributes.getColor(R.styleable.TabLayout_tabIndicatorColor, context2.getColor(R.color.os_platform_basic_color_hios)));
        fVar.f(context2.getResources().getDimensionPixelOffset(R.dimen.os_tab_default_selected_indicator_radius));
        setSelectedTabIndicator(MaterialResources.getDrawable(context2, typedArrayObtainStyledAttributes, R.styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorGravity(typedArrayObtainStyledAttributes.getInt(R.styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(typedArrayObtainStyledAttributes.getBoolean(R.styleable.TabLayout_tabIndicatorFullWidth, false));
        w(typedArrayObtainStyledAttributes);
        this.o = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.TabLayout_tabRippleColor);
        this.z = 250;
        this.u = -1;
        this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
        this.s = typedArrayObtainStyledAttributes.getResourceId(R.styleable.TabLayout_tabBackground, 0);
        this.x = 0;
        this.B = typedArrayObtainStyledAttributes.getInt(R.styleable.TabLayout_OsTabMode, 1);
        this.y = typedArrayObtainStyledAttributes.getInt(R.styleable.TabLayout_OsTabGravity, 0);
        this.C = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TabLayout_tabInlineLabel, true);
        this.E = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TabLayout_tabUnboundedRipple, false);
        this.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_scrollableTabMinWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        j();
        x();
        if (getTabMode() == 0) {
            enableOverScroll();
        }
    }

    public void addTab(@NonNull g gVar, boolean z) {
        addTab(gVar, this.f.size(), z);
    }

    @Override
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        g(view);
    }

    public void addTab(@NonNull g gVar, int i, boolean z) {
        if (gVar.h == this) {
            m(gVar, i);
            f(gVar);
            if (z) {
                gVar.f();
            }
            OSTabLayout oSTabLayout = this.d;
            if (oSTabLayout != null) {
                oSTabLayout.handleInsets();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    @Override
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        g(view);
    }

    public void setSelectedTabIndicator(@DrawableRes int i) {
        if (i != 0) {
            setSelectedTabIndicator(getResources().getDrawable(i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(n(i, i2));
    }
}
