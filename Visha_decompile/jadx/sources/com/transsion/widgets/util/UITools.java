package com.transsion.widgets.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.HorizontalScrollView;
import com.transsion.utils.a;
import com.transsion.widgets.CustomTabLayoutNew;

public class UITools {
    public static int mOldLeft;
    public static int mOldRight;

    public static void elasticPadding(final Context context, final HorizontalScrollView horizontalScrollView, final int i) {
        View childAt = horizontalScrollView.getChildAt(0);
        if (childAt == null) {
            return;
        }
        final int paddingLeft = childAt.getPaddingLeft();
        final int paddingRight = childAt.getPaddingRight();
        mOldLeft = paddingLeft;
        mOldRight = paddingRight;
        horizontalScrollView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            private boolean inTouch = false;
            private final Runnable checkStopped = new Runnable() {
                @Override
                public void run() {
                    int scrollX = horizontalScrollView.getScrollX();
                    int right = (horizontalScrollView.getChildAt(0).getRight() - scrollX) - horizontalScrollView.getMeasuredWidth();
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    if (scrollX <= i && !anonymousClass1.inTouch) {
                        scrollToLeft();
                        return;
                    }
                    AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                    if (right > i || anonymousClass2.inTouch) {
                        return;
                    }
                    scrollToRight();
                }
            };

            @SuppressLint({"NewApi"})
            private void disableOverScroll() {
                horizontalScrollView.setOverScrollMode(2);
            }

            public void scrollToLeft() {
                HorizontalScrollView horizontalScrollView2 = horizontalScrollView;
                horizontalScrollView2.smoothScrollTo(i - paddingLeft, horizontalScrollView2.getScrollY());
            }

            public void scrollToRight() {
                int width = horizontalScrollView.getChildAt(0).getWidth() - horizontalScrollView.getMeasuredWidth();
                int i2 = i;
                if (width - (i2 * 2) < 0) {
                    HorizontalScrollView horizontalScrollView2 = horizontalScrollView;
                    horizontalScrollView2.smoothScrollTo(i2 - paddingLeft, horizontalScrollView2.getScrollY());
                } else {
                    HorizontalScrollView horizontalScrollView3 = horizontalScrollView;
                    horizontalScrollView3.smoothScrollTo(((horizontalScrollView3.getChildAt(0).getRight() - horizontalScrollView.getMeasuredWidth()) - i) + paddingRight, horizontalScrollView.getScrollY());
                }
            }

            @Override
            public void onGlobalLayout() {
                CustomTabLayoutNew.SlidingTabIndicator slidingTabIndicator;
                horizontalScrollView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                View childAt2 = horizontalScrollView.getChildAt(0);
                if ((childAt2 instanceof CustomTabLayoutNew.SlidingTabIndicator) && (slidingTabIndicator = (CustomTabLayoutNew.SlidingTabIndicator) childAt2) != null) {
                    int totalTabMeasureWidth = slidingTabIndicator.getTotalTabMeasureWidth();
                    Rect scrollViewMargin = UITools.getScrollViewMargin(horizontalScrollView);
                    if (totalTabMeasureWidth >= (a.m(context) - scrollViewMargin.left) - scrollViewMargin.right) {
                        childAt2.setPadding(i + paddingLeft, childAt2.getPaddingTop(), i + paddingRight, childAt2.getPaddingBottom());
                    }
                }
                disableOverScroll();
                horizontalScrollView.setOnTouchListener(new View.OnTouchListener() {
                    @Override
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0 || motionEvent.getAction() == 5) {
                            AnonymousClass1.this.inTouch = true;
                        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                            AnonymousClass1.this.inTouch = false;
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            horizontalScrollView.post(anonymousClass1.checkStopped);
                        }
                        return false;
                    }
                });
                horizontalScrollView.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() {
                    @Override
                    public void onScrollChanged() {
                        HorizontalScrollView horizontalScrollView2;
                        if (AnonymousClass1.this.inTouch || (horizontalScrollView2 = horizontalScrollView) == null || horizontalScrollView2.getHandler() == null) {
                            return;
                        }
                        horizontalScrollView.getHandler().removeCallbacks(AnonymousClass1.this.checkStopped);
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        horizontalScrollView.postDelayed(anonymousClass1.checkStopped, 100L);
                    }
                });
                horizontalScrollView.postDelayed(this.checkStopped, 300L);
            }
        });
    }

    public static Rect getScrollViewMargin(View view) {
        try {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            return new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        } catch (Exception unused) {
            return new Rect(0, 0, 0, 0);
        }
    }
}
