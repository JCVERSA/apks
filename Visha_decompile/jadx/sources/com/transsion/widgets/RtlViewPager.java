package com.transsion.widgets;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.util.HashMap;

public class RtlViewPager extends ViewPager {
    private static final String TAG = "RtlViewPager";
    private boolean canScroll;
    private boolean isScrollEnable;
    private int mLastUnspecifiedChildCount;
    private int mLastUnspecifiedComputedHeight;
    private int mLastUnspecifiedCurrentItem;
    private int mLastUnspecifiedWidthSpec;
    private int mLayoutDirection;
    private final HashMap<ViewPager.OnPageChangeListener, ReversingOnPageChangeListener> mPageChangeListeners;

    public class ReversingOnPageChangeListener implements ViewPager.OnPageChangeListener {
        private final ViewPager.OnPageChangeListener mListener;

        public ReversingOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
            this.mListener = onPageChangeListener;
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            this.mListener.onPageScrollStateChanged(i);
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            int width = RtlViewPager.this.getWidth();
            PagerAdapter adapter = RtlViewPager.super.getAdapter();
            if (RtlViewPager.this.isRtl() && adapter != null) {
                int count = adapter.getCount();
                float f2 = width;
                int pageWidth = ((int) ((1.0f - adapter.getPageWidth(i)) * f2)) + i2;
                while (i < count && pageWidth > 0) {
                    i++;
                    pageWidth -= (int) (adapter.getPageWidth(i) * f2);
                }
                i = (count - i) - 1;
                i2 = -pageWidth;
                f = i2 / (f2 * adapter.getPageWidth(i));
            }
            this.mListener.onPageScrolled(i, f, i2);
        }

        @Override
        public void onPageSelected(int i) {
            PagerAdapter adapter = RtlViewPager.super.getAdapter();
            if (RtlViewPager.this.isRtl() && adapter != null) {
                i = (adapter.getCount() - i) - 1;
            }
            this.mListener.onPageSelected(i);
        }
    }

    public RtlViewPager(Context context) {
        super(context);
        this.mPageChangeListeners = new HashMap<>();
        this.mLayoutDirection = 0;
        this.canScroll = true;
        this.mLastUnspecifiedWidthSpec = -1;
        this.mLastUnspecifiedChildCount = -1;
        this.mLastUnspecifiedCurrentItem = -1;
        this.mLastUnspecifiedComputedHeight = 0;
        this.isScrollEnable = true;
    }

    private int computeUnspecifiedHeight(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            childAt.measure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
            int measuredHeight = childAt.getMeasuredHeight();
            if (measuredHeight > i2) {
                i2 = measuredHeight;
            }
        }
        return i2;
    }

    private boolean hasLayoutRequestedChild() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (getChildAt(i).isLayoutRequested()) {
                return true;
            }
        }
        return false;
    }

    private void invalidateUnspecifiedHeightCache() {
        this.mLastUnspecifiedWidthSpec = -1;
        this.mLastUnspecifiedChildCount = -1;
        this.mLastUnspecifiedCurrentItem = -1;
        this.mLastUnspecifiedComputedHeight = 0;
    }

    public boolean isRtl() {
        return this.mLayoutDirection == 1;
    }

    @Override
    public void addOnPageChangeListener(@NonNull ViewPager.OnPageChangeListener onPageChangeListener) {
        ReversingOnPageChangeListener reversingOnPageChangeListener = new ReversingOnPageChangeListener(onPageChangeListener);
        this.mPageChangeListeners.put(onPageChangeListener, reversingOnPageChangeListener);
        super.addOnPageChangeListener(reversingOnPageChangeListener);
    }

    @Override
    public void clearOnPageChangeListeners() {
        super.clearOnPageChangeListeners();
        this.mPageChangeListeners.clear();
    }

    @Override
    public PagerAdapter getAdapter() {
        ReversingAdapter reversingAdapter = (ReversingAdapter) super.getAdapter();
        if (reversingAdapter == null) {
            return null;
        }
        return reversingAdapter.getDelegate();
    }

    @Override
    public int getCurrentItem() {
        int currentItem = super.getCurrentItem();
        PagerAdapter adapter = super.getAdapter();
        return (adapter == null || !isRtl()) ? currentItem : (adapter.getCount() - currentItem) - 1;
    }

    public boolean isCanScroll() {
        return this.canScroll;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.isScrollEnable) {
            try {
                if (this.canScroll) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                return false;
            } catch (Exception e) {
                Log.i(TAG, e.getMessage());
            }
        }
        return false;
    }

    @Override
    public void onMeasure(int i, int i2) {
        int i3;
        if (View.MeasureSpec.getMode(i2) == 0) {
            int childCount = getChildCount();
            int currentItem = super.getCurrentItem();
            int i4 = this.mLastUnspecifiedWidthSpec;
            if (i != i4 || childCount != this.mLastUnspecifiedChildCount || currentItem != this.mLastUnspecifiedCurrentItem || i4 == -1 || this.mLastUnspecifiedComputedHeight <= 0 || hasLayoutRequestedChild()) {
                int iComputeUnspecifiedHeight = computeUnspecifiedHeight(i);
                if (iComputeUnspecifiedHeight > 0 || childCount == 0) {
                    this.mLastUnspecifiedWidthSpec = i;
                    this.mLastUnspecifiedChildCount = childCount;
                    this.mLastUnspecifiedCurrentItem = currentItem;
                    this.mLastUnspecifiedComputedHeight = iComputeUnspecifiedHeight;
                } else {
                    invalidateUnspecifiedHeightCache();
                }
                i3 = iComputeUnspecifiedHeight;
            } else {
                i3 = this.mLastUnspecifiedComputedHeight;
            }
            i2 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mLayoutDirection = savedState.mLayoutDirection;
        super.onRestoreInstanceState(savedState.mViewPagerSavedState);
    }

    @Override
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        int i2 = i != 1 ? 0 : 1;
        if (i2 != this.mLayoutDirection) {
            PagerAdapter adapter = super.getAdapter();
            int currentItem = adapter != null ? getCurrentItem() : 0;
            this.mLayoutDirection = i2;
            if (adapter != null) {
                setCurrentItem(currentItem);
            }
        }
    }

    @Override
    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.mLayoutDirection);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.isScrollEnable) {
            try {
                if (this.canScroll) {
                    return super.onTouchEvent(motionEvent);
                }
                return false;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @Override
    public void removeOnPageChangeListener(@NonNull ViewPager.OnPageChangeListener onPageChangeListener) {
        ReversingOnPageChangeListener reversingOnPageChangeListenerRemove = this.mPageChangeListeners.remove(onPageChangeListener);
        if (reversingOnPageChangeListenerRemove != null) {
            super.removeOnPageChangeListener(reversingOnPageChangeListenerRemove);
        }
    }

    @Override
    public void setAdapter(PagerAdapter pagerAdapter) {
        invalidateUnspecifiedHeightCache();
        if (pagerAdapter != null) {
            pagerAdapter = new ReversingAdapter(pagerAdapter);
        }
        super.setAdapter(pagerAdapter);
        setCurrentItem(0);
    }

    public void setCanScroll(boolean z) {
        this.canScroll = z;
    }

    @Override
    public void setCurrentItem(int i, boolean z) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null && isRtl()) {
            i = (adapter.getCount() - i) - 1;
        }
        super.setCurrentItem(i, z);
    }

    @Override
    @Deprecated
    public void setOnPageChangeListener(@NonNull ViewPager.OnPageChangeListener onPageChangeListener) {
        super.setOnPageChangeListener(new ReversingOnPageChangeListener(onPageChangeListener));
    }

    public void setScrollEnable(boolean z) {
        this.isScrollEnable = z;
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.ClassLoaderCreator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
            @Override
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, (ClassLoader) null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        };
        private final int mLayoutDirection;
        private final Parcelable mViewPagerSavedState;

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.mViewPagerSavedState, i);
            parcel.writeInt(this.mLayoutDirection);
        }

        private SavedState(Parcelable parcelable, int i) {
            this.mViewPagerSavedState = parcelable;
            this.mLayoutDirection = i;
        }

        private SavedState(Parcel parcel, ClassLoader classLoader) {
            this.mViewPagerSavedState = parcel.readParcelable(classLoader == null ? getClass().getClassLoader() : classLoader);
            this.mLayoutDirection = parcel.readInt();
        }
    }

    public class ReversingAdapter extends DelegatingPagerAdapter {
        public ReversingAdapter(PagerAdapter pagerAdapter) {
            super(pagerAdapter);
        }

        @Override
        public void destroyItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
            if (RtlViewPager.this.isRtl()) {
                i = (getCount() - i) - 1;
            }
            super.destroyItem(viewGroup, i, obj);
        }

        @Override
        public int getItemPosition(@NonNull Object obj) {
            int itemPosition = super.getItemPosition(obj);
            if (!RtlViewPager.this.isRtl()) {
                return itemPosition;
            }
            if (itemPosition == -1 || itemPosition == -2) {
                return -2;
            }
            return (getCount() - itemPosition) - 1;
        }

        @Override
        public CharSequence getPageTitle(int i) {
            return super.getPageTitle(i);
        }

        @Override
        public float getPageWidth(int i) {
            if (RtlViewPager.this.isRtl()) {
                i = (getCount() - i) - 1;
            }
            return super.getPageWidth(i);
        }

        @Override
        @NonNull
        public Object instantiateItem(@NonNull ViewGroup viewGroup, int i) {
            if (RtlViewPager.this.isRtl()) {
                i = (getCount() - i) - 1;
            }
            return super.instantiateItem(viewGroup, i);
        }

        @Override
        public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
            if (RtlViewPager.this.isRtl()) {
                i = (getCount() - i) - 1;
            }
            super.setPrimaryItem(viewGroup, i, obj);
        }

        @Override
        @Deprecated
        public void destroyItem(@NonNull View view, int i, @NonNull Object obj) {
            if (RtlViewPager.this.isRtl()) {
                i = (getCount() - i) - 1;
            }
            super.destroyItem(view, i, obj);
        }

        @Override
        @NonNull
        @Deprecated
        public Object instantiateItem(@NonNull View view, int i) {
            if (RtlViewPager.this.isRtl()) {
                i = (getCount() - i) - 1;
            }
            return super.instantiateItem(view, i);
        }

        @Override
        @Deprecated
        public void setPrimaryItem(@NonNull View view, int i, @NonNull Object obj) {
            if (RtlViewPager.this.isRtl()) {
                i = (getCount() - i) - 1;
            }
            super.setPrimaryItem(view, i, obj);
        }
    }

    @Override
    public void setCurrentItem(int i) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null && isRtl()) {
            i = (adapter.getCount() - i) - 1;
        }
        super.setCurrentItem(i);
    }

    public RtlViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPageChangeListeners = new HashMap<>();
        this.mLayoutDirection = 0;
        this.canScroll = true;
        this.mLastUnspecifiedWidthSpec = -1;
        this.mLastUnspecifiedChildCount = -1;
        this.mLastUnspecifiedCurrentItem = -1;
        this.mLastUnspecifiedComputedHeight = 0;
        this.isScrollEnable = true;
    }
}
