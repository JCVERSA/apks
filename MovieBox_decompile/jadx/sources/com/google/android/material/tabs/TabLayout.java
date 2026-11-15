package com.google.android.material.tabs;

import android.R;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.o0;
import androidx.core.util.f;
import androidx.core.util.g;
import androidx.core.util.h;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.l;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import cb.i;
import cb.j;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@ViewPager.c
public class TabLayout extends HorizontalScrollView {
    private static final int ANIMATION_DURATION = 300;
    static final int DEFAULT_GAP_TEXT_ICON = 8;
    private static final int DEFAULT_HEIGHT = 48;
    private static final int DEFAULT_HEIGHT_WITH_TEXT_ICON = 72;
    static final int FIXED_WRAP_GUTTER_MIN = 16;
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    public static final int GRAVITY_START = 2;
    public static final int INDICATOR_ANIMATION_MODE_ELASTIC = 1;
    public static final int INDICATOR_ANIMATION_MODE_FADE = 2;
    public static final int INDICATOR_ANIMATION_MODE_LINEAR = 0;
    public static final int INDICATOR_GRAVITY_BOTTOM = 0;
    public static final int INDICATOR_GRAVITY_CENTER = 1;
    public static final int INDICATOR_GRAVITY_STRETCH = 3;
    public static final int INDICATOR_GRAVITY_TOP = 2;
    private static final int INVALID_WIDTH = -1;
    private static final String LOG_TAG = "TabLayout";
    public static final int MODE_AUTO = 2;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    private static final int SELECTED_INDICATOR_HEIGHT_DEFAULT = -1;
    public static final int TAB_LABEL_VISIBILITY_LABELED = 1;
    public static final int TAB_LABEL_VISIBILITY_UNLABELED = 0;
    private static final int TAB_MIN_WIDTH_MARGIN = 56;
    private b adapterChangeListener;
    private int contentInsetStart;

    @Nullable
    private BaseOnTabSelectedListener currentVpSelectedListener;
    private final int defaultTabTextAppearance;
    int indicatorPosition;
    boolean inlineLabel;
    int mode;
    private TabLayoutOnPageChangeListener pageChangeListener;

    @Nullable
    private PagerAdapter pagerAdapter;
    private DataSetObserver pagerAdapterObserver;
    private final int requestedTabMaxWidth;
    private final int requestedTabMinWidth;
    private ValueAnimator scrollAnimator;
    private final int scrollableTabMinWidth;

    @Nullable
    private BaseOnTabSelectedListener selectedListener;
    private final ArrayList<BaseOnTabSelectedListener> selectedListeners;

    @Nullable
    private Tab selectedTab;
    private int selectedTabTextAppearance;
    float selectedTabTextSize;
    private boolean setupViewPagerImplicitly;

    @NonNull
    final d slidingTabIndicator;
    final int tabBackgroundResId;
    int tabGravity;
    ColorStateList tabIconTint;
    PorterDuff.Mode tabIconTintMode;
    int tabIndicatorAnimationDuration;
    int tabIndicatorAnimationMode;
    boolean tabIndicatorFullWidth;
    int tabIndicatorGravity;
    int tabIndicatorHeight;
    private com.google.android.material.tabs.c tabIndicatorInterpolator;
    private final TimeInterpolator tabIndicatorTimeInterpolator;
    int tabMaxWidth;
    int tabPaddingBottom;
    int tabPaddingEnd;
    int tabPaddingStart;
    int tabPaddingTop;
    ColorStateList tabRippleColorStateList;

    @NonNull
    Drawable tabSelectedIndicator;
    private int tabSelectedIndicatorColor;
    private final int tabTextAppearance;
    ColorStateList tabTextColors;
    float tabTextMultiLineSize;
    float tabTextSize;
    private final f tabViewPool;
    private final ArrayList<Tab> tabs;
    boolean unboundedRipple;

    @Nullable
    ViewPager viewPager;
    private int viewPagerScrollState;
    private static final int DEF_STYLE_RES = R$style.Widget_Design_TabLayout;
    private static final f tabPool = new h(16);

    @Deprecated
    public interface BaseOnTabSelectedListener<T extends Tab> {
        void onTabReselected(T t10);

        void onTabSelected(T t10);

        void onTabUnselected(T t10);
    }

    public @interface LabelVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public interface OnTabSelectedListener extends BaseOnTabSelectedListener<Tab> {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TabGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TabIndicatorAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TabIndicatorGravity {
    }

    public static class TabLayoutOnPageChangeListener implements ViewPager.h {
        private int previousScrollState;
        private int scrollState;

        @NonNull
        private final WeakReference<TabLayout> tabLayoutRef;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.tabLayoutRef = new WeakReference<>(tabLayout);
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            this.previousScrollState = this.scrollState;
            this.scrollState = i10;
            TabLayout tabLayout = this.tabLayoutRef.get();
            if (tabLayout != null) {
                tabLayout.updateViewPagerScrollState(this.scrollState);
            }
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            TabLayout tabLayout = this.tabLayoutRef.get();
            if (tabLayout != null) {
                int i12 = this.scrollState;
                tabLayout.setScrollPosition(i10, f10, i12 != 2 || this.previousScrollState == 1, (i12 == 2 && this.previousScrollState == 0) ? false : true, false);
            }
        }

        @Override
        public void onPageSelected(int i10) {
            TabLayout tabLayout = this.tabLayoutRef.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
                return;
            }
            int i11 = this.scrollState;
            tabLayout.selectTab(tabLayout.getTabAt(i10), i11 == 0 || (i11 == 2 && this.previousScrollState == 0));
        }

        void reset() {
            this.scrollState = 0;
            this.previousScrollState = 0;
        }
    }

    public final class TabView extends LinearLayout {

        @Nullable
        private View badgeAnchorView;

        @Nullable
        private BadgeDrawable badgeDrawable;

        @Nullable
        private Drawable baseBackgroundDrawable;

        @Nullable
        private ImageView customIconView;

        @Nullable
        private TextView customTextView;

        @Nullable
        private View customView;
        private int defaultMaxLines;
        private ImageView iconView;
        private Tab tab;
        private TextView textView;

        class a implements View.OnLayoutChangeListener {

            final View f28988a;

            a(View view) {
                this.f28988a = view;
            }

            @Override
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                if (this.f28988a.getVisibility() == 0) {
                    TabView.this.tryUpdateBadgeDrawableBounds(this.f28988a);
                }
            }
        }

        public TabView(Context context) {
            super(context);
            this.defaultMaxLines = 2;
            updateBackgroundDrawable(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.tabPaddingStart, TabLayout.this.tabPaddingTop, TabLayout.this.tabPaddingEnd, TabLayout.this.tabPaddingBottom);
            setGravity(17);
            setOrientation(!TabLayout.this.inlineLabel ? 1 : 0);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        private void addOnLayoutChangeListener(@Nullable View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new a(view));
        }

        private float approximateLineWidth(@NonNull Layout layout, int i10, float f10) {
            return layout.getLineWidth(i10) * (f10 / layout.getPaint().getTextSize());
        }

        private void clipViewToPaddingForBadge(boolean z10) {
            setClipChildren(z10);
            setClipToPadding(z10);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z10);
                viewGroup.setClipToPadding(z10);
            }
        }

        @NonNull
        private FrameLayout createPreApi18BadgeAnchorRoot() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        public void drawBackground(@NonNull Canvas canvas) {
            Drawable drawable = this.baseBackgroundDrawable;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.baseBackgroundDrawable.draw(canvas);
            }
        }

        @Nullable
        public BadgeDrawable getBadge() {
            return this.badgeDrawable;
        }

        @Nullable
        private FrameLayout getCustomParentForBadge(@NonNull View view) {
            if ((view == this.iconView || view == this.textView) && com.google.android.material.badge.c.f27481a) {
                return (FrameLayout) view.getParent();
            }
            return null;
        }

        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            if (this.badgeDrawable == null) {
                this.badgeDrawable = BadgeDrawable.d(getContext());
            }
            tryUpdateBadgeAnchor();
            BadgeDrawable badgeDrawable = this.badgeDrawable;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        public boolean hasBadgeDrawable() {
            return this.badgeDrawable != null;
        }

        private void inflateAndAddDefaultIconView() {
            ViewGroup viewGroup;
            if (com.google.android.material.badge.c.f27481a) {
                FrameLayout frameLayoutCreatePreApi18BadgeAnchorRoot = createPreApi18BadgeAnchorRoot();
                addView(frameLayoutCreatePreApi18BadgeAnchorRoot, 0);
                viewGroup = frameLayoutCreatePreApi18BadgeAnchorRoot;
            } else {
                viewGroup = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R$layout.design_layout_tab_icon, viewGroup, false);
            this.iconView = imageView;
            viewGroup.addView(imageView, 0);
        }

        private void inflateAndAddDefaultTextView() {
            ViewGroup viewGroup;
            if (com.google.android.material.badge.c.f27481a) {
                FrameLayout frameLayoutCreatePreApi18BadgeAnchorRoot = createPreApi18BadgeAnchorRoot();
                addView(frameLayoutCreatePreApi18BadgeAnchorRoot);
                viewGroup = frameLayoutCreatePreApi18BadgeAnchorRoot;
            } else {
                viewGroup = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R$layout.design_layout_tab_text, viewGroup, false);
            this.textView = textView;
            viewGroup.addView(textView);
        }

        public void removeBadge() {
            if (this.badgeAnchorView != null) {
                tryRemoveBadgeFromAnchor();
            }
            this.badgeDrawable = null;
        }

        private void tryAttachBadgeToAnchor(@Nullable View view) {
            if (hasBadgeDrawable() && view != null) {
                clipViewToPaddingForBadge(false);
                com.google.android.material.badge.c.c(this.badgeDrawable, view, getCustomParentForBadge(view));
                this.badgeAnchorView = view;
            }
        }

        private void tryRemoveBadgeFromAnchor() {
            if (hasBadgeDrawable()) {
                clipViewToPaddingForBadge(true);
                View view = this.badgeAnchorView;
                if (view != null) {
                    com.google.android.material.badge.c.f(this.badgeDrawable, view);
                    this.badgeAnchorView = null;
                }
            }
        }

        private void tryUpdateBadgeAnchor() {
            Tab tab;
            Tab tab2;
            if (hasBadgeDrawable()) {
                if (this.customView != null) {
                    tryRemoveBadgeFromAnchor();
                    return;
                }
                if (this.iconView != null && (tab2 = this.tab) != null && tab2.getIcon() != null) {
                    View view = this.badgeAnchorView;
                    ImageView imageView = this.iconView;
                    if (view == imageView) {
                        tryUpdateBadgeDrawableBounds(imageView);
                        return;
                    } else {
                        tryRemoveBadgeFromAnchor();
                        tryAttachBadgeToAnchor(this.iconView);
                        return;
                    }
                }
                if (this.textView == null || (tab = this.tab) == null || tab.getTabLabelVisibility() != 1) {
                    tryRemoveBadgeFromAnchor();
                    return;
                }
                View view2 = this.badgeAnchorView;
                TextView textView = this.textView;
                if (view2 == textView) {
                    tryUpdateBadgeDrawableBounds(textView);
                } else {
                    tryRemoveBadgeFromAnchor();
                    tryAttachBadgeToAnchor(this.textView);
                }
            }
        }

        public void tryUpdateBadgeDrawableBounds(@NonNull View view) {
            if (hasBadgeDrawable() && view == this.badgeAnchorView) {
                com.google.android.material.badge.c.g(this.badgeDrawable, view, getCustomParentForBadge(view));
            }
        }

        public void updateBackgroundDrawable(Context context) {
            GradientDrawable gradientDrawable;
            int i10 = TabLayout.this.tabBackgroundResId;
            if (i10 != 0) {
                Drawable drawableB = g.a.b(context, i10);
                this.baseBackgroundDrawable = drawableB;
                if (drawableB != null && drawableB.isStateful()) {
                    this.baseBackgroundDrawable.setState(getDrawableState());
                }
            } else {
                this.baseBackgroundDrawable = null;
            }
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(0);
            Drawable rippleDrawable = gradientDrawable2;
            if (TabLayout.this.tabRippleColorStateList != null) {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setCornerRadius(1.0E-5f);
                gradientDrawable3.setColor(-1);
                ColorStateList colorStateListA = ab.b.a(TabLayout.this.tabRippleColorStateList);
                boolean z10 = TabLayout.this.unboundedRipple;
                if (z10) {
                    gradientDrawable = gradientDrawable2;
                    gradientDrawable = null;
                }
                rippleDrawable = new RippleDrawable(colorStateListA, gradientDrawable, z10 ? null : gradientDrawable3);
            }
            ViewCompat.setBackground(this, rippleDrawable);
            TabLayout.this.invalidate();
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0060  */
        private void updateTextAndIcon(@Nullable TextView textView, @Nullable ImageView imageView, boolean z10) {
            boolean z11;
            Tab tab = this.tab;
            Drawable drawableMutate = (tab == null || tab.getIcon() == null) ? null : a1.a.r(this.tab.getIcon()).mutate();
            if (drawableMutate != null) {
                a1.a.o(drawableMutate, TabLayout.this.tabIconTint);
                PorterDuff.Mode mode = TabLayout.this.tabIconTintMode;
                if (mode != null) {
                    a1.a.p(drawableMutate, mode);
                }
            }
            Tab tab2 = this.tab;
            CharSequence text = tab2 != null ? tab2.getText() : null;
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
                if (!zIsEmpty) {
                    z11 = this.tab.labelVisibilityMode == 1;
                }
                textView.setText(!zIsEmpty ? text : null);
                textView.setVisibility(z11 ? 0 : 8);
                if (!zIsEmpty) {
                    setVisibility(0);
                }
            } else {
                z11 = false;
            }
            if (z10 && imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int iG = (z11 && imageView.getVisibility() == 0) ? (int) f0.g(getContext(), 8) : 0;
                if (TabLayout.this.inlineLabel) {
                    if (iG != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, iG);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (iG != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = iG;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            Tab tab3 = this.tab;
            CharSequence charSequence = tab3 != null ? tab3.contentDesc : null;
            if (Build.VERSION.SDK_INT > 23) {
                if (zIsEmpty) {
                    text = charSequence;
                }
                o0.a(this, text);
            }
        }

        @Override
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.baseBackgroundDrawable;
            if ((drawable == null || !drawable.isStateful()) ? false : this.baseBackgroundDrawable.setState(drawableState)) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        int getContentHeight() {
            View[] viewArr = {this.textView, this.iconView, this.customView};
            int iMax = 0;
            int iMin = 0;
            boolean z10 = false;
            for (int i10 = 0; i10 < 3; i10++) {
                View view = viewArr[i10];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z10 ? Math.min(iMin, view.getTop()) : view.getTop();
                    iMax = z10 ? Math.max(iMax, view.getBottom()) : view.getBottom();
                    z10 = true;
                }
            }
            return iMax - iMin;
        }

        int getContentWidth() {
            View[] viewArr = {this.textView, this.iconView, this.customView};
            int iMax = 0;
            int iMin = 0;
            boolean z10 = false;
            for (int i10 = 0; i10 < 3; i10++) {
                View view = viewArr[i10];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z10 ? Math.min(iMin, view.getLeft()) : view.getLeft();
                    iMax = z10 ? Math.max(iMax, view.getRight()) : view.getRight();
                    z10 = true;
                }
            }
            return iMax - iMin;
        }

        @Nullable
        public Tab getTab() {
            return this.tab;
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.badgeDrawable;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                accessibilityNodeInfoCompatWrap.setContentDescription(this.badgeDrawable.i());
            }
            accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.tab.getPosition(), 1, false, isSelected()));
            if (isSelected()) {
                accessibilityNodeInfoCompatWrap.setClickable(false);
                accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(R$string.item_view_role_description));
        }

        @Override
        public void onMeasure(int i10, int i11) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i10 = View.MeasureSpec.makeMeasureSpec(TabLayout.this.tabMaxWidth, Integer.MIN_VALUE);
            }
            super.onMeasure(i10, i11);
            if (this.textView != null) {
                float f10 = TabLayout.this.tabTextSize;
                int i12 = this.defaultMaxLines;
                ImageView imageView = this.iconView;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.textView;
                    if (textView != null && textView.getLineCount() > 1) {
                        f10 = TabLayout.this.tabTextMultiLineSize;
                    }
                } else {
                    i12 = 1;
                }
                float textSize = this.textView.getTextSize();
                int lineCount = this.textView.getLineCount();
                int iD = l.d(this.textView);
                if (f10 != textSize || (iD >= 0 && i12 != iD)) {
                    if (TabLayout.this.mode != 1 || f10 <= textSize || lineCount != 1 || ((layout = this.textView.getLayout()) != null && approximateLineWidth(layout, 0, f10) <= (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        this.textView.setTextSize(0, f10);
                        this.textView.setMaxLines(i12);
                        super.onMeasure(i10, i11);
                    }
                }
            }
        }

        @Override
        public boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.tab == null) {
                return zPerformClick;
            }
            if (!zPerformClick) {
                playSoundEffect(0);
            }
            this.tab.select();
            return true;
        }

        void reset() {
            setTab(null);
            setSelected(false);
        }

        @Override
        public void setSelected(boolean z10) {
            isSelected();
            super.setSelected(z10);
            TextView textView = this.textView;
            if (textView != null) {
                textView.setSelected(z10);
            }
            ImageView imageView = this.iconView;
            if (imageView != null) {
                imageView.setSelected(z10);
            }
            View view = this.customView;
            if (view != null) {
                view.setSelected(z10);
            }
        }

        void setTab(@Nullable Tab tab) {
            if (tab != this.tab) {
                this.tab = tab;
                update();
            }
        }

        final void update() {
            updateTab();
            Tab tab = this.tab;
            setSelected(tab != null && tab.isSelected());
        }

        final void updateOrientation() {
            setOrientation(!TabLayout.this.inlineLabel ? 1 : 0);
            TextView textView = this.customTextView;
            if (textView == null && this.customIconView == null) {
                updateTextAndIcon(this.textView, this.iconView, true);
            } else {
                updateTextAndIcon(textView, this.customIconView, false);
            }
        }

        final void updateTab() {
            ViewParent parent;
            Tab tab = this.tab;
            View customView = tab != null ? tab.getCustomView() : null;
            if (customView != null) {
                ViewParent parent2 = customView.getParent();
                if (parent2 != this) {
                    if (parent2 != null) {
                        ((ViewGroup) parent2).removeView(customView);
                    }
                    View view = this.customView;
                    if (view != null && (parent = view.getParent()) != null) {
                        ((ViewGroup) parent).removeView(this.customView);
                    }
                    addView(customView);
                }
                this.customView = customView;
                TextView textView = this.textView;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.iconView;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.iconView.setImageDrawable(null);
                }
                TextView textView2 = (TextView) customView.findViewById(R.id.text1);
                this.customTextView = textView2;
                if (textView2 != null) {
                    this.defaultMaxLines = l.d(textView2);
                }
                this.customIconView = (ImageView) customView.findViewById(R.id.icon);
            } else {
                View view2 = this.customView;
                if (view2 != null) {
                    removeView(view2);
                    this.customView = null;
                }
                this.customTextView = null;
                this.customIconView = null;
            }
            if (this.customView == null) {
                if (this.iconView == null) {
                    inflateAndAddDefaultIconView();
                }
                if (this.textView == null) {
                    inflateAndAddDefaultTextView();
                    this.defaultMaxLines = l.d(this.textView);
                }
                l.p(this.textView, TabLayout.this.defaultTabTextAppearance);
                if (!isSelected() || TabLayout.this.selectedTabTextAppearance == -1) {
                    l.p(this.textView, TabLayout.this.tabTextAppearance);
                } else {
                    l.p(this.textView, TabLayout.this.selectedTabTextAppearance);
                }
                ColorStateList colorStateList = TabLayout.this.tabTextColors;
                if (colorStateList != null) {
                    this.textView.setTextColor(colorStateList);
                }
                updateTextAndIcon(this.textView, this.iconView, true);
                tryUpdateBadgeAnchor();
                addOnLayoutChangeListener(this.iconView);
                addOnLayoutChangeListener(this.textView);
            } else {
                TextView textView3 = this.customTextView;
                if (textView3 != null || this.customIconView != null) {
                    updateTextAndIcon(textView3, this.customIconView, false);
                }
            }
            if (tab == null || TextUtils.isEmpty(tab.contentDesc)) {
                return;
            }
            setContentDescription(tab.contentDesc);
        }
    }

    public static class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {
        private final ViewPager viewPager;

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.viewPager = viewPager;
        }

        @Override
        public void onTabReselected(Tab tab) {
        }

        @Override
        public void onTabSelected(@NonNull Tab tab) {
            this.viewPager.setCurrentItem(tab.getPosition());
        }

        @Override
        public void onTabUnselected(Tab tab) {
        }
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    private class b implements ViewPager.g {

        private boolean f28991a;

        b() {
        }

        @Override
        public void a(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.viewPager == viewPager) {
                tabLayout.setPagerAdapter(pagerAdapter2, this.f28991a);
            }
        }

        void b(boolean z10) {
            this.f28991a = z10;
        }
    }

    private class c extends DataSetObserver {
        c() {
        }

        @Override
        public void onChanged() {
            TabLayout.this.populateFromPagerAdapter();
        }

        @Override
        public void onInvalidated() {
            TabLayout.this.populateFromPagerAdapter();
        }
    }

    class d extends LinearLayout {

        ValueAnimator f28994a;

        private int f28995b;

        class a implements ValueAnimator.AnimatorUpdateListener {

            final View f28997a;

            final View f28998b;

            a(View view, View view2) {
                this.f28997a = view;
                this.f28998b = view2;
            }

            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                d.this.j(this.f28997a, this.f28998b, valueAnimator.getAnimatedFraction());
            }
        }

        d(Context context) {
            super(context);
            this.f28995b = -1;
            setWillNotDraw(false);
        }

        private void e() {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.indicatorPosition == -1) {
                tabLayout.indicatorPosition = tabLayout.getSelectedTabPosition();
            }
            f(TabLayout.this.indicatorPosition);
        }

        private void f(int i10) {
            if (TabLayout.this.viewPagerScrollState == 0 || (TabLayout.this.getTabSelectedIndicator().getBounds().left == -1 && TabLayout.this.getTabSelectedIndicator().getBounds().right == -1)) {
                View childAt = getChildAt(i10);
                com.google.android.material.tabs.c cVar = TabLayout.this.tabIndicatorInterpolator;
                TabLayout tabLayout = TabLayout.this;
                cVar.c(tabLayout, childAt, tabLayout.tabSelectedIndicator);
                TabLayout.this.indicatorPosition = i10;
            }
        }

        public void g() {
            f(TabLayout.this.getSelectedTabPosition());
        }

        public void j(View view, View view2, float f10) {
            if (view == null || view.getWidth() <= 0) {
                Drawable drawable = TabLayout.this.tabSelectedIndicator;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.tabSelectedIndicator.getBounds().bottom);
            } else {
                com.google.android.material.tabs.c cVar = TabLayout.this.tabIndicatorInterpolator;
                TabLayout tabLayout = TabLayout.this;
                cVar.d(tabLayout, view, view2, f10, tabLayout.tabSelectedIndicator);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }

        private void k(boolean z10, int i10, int i11) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.indicatorPosition == i10) {
                return;
            }
            View childAt = getChildAt(tabLayout.getSelectedTabPosition());
            View childAt2 = getChildAt(i10);
            if (childAt2 == null) {
                g();
                return;
            }
            TabLayout.this.indicatorPosition = i10;
            a aVar = new a(childAt, childAt2);
            if (!z10) {
                this.f28994a.removeAllUpdateListeners();
                this.f28994a.addUpdateListener(aVar);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f28994a = valueAnimator;
            valueAnimator.setInterpolator(TabLayout.this.tabIndicatorTimeInterpolator);
            valueAnimator.setDuration(i11);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(aVar);
            valueAnimator.start();
        }

        void c(int i10, int i11) {
            ValueAnimator valueAnimator = this.f28994a;
            if (valueAnimator != null && valueAnimator.isRunning() && TabLayout.this.indicatorPosition != i10) {
                this.f28994a.cancel();
            }
            k(true, i10, i11);
        }

        boolean d() {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                if (getChildAt(i10).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public void draw(Canvas canvas) {
            int height;
            int iHeight = TabLayout.this.tabSelectedIndicator.getBounds().height();
            if (iHeight < 0) {
                iHeight = TabLayout.this.tabSelectedIndicator.getIntrinsicHeight();
            }
            int i10 = TabLayout.this.tabIndicatorGravity;
            if (i10 == 0) {
                height = getHeight() - iHeight;
                iHeight = getHeight();
            } else if (i10 != 1) {
                height = 0;
                if (i10 != 2) {
                    iHeight = i10 != 3 ? 0 : getHeight();
                }
            } else {
                height = (getHeight() - iHeight) / 2;
                iHeight = (getHeight() + iHeight) / 2;
            }
            if (TabLayout.this.tabSelectedIndicator.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.tabSelectedIndicator.getBounds();
                TabLayout.this.tabSelectedIndicator.setBounds(bounds.left, height, bounds.right, iHeight);
                TabLayout.this.tabSelectedIndicator.draw(canvas);
            }
            super.draw(canvas);
        }

        void h(int i10, float f10) {
            TabLayout.this.indicatorPosition = Math.round(i10 + f10);
            ValueAnimator valueAnimator = this.f28994a;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f28994a.cancel();
            }
            j(getChildAt(i10), getChildAt(i10 + 1), f10);
        }

        void i(int i10) {
            Rect bounds = TabLayout.this.tabSelectedIndicator.getBounds();
            TabLayout.this.tabSelectedIndicator.setBounds(bounds.left, 0, bounds.right, i10);
            requestLayout();
        }

        @Override
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
            ValueAnimator valueAnimator = this.f28994a;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                e();
            } else {
                k(false, TabLayout.this.getSelectedTabPosition(), -1);
            }
        }

        @Override
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (View.MeasureSpec.getMode(i10) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z10 = true;
            if (tabLayout.tabGravity == 1 || tabLayout.mode == 2) {
                int childCount = getChildCount();
                int iMax = 0;
                for (int i12 = 0; i12 < childCount; i12++) {
                    View childAt = getChildAt(i12);
                    if (childAt.getVisibility() == 0) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                if (iMax <= 0) {
                    return;
                }
                if (iMax * childCount <= getMeasuredWidth() - (((int) f0.g(getContext(), 16)) * 2)) {
                    boolean z11 = false;
                    for (int i13 = 0; i13 < childCount; i13++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i13).getLayoutParams();
                        if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                            layoutParams.width = iMax;
                            layoutParams.weight = 0.0f;
                            z11 = true;
                        }
                    }
                    z10 = z11;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.tabGravity = 0;
                    tabLayout2.updateTabViews(false);
                }
                if (z10) {
                    super.onMeasure(i10, i11);
                }
            }
        }

        @Override
        public void onRtlPropertiesChanged(int i10) {
            super.onRtlPropertiesChanged(i10);
        }
    }

    public TabLayout(@NonNull Context context) {
        this(context, null);
    }

    private void addTabFromItemView(@NonNull TabItem tabItem) {
        Tab tabNewTab = newTab();
        CharSequence charSequence = tabItem.text;
        if (charSequence != null) {
            tabNewTab.setText(charSequence);
        }
        Drawable drawable = tabItem.icon;
        if (drawable != null) {
            tabNewTab.setIcon(drawable);
        }
        int i10 = tabItem.customLayout;
        if (i10 != 0) {
            tabNewTab.setCustomView(i10);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            tabNewTab.setContentDescription(tabItem.getContentDescription());
        }
        addTab(tabNewTab);
    }

    private void addTabView(@NonNull Tab tab) {
        TabView tabView = tab.view;
        tabView.setSelected(false);
        tabView.setActivated(false);
        this.slidingTabIndicator.addView(tabView, tab.getPosition(), createLayoutParamsForTabs());
    }

    private void addViewInternal(View view) {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        addTabFromItemView((TabItem) view);
    }

    private void animateToTab(int i10) {
        if (i10 == -1) {
            return;
        }
        if (getWindowToken() == null || !ViewCompat.isLaidOut(this) || this.slidingTabIndicator.d()) {
            setScrollPosition(i10, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int iCalculateScrollXForTab = calculateScrollXForTab(i10, 0.0f);
        if (scrollX != iCalculateScrollXForTab) {
            ensureScrollAnimator();
            this.scrollAnimator.setIntValues(scrollX, iCalculateScrollXForTab);
            this.scrollAnimator.start();
        }
        this.slidingTabIndicator.c(i10, this.tabIndicatorAnimationDuration);
    }

    private void applyGravityForModeScrollable(int i10) {
        if (i10 == 0) {
            Log.w(LOG_TAG, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
        } else if (i10 == 1) {
            this.slidingTabIndicator.setGravity(1);
            return;
        } else if (i10 != 2) {
            return;
        }
        this.slidingTabIndicator.setGravity(GravityCompat.START);
    }

    private void applyModeAndGravity() {
        int i10 = this.mode;
        ViewCompat.setPaddingRelative(this.slidingTabIndicator, (i10 == 0 || i10 == 2) ? Math.max(0, this.contentInsetStart - this.tabPaddingStart) : 0, 0, 0, 0);
        int i11 = this.mode;
        if (i11 == 0) {
            applyGravityForModeScrollable(this.tabGravity);
        } else if (i11 == 1 || i11 == 2) {
            if (this.tabGravity == 2) {
                Log.w(LOG_TAG, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.slidingTabIndicator.setGravity(1);
        }
        updateTabViews(true);
    }

    private int calculateScrollXForTab(int i10, float f10) {
        View childAt;
        int i11 = this.mode;
        if ((i11 != 0 && i11 != 2) || (childAt = this.slidingTabIndicator.getChildAt(i10)) == null) {
            return 0;
        }
        int i12 = i10 + 1;
        View childAt2 = i12 < this.slidingTabIndicator.getChildCount() ? this.slidingTabIndicator.getChildAt(i12) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i13 = (int) ((width + width2) * 0.5f * f10);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i13 : left - i13;
    }

    private void configureTab(@NonNull Tab tab, int i10) {
        tab.setPosition(i10);
        this.tabs.add(i10, tab);
        int size = this.tabs.size();
        int i11 = -1;
        for (int i12 = i10 + 1; i12 < size; i12++) {
            if (this.tabs.get(i12).getPosition() == this.indicatorPosition) {
                i11 = i12;
            }
            this.tabs.get(i12).setPosition(i12);
        }
        this.indicatorPosition = i11;
    }

    @NonNull
    private static ColorStateList createColorStateList(int i10, int i11) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i11, i10});
    }

    @NonNull
    private LinearLayout.LayoutParams createLayoutParamsForTabs() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        updateTabViewLayoutParams(layoutParams);
        return layoutParams;
    }

    @NonNull
    private TabView createTabView(@NonNull Tab tab) {
        f fVar = this.tabViewPool;
        TabView tabView = fVar != null ? (TabView) fVar.acquire() : null;
        if (tabView == null) {
            tabView = new TabView(getContext());
        }
        tabView.setTab(tab);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(tab.contentDesc)) {
            tabView.setContentDescription(tab.text);
        } else {
            tabView.setContentDescription(tab.contentDesc);
        }
        return tabView;
    }

    private void dispatchTabReselected(@NonNull Tab tab) {
        for (int size = this.selectedListeners.size() - 1; size >= 0; size--) {
            this.selectedListeners.get(size).onTabReselected(tab);
        }
    }

    private void dispatchTabSelected(@NonNull Tab tab) {
        for (int size = this.selectedListeners.size() - 1; size >= 0; size--) {
            this.selectedListeners.get(size).onTabSelected(tab);
        }
    }

    private void dispatchTabUnselected(@NonNull Tab tab) {
        for (int size = this.selectedListeners.size() - 1; size >= 0; size--) {
            this.selectedListeners.get(size).onTabUnselected(tab);
        }
    }

    private void ensureScrollAnimator() {
        if (this.scrollAnimator == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.scrollAnimator = valueAnimator;
            valueAnimator.setInterpolator(this.tabIndicatorTimeInterpolator);
            this.scrollAnimator.setDuration(this.tabIndicatorAnimationDuration);
            this.scrollAnimator.addUpdateListener(new a());
        }
    }

    private int getDefaultHeight() {
        int size = this.tabs.size();
        for (int i10 = 0; i10 < size; i10++) {
            Tab tab = this.tabs.get(i10);
            if (tab != null && tab.getIcon() != null && !TextUtils.isEmpty(tab.getText())) {
                if (!this.inlineLabel) {
                    return DEFAULT_HEIGHT_WITH_TEXT_ICON;
                }
            }
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i10 = this.requestedTabMinWidth;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.mode;
        if (i11 == 0 || i11 == 2) {
            return this.scrollableTabMinWidth;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.slidingTabIndicator.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private boolean isScrollingEnabled() {
        return getTabMode() == 0 || getTabMode() == 2;
    }

    private void removeTabViewAt(int i10) {
        TabView tabView = (TabView) this.slidingTabIndicator.getChildAt(i10);
        this.slidingTabIndicator.removeViewAt(i10);
        if (tabView != null) {
            tabView.reset();
            this.tabViewPool.release(tabView);
        }
        requestLayout();
    }

    private void setSelectedTabView(int i10) {
        int childCount = this.slidingTabIndicator.getChildCount();
        if (i10 < childCount) {
            int i11 = 0;
            while (i11 < childCount) {
                View childAt = this.slidingTabIndicator.getChildAt(i11);
                if ((i11 != i10 || childAt.isSelected()) && (i11 == i10 || !childAt.isSelected())) {
                    childAt.setSelected(i11 == i10);
                    childAt.setActivated(i11 == i10);
                } else {
                    childAt.setSelected(i11 == i10);
                    childAt.setActivated(i11 == i10);
                    if (childAt instanceof TabView) {
                        ((TabView) childAt).updateTab();
                    }
                }
                i11++;
            }
        }
    }

    private void updateAllTabs() {
        int size = this.tabs.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.tabs.get(i10).updateView();
        }
    }

    private void updateTabViewLayoutParams(@NonNull LinearLayout.LayoutParams layoutParams) {
        if (this.mode == 1 && this.tabGravity == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    public void addOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        addOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void addTab(@NonNull Tab tab) {
        addTab(tab, this.tabs.isEmpty());
    }

    @Override
    public void addView(View view) {
        addViewInternal(view);
    }

    public void clearOnTabSelectedListeners() {
        this.selectedListeners.clear();
    }

    protected Tab createTabFromPool() {
        Tab tab = (Tab) tabPool.acquire();
        return tab == null ? new Tab() : tab;
    }

    public int getSelectedTabPosition() {
        Tab tab = this.selectedTab;
        if (tab != null) {
            return tab.getPosition();
        }
        return -1;
    }

    @Nullable
    public Tab getTabAt(int i10) {
        if (i10 < 0 || i10 >= getTabCount()) {
            return null;
        }
        return this.tabs.get(i10);
    }

    public int getTabCount() {
        return this.tabs.size();
    }

    public int getTabGravity() {
        return this.tabGravity;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.tabIconTint;
    }

    public int getTabIndicatorAnimationMode() {
        return this.tabIndicatorAnimationMode;
    }

    public int getTabIndicatorGravity() {
        return this.tabIndicatorGravity;
    }

    int getTabMaxWidth() {
        return this.tabMaxWidth;
    }

    public int getTabMode() {
        return this.mode;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.tabRippleColorStateList;
    }

    @NonNull
    public Drawable getTabSelectedIndicator() {
        return this.tabSelectedIndicator;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.tabTextColors;
    }

    public boolean hasUnboundedRipple() {
        return this.unboundedRipple;
    }

    public boolean isInlineLabel() {
        return this.inlineLabel;
    }

    public boolean isTabIndicatorFullWidth() {
        return this.tabIndicatorFullWidth;
    }

    @NonNull
    public Tab newTab() {
        Tab tabCreateTabFromPool = createTabFromPool();
        tabCreateTabFromPool.parent = this;
        tabCreateTabFromPool.view = createTabView(tabCreateTabFromPool);
        if (tabCreateTabFromPool.f28987id != -1) {
            tabCreateTabFromPool.view.setId(tabCreateTabFromPool.f28987id);
        }
        return tabCreateTabFromPool;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.e(this);
        if (this.viewPager == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                setupWithViewPager((ViewPager) parent, true, true);
            }
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.setupViewPagerImplicitly) {
            setupWithViewPager(null);
            this.setupViewPagerImplicitly = false;
        }
    }

    @Override
    protected void onDraw(@NonNull Canvas canvas) {
        for (int i10 = 0; i10 < this.slidingTabIndicator.getChildCount(); i10++) {
            View childAt = this.slidingTabIndicator.getChildAt(i10);
            if (childAt instanceof TabView) {
                ((TabView) childAt).drawBackground(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return isScrollingEnabled() && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    @Override
    protected void onMeasure(int i10, int i11) {
        int iRound = Math.round(f0.g(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i11);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i11 = View.MeasureSpec.makeMeasureSpec(iRound + getPaddingTop() + getPaddingBottom(), 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i11) >= iRound) {
            getChildAt(0).setMinimumHeight(iRound);
        }
        int size = View.MeasureSpec.getSize(i10);
        if (View.MeasureSpec.getMode(i10) != 0) {
            int iG = this.requestedTabMaxWidth;
            if (iG <= 0) {
                iG = (int) (size - f0.g(getContext(), 56));
            }
            this.tabMaxWidth = iG;
        }
        super.onMeasure(i10, i11);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i12 = this.mode;
            if (i12 == 0) {
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (i12 != 1) {
                if (i12 != 2) {
                    return;
                }
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
        }
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || isScrollingEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    void populateFromPagerAdapter() {
        int currentItem;
        removeAllTabs();
        PagerAdapter pagerAdapter = this.pagerAdapter;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i10 = 0; i10 < count; i10++) {
                addTab(newTab().setText(this.pagerAdapter.getPageTitle(i10)), false);
            }
            ViewPager viewPager = this.viewPager;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            selectTab(getTabAt(currentItem));
        }
    }

    protected boolean releaseFromTabPool(Tab tab) {
        return tabPool.release(tab);
    }

    public void removeAllTabs() {
        for (int childCount = this.slidingTabIndicator.getChildCount() - 1; childCount >= 0; childCount--) {
            removeTabViewAt(childCount);
        }
        Iterator<Tab> it = this.tabs.iterator();
        while (it.hasNext()) {
            Tab next = it.next();
            it.remove();
            next.reset();
            releaseFromTabPool(next);
        }
        this.selectedTab = null;
    }

    public void removeOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        removeOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void removeTab(@NonNull Tab tab) {
        if (tab.parent != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        removeTabAt(tab.getPosition());
    }

    public void removeTabAt(int i10) {
        Tab tab = this.selectedTab;
        int position = tab != null ? tab.getPosition() : 0;
        removeTabViewAt(i10);
        Tab tabRemove = this.tabs.remove(i10);
        if (tabRemove != null) {
            tabRemove.reset();
            releaseFromTabPool(tabRemove);
        }
        int size = this.tabs.size();
        int i11 = -1;
        for (int i12 = i10; i12 < size; i12++) {
            if (this.tabs.get(i12).getPosition() == this.indicatorPosition) {
                i11 = i12;
            }
            this.tabs.get(i12).setPosition(i12);
        }
        this.indicatorPosition = i11;
        if (position == i10) {
            selectTab(this.tabs.isEmpty() ? null : this.tabs.get(Math.max(0, i10 - 1)));
        }
    }

    public void selectTab(@Nullable Tab tab) {
        selectTab(tab, true);
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        j.d(this, f10);
    }

    public void setInlineLabel(boolean z10) {
        if (this.inlineLabel != z10) {
            this.inlineLabel = z10;
            for (int i10 = 0; i10 < this.slidingTabIndicator.getChildCount(); i10++) {
                View childAt = this.slidingTabIndicator.getChildAt(i10);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).updateOrientation();
                }
            }
            applyModeAndGravity();
        }
    }

    public void setInlineLabelResource(int i10) {
        setInlineLabel(getResources().getBoolean(i10));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable OnTabSelectedListener onTabSelectedListener) {
        setOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    void setPagerAdapter(@Nullable PagerAdapter pagerAdapter, boolean z10) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.pagerAdapter;
        if (pagerAdapter2 != null && (dataSetObserver = this.pagerAdapterObserver) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.pagerAdapter = pagerAdapter;
        if (z10 && pagerAdapter != null) {
            if (this.pagerAdapterObserver == null) {
                this.pagerAdapterObserver = new c();
            }
            pagerAdapter.registerDataSetObserver(this.pagerAdapterObserver);
        }
        populateFromPagerAdapter();
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        ensureScrollAnimator();
        this.scrollAnimator.addListener(animatorListener);
    }

    public void setScrollPosition(int i10, float f10, boolean z10) {
        setScrollPosition(i10, f10, z10, true);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable drawableMutate = a1.a.r(drawable).mutate();
        this.tabSelectedIndicator = drawableMutate;
        com.google.android.material.drawable.d.n(drawableMutate, this.tabSelectedIndicatorColor);
        int intrinsicHeight = this.tabIndicatorHeight;
        if (intrinsicHeight == -1) {
            intrinsicHeight = this.tabSelectedIndicator.getIntrinsicHeight();
        }
        this.slidingTabIndicator.i(intrinsicHeight);
    }

    public void setSelectedTabIndicatorColor(int i10) {
        this.tabSelectedIndicatorColor = i10;
        com.google.android.material.drawable.d.n(this.tabSelectedIndicator, i10);
        updateTabViews(false);
    }

    public void setSelectedTabIndicatorGravity(int i10) {
        if (this.tabIndicatorGravity != i10) {
            this.tabIndicatorGravity = i10;
            ViewCompat.postInvalidateOnAnimation(this.slidingTabIndicator);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i10) {
        this.tabIndicatorHeight = i10;
        this.slidingTabIndicator.i(i10);
    }

    public void setTabGravity(int i10) {
        if (this.tabGravity != i10) {
            this.tabGravity = i10;
            applyModeAndGravity();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.tabIconTint != colorStateList) {
            this.tabIconTint = colorStateList;
            updateAllTabs();
        }
    }

    public void setTabIconTintResource(int i10) {
        setTabIconTint(g.a.a(getContext(), i10));
    }

    public void setTabIndicatorAnimationMode(int i10) {
        this.tabIndicatorAnimationMode = i10;
        if (i10 == 0) {
            this.tabIndicatorInterpolator = new com.google.android.material.tabs.c();
            return;
        }
        if (i10 == 1) {
            this.tabIndicatorInterpolator = new com.google.android.material.tabs.a();
        } else {
            if (i10 == 2) {
                this.tabIndicatorInterpolator = new com.google.android.material.tabs.b();
                return;
            }
            throw new IllegalArgumentException(i10 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z10) {
        this.tabIndicatorFullWidth = z10;
        this.slidingTabIndicator.g();
        ViewCompat.postInvalidateOnAnimation(this.slidingTabIndicator);
    }

    public void setTabMode(int i10) {
        if (i10 != this.mode) {
            this.mode = i10;
            applyModeAndGravity();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.tabRippleColorStateList != colorStateList) {
            this.tabRippleColorStateList = colorStateList;
            for (int i10 = 0; i10 < this.slidingTabIndicator.getChildCount(); i10++) {
                View childAt = this.slidingTabIndicator.getChildAt(i10);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).updateBackgroundDrawable(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(int i10) {
        setTabRippleColor(g.a.a(getContext(), i10));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.tabTextColors != colorStateList) {
            this.tabTextColors = colorStateList;
            updateAllTabs();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        setPagerAdapter(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z10) {
        if (this.unboundedRipple != z10) {
            this.unboundedRipple = z10;
            for (int i10 = 0; i10 < this.slidingTabIndicator.getChildCount(); i10++) {
                View childAt = this.slidingTabIndicator.getChildAt(i10);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).updateBackgroundDrawable(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(int i10) {
        setUnboundedRipple(getResources().getBoolean(i10));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    void updateTabViews(boolean z10) {
        for (int i10 = 0; i10 < this.slidingTabIndicator.getChildCount(); i10++) {
            View childAt = this.slidingTabIndicator.getChildAt(i10);
            childAt.setMinimumWidth(getTabMinWidth());
            updateTabViewLayoutParams((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z10) {
                childAt.requestLayout();
            }
        }
    }

    void updateViewPagerScrollState(int i10) {
        this.viewPagerScrollState = i10;
    }

    public static class Tab {
        public static final int INVALID_POSITION = -1;

        @Nullable
        private CharSequence contentDesc;

        @Nullable
        private View customView;

        @Nullable
        private Drawable icon;

        @Nullable
        public TabLayout parent;

        @Nullable
        private Object tag;

        @Nullable
        private CharSequence text;

        @NonNull
        public TabView view;
        private int position = -1;

        @LabelVisibility
        private int labelVisibilityMode = 1;

        private int f28987id = -1;

        @Nullable
        public BadgeDrawable getBadge() {
            return this.view.getBadge();
        }

        @Nullable
        public CharSequence getContentDescription() {
            TabView tabView = this.view;
            if (tabView == null) {
                return null;
            }
            return tabView.getContentDescription();
        }

        @Nullable
        public View getCustomView() {
            return this.customView;
        }

        @Nullable
        public Drawable getIcon() {
            return this.icon;
        }

        public int getId() {
            return this.f28987id;
        }

        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            return this.view.getOrCreateBadge();
        }

        public int getPosition() {
            return this.position;
        }

        @LabelVisibility
        public int getTabLabelVisibility() {
            return this.labelVisibilityMode;
        }

        @Nullable
        public Object getTag() {
            return this.tag;
        }

        @Nullable
        public CharSequence getText() {
            return this.text;
        }

        public boolean isSelected() {
            TabLayout tabLayout = this.parent;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            int selectedTabPosition = tabLayout.getSelectedTabPosition();
            return selectedTabPosition != -1 && selectedTabPosition == this.position;
        }

        public void removeBadge() {
            this.view.removeBadge();
        }

        void reset() {
            this.parent = null;
            this.view = null;
            this.tag = null;
            this.icon = null;
            this.f28987id = -1;
            this.text = null;
            this.contentDesc = null;
            this.position = -1;
            this.customView = null;
        }

        public void select() {
            TabLayout tabLayout = this.parent;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.selectTab(this);
        }

        @NonNull
        public Tab setContentDescription(int i10) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setContentDescription(tabLayout.getResources().getText(i10));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public Tab setCustomView(@Nullable View view) {
            this.customView = view;
            updateView();
            return this;
        }

        @NonNull
        public Tab setIcon(@Nullable Drawable drawable) {
            this.icon = drawable;
            TabLayout tabLayout = this.parent;
            if (tabLayout.tabGravity == 1 || tabLayout.mode == 2) {
                tabLayout.updateTabViews(true);
            }
            updateView();
            if (com.google.android.material.badge.c.f27481a && this.view.hasBadgeDrawable() && this.view.badgeDrawable.isVisible()) {
                this.view.invalidate();
            }
            return this;
        }

        @NonNull
        public Tab setId(int i10) {
            this.f28987id = i10;
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.setId(i10);
            }
            return this;
        }

        void setPosition(int i10) {
            this.position = i10;
        }

        @NonNull
        public Tab setTabLabelVisibility(@LabelVisibility int i10) {
            this.labelVisibilityMode = i10;
            TabLayout tabLayout = this.parent;
            if (tabLayout.tabGravity == 1 || tabLayout.mode == 2) {
                tabLayout.updateTabViews(true);
            }
            updateView();
            if (com.google.android.material.badge.c.f27481a && this.view.hasBadgeDrawable() && this.view.badgeDrawable.isVisible()) {
                this.view.invalidate();
            }
            return this;
        }

        @NonNull
        public Tab setTag(@Nullable Object obj) {
            this.tag = obj;
            return this;
        }

        @NonNull
        public Tab setText(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.contentDesc) && !TextUtils.isEmpty(charSequence)) {
                this.view.setContentDescription(charSequence);
            }
            this.text = charSequence;
            updateView();
            return this;
        }

        void updateView() {
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.update();
            }
        }

        @NonNull
        public Tab setCustomView(int i10) {
            return setCustomView(LayoutInflater.from(this.view.getContext()).inflate(i10, (ViewGroup) this.view, false));
        }

        @NonNull
        public Tab setContentDescription(@Nullable CharSequence charSequence) {
            this.contentDesc = charSequence;
            updateView();
            return this;
        }

        @NonNull
        public Tab setText(int i10) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setText(tabLayout.getResources().getText(i10));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public Tab setIcon(int i10) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setIcon(g.a.b(tabLayout.getContext(), i10));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }
    }

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.tabStyle);
    }

    @Deprecated
    public void addOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        if (this.selectedListeners.contains(baseOnTabSelectedListener)) {
            return;
        }
        this.selectedListeners.add(baseOnTabSelectedListener);
    }

    public void addTab(@NonNull Tab tab, int i10) {
        addTab(tab, i10, this.tabs.isEmpty());
    }

    @Override
    public void addView(View view, int i10) {
        addViewInternal(view);
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void removeOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        this.selectedListeners.remove(baseOnTabSelectedListener);
    }

    public void selectTab(@Nullable Tab tab, boolean z10) {
        Tab tab2 = this.selectedTab;
        if (tab2 == tab) {
            if (tab2 != null) {
                dispatchTabReselected(tab);
                animateToTab(tab.getPosition());
                return;
            }
            return;
        }
        int position = tab != null ? tab.getPosition() : -1;
        if (z10) {
            if ((tab2 == null || tab2.getPosition() == -1) && position != -1) {
                setScrollPosition(position, 0.0f, true);
            } else {
                animateToTab(position);
            }
            if (position != -1) {
                setSelectedTabView(position);
            }
        }
        this.selectedTab = tab;
        if (tab2 != null && tab2.parent != null) {
            dispatchTabUnselected(tab2);
        }
        if (tab != null) {
            dispatchTabSelected(tab);
        }
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        BaseOnTabSelectedListener baseOnTabSelectedListener2 = this.selectedListener;
        if (baseOnTabSelectedListener2 != null) {
            removeOnTabSelectedListener(baseOnTabSelectedListener2);
        }
        this.selectedListener = baseOnTabSelectedListener;
        if (baseOnTabSelectedListener != null) {
            addOnTabSelectedListener(baseOnTabSelectedListener);
        }
    }

    public void setScrollPosition(int i10, float f10, boolean z10, boolean z11) {
        setScrollPosition(i10, f10, z10, z11, true);
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager, boolean z10) {
        setupWithViewPager(viewPager, z10, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = DEF_STYLE_RES;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.indicatorPosition = -1;
        this.tabs = new ArrayList<>();
        this.selectedTabTextAppearance = -1;
        this.tabSelectedIndicatorColor = 0;
        this.tabMaxWidth = Integer.MAX_VALUE;
        this.tabIndicatorHeight = -1;
        this.selectedListeners = new ArrayList<>();
        this.tabViewPool = new g(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        d dVar = new d(context2);
        this.slidingTabIndicator = dVar;
        super.addView(dVar, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.TabLayout, i10, i11, R$styleable.TabLayout_tabTextAppearance);
        ColorStateList colorStateListG = com.google.android.material.drawable.d.g(getBackground());
        if (colorStateListG != null) {
            i iVar = new i();
            iVar.d0(colorStateListG);
            iVar.S(context2);
            iVar.c0(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, iVar);
        }
        setSelectedTabIndicator(za.c.e(context2, typedArrayI, R$styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorColor(typedArrayI.getColor(R$styleable.TabLayout_tabIndicatorColor, 0));
        dVar.i(typedArrayI.getDimensionPixelSize(R$styleable.TabLayout_tabIndicatorHeight, -1));
        setSelectedTabIndicatorGravity(typedArrayI.getInt(R$styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorAnimationMode(typedArrayI.getInt(R$styleable.TabLayout_tabIndicatorAnimationMode, 0));
        setTabIndicatorFullWidth(typedArrayI.getBoolean(R$styleable.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = typedArrayI.getDimensionPixelSize(R$styleable.TabLayout_tabPadding, 0);
        this.tabPaddingBottom = dimensionPixelSize;
        this.tabPaddingEnd = dimensionPixelSize;
        this.tabPaddingTop = dimensionPixelSize;
        this.tabPaddingStart = dimensionPixelSize;
        this.tabPaddingStart = typedArrayI.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingStart, dimensionPixelSize);
        this.tabPaddingTop = typedArrayI.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingTop, this.tabPaddingTop);
        this.tabPaddingEnd = typedArrayI.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingEnd, this.tabPaddingEnd);
        this.tabPaddingBottom = typedArrayI.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingBottom, this.tabPaddingBottom);
        if (b0.g(context2)) {
            this.defaultTabTextAppearance = R$attr.textAppearanceTitleSmall;
        } else {
            this.defaultTabTextAppearance = R$attr.textAppearanceButton;
        }
        int resourceId = typedArrayI.getResourceId(R$styleable.TabLayout_tabTextAppearance, R$style.TextAppearance_Design_Tab);
        this.tabTextAppearance = resourceId;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, androidx.appcompat.R$styleable.TextAppearance);
        try {
            this.tabTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R$styleable.TextAppearance_android_textSize, 0);
            this.tabTextColors = za.c.a(context2, typedArrayObtainStyledAttributes, androidx.appcompat.R$styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes.recycle();
            if (typedArrayI.hasValue(R$styleable.TabLayout_tabSelectedTextAppearance)) {
                this.selectedTabTextAppearance = typedArrayI.getResourceId(R$styleable.TabLayout_tabSelectedTextAppearance, resourceId);
            }
            int i12 = this.selectedTabTextAppearance;
            if (i12 != -1) {
                TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(i12, androidx.appcompat.R$styleable.TextAppearance);
                try {
                    this.selectedTabTextSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(androidx.appcompat.R$styleable.TextAppearance_android_textSize, (int) this.tabTextSize);
                    ColorStateList colorStateListA = za.c.a(context2, typedArrayObtainStyledAttributes2, androidx.appcompat.R$styleable.TextAppearance_android_textColor);
                    if (colorStateListA != null) {
                        this.tabTextColors = createColorStateList(this.tabTextColors.getDefaultColor(), colorStateListA.getColorForState(new int[]{R.attr.state_selected}, colorStateListA.getDefaultColor()));
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                } catch (Throwable th2) {
                    typedArrayObtainStyledAttributes2.recycle();
                    throw th2;
                }
            }
            if (typedArrayI.hasValue(R$styleable.TabLayout_tabTextColor)) {
                this.tabTextColors = za.c.a(context2, typedArrayI, R$styleable.TabLayout_tabTextColor);
            }
            if (typedArrayI.hasValue(R$styleable.TabLayout_tabSelectedTextColor)) {
                this.tabTextColors = createColorStateList(this.tabTextColors.getDefaultColor(), typedArrayI.getColor(R$styleable.TabLayout_tabSelectedTextColor, 0));
            }
            this.tabIconTint = za.c.a(context2, typedArrayI, R$styleable.TabLayout_tabIconTint);
            this.tabIconTintMode = f0.r(typedArrayI.getInt(R$styleable.TabLayout_tabIconTintMode, -1), null);
            this.tabRippleColorStateList = za.c.a(context2, typedArrayI, R$styleable.TabLayout_tabRippleColor);
            this.tabIndicatorAnimationDuration = typedArrayI.getInt(R$styleable.TabLayout_tabIndicatorAnimationDuration, 300);
            this.tabIndicatorTimeInterpolator = ya.j.g(context2, R$attr.motionEasingEmphasizedInterpolator, qa.a.f69578b);
            this.requestedTabMinWidth = typedArrayI.getDimensionPixelSize(R$styleable.TabLayout_tabMinWidth, -1);
            this.requestedTabMaxWidth = typedArrayI.getDimensionPixelSize(R$styleable.TabLayout_tabMaxWidth, -1);
            this.tabBackgroundResId = typedArrayI.getResourceId(R$styleable.TabLayout_tabBackground, 0);
            this.contentInsetStart = typedArrayI.getDimensionPixelSize(R$styleable.TabLayout_tabContentStart, 0);
            this.mode = typedArrayI.getInt(R$styleable.TabLayout_tabMode, 1);
            this.tabGravity = typedArrayI.getInt(R$styleable.TabLayout_tabGravity, 0);
            this.inlineLabel = typedArrayI.getBoolean(R$styleable.TabLayout_tabInlineLabel, false);
            this.unboundedRipple = typedArrayI.getBoolean(R$styleable.TabLayout_tabUnboundedRipple, false);
            typedArrayI.recycle();
            Resources resources = getResources();
            this.tabTextMultiLineSize = resources.getDimensionPixelSize(R$dimen.design_tab_text_size_2line);
            this.scrollableTabMinWidth = resources.getDimensionPixelSize(R$dimen.design_tab_scrollable_min_width);
            applyModeAndGravity();
        } catch (Throwable th3) {
            typedArrayObtainStyledAttributes.recycle();
            throw th3;
        }
    }

    private void setupWithViewPager(@Nullable ViewPager viewPager, boolean z10, boolean z11) {
        ViewPager viewPager2 = this.viewPager;
        if (viewPager2 != null) {
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = this.pageChangeListener;
            if (tabLayoutOnPageChangeListener != null) {
                viewPager2.removeOnPageChangeListener(tabLayoutOnPageChangeListener);
            }
            b bVar = this.adapterChangeListener;
            if (bVar != null) {
                this.viewPager.removeOnAdapterChangeListener(bVar);
            }
        }
        BaseOnTabSelectedListener baseOnTabSelectedListener = this.currentVpSelectedListener;
        if (baseOnTabSelectedListener != null) {
            removeOnTabSelectedListener(baseOnTabSelectedListener);
            this.currentVpSelectedListener = null;
        }
        if (viewPager != null) {
            this.viewPager = viewPager;
            if (this.pageChangeListener == null) {
                this.pageChangeListener = new TabLayoutOnPageChangeListener(this);
            }
            this.pageChangeListener.reset();
            viewPager.addOnPageChangeListener(this.pageChangeListener);
            ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = new ViewPagerOnTabSelectedListener(viewPager);
            this.currentVpSelectedListener = viewPagerOnTabSelectedListener;
            addOnTabSelectedListener((BaseOnTabSelectedListener) viewPagerOnTabSelectedListener);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                setPagerAdapter(adapter, z10);
            }
            if (this.adapterChangeListener == null) {
                this.adapterChangeListener = new b();
            }
            this.adapterChangeListener.b(z10);
            viewPager.addOnAdapterChangeListener(this.adapterChangeListener);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.viewPager = null;
            setPagerAdapter(null, false);
        }
        this.setupViewPagerImplicitly = z11;
    }

    public void addTab(@NonNull Tab tab, boolean z10) {
        addTab(tab, this.tabs.size(), z10);
    }

    @Override
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    void setScrollPosition(int i10, float f10, boolean z10, boolean z11, boolean z12) {
        int iRound = Math.round(i10 + f10);
        if (iRound < 0 || iRound >= this.slidingTabIndicator.getChildCount()) {
            return;
        }
        if (z11) {
            this.slidingTabIndicator.h(i10, f10);
        }
        ValueAnimator valueAnimator = this.scrollAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.scrollAnimator.cancel();
        }
        int iCalculateScrollXForTab = calculateScrollXForTab(i10, f10);
        int scrollX = getScrollX();
        boolean z13 = (i10 < getSelectedTabPosition() && iCalculateScrollXForTab >= scrollX) || (i10 > getSelectedTabPosition() && iCalculateScrollXForTab <= scrollX) || i10 == getSelectedTabPosition();
        if (ViewCompat.getLayoutDirection(this) == 1) {
            z13 = (i10 < getSelectedTabPosition() && iCalculateScrollXForTab <= scrollX) || (i10 > getSelectedTabPosition() && iCalculateScrollXForTab >= scrollX) || i10 == getSelectedTabPosition();
        }
        if (z13 || this.viewPagerScrollState == 1 || z12) {
            if (i10 < 0) {
                iCalculateScrollXForTab = 0;
            }
            scrollTo(iCalculateScrollXForTab, 0);
        }
        if (z10) {
            setSelectedTabView(iRound);
        }
    }

    public void addTab(@NonNull Tab tab, int i10, boolean z10) {
        if (tab.parent == this) {
            configureTab(tab, i10);
            addTabView(tab);
            if (z10) {
                tab.select();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    public void setTabTextColors(int i10, int i11) {
        setTabTextColors(createColorStateList(i10, i11));
    }

    public void setSelectedTabIndicator(int i10) {
        if (i10 != 0) {
            setSelectedTabIndicator(g.a.b(getContext(), i10));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
