package com.transsion.widgets;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class CustomFastScroller extends RecyclerView.ItemDecoration implements RecyclerView.OnItemTouchListener {
    private static final int ANIMATION_STATE_FADING_IN = 1;
    private static final int ANIMATION_STATE_FADING_OUT = 3;
    private static final int ANIMATION_STATE_IN = 2;
    private static final int ANIMATION_STATE_OUT = 0;
    private static final int DRAG_NONE = 0;
    private static final int DRAG_X = 1;
    private static final int DRAG_Y = 2;
    private static final int HIDE_DELAY_AFTER_DRAGGING_MS = 1200;
    private static final int HIDE_DELAY_AFTER_VISIBLE_MS = 1500;
    private static final int HIDE_DURATION_MS = 500;
    private static final int SCROLLBAR_FULL_OPAQUE = 204;
    private static final int SHOW_DURATION_MS = 500;
    private static final int STATE_DRAGGING = 2;
    private static final int STATE_HIDDEN = 0;
    private static final int STATE_VISIBLE = 1;
    int mAnimationState;
    private final Runnable mHideRunnable;

    @VisibleForTesting
    float mHorizontalDragX;

    @VisibleForTesting
    int mHorizontalThumbCenterX;
    private final StateListDrawable mHorizontalThumbDrawable;
    private final int mHorizontalThumbHeight;

    @VisibleForTesting
    int mHorizontalThumbWidth;
    private final Drawable mHorizontalTrackDrawable;
    private final int mHorizontalTrackHeight;
    private boolean mIsAppBarExpand;
    private final int mMargin;
    private MarkListener mMarkListener;
    private final RecyclerView.OnScrollListener mOnScrollListener;
    private RecyclerView mRecyclerView;
    private final int mScrollbarMinimumRange;
    final ValueAnimator mShowHideAnimator;
    private String mType;

    @VisibleForTesting
    float mVerticalDragY;

    @VisibleForTesting
    int mVerticalThumbCenterY;
    final StateListDrawable mVerticalThumbDrawable;

    @VisibleForTesting
    int mVerticalThumbHeight;
    private final int mVerticalThumbWidth;
    final Drawable mVerticalTrackDrawable;
    private final int mVerticalTrackWidth;
    private static final int[] PRESSED_STATE_SET = {R.attr.state_pressed};
    private static final int[] EMPTY_STATE_SET = new int[0];
    private int mRecyclerViewWidth = 0;
    private int mRecyclerViewHeight = 0;
    private boolean mNeedVerticalScrollbar = false;
    private boolean mNeedHorizontalScrollbar = false;
    private int mState = 0;
    private int mDragState = 0;
    private final int[] mVerticalRange = new int[2];
    private final int[] mHorizontalRange = new int[2];

    @Retention(RetentionPolicy.SOURCE)
    public @interface AnimationState {
    }

    public class AnimatorListener extends AnimatorListenerAdapter {
        private boolean mCanceled = false;

        public AnimatorListener() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.mCanceled = true;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (this.mCanceled) {
                this.mCanceled = false;
                return;
            }
            if (((Float) CustomFastScroller.this.mShowHideAnimator.getAnimatedValue()).floatValue() == 0.0f) {
                CustomFastScroller customFastScroller = CustomFastScroller.this;
                customFastScroller.mAnimationState = 0;
                customFastScroller.setState(0);
            } else {
                if (CustomFastScroller.this.mMarkListener != null) {
                    CustomFastScroller.this.mMarkListener.markShow();
                }
                CustomFastScroller customFastScroller2 = CustomFastScroller.this;
                customFastScroller2.mAnimationState = 2;
                customFastScroller2.requestRedraw();
            }
        }
    }

    public class AnimatorUpdater implements ValueAnimator.AnimatorUpdateListener {
        public AnimatorUpdater() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 204.0f);
            CustomFastScroller.this.mVerticalThumbDrawable.setAlpha(iFloatValue);
            CustomFastScroller.this.mVerticalTrackDrawable.setAlpha(iFloatValue);
            CustomFastScroller.this.requestRedraw();
        }
    }

    public static class Builder {
        StateListDrawable mHorizontalThumbDrawable;
        int mHorizontalThumbHeight;
        Drawable mHorizontalTrackDrawable;
        int mHorizontalTrackHeight;
        int mMargin;
        RecyclerView mRecyclerView;
        int mScrollbarMinimumRange;
        StateListDrawable mVerticalThumbDrawable;
        int mVerticalThumbHeight;
        int mVerticalThumbWidth;
        Drawable mVerticalTrackDrawable;
        int mVerticalTrackWidth;

        public CustomFastScroller build() {
            return new CustomFastScroller(this.mRecyclerView, this.mVerticalThumbDrawable, this.mVerticalTrackDrawable, this.mHorizontalThumbDrawable, this.mHorizontalTrackDrawable, this.mVerticalThumbWidth, this.mVerticalTrackWidth, this.mScrollbarMinimumRange, this.mMargin, this.mVerticalThumbHeight);
        }

        public Builder setHorizontalThumbDrawable(StateListDrawable stateListDrawable) {
            this.mHorizontalThumbDrawable = stateListDrawable;
            return this;
        }

        public Builder setHorizontalThumbHeight(int i) {
            this.mHorizontalThumbHeight = i;
            return this;
        }

        public Builder setHorizontalTrackDrawable(Drawable drawable) {
            this.mHorizontalTrackDrawable = drawable;
            return this;
        }

        public Builder setHorizontalTrackHeight(int i) {
            this.mHorizontalTrackHeight = i;
            return this;
        }

        public Builder setMargin(int i) {
            this.mMargin = i;
            return this;
        }

        public Builder setRecyclerView(RecyclerView recyclerView) {
            this.mRecyclerView = recyclerView;
            return this;
        }

        public Builder setScrollbarMinimumRange(int i) {
            this.mScrollbarMinimumRange = i;
            return this;
        }

        public Builder setVerticalThumbDrawable(StateListDrawable stateListDrawable) {
            this.mVerticalThumbDrawable = stateListDrawable;
            return this;
        }

        public Builder setVerticalThumbHeight(int i) {
            this.mVerticalThumbHeight = i;
            return this;
        }

        public Builder setVerticalThumbWidth(int i) {
            this.mVerticalThumbWidth = i;
            return this;
        }

        public Builder setVerticalTrackDrawable(Drawable drawable) {
            this.mVerticalTrackDrawable = drawable;
            return this;
        }

        public Builder setVerticalTrackWidth(int i) {
            this.mVerticalTrackWidth = i;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DragState {
    }

    public interface MarkListener {
        void markClick();

        void markShow();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    public CustomFastScroller(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3, int i4, int i5) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mShowHideAnimator = valueAnimatorOfFloat;
        this.mAnimationState = 0;
        this.mHideRunnable = new Runnable() {
            @Override
            public void run() {
                CustomFastScroller.this.hide(500);
            }
        };
        this.mIsAppBarExpand = false;
        this.mOnScrollListener = new RecyclerView.OnScrollListener() {
            @Override
            public void onScrolled(RecyclerView recyclerView2, int i6, int i7) {
                if (!CustomFastScroller.this.mIsAppBarExpand) {
                    CustomFastScroller.this.updateScrollPosition(recyclerView2.computeHorizontalScrollOffset(), recyclerView2.computeVerticalScrollOffset());
                    return;
                }
                CustomFastScroller.this.mShowHideAnimator.cancel();
                CustomFastScroller.this.mVerticalThumbDrawable.setAlpha(0);
                CustomFastScroller.this.mVerticalTrackDrawable.setAlpha(0);
                CustomFastScroller.this.cancelHide();
                CustomFastScroller customFastScroller = CustomFastScroller.this;
                customFastScroller.mAnimationState = 0;
                customFastScroller.setState(0);
            }
        };
        this.mVerticalThumbDrawable = stateListDrawable;
        this.mVerticalTrackDrawable = drawable;
        this.mHorizontalThumbDrawable = stateListDrawable2;
        this.mHorizontalTrackDrawable = drawable2;
        if (stateListDrawable != null) {
            this.mVerticalThumbWidth = Math.max(i, stateListDrawable.getIntrinsicWidth());
        } else {
            this.mVerticalThumbWidth = 0;
        }
        if (drawable != null) {
            this.mVerticalTrackWidth = Math.max(i2, drawable.getIntrinsicWidth());
        } else {
            this.mVerticalTrackWidth = 0;
        }
        if (stateListDrawable2 != null) {
            this.mHorizontalThumbHeight = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        } else {
            this.mHorizontalThumbHeight = 0;
        }
        if (drawable2 != null) {
            this.mHorizontalTrackHeight = Math.max(i2, drawable2.getIntrinsicWidth());
        } else {
            this.mHorizontalTrackHeight = 0;
        }
        this.mVerticalThumbHeight = i5;
        this.mScrollbarMinimumRange = i3;
        this.mMargin = i4;
        stateListDrawable.setAlpha(204);
        drawable.setAlpha(204);
        valueAnimatorOfFloat.addListener(new AnimatorListener());
        valueAnimatorOfFloat.addUpdateListener(new AnimatorUpdater());
        attachToRecyclerView(recyclerView);
    }

    public void cancelHide() {
        this.mRecyclerView.removeCallbacks(this.mHideRunnable);
    }

    private void destroyCallbacks() {
        this.mRecyclerView.removeItemDecoration(this);
        this.mRecyclerView.removeOnItemTouchListener(this);
        this.mRecyclerView.removeOnScrollListener(this.mOnScrollListener);
        cancelHide();
    }

    private void drawHorizontalScrollbar(Canvas canvas) {
        int i = this.mRecyclerViewHeight;
        int i2 = this.mHorizontalThumbHeight;
        int i3 = i - i2;
        int i4 = this.mHorizontalThumbCenterX;
        int i5 = this.mHorizontalThumbWidth;
        int i6 = i4 - (i5 / 2);
        this.mHorizontalThumbDrawable.setBounds(0, 0, i5, i2);
        this.mHorizontalTrackDrawable.setBounds(0, 0, this.mRecyclerViewWidth, this.mHorizontalTrackHeight);
        canvas.translate(0.0f, i3);
        this.mHorizontalTrackDrawable.draw(canvas);
        canvas.translate(i6, 0.0f);
        this.mHorizontalThumbDrawable.draw(canvas);
        canvas.translate(-i6, -i3);
    }

    private void drawVerticalScrollbar(Canvas canvas) {
        int i = this.mRecyclerViewWidth - (this.mVerticalTrackWidth / 2);
        int i2 = this.mVerticalThumbWidth;
        int i3 = i - (i2 / 2);
        int i4 = this.mVerticalThumbCenterY;
        int i5 = this.mVerticalThumbHeight;
        int i6 = i4 - (i5 / 2);
        this.mVerticalThumbDrawable.setBounds(0, 0, i2, i5);
        this.mVerticalTrackDrawable.setBounds(0, 0, this.mVerticalTrackWidth, this.mRecyclerViewHeight);
        if (!isLayoutRTL()) {
            canvas.translate(i3, 0.0f);
            this.mVerticalTrackDrawable.draw(canvas);
            canvas.translate(0.0f, i6);
            this.mVerticalThumbDrawable.draw(canvas);
            canvas.translate(-i3, -i6);
            return;
        }
        this.mVerticalTrackDrawable.draw(canvas);
        canvas.translate(this.mVerticalThumbWidth, i6);
        canvas.scale(-1.0f, 1.0f);
        this.mVerticalThumbDrawable.draw(canvas);
        canvas.scale(1.0f, 1.0f);
        canvas.translate(-this.mVerticalThumbWidth, -i6);
    }

    private int[] getHorizontalRange() {
        int[] iArr = this.mHorizontalRange;
        int i = this.mMargin;
        iArr[0] = i;
        iArr[1] = this.mRecyclerViewWidth - i;
        return iArr;
    }

    private int[] getVerticalRange() {
        int[] iArr = this.mVerticalRange;
        int i = this.mMargin;
        iArr[0] = i;
        iArr[1] = this.mRecyclerViewHeight - i;
        return iArr;
    }

    private void horizontalScrollTo(float f) {
        int[] horizontalRange = getHorizontalRange();
        float fMax = Math.max(horizontalRange[0], Math.min(horizontalRange[1], f));
        if (Math.abs(this.mHorizontalThumbCenterX - fMax) < 2.0f) {
            return;
        }
        int iScrollTo = scrollTo(this.mHorizontalDragX, fMax, horizontalRange, this.mRecyclerView.computeHorizontalScrollRange(), this.mRecyclerView.computeHorizontalScrollOffset(), this.mRecyclerViewWidth);
        if (iScrollTo != 0) {
            this.mRecyclerView.scrollBy(iScrollTo, 0);
        }
        this.mHorizontalDragX = fMax;
    }

    private boolean isLayoutRTL() {
        return ViewCompat.getLayoutDirection(this.mRecyclerView) == 1;
    }

    private void resetHideDelay(int i) {
        cancelHide();
        this.mRecyclerView.postDelayed(this.mHideRunnable, i);
    }

    private int scrollTo(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        int i5 = (i - i3) + 300;
        int iMax = Math.max(0, Math.min(i5, ((int) ((((double) (f2 - f)) / ((double) (i4 - this.mVerticalThumbHeight))) * ((double) i5))) + i2));
        int i6 = iMax - i2;
        if (iMax > i5 || iMax < 0) {
            return 0;
        }
        return i6;
    }

    private void setupCallbacks() {
        this.mRecyclerView.addItemDecoration(this);
        this.mRecyclerView.addOnItemTouchListener(this);
        this.mRecyclerView.addOnScrollListener(this.mOnScrollListener);
    }

    private void verticalScrollTo(float f) {
        int[] verticalRange = getVerticalRange();
        float fMax = Math.max(verticalRange[0], Math.min(verticalRange[1], f));
        if (Math.abs(this.mVerticalThumbCenterY - fMax) < 2.0f) {
            return;
        }
        int iScrollTo = scrollTo(this.mVerticalDragY, fMax, verticalRange, this.mRecyclerView.computeVerticalScrollRange() - getRvPaddingBottom(), this.mRecyclerView.computeVerticalScrollOffset(), this.mRecyclerViewHeight);
        if (iScrollTo != 0) {
            this.mRecyclerView.scrollBy(0, iScrollTo);
        }
        this.mVerticalDragY = fMax;
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            destroyCallbacks();
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            setupCallbacks();
        }
    }

    @VisibleForTesting
    public Drawable getHorizontalThumbDrawable() {
        return this.mHorizontalThumbDrawable;
    }

    @VisibleForTesting
    public Drawable getHorizontalTrackDrawable() {
        return this.mHorizontalTrackDrawable;
    }

    public int getRvPaddingBottom() {
        if (this.mRecyclerView.getClipToPadding()) {
            return 0;
        }
        return this.mRecyclerView.getPaddingBottom() + 50;
    }

    @VisibleForTesting
    public Drawable getVerticalThumbDrawable() {
        return this.mVerticalThumbDrawable;
    }

    @VisibleForTesting
    public Drawable getVerticalTrackDrawable() {
        return this.mVerticalTrackDrawable;
    }

    @VisibleForTesting
    public void hide(int i) {
        int i2 = this.mAnimationState;
        if (i2 == 1) {
            this.mShowHideAnimator.cancel();
        } else if (i2 != 2) {
            return;
        }
        this.mAnimationState = 3;
        ValueAnimator valueAnimator = this.mShowHideAnimator;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.mShowHideAnimator.setDuration(i);
        this.mShowHideAnimator.start();
    }

    public boolean isDragging() {
        return this.mState == 2;
    }

    @VisibleForTesting
    public boolean isPointInsideHorizontalThumb(float f, float f2) {
        if (f2 >= this.mRecyclerViewHeight - this.mHorizontalThumbHeight) {
            int i = this.mHorizontalThumbCenterX;
            int i2 = this.mHorizontalThumbWidth;
            if (f >= i - (i2 / 2) && f <= i + (i2 / 2)) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    public boolean isPointInsideVerticalThumb(float f, float f2) {
        if (!isLayoutRTL() ? f >= this.mRecyclerViewWidth - this.mVerticalTrackWidth : f <= this.mVerticalTrackWidth) {
            int i = this.mVerticalThumbCenterY;
            int i2 = this.mVerticalThumbHeight;
            if (f2 >= i - (i2 / 2) && f2 <= i + (i2 / 2)) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    public boolean isVisible() {
        return this.mState == 1;
    }

    @Override
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.mRecyclerViewWidth != this.mRecyclerView.getWidth() || this.mRecyclerViewHeight != this.mRecyclerView.getHeight() - getRvPaddingBottom()) {
            this.mRecyclerViewWidth = this.mRecyclerView.getWidth();
            this.mRecyclerViewHeight = this.mRecyclerView.getHeight() - getRvPaddingBottom();
            setState(0);
        } else if (this.mAnimationState != 0) {
            if (this.mNeedVerticalScrollbar) {
                drawVerticalScrollbar(canvas);
            }
            if (this.mNeedHorizontalScrollbar) {
                drawHorizontalScrollbar(canvas);
            }
        }
    }

    @Override
    public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        int i = this.mState;
        if (i == 1) {
            boolean zIsPointInsideVerticalThumb = isPointInsideVerticalThumb(motionEvent.getX(), motionEvent.getY());
            boolean zIsPointInsideHorizontalThumb = isPointInsideHorizontalThumb(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!zIsPointInsideVerticalThumb && !zIsPointInsideHorizontalThumb) {
                return false;
            }
            if (zIsPointInsideHorizontalThumb) {
                this.mDragState = 1;
                this.mHorizontalDragX = (int) motionEvent.getX();
            } else if (zIsPointInsideVerticalThumb) {
                this.mDragState = 2;
                this.mVerticalDragY = (int) motionEvent.getY();
            }
            setState(2);
        } else if (i != 2) {
            return false;
        }
        return true;
    }

    @Override
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override
    public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        if (this.mState == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zIsPointInsideVerticalThumb = isPointInsideVerticalThumb(motionEvent.getX(), motionEvent.getY());
            boolean zIsPointInsideHorizontalThumb = isPointInsideHorizontalThumb(motionEvent.getX(), motionEvent.getY());
            if (zIsPointInsideVerticalThumb || zIsPointInsideHorizontalThumb) {
                if (zIsPointInsideHorizontalThumb) {
                    this.mDragState = 1;
                    this.mHorizontalDragX = (int) motionEvent.getX();
                } else if (zIsPointInsideVerticalThumb) {
                    this.mDragState = 2;
                    this.mVerticalDragY = (int) motionEvent.getY();
                }
                setState(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.mState == 2) {
            this.mVerticalDragY = 0.0f;
            this.mHorizontalDragX = 0.0f;
            setState(1);
            this.mDragState = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.mState == 2) {
            show();
            if (this.mDragState == 1) {
                horizontalScrollTo(motionEvent.getX());
            }
            if (this.mDragState == 2) {
                verticalScrollTo(motionEvent.getY());
            }
        }
    }

    public void requestRedraw() {
        this.mRecyclerView.invalidate();
    }

    public void setAppBarExpand(boolean z) {
        this.mIsAppBarExpand = z;
    }

    public void setMarkListener(MarkListener markListener) {
        this.mMarkListener = markListener;
    }

    public void setState(int i) {
        if (i == 2 && this.mState != 2) {
            this.mVerticalThumbDrawable.setState(PRESSED_STATE_SET);
            MarkListener markListener = this.mMarkListener;
            if (markListener != null) {
                markListener.markClick();
            }
            cancelHide();
        }
        if (i == 0) {
            requestRedraw();
        } else {
            show();
        }
        if (this.mState == 2 && i != 2) {
            this.mVerticalThumbDrawable.setState(EMPTY_STATE_SET);
            resetHideDelay(HIDE_DELAY_AFTER_DRAGGING_MS);
            requestRedraw();
        } else if (i == 1) {
            resetHideDelay(1500);
        }
        this.mState = i;
    }

    public void show() {
        int i = this.mAnimationState;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                this.mShowHideAnimator.cancel();
            }
        }
        this.mAnimationState = 1;
        ValueAnimator valueAnimator = this.mShowHideAnimator;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.mShowHideAnimator.setDuration(500L);
        this.mShowHideAnimator.setStartDelay(0L);
        this.mShowHideAnimator.start();
    }

    public void updateScrollPosition(int i, int i2) {
        int iComputeVerticalScrollRange = this.mRecyclerView.computeVerticalScrollRange() - getRvPaddingBottom();
        int i3 = this.mRecyclerViewHeight;
        this.mNeedVerticalScrollbar = iComputeVerticalScrollRange - (i3 * 2) > 0 && i3 >= this.mScrollbarMinimumRange;
        int iComputeHorizontalScrollRange = this.mRecyclerView.computeHorizontalScrollRange();
        int i4 = this.mRecyclerViewWidth;
        boolean z = iComputeHorizontalScrollRange - i4 > 0 && i4 >= this.mScrollbarMinimumRange;
        this.mNeedHorizontalScrollbar = z;
        boolean z2 = this.mNeedVerticalScrollbar;
        if (!z2 && !z) {
            if (this.mState != 0) {
                setState(0);
                return;
            }
            return;
        }
        if (z2) {
            if (this.mVerticalThumbHeight == 0) {
                this.mVerticalThumbHeight = Math.min(i3, (i3 * i3) / iComputeVerticalScrollRange);
            }
            int i5 = this.mVerticalThumbHeight;
            this.mVerticalThumbCenterY = ((i2 * ((i3 - i5) - (this.mMargin * 2))) / (iComputeVerticalScrollRange - i3)) + (i5 / 2);
        }
        if (this.mNeedHorizontalScrollbar) {
            float f = i4;
            this.mHorizontalThumbCenterX = (int) ((f * (i + (f / 2.0f))) / iComputeHorizontalScrollRange);
            this.mHorizontalThumbWidth = Math.min(i4, (i4 * i4) / iComputeHorizontalScrollRange);
        }
        int i6 = this.mState;
        if (i6 == 0 || i6 == 1) {
            setState(1);
        }
    }
}
