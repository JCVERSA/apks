package com.transsion.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
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
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.tabs.TabItem;
import com.transsion.common.R;
import defpackage.s53;
import defpackage.uo1;
import defpackage.ydc;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@ViewPager.DecorView
public class CustomTabLayoutNew extends HorizontalScrollView {
    private static final int ANIMATION_DURATION = 300;

    @Dimension(unit = 0)
    static final int DEFAULT_GAP_TEXT_ICON = 8;

    @Dimension(unit = 0)
    private static final int DEFAULT_HEIGHT = 56;

    @Dimension(unit = 0)
    private static final int DEFAULT_HEIGHT_SECOND_PAGE = 54;

    @Dimension(unit = 0)
    private static final int DEFAULT_HEIGHT_WITH_TEXT_ICON = 72;

    @Dimension(unit = 0)
    static final int FIXED_WRAP_GUTTER_MIN = 16;
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    public static final int GRAVITY_START = 2;
    public static final int INDICATOR_GRAVITY_BOTTOM = 0;
    public static final int INDICATOR_GRAVITY_CENTER = 1;
    public static final int INDICATOR_GRAVITY_STRETCH = 3;
    public static final int INDICATOR_GRAVITY_TOP = 2;
    private static final int INVALID_WIDTH = -1;
    private static final String LOG_TAG = "TabLayout";

    @Dimension(unit = 0)
    private static final int MIN_INDICATOR_WIDTH = 24;
    public static final int MODE_AUTO = 2;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    public static final int TAB_LABEL_VISIBILITY_LABELED = 1;
    public static final int TAB_LABEL_VISIBILITY_UNLABELED = 0;

    @Dimension(unit = 0)
    private static final int TAB_MIN_WIDTH_MARGIN = 56;
    private static final Pools.Pool<Tab> tabPool = new Pools.SynchronizedPool(16);
    private final String TAG;
    private final int contentInsetStart;

    @Nullable
    private BaseOnTabSelectedListener currentVpSelectedListener;
    private int customTabDrawable;
    private int customTabHeight;
    private int customTabSelectedIconColor;
    private int customTabSelectedSize;
    private final ColorStateList customTabTextColor;
    private int customTabUnSelectedIconColor;
    private int customTabUnSelectedSize;
    boolean inlineLabel;
    private final boolean mHavePressEffect;
    private List<Integer> mIcons;
    private boolean mIsFirstLevelTab;
    private List<String> mNames;
    int mode;
    private TabLayoutOnPageChangeListener pageChangeListener;

    @Nullable
    private RecyclerView.Adapter pagerAdapter;
    private RecyclerView.AdapterDataObserver pagerAdapterObserver;
    boolean redPoint;
    private final int requestedTabMaxWidth;
    private final int requestedTabMinWidth;
    private ValueAnimator scrollAnimator;
    private final int scrollableTabMinWidth;

    @Nullable
    private BaseOnTabSelectedListener selectedListener;
    private final ArrayList<BaseOnTabSelectedListener> selectedListeners;

    @Nullable
    private Tab selectedTab;
    private boolean setupViewPagerImplicitly;
    private final boolean showBottomLine;

    @NonNull
    final SlidingTabIndicator slidingTabIndicator;
    final int tabBackgroundResId;
    int tabGravity;
    int tabIndicatorAnimationDuration;
    boolean tabIndicatorFullWidth;
    int tabIndicatorGravity;
    int tabMaxWidth;
    int tabPaddingBottom;
    int tabPaddingEnd;
    int tabPaddingStart;
    int tabPaddingTop;
    ColorStateList tabRippleColorStateList;

    @Nullable
    Drawable tabSelectedIndicator;
    ColorStateList tabTextColors;
    float tabTextMultiLineSize;
    float tabTextSize;
    private final RectF tabViewContentBounds;
    private final Pools.Pool<TabView> tabViewPool;
    private final ArrayList<Tab> tabs;
    float unSelectedTabTextSize;
    boolean unboundedRipple;

    @Nullable
    ViewPager2 viewPager;

    @Deprecated
    public interface BaseOnTabSelectedListener<T extends Tab> {
        void onTabReselected(T t);

        void onTabSelected(T t);

        void onTabUnselected(T t);
    }

    public @interface LabelVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface Mode {
    }

    public interface OnTabSelectedListener extends BaseOnTabSelectedListener<Tab> {
    }

    public class PagerAdapterObserver extends RecyclerView.AdapterDataObserver {
        public PagerAdapterObserver() {
        }

        @Override
        public void onChanged() {
            CustomTabLayoutNew.this.populateFromPagerAdapter();
        }
    }

    public class SlidingTabIndicator extends LinearLayout {
        private int animationStartLeft;
        private int animationStartRight;

        @NonNull
        private final GradientDrawable defaultSelectionIndicator;
        ValueAnimator indicatorAnimator;
        int indicatorLeft;
        int indicatorRight;
        private int layoutDirection;
        private int selectedIndicatorHeight;

        @NonNull
        private final Paint selectedIndicatorPaint;
        private int selectedIndicatorWidth;
        int selectedPosition;
        float selectionOffset;
        private int totalWidth;

        public SlidingTabIndicator(Context context) {
            super(context);
            this.selectedPosition = -1;
            this.layoutDirection = -1;
            this.indicatorLeft = -1;
            this.indicatorRight = -1;
            this.animationStartLeft = -1;
            this.animationStartRight = -1;
            this.totalWidth = 0;
            setWillNotDraw(false);
            this.selectedIndicatorPaint = new Paint();
            this.defaultSelectionIndicator = new GradientDrawable();
        }

        private void calculateTabViewContentBounds(@NonNull TabView tabView, @NonNull RectF rectF) {
            int contentWidth = tabView.getContentWidth();
            int iDpToPx = (int) ViewUtils.dpToPx(getContext(), 24);
            if (contentWidth < iDpToPx) {
                contentWidth = iDpToPx;
            }
            int left = (tabView.getLeft() + tabView.getRight()) / 2;
            int i = contentWidth / 2;
            rectF.set(left - i, 0.0f, left + i, 0.0f);
        }

        private void getTotalTabWidth() {
            int childCount = getChildCount();
            this.totalWidth = 0;
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt != null && childAt.getVisibility() == 0) {
                    this.totalWidth += childAt.getWidth();
                }
            }
        }

        private void updateIndicatorPosition() {
            int left;
            int right;
            TabView tabView = (TabView) getChildAt(this.selectedPosition);
            if (tabView == null || tabView.getWidth() <= 0) {
                left = -1;
                right = -1;
            } else {
                left = tabView.getLeft();
                right = tabView.getRight();
                tabView.setTextMaxWidth();
                CustomTabLayoutNew customTabLayoutNew = CustomTabLayoutNew.this;
                if (!customTabLayoutNew.tabIndicatorFullWidth) {
                    calculateTabViewContentBounds(tabView, customTabLayoutNew.tabViewContentBounds);
                    left = (int) CustomTabLayoutNew.this.tabViewContentBounds.left;
                    right = (int) CustomTabLayoutNew.this.tabViewContentBounds.right;
                }
                if (this.selectionOffset > 0.0f && this.selectedPosition < getChildCount() - 1) {
                    View childAt = getChildAt(this.selectedPosition + 1);
                    int left2 = childAt.getLeft();
                    int right2 = childAt.getRight();
                    CustomTabLayoutNew customTabLayoutNew2 = CustomTabLayoutNew.this;
                    if (!customTabLayoutNew2.tabIndicatorFullWidth && (childAt instanceof TabView)) {
                        calculateTabViewContentBounds((TabView) childAt, customTabLayoutNew2.tabViewContentBounds);
                        left2 = (int) CustomTabLayoutNew.this.tabViewContentBounds.left;
                        right2 = (int) CustomTabLayoutNew.this.tabViewContentBounds.right;
                    }
                    float f = this.selectionOffset;
                    left = (int) ((left2 * f) + ((1.0f - f) * left));
                    right = (int) ((right2 * f) + ((1.0f - f) * right));
                }
            }
            setIndicatorPosition(left, right);
        }

        @SuppressLint({"RestrictedApi"})
        private void updateOrRecreateIndicatorAnimation(boolean z, final int i, int i2) {
            View childAt = getChildAt(i);
            if (childAt == null) {
                updateIndicatorPosition();
                return;
            }
            final int left = childAt.getLeft();
            final int right = childAt.getRight();
            CustomTabLayoutNew customTabLayoutNew = CustomTabLayoutNew.this;
            if (!customTabLayoutNew.tabIndicatorFullWidth && (childAt instanceof TabView)) {
                calculateTabViewContentBounds((TabView) childAt, customTabLayoutNew.tabViewContentBounds);
                left = (int) CustomTabLayoutNew.this.tabViewContentBounds.left;
                right = (int) CustomTabLayoutNew.this.tabViewContentBounds.right;
            }
            int i3 = this.indicatorLeft;
            int i4 = this.indicatorRight;
            if (i3 == left && i4 == right) {
                return;
            }
            if (z) {
                this.animationStartLeft = i3;
                this.animationStartRight = i4;
            }
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() {
                @Override
                @SuppressLint({"RestrictedApi"})
                public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    SlidingTabIndicator slidingTabIndicator = SlidingTabIndicator.this;
                    slidingTabIndicator.setIndicatorPosition(AnimationUtils.lerp(slidingTabIndicator.animationStartLeft, left, animatedFraction), AnimationUtils.lerp(SlidingTabIndicator.this.animationStartRight, right, animatedFraction));
                }
            };
            if (!z) {
                this.indicatorAnimator.removeAllUpdateListeners();
                this.indicatorAnimator.addUpdateListener(animatorUpdateListener);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.indicatorAnimator = valueAnimator;
            valueAnimator.setInterpolator(new s53(0.2f, 0.0f, 0.1f, 1.0f));
            valueAnimator.setDuration(i2);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(animatorUpdateListener);
            valueAnimator.addListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animator) {
                    SlidingTabIndicator slidingTabIndicator = SlidingTabIndicator.this;
                    slidingTabIndicator.selectedPosition = i;
                    slidingTabIndicator.selectionOffset = 0.0f;
                }

                @Override
                public void onAnimationStart(Animator animator) {
                    SlidingTabIndicator.this.selectedPosition = i;
                }
            });
            valueAnimator.start();
        }

        public void animateIndicatorToPosition(int i, int i2) {
            ValueAnimator valueAnimator = this.indicatorAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.indicatorAnimator.cancel();
            }
            updateOrRecreateIndicatorAnimation(true, i, i2);
        }

        public boolean childrenNeedLayout() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public void draw(@NonNull Canvas canvas) {
            super.draw(canvas);
        }

        public float getIndicatorPosition() {
            return this.selectedPosition + this.selectionOffset;
        }

        public int getTotalTabMeasureWidth() {
            return this.totalWidth;
        }

        @Override
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.indicatorAnimator;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                updateIndicatorPosition();
            } else {
                updateOrRecreateIndicatorAnimation(false, this.selectedPosition, -1);
            }
        }

        @Override
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            getTotalTabWidth();
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            CustomTabLayoutNew customTabLayoutNew = CustomTabLayoutNew.this;
            boolean z = true;
            if (customTabLayoutNew.tabGravity == 1 || customTabLayoutNew.mode == 2) {
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
                    CustomTabLayoutNew customTabLayoutNew2 = CustomTabLayoutNew.this;
                    customTabLayoutNew2.tabGravity = 0;
                    customTabLayoutNew2.updateTabViews(false);
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

        public void setIndicatorPosition(int i, int i2) {
            if (i == this.indicatorLeft && i2 == this.indicatorRight) {
                return;
            }
            this.indicatorLeft = i;
            this.indicatorRight = i2;
            ViewCompat.postInvalidateOnAnimation(this);
        }

        public void setIndicatorPositionFromTabPosition(int i, float f) {
            ValueAnimator valueAnimator = this.indicatorAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.indicatorAnimator.cancel();
            }
            this.selectedPosition = i;
            this.selectionOffset = f;
            updateIndicatorPosition();
        }

        public void setSelectedIndicatorColor(int i) {
            if (this.selectedIndicatorPaint.getColor() != i) {
                this.selectedIndicatorPaint.setColor(i);
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        public void setSelectedIndicatorHeight(int i) {
            if (this.selectedIndicatorHeight != i) {
                this.selectedIndicatorHeight = i;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        public void setSelectedIndicatorWidth(int i) {
            if (this.selectedIndicatorWidth != i) {
                this.selectedIndicatorWidth = i;
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface TabGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface TabIndicatorGravity {
    }

    public static class TabLayoutOnPageChangeListener extends ViewPager2.OnPageChangeCallback {
        private int previousScrollState;
        private int scrollState;

        @NonNull
        private final WeakReference<CustomTabLayoutNew> tabLayoutRef;

        public TabLayoutOnPageChangeListener(CustomTabLayoutNew customTabLayoutNew) {
            this.tabLayoutRef = new WeakReference<>(customTabLayoutNew);
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            this.previousScrollState = this.scrollState;
            this.scrollState = i;
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            CustomTabLayoutNew customTabLayoutNew = this.tabLayoutRef.get();
            if (customTabLayoutNew != null) {
                int i3 = this.scrollState;
                customTabLayoutNew.setScrollPosition(i, f, i3 != 2 || this.previousScrollState == 1, (i3 == 2 && this.previousScrollState == 0) ? false : true);
            }
        }

        @Override
        public void onPageSelected(int i) {
            CustomTabLayoutNew customTabLayoutNew = this.tabLayoutRef.get();
            if (customTabLayoutNew == null || customTabLayoutNew.getSelectedTabPosition() == i || i >= customTabLayoutNew.getTabCount()) {
                return;
            }
            int i2 = this.scrollState;
            customTabLayoutNew.selectTab(customTabLayoutNew.getTabAt(i), i2 == 0 || (i2 == 2 && this.previousScrollState == 0));
        }

        public void reset() {
            this.scrollState = 0;
            this.previousScrollState = 0;
        }
    }

    public static class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {
        private final ViewPager2 viewPager;

        public ViewPagerOnTabSelectedListener(ViewPager2 viewPager2) {
            this.viewPager = viewPager2;
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

    public CustomTabLayoutNew(@NonNull Context context) {
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
        int i = tabItem.customLayout;
        if (i != 0) {
            tabNewTab.setCustomView(i);
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

    private void animateToTab(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() == null || !ViewCompat.isLaidOut(this) || this.slidingTabIndicator.childrenNeedLayout()) {
            setScrollPosition(i, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int iCalculateScrollXForTab = calculateScrollXForTab(i, 0.0f);
        int iMax = Math.max(0, this.slidingTabIndicator.getWidth() - getWidth());
        if (iCalculateScrollXForTab < 0) {
            iCalculateScrollXForTab = 0;
        } else if (iCalculateScrollXForTab > iMax) {
            iCalculateScrollXForTab = iMax;
        }
        if (scrollX != iCalculateScrollXForTab) {
            ensureScrollAnimator();
            this.scrollAnimator.setIntValues(scrollX, iCalculateScrollXForTab);
            this.scrollAnimator.start();
        }
        this.slidingTabIndicator.animateIndicatorToPosition(i, this.tabIndicatorAnimationDuration);
    }

    private void applyGravityForModeScrollable(int i) {
        if (i == 0) {
            Log.w(LOG_TAG, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
        } else if (i == 1) {
            this.slidingTabIndicator.setGravity(1);
            return;
        } else if (i != 2) {
            return;
        }
        this.slidingTabIndicator.setGravity(GravityCompat.START);
    }

    private void applyModeAndGravity() {
        int i = this.mode;
        int iMax = (i == 0 || i == 2) ? Math.max(0, this.contentInsetStart - this.tabPaddingStart) : 0;
        ViewCompat.setPaddingRelative(this.slidingTabIndicator, iMax, 0, iMax, 0);
        int i2 = this.mode;
        if (i2 == 0) {
            applyGravityForModeScrollable(this.tabGravity);
        } else if (i2 == 1 || i2 == 2) {
            if (this.tabGravity == 2) {
                Log.w(LOG_TAG, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.slidingTabIndicator.setGravity(1);
        }
        updateTabViews(true);
    }

    private int calculateScrollXForTab(int i, float f) {
        int i2 = this.mode;
        if (i2 != 0 && i2 != 2) {
            return 0;
        }
        View childAt = this.slidingTabIndicator.getChildAt(i);
        int i3 = i + 1;
        View childAt2 = i3 < this.slidingTabIndicator.getChildCount() ? this.slidingTabIndicator.getChildAt(i3) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i4 = (int) ((width + width2) * 0.5f * f);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i4 : left - i4;
    }

    private void configureTab(@NonNull Tab tab, int i) {
        tab.setPosition(i);
        this.tabs.add(i, tab);
        int size = this.tabs.size();
        while (true) {
            i++;
            if (i >= size) {
                return;
            } else {
                this.tabs.get(i).setPosition(i);
            }
        }
    }

    @NonNull
    private static ColorStateList createColorStateList(int i, int i2) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i});
    }

    @NonNull
    private LinearLayout.LayoutParams createLayoutParamsForTabs() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        updateTabViewLayoutParams(layoutParams);
        return layoutParams;
    }

    @NonNull
    private TabView createTabView(@NonNull Tab tab) {
        Pools.Pool<TabView> pool = this.tabViewPool;
        TabView tabViewAcquire = pool != null ? pool.acquire() : null;
        if (tabViewAcquire == null) {
            tabViewAcquire = new TabView(getContext());
        }
        tabViewAcquire.setTab(tab);
        tabViewAcquire.setFocusable(true);
        tabViewAcquire.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(tab.contentDesc)) {
            tabViewAcquire.setContentDescription(tab.text);
        } else {
            tabViewAcquire.setContentDescription(tab.contentDesc);
        }
        tabViewAcquire.setupInitialState();
        return tabViewAcquire;
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

    @SuppressLint({"RestrictedApi"})
    private void ensureScrollAnimator() {
        if (this.scrollAnimator == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.scrollAnimator = valueAnimator;
            valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            this.scrollAnimator.setDuration(this.tabIndicatorAnimationDuration);
            this.scrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator2) {
                    CustomTabLayoutNew.this.scrollTo(((Integer) valueAnimator2.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        int size = this.tabs.size();
        for (int i = 0; i < size; i++) {
            Tab tab = this.tabs.get(i);
            if (tab != null && tab.getIcon() != null && !TextUtils.isEmpty(tab.getText())) {
                if (this.inlineLabel) {
                    break;
                }
                return 72;
            }
        }
        return this.mIsFirstLevelTab ? 56 : 54;
    }

    private int getTabMinWidth() {
        int i = this.requestedTabMinWidth;
        if (i != -1) {
            return i;
        }
        int i2 = this.mode;
        if (i2 == 0 || i2 == 2) {
            return this.scrollableTabMinWidth;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.slidingTabIndicator.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void removeTabViewAt(int i) {
        TabView tabView = (TabView) this.slidingTabIndicator.getChildAt(i);
        this.slidingTabIndicator.removeViewAt(i);
        if (tabView != null) {
            tabView.reset();
            this.tabViewPool.release(tabView);
        }
        requestLayout();
    }

    private void setSelectedTabView(int i) {
        int childCount = this.slidingTabIndicator.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.slidingTabIndicator.getChildAt(i2);
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

    private void setTextAppearance() {
        getContext().getTheme();
        if (this.mIsFirstLevelTab) {
            this.tabTextSize = getResources().getDimensionPixelOffset(R.dimen.os_tab_second_level_title_size_new);
            this.tabTextMultiLineSize = getResources().getDimensionPixelSize(R.dimen.os_tab_first_level_title_size);
        } else {
            this.tabTextSize = getResources().getDimensionPixelOffset(R.dimen.os_tab_second_level_title_size_new);
            this.tabTextMultiLineSize = getResources().getDimensionPixelSize(R.dimen.os_tab_first_level_title_size);
        }
    }

    private void updateAllTabs() {
        int size = this.tabs.size();
        for (int i = 0; i < size; i++) {
            this.tabs.get(i).updateView();
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

    public Tab createTabFromPool() {
        Tab tabAcquire = tabPool.acquire();
        return tabAcquire == null ? new Tab() : tabAcquire;
    }

    @Override
    public float getLeftFadingEdgeStrength() {
        return 0.0f;
    }

    public int getSelectedTabPosition() {
        Tab tab = this.selectedTab;
        if (tab != null) {
            return tab.getPosition();
        }
        return -1;
    }

    @Nullable
    public Tab getTabAt(int i) {
        if (i < 0 || i >= getTabCount()) {
            return null;
        }
        return this.tabs.get(i);
    }

    public int getTabCount() {
        return this.tabs.size();
    }

    public int getTabGravity() {
        return this.tabGravity;
    }

    public int getTabIndicatorGravity() {
        return this.tabIndicatorGravity;
    }

    public int getTabMaxWidth() {
        return this.tabMaxWidth;
    }

    public int getTabMode() {
        return this.mode;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.tabTextColors;
    }

    public boolean hasUnboundedRipple() {
        return this.unboundedRipple;
    }

    public void isFirstLevelTab(boolean z) {
        this.mIsFirstLevelTab = z;
        setTextAppearance();
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
        return tabCreateTabFromPool;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
        if (this.viewPager == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager2) {
                setupWithViewPager((ViewPager2) parent, true, true);
            }
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.setupViewPagerImplicitly) {
            setupWithViewPager(null);
            this.setupViewPagerImplicitly = false;
        }
    }

    @Override
    public void onDraw(@NonNull Canvas canvas) {
        for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++) {
            View childAt = this.slidingTabIndicator.getChildAt(i);
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

    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    @Override
    @SuppressLint({"RestrictedApi"})
    public void onMeasure(int i, int i2) {
        int iRound = Math.round(ViewUtils.dpToPx(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i2 = View.MeasureSpec.makeMeasureSpec(iRound + getPaddingTop() + getPaddingBottom(), 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i2) >= iRound) {
            getChildAt(0).setMinimumHeight(iRound);
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            int iDpToPx = this.requestedTabMaxWidth;
            if (iDpToPx <= 0) {
                iDpToPx = (int) (size - ViewUtils.dpToPx(getContext(), 56));
            }
            this.tabMaxWidth = iDpToPx;
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i3 = this.mode;
            if (i3 == 0) {
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (i3 != 1) {
                if (i3 != 2) {
                    return;
                }
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
        }
    }

    public void populateFromPagerAdapter() {
        int currentItem;
        removeAllTabs();
        RecyclerView.Adapter adapter = this.pagerAdapter;
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                Tab tabNewTab = newTab();
                if (!this.mNames.isEmpty() && i < this.mNames.size()) {
                    tabNewTab.setText(this.mNames.get(i));
                }
                if (!this.mIcons.isEmpty() && i < this.mIcons.size()) {
                    tabNewTab.setIcon(this.mIcons.get(i).intValue());
                }
                tabNewTab.setPosition(i);
                addTab(tabNewTab, false);
            }
            ViewPager2 viewPager2 = this.viewPager;
            if (viewPager2 == null || itemCount <= 0 || (currentItem = viewPager2.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            selectTab(getTabAt(currentItem));
        }
    }

    public boolean releaseFromTabPool(Tab tab) {
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

    public void removeTabAt(int i) {
        Tab tab = this.selectedTab;
        int position = tab != null ? tab.getPosition() : 0;
        removeTabViewAt(i);
        Tab tabRemove = this.tabs.remove(i);
        if (tabRemove != null) {
            tabRemove.reset();
            releaseFromTabPool(tabRemove);
        }
        int size = this.tabs.size();
        for (int i2 = i; i2 < size; i2++) {
            this.tabs.get(i2).setPosition(i2);
        }
        if (position == i) {
            selectTab(this.tabs.isEmpty() ? null : this.tabs.get(Math.max(0, i - 1)));
        }
    }

    public void selectTab(@Nullable Tab tab) {
        selectTab(tab, true);
    }

    public void setCustomTabDrawable(int i) {
        this.customTabDrawable = i;
    }

    public void setCustomTabSelectedIconColor(int i) {
        this.customTabSelectedIconColor = ContextCompat.getColor(getContext(), i);
    }

    public void setCustomTabUnSelectedIconColor(int i) {
        this.customTabUnSelectedIconColor = ContextCompat.getColor(getContext(), i);
    }

    @Override
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    public void setIcons(List<Integer> list) {
        this.mIcons = list;
    }

    public void setInlineLabel(boolean z) {
        if (this.inlineLabel != z) {
            this.inlineLabel = z;
            for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++) {
                View childAt = this.slidingTabIndicator.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).updateOrientation();
                }
            }
            applyModeAndGravity();
        }
    }

    public void setInlineLabelResource(@BoolRes int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    public void setNames(List<String> list) {
        this.mNames = list;
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable OnTabSelectedListener onTabSelectedListener) {
        setOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void setPageChangeListener(TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener) {
        this.pageChangeListener = tabLayoutOnPageChangeListener;
    }

    public void setPagerAdapter(@Nullable RecyclerView.Adapter adapter, boolean z) {
        RecyclerView.AdapterDataObserver adapterDataObserver;
        RecyclerView.Adapter adapter2 = this.pagerAdapter;
        if (adapter2 != null && (adapterDataObserver = this.pagerAdapterObserver) != null) {
            adapter2.unregisterAdapterDataObserver(adapterDataObserver);
        }
        this.pagerAdapter = adapter;
        if (z && adapter != null) {
            if (this.pagerAdapterObserver == null) {
                this.pagerAdapterObserver = new PagerAdapterObserver();
            }
            adapter.registerAdapterDataObserver(this.pagerAdapterObserver);
        }
        populateFromPagerAdapter();
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        ensureScrollAnimator();
        this.scrollAnimator.addListener(animatorListener);
    }

    public void setScrollPosition(int i, float f, boolean z) {
        setScrollPosition(i, f, z, true);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (this.tabSelectedIndicator != drawable) {
            this.tabSelectedIndicator = drawable;
            ViewCompat.postInvalidateOnAnimation(this.slidingTabIndicator);
        }
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i) {
        this.slidingTabIndicator.setSelectedIndicatorColor(i);
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.tabIndicatorGravity != i) {
            this.tabIndicatorGravity = i;
            ViewCompat.postInvalidateOnAnimation(this.slidingTabIndicator);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.slidingTabIndicator.setSelectedIndicatorHeight(i);
    }

    public void setTabChildEnable(boolean z) {
        for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++) {
            TabView tabView = (TabView) this.slidingTabIndicator.getChildAt(i);
            tabView.setEnabled(z);
            float f = 0.4f;
            tabView.setAlpha(z ? 1.0f : 0.4f);
            SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
            if (z) {
                f = 1.0f;
            }
            slidingTabIndicator.setAlpha(f);
        }
    }

    public void setTabGravity(int i) {
        if (this.tabGravity != i) {
            this.tabGravity = i;
            applyModeAndGravity();
        }
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.tabIndicatorFullWidth = z;
        ViewCompat.postInvalidateOnAnimation(this.slidingTabIndicator);
    }

    public void setTabMode(int i) {
        if (i != this.mode) {
            this.mode = i;
            applyModeAndGravity();
        }
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.tabTextColors != colorStateList) {
            this.tabTextColors = colorStateList;
            updateAllTabs();
        }
    }

    public void setTabTextSize(int i) {
        float f = i;
        this.tabTextSize = f;
        this.tabTextMultiLineSize = f;
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable RecyclerView.Adapter adapter) {
        setPagerAdapter(adapter, false);
    }

    public void setUnselectedTabTextSize(int i) {
        this.unSelectedTabTextSize = i;
    }

    public void setupWithViewPager(@Nullable ViewPager2 viewPager2) {
        setupWithViewPager(viewPager2, true);
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    public void showBadgeView(int i, boolean z) {
        if (i >= this.tabs.size()) {
            i = this.tabs.size() - 1;
        }
        ((TabView) this.slidingTabIndicator.getChildAt(i)).setShowBadgeView(z);
    }

    public void updateBadgeView(int i, int i2) {
        if (i >= this.tabs.size()) {
            i = this.tabs.size() - 1;
        }
        TabView tabView = (TabView) this.slidingTabIndicator.getChildAt(i);
        tabView.setShowBadgeView(true);
        tabView.setBadgeViewNum(i2);
    }

    public void updateTabViews(boolean z) {
        for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++) {
            View childAt = this.slidingTabIndicator.getChildAt(i);
            childAt.setMinimumWidth(getTabMinWidth());
            updateTabViewLayoutParams((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
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
        public CustomTabLayoutNew parent;
        public boolean showBadgeView;

        @Nullable
        private Object tag;

        @Nullable
        private CharSequence text;

        @NonNull
        public TabView view;
        private int position = -1;

        @LabelVisibility
        private int labelVisibilityMode = 1;

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
            CustomTabLayoutNew customTabLayoutNew = this.parent;
            if (customTabLayoutNew != null) {
                return customTabLayoutNew.getSelectedTabPosition() == this.position;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public void removeBadge() {
            this.view.removeBadge();
        }

        public void reset() {
            this.parent = null;
            this.view = null;
            this.tag = null;
            this.icon = null;
            this.text = null;
            this.contentDesc = null;
            this.position = -1;
            this.customView = null;
        }

        public void select() {
            CustomTabLayoutNew customTabLayoutNew = this.parent;
            if (customTabLayoutNew == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            customTabLayoutNew.selectTab(this);
        }

        @NonNull
        public Tab setContentDescription(@StringRes int i) {
            CustomTabLayoutNew customTabLayoutNew = this.parent;
            if (customTabLayoutNew != null) {
                return setContentDescription(customTabLayoutNew.getResources().getText(i));
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
            CustomTabLayoutNew customTabLayoutNew = this.parent;
            if (customTabLayoutNew.tabGravity == 1 || customTabLayoutNew.mode == 2) {
                customTabLayoutNew.updateTabViews(true);
            }
            updateView();
            if (BadgeUtils.USE_COMPAT_PARENT && this.view.hasBadgeDrawable() && this.view.badgeDrawable.isVisible()) {
                this.view.invalidate();
            }
            return this;
        }

        public void setPosition(int i) {
            this.position = i;
        }

        @NonNull
        public Tab setTabLabelVisibility(@LabelVisibility int i) {
            this.labelVisibilityMode = i;
            CustomTabLayoutNew customTabLayoutNew = this.parent;
            if (customTabLayoutNew.tabGravity == 1 || customTabLayoutNew.mode == 2) {
                customTabLayoutNew.updateTabViews(true);
            }
            updateView();
            if (BadgeUtils.USE_COMPAT_PARENT && this.view.hasBadgeDrawable() && this.view.badgeDrawable.isVisible()) {
                this.view.invalidate();
            }
            return this;
        }

        public void setTabShowBadgeView(boolean z) {
            this.showBadgeView = z;
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.setShowBadgeView(z);
            }
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

        public void updateView() {
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.update();
            }
        }

        @NonNull
        public Tab setCustomView(@LayoutRes int i) {
            return setCustomView(LayoutInflater.from(this.view.getContext()).inflate(i, (ViewGroup) this.view, false));
        }

        @NonNull
        public Tab setContentDescription(@Nullable CharSequence charSequence) {
            this.contentDesc = charSequence;
            updateView();
            return this;
        }

        @NonNull
        public Tab setText(@StringRes int i) {
            CustomTabLayoutNew customTabLayoutNew = this.parent;
            if (customTabLayoutNew != null) {
                return setText(customTabLayoutNew.getResources().getText(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public Tab setIcon(@DrawableRes int i) {
            CustomTabLayoutNew customTabLayoutNew = this.parent;
            if (customTabLayoutNew != null) {
                return setIcon(customTabLayoutNew.getResources().getDrawable(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }
    }

    public CustomTabLayoutNew(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public void addOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        if (this.selectedListeners.contains(baseOnTabSelectedListener)) {
            return;
        }
        this.selectedListeners.add(baseOnTabSelectedListener);
    }

    public void addTab(@NonNull Tab tab, int i) {
        addTab(tab, i, this.tabs.isEmpty());
    }

    @Override
    public void addView(View view, int i) {
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

    public void selectTab(@Nullable Tab tab, boolean z) {
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
        if (z) {
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
        if (tab2 != null) {
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

    public void setScrollPosition(int i, float f, boolean z, boolean z2) {
        int iRound = Math.round(i + f);
        if (iRound < 0 || iRound >= this.slidingTabIndicator.getChildCount()) {
            return;
        }
        if (z2) {
            this.slidingTabIndicator.setIndicatorPositionFromTabPosition(i, f);
        }
        ValueAnimator valueAnimator = this.scrollAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.scrollAnimator.cancel();
        }
        int iCalculateScrollXForTab = calculateScrollXForTab(i, f);
        int iMax = Math.max(0, this.slidingTabIndicator.getWidth() - getWidth());
        if (iCalculateScrollXForTab < 0) {
            iCalculateScrollXForTab = 0;
        } else if (iCalculateScrollXForTab > iMax) {
            iCalculateScrollXForTab = iMax;
        }
        scrollTo(iCalculateScrollXForTab, 0);
        if (z) {
            setSelectedTabView(iRound);
        }
    }

    public void setupWithViewPager(@Nullable ViewPager2 viewPager2, boolean z) {
        setupWithViewPager(viewPager2, z, false);
    }

    @SuppressLint({"RestrictedApi"})
    public CustomTabLayoutNew(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = "CustomTabLayout";
        this.mNames = new ArrayList();
        this.mIcons = new ArrayList();
        this.mHavePressEffect = true;
        this.tabs = new ArrayList<>();
        this.tabViewContentBounds = new RectF();
        this.tabMaxWidth = Integer.MAX_VALUE;
        this.selectedListeners = new ArrayList<>();
        this.tabViewPool = new Pools.SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        SlidingTabIndicator slidingTabIndicator = new SlidingTabIndicator(context2);
        this.slidingTabIndicator = slidingTabIndicator;
        super.addView(slidingTabIndicator, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.CustomTabLayout, i, R.style.customTablayout);
        slidingTabIndicator.setSelectedIndicatorWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CustomTabLayout_customTabIndicatorWidth, -1));
        slidingTabIndicator.setSelectedIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CustomTabLayout_customTabIndicatorHeight, -1));
        slidingTabIndicator.setSelectedIndicatorColor(typedArrayObtainStyledAttributes.getColor(R.styleable.CustomTabLayout_customTabIndicatorColor, 0));
        setSelectedTabIndicator(MaterialResources.getDrawable(context2, typedArrayObtainStyledAttributes, R.styleable.CustomTabLayout_customTabIndicator));
        setSelectedTabIndicatorGravity(typedArrayObtainStyledAttributes.getInt(R.styleable.CustomTabLayout_customTabIndicatorGravity, 0));
        setTabIndicatorFullWidth(typedArrayObtainStyledAttributes.getBoolean(R.styleable.CustomTabLayout_customTabIndicatorFullWidth, true));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
        this.tabPaddingBottom = dimensionPixelSize;
        this.tabPaddingTop = dimensionPixelSize;
        this.tabPaddingEnd = dimensionPixelSize;
        this.tabPaddingStart = dimensionPixelSize;
        this.tabPaddingStart = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CustomTabLayout_customTabPaddingStart, dimensionPixelSize);
        this.tabPaddingTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CustomTabLayout_customTabPaddingTop, this.tabPaddingTop);
        this.tabPaddingEnd = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CustomTabLayout_customTabPaddingEnd, this.tabPaddingEnd);
        this.tabPaddingBottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CustomTabLayout_customTabPaddingBottom, this.tabPaddingBottom);
        this.tabRippleColorStateList = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.CustomTabLayout_customTabRippleColor);
        this.tabIndicatorAnimationDuration = 300;
        this.requestedTabMinWidth = -1;
        this.requestedTabMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CustomTabLayout_customTabMaxWidth, -1);
        this.tabBackgroundResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CustomTabLayout_customTabBackground, 0);
        this.contentInsetStart = 0;
        this.mode = typedArrayObtainStyledAttributes.getInt(R.styleable.CustomTabLayout_customTabMode, 1);
        this.tabGravity = typedArrayObtainStyledAttributes.getInt(R.styleable.CustomTabLayout_customTabGravity, 0);
        this.inlineLabel = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CustomTabLayout_customTabInlineLabel, false);
        this.redPoint = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CustomTabLayout_showBadgeViewRedPoint, false);
        this.unboundedRipple = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CustomTabLayout_customTabUnboundedRipple, false);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CustomTabLayout_showBgBottomLine, false);
        this.showBottomLine = z;
        this.customTabTextColor = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.CustomTabLayout_customTabTextColor);
        this.customTabSelectedIconColor = typedArrayObtainStyledAttributes.getColor(R.styleable.CustomTabLayout_customTabSelectedIconColor, 0);
        this.customTabUnSelectedIconColor = typedArrayObtainStyledAttributes.getColor(R.styleable.CustomTabLayout_customTabUnSelectedIconColor, 0);
        this.customTabDrawable = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CustomTabLayout_customTabSelectedBackgroundDrawable, R.drawable.bg_tab);
        this.customTabSelectedSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CustomTabLayout_customTabSelectedSize, com.transsion.utils.a.d(context2, 16.0f));
        this.customTabUnSelectedSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CustomTabLayout_customTabUnSelectedSize, com.transsion.utils.a.d(context2, 16.0f));
        this.customTabHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CustomTabLayout_customTabHeight, com.transsion.utils.a.d(context2, 30.0f));
        typedArrayObtainStyledAttributes.recycle();
        this.tabTextSize = getResources().getDimensionPixelOffset(R.dimen.os_tab_second_level_title_size_new);
        this.scrollableTabMinWidth = getResources().getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
        if (z) {
            setBackgroundResource(R.drawable.tablayout_divider_bg);
        }
        applyModeAndGravity();
    }

    private void setupWithViewPager(@Nullable ViewPager2 viewPager2, boolean z, boolean z2) {
        TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener;
        ViewPager2 viewPager3 = this.viewPager;
        if (viewPager3 != null && (tabLayoutOnPageChangeListener = this.pageChangeListener) != null) {
            viewPager3.unregisterOnPageChangeCallback(tabLayoutOnPageChangeListener);
        }
        BaseOnTabSelectedListener baseOnTabSelectedListener = this.currentVpSelectedListener;
        if (baseOnTabSelectedListener != null) {
            removeOnTabSelectedListener(baseOnTabSelectedListener);
            this.currentVpSelectedListener = null;
        }
        if (viewPager2 != null) {
            this.viewPager = viewPager2;
            if (this.pageChangeListener == null) {
                this.pageChangeListener = new TabLayoutOnPageChangeListener(this);
            }
            this.pageChangeListener.reset();
            viewPager2.registerOnPageChangeCallback(this.pageChangeListener);
            ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = new ViewPagerOnTabSelectedListener(viewPager2);
            this.currentVpSelectedListener = viewPagerOnTabSelectedListener;
            addOnTabSelectedListener((BaseOnTabSelectedListener) viewPagerOnTabSelectedListener);
            RecyclerView.Adapter adapter = viewPager2.getAdapter();
            if (adapter != null) {
                setPagerAdapter(adapter, z);
            }
            setScrollPosition(viewPager2.getCurrentItem(), 0.0f, true);
        } else {
            this.viewPager = null;
            setPagerAdapter(null, false);
        }
        this.setupViewPagerImplicitly = z2;
    }

    public void addTab(@NonNull Tab tab, boolean z) {
        addTab(tab, this.tabs.size(), z);
    }

    @Override
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    public final class TabView extends ConstraintLayout {
        private static final int EXPAND_ANIMATION_DURATION = 350;

        @Nullable
        private View badgeAnchorView;

        @Nullable
        private BadgeDrawable badgeDrawable;
        private BadgeView badgeView;

        @Nullable
        private Drawable baseBackgroundDrawable;

        @Nullable
        private ImageView customIconView;
        private ViewGroup customTabItem;

        @Nullable
        private TextView customTextView;

        @Nullable
        private View customView;
        private int defaultMaxLines;
        private ValueAnimator expandAnimator;
        private ImageView iconView;
        private boolean isInitialized;
        private int mCollapsedWidth;
        private int mExpandedWidth;
        private int mTextMaxWidth;
        private boolean showBadgeView;
        private Tab tab;
        private TextView textView;

        public TabView(Context context) {
            super(context);
            this.defaultMaxLines = 1;
            this.isInitialized = false;
            updateBackgroundDrawable(context);
            ViewCompat.setPaddingRelative(this, CustomTabLayoutNew.this.tabPaddingStart, CustomTabLayoutNew.this.tabPaddingTop, CustomTabLayoutNew.this.tabPaddingEnd, CustomTabLayoutNew.this.tabPaddingBottom);
            setClickable(true);
            init(context);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        private void addOnLayoutChangeListener(@Nullable final View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
                @Override
                public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    if (view.getVisibility() == 0) {
                        TabView.this.tryUpdateBadgeDrawableBounds(view);
                    }
                    if (view.getId() == R.id.custom_tab_item_title) {
                        TabView.this.setTextMaxWidth();
                    }
                }
            });
        }

        @SuppressLint({"RestrictedApi"})
        private void animateTabWidth(boolean z) {
            ValueAnimator valueAnimator = this.expandAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.expandAnimator.cancel();
                this.expandAnimator = null;
            }
            TextView textView = this.textView;
            if (textView != null) {
                textView.animate().cancel();
            }
            if (!this.isInitialized) {
                measureTabWidths();
            }
            if (this.mExpandedWidth <= 0 || this.mCollapsedWidth <= 0 || getLayoutParams() == null) {
                return;
            }
            int width = getWidth();
            final int i = z ? this.mExpandedWidth : this.mCollapsedWidth;
            if (width == i) {
                return;
            }
            updateTextVisibility(z, true);
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(width, i);
            this.expandAnimator = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(350L);
            this.expandAnimator.setInterpolator(new s53(0.2f, 0.0f, 0.1f, 1.0f));
            this.expandAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    int iIntValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    ViewGroup.LayoutParams layoutParams = TabView.this.getLayoutParams();
                    if (layoutParams != null) {
                        layoutParams.width = iIntValue;
                        TabView.this.requestLayout();
                    }
                }
            });
            this.expandAnimator.addListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animator) {
                    ViewGroup.LayoutParams layoutParams = TabView.this.getLayoutParams();
                    if (layoutParams != null) {
                        layoutParams.width = i;
                        TabView.this.requestLayout();
                    }
                }
            });
            this.expandAnimator.start();
        }

        private void applyStableTextDirection(@Nullable TextView textView) {
            if (textView == null || textView.getTextDirection() == 1) {
                return;
            }
            textView.setTextDirection(1);
        }

        private float approximateLineWidth(@NonNull Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }

        private boolean checkRaw(int i) {
            return i < CustomTabLayoutNew.this.mIcons.size() && i > -1 && getContext() != null;
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

        public int getContentWidth() {
            View[] viewArr = {this.textView, this.iconView, this.customView};
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

        @Nullable
        @SuppressLint({"UnsafeOptInUsageError"})
        private FrameLayout getCustomParentForBadge(@NonNull View view) {
            if ((view == this.iconView || view == this.textView) && BadgeUtils.USE_COMPAT_PARENT) {
                return (FrameLayout) view.getParent();
            }
            return null;
        }

        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            if (this.badgeDrawable == null) {
                this.badgeDrawable = BadgeDrawable.create(getContext());
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
            if (BadgeUtils.USE_COMPAT_PARENT) {
                FrameLayout frameLayoutCreatePreApi18BadgeAnchorRoot = createPreApi18BadgeAnchorRoot();
                addView(frameLayoutCreatePreApi18BadgeAnchorRoot, 0);
                viewGroup = frameLayoutCreatePreApi18BadgeAnchorRoot;
            } else {
                viewGroup = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, viewGroup, false);
            this.iconView = imageView;
            viewGroup.addView(imageView, 0);
            viewGroup.setBackgroundResource(R.drawable.os_press_primary_bg);
        }

        private void inflateAndAddDefaultTextView() {
            ViewGroup viewGroup;
            if (BadgeUtils.USE_COMPAT_PARENT) {
                FrameLayout frameLayoutCreatePreApi18BadgeAnchorRoot = createPreApi18BadgeAnchorRoot();
                addView(frameLayoutCreatePreApi18BadgeAnchorRoot);
                viewGroup = frameLayoutCreatePreApi18BadgeAnchorRoot;
            } else {
                viewGroup = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.custom_tab_textview, viewGroup, false);
            this.textView = textView;
            viewGroup.addView(textView);
            applyStableTextDirection(this.textView);
            viewGroup.setBackgroundResource(R.drawable.os_press_primary_bg);
        }

        private void init(Context context) {
            View viewInflate = View.inflate(context, CustomTabLayoutNew.this.redPoint ? R.layout.custom_tab_view_point_new : R.layout.custom_tab_view_new, this);
            this.textView = (TextView) viewInflate.findViewById(R.id.custom_tab_item_title);
            this.iconView = (ImageView) viewInflate.findViewById(R.id.custom_tab_item_icon);
            this.badgeView = (BadgeView) viewInflate.findViewById(R.id.custom_tab_badgeview);
            this.customTabItem = (ViewGroup) viewInflate.findViewById(R.id.custom_tab_item);
            applyStableTextDirection(this.textView);
            ViewGroup.LayoutParams layoutParams = this.customTabItem.getLayoutParams();
            layoutParams.height = CustomTabLayoutNew.this.customTabHeight;
            this.customTabItem.setLayoutParams(layoutParams);
            this.customTabItem.setBackgroundResource(CustomTabLayoutNew.this.customTabDrawable);
            if (CustomTabLayoutNew.this.customTabTextColor != null) {
                this.textView.setTextColor(CustomTabLayoutNew.this.customTabTextColor);
            }
            post(new Runnable() {
                @Override
                public final void run() {
                    this.b.setTextMaxWidth();
                }
            });
        }

        private void measureTabWidths() {
            if (!isLaidOut() || getWidth() <= 0) {
                return;
            }
            TextView textView = this.textView;
            int i = 8;
            if (textView != null) {
                int visibility = textView.getVisibility();
                this.textView.setVisibility(8);
                i = visibility;
            }
            measure(0, 0);
            int measuredWidth = getMeasuredWidth();
            this.mCollapsedWidth = measuredWidth;
            TextView textView2 = this.textView;
            if (textView2 != null) {
                textView2.setVisibility(0);
                this.textView.setAlpha(1.0f);
                measure(0, 0);
                this.mExpandedWidth = getMeasuredWidth();
                this.textView.setVisibility(i);
            } else {
                this.mExpandedWidth = measuredWidth;
            }
            this.isInitialized = true;
        }

        public void removeBadge() {
            if (this.badgeAnchorView != null) {
                tryRemoveBadgeFromAnchor();
            }
            this.badgeDrawable = null;
        }

        private void tryAttachBadgeToAnchor(@Nullable View view) {
            if (hasBadgeDrawable() && view != null) {
                setClipChildren(false);
                setClipToPadding(false);
                BadgeUtils.attachBadgeDrawable(this.badgeDrawable, view, getCustomParentForBadge(view));
                this.badgeAnchorView = view;
            }
        }

        @SuppressLint({"UnsafeOptInUsageError"})
        private void tryRemoveBadgeFromAnchor() {
            if (hasBadgeDrawable() && this.badgeAnchorView != null) {
                setClipChildren(true);
                setClipToPadding(true);
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
                BadgeUtils.setBadgeDrawableBounds(this.badgeDrawable, view, getCustomParentForBadge(view));
            }
        }

        private void updateBackgroundDrawable(Context context) {
            GradientDrawable gradientDrawable;
            if (CustomTabLayoutNew.this.tabBackgroundResId != 0) {
                Drawable drawable = getResources().getDrawable(CustomTabLayoutNew.this.tabBackgroundResId);
                this.baseBackgroundDrawable = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.baseBackgroundDrawable.setState(getDrawableState());
                }
            } else {
                this.baseBackgroundDrawable = null;
            }
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(0);
            Drawable rippleDrawable = gradientDrawable2;
            if (CustomTabLayoutNew.this.tabRippleColorStateList != null) {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setCornerRadius(126.0f);
                gradientDrawable3.setColor(-1);
                ColorStateList colorStateList = CustomTabLayoutNew.this.tabRippleColorStateList;
                boolean z = CustomTabLayoutNew.this.unboundedRipple;
                if (z) {
                    gradientDrawable = gradientDrawable2;
                    gradientDrawable = null;
                }
                rippleDrawable = new RippleDrawable(colorStateList, gradientDrawable, z ? null : gradientDrawable3);
            }
            ViewCompat.setBackground(this, rippleDrawable);
            CustomTabLayoutNew.this.invalidate();
        }

        private void updateIconDrawableColor(boolean z, Drawable drawable) {
            if (z && CustomTabLayoutNew.this.customTabSelectedIconColor != 0) {
                drawable.setColorFilter(new PorterDuffColorFilter(CustomTabLayoutNew.this.customTabSelectedIconColor, PorterDuff.Mode.SRC_IN));
            } else if (CustomTabLayoutNew.this.customTabUnSelectedIconColor != 0) {
                drawable.setColorFilter(new PorterDuffColorFilter(CustomTabLayoutNew.this.customTabUnSelectedIconColor, PorterDuff.Mode.SRC_IN));
            }
        }

        private void updateIconSize(boolean z) {
            ImageView imageView = this.iconView;
            if (imageView == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if (z) {
                layoutParams.width = CustomTabLayoutNew.this.customTabSelectedSize;
                layoutParams.height = CustomTabLayoutNew.this.customTabSelectedSize;
            } else {
                layoutParams.width = CustomTabLayoutNew.this.customTabUnSelectedSize;
                layoutParams.height = CustomTabLayoutNew.this.customTabUnSelectedSize;
            }
            this.iconView.setLayoutParams(layoutParams);
        }

        private void updateTextAndIcon(@Nullable TextView textView, @Nullable ImageView imageView) {
            if (textView != null) {
                textView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                textView.getLayoutParams().width = textView.getMeasuredWidth();
                textView.requestLayout();
            }
            Tab tab = this.tab;
            Drawable drawableMutate = (tab == null || tab.getIcon() == null) ? null : DrawableCompat.wrap(this.tab.getIcon()).mutate();
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
            if (textView != null && (imageView == null || imageView.getVisibility() != 0)) {
                if (zIsEmpty) {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                } else {
                    textView.setText(text);
                    if (this.tab.labelVisibilityMode == 1) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                    setVisibility(0);
                }
            }
            Tab tab3 = this.tab;
            CharSequence charSequence = tab3 != null ? tab3.contentDesc : null;
            try {
                if (zIsEmpty) {
                    setTooltipText(charSequence);
                } else {
                    setTooltipText(null);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @SuppressLint({"RestrictedApi"})
        private void updateTextVisibility(boolean z, boolean z2) {
            final TextView textView;
            TextView textView2 = this.textView;
            if (textView2 != null) {
                if (!z2) {
                    textView2.setVisibility(z ? 0 : 8);
                    this.textView.setAlpha(z ? 1.0f : 0.0f);
                    return;
                } else {
                    if (!z) {
                        textView2.animate().alpha(0.0f).setDuration(250L).setInterpolator(new s53(0.2f, 0.0f, 0.1f, 1.0f)).withEndAction(new Runnable() {
                            @Override
                            public void run() {
                                TabView.this.textView.setVisibility(8);
                                TabView.this.textView.setAlpha(1.0f);
                            }
                        }).start();
                        return;
                    }
                    textView2.setVisibility(0);
                    this.textView.setAlpha(0.0f);
                    this.textView.animate().alpha(1.0f).setDuration(250L).setInterpolator(new s53(0.2f, 0.0f, 0.1f, 1.0f)).start();
                    return;
                }
            }
            View view = this.customView;
            if (view == null || (textView = (TextView) view.findViewById(android.R.id.text1)) == null) {
                return;
            }
            if (!z2) {
                textView.setVisibility(z ? 0 : 8);
                textView.setAlpha(z ? 1.0f : 0.0f);
            } else {
                if (!z) {
                    textView.animate().alpha(0.0f).setDuration(175L).setInterpolator(new s53(0.2f, 0.0f, 0.1f, 1.0f)).withEndAction(new Runnable() {
                        @Override
                        public void run() {
                            textView.setVisibility(8);
                            textView.setAlpha(1.0f);
                        }
                    }).start();
                    return;
                }
                textView.setVisibility(0);
                textView.setAlpha(0.0f);
                textView.animate().alpha(1.0f).setDuration(350L).setInterpolator(new s53(0.2f, 0.0f, 0.1f, 1.0f)).start();
            }
        }

        @Override
        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.baseBackgroundDrawable;
            if ((drawable == null || !drawable.isStateful()) ? false : this.baseBackgroundDrawable.setState(drawableState)) {
                invalidate();
                CustomTabLayoutNew.this.invalidate();
            }
        }

        @Nullable
        public Tab getTab() {
            return this.tab;
        }

        public boolean isDarkMode() {
            return (getResources().getConfiguration().uiMode & 48) == 32;
        }

        @Override
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.isInitialized) {
                return;
            }
            post(new uo1(this));
        }

        @Override
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            ValueAnimator valueAnimator = this.expandAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.expandAnimator.cancel();
                this.expandAnimator = null;
            }
            TextView textView = this.textView;
            if (textView != null) {
                textView.animate().cancel();
            }
        }

        @Override
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.badgeDrawable;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                accessibilityNodeInfo.setContentDescription(((Object) getContentDescription()) + ", " + ((Object) this.badgeDrawable.getContentDescription()));
            }
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.tab.getPosition(), 1, false, isSelected()));
            if (isSelected()) {
                accessibilityNodeInfoCompatWrap.setClickable(false);
                accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            accessibilityNodeInfoCompatWrap.setRoleDescription("Tab");
        }

        @Override
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.isInitialized || getWidth() <= 0) {
                return;
            }
            measureTabWidths();
        }

        @Override
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            int tabMaxWidth = CustomTabLayoutNew.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(CustomTabLayoutNew.this.tabMaxWidth, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.textView != null) {
                float f = CustomTabLayoutNew.this.tabTextSize;
                int i3 = this.defaultMaxLines;
                ImageView imageView = this.iconView;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.textView;
                    if (textView != null && textView.getLineCount() > 1) {
                        f = CustomTabLayoutNew.this.tabTextMultiLineSize;
                    }
                } else {
                    i3 = 1;
                }
                float textSize = this.textView.getTextSize();
                this.textView.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.textView);
                if (f != textSize || (maxLines >= 0 && i3 != maxLines)) {
                    this.textView.setMaxLines(i3);
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            applyStableTextDirection(this.textView);
            applyStableTextDirection(this.customTextView);
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

        public void reset() {
            setTab(null);
            setSelected(false);
        }

        public void setBadgeViewNum(int i) {
            BadgeView badgeView = this.badgeView;
            if (badgeView != null) {
                badgeView.setNum(i);
                this.badgeView.requestLayout();
            }
        }

        @Override
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && this.isInitialized && isAttachedToWindow() && getWidth() > 0) {
                animateTabWidth(z);
            } else {
                updateTextVisibility(z, false);
            }
        }

        public void setShowBadgeView(boolean z) {
            if (ydc.e()) {
                z = false;
            }
            this.showBadgeView = z;
            BadgeView badgeView = this.badgeView;
            if (badgeView != null) {
                badgeView.setVisibility(8);
            }
        }

        public void setTab(@Nullable Tab tab) {
            if (tab != this.tab) {
                this.tab = tab;
                update();
            }
        }

        public void setTextMaxWidth() {
            int width;
            if (!this.showBadgeView || this.textView == null || this.badgeView == null || getWidth() <= 0 || this.mTextMaxWidth == (width = (getWidth() - (this.badgeView.getWidth() * 2)) - 16)) {
                return;
            }
            this.mTextMaxWidth = width;
            Log.d("CustomTabLayout", "setTextMaxWidth " + width + StringUtils.COMMA + getWidth());
            this.textView.setMaxWidth(width);
            invalidate();
        }

        public void setupInitialState() {
            if (!isAttachedToWindow() || getWidth() <= 0) {
                if (isAttachedToWindow()) {
                    postDelayed(new uo1(this), 50L);
                }
            } else {
                measureTabWidths();
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.width = isSelected() ? this.mExpandedWidth : this.mCollapsedWidth;
                    requestLayout();
                }
                updateTextVisibility(isSelected(), false);
            }
        }

        public final void update() {
            Tab tab = this.tab;
            View customView = tab != null ? tab.getCustomView() : null;
            if (customView != null) {
                ViewParent parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(customView);
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
                TextView textView2 = (TextView) customView.findViewById(android.R.id.text1);
                this.customTextView = textView2;
                if (textView2 != null) {
                    this.defaultMaxLines = TextViewCompat.getMaxLines(textView2);
                    applyStableTextDirection(this.customTextView);
                }
                this.customIconView = (ImageView) customView.findViewById(android.R.id.icon);
            } else {
                View view = this.customView;
                if (view != null) {
                    removeView(view);
                    this.customView = null;
                }
                this.customTextView = null;
                this.customIconView = null;
            }
            if (this.customView == null) {
                if (tab != null && tab.getIcon() != null) {
                    DrawableCompat.wrap(tab.getIcon()).mutate();
                }
                TextView textView3 = this.textView;
                ColorStateList colorStateList = CustomTabLayoutNew.this.tabTextColors;
                if (colorStateList != null) {
                    textView3.setTextColor(colorStateList);
                }
                applyStableTextDirection(this.textView);
                updateTextAndIcon(this.textView, this.iconView);
                tryUpdateBadgeAnchor();
                addOnLayoutChangeListener(this.iconView);
                addOnLayoutChangeListener(this.textView);
            } else {
                TextView textView4 = this.customTextView;
                if (textView4 != null || this.customIconView != null) {
                    updateTextAndIcon(textView4, this.customIconView);
                }
            }
            if (tab != null && !TextUtils.isEmpty(tab.contentDesc)) {
                setContentDescription(tab.contentDesc);
            }
            setSelected(tab != null && tab.isSelected());
        }

        public final void updateOrientation() {
            TextView textView = this.customTextView;
            if (textView == null && this.customIconView == null) {
                updateTextAndIcon(this.textView, this.iconView);
            } else {
                updateTextAndIcon(textView, this.customIconView);
            }
        }

        public void setShowBadgeView(boolean z, int i) {
            if (ydc.e()) {
                z = false;
            }
            this.showBadgeView = z;
            BadgeView badgeView = this.badgeView;
            if (badgeView != null) {
                badgeView.setVisibility(8);
                this.badgeView.setRedPointType(i);
            }
        }
    }

    public void addTab(@NonNull Tab tab, int i, boolean z) {
        if (tab.parent == this) {
            configureTab(tab, i);
            addTabView(tab);
            if (z) {
                tab.select();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    @Override
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    public void setSelectedTabIndicator(@DrawableRes int i) {
        if (i != 0) {
            setSelectedTabIndicator(getResources().getDrawable(i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(createColorStateList(i, i2));
    }

    public void showBadgeView(int i, boolean z, int i2) {
        if (i >= this.tabs.size()) {
            i = this.tabs.size() - 1;
        }
        ((TabView) this.slidingTabIndicator.getChildAt(i)).setShowBadgeView(z, i2);
    }
}
