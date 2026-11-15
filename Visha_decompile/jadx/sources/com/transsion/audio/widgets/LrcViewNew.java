package com.transsion.audio.widgets;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.core.content.res.ResourcesCompat;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.audio.R;
import com.transsion.audio.lyrics.bean.LrcRow;
import com.transsion.audio.player.MusicPlayManager;
import defpackage.hb0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@SuppressLint({"StaticFieldLeak"})
public class LrcViewNew extends View {
    private static final long ADJUST_DURATION = 100;
    private static final String TAG = "LrcView";
    private static final long TIMELINE_KEEP_TIME = 2000;
    private final Runnable hideTimelineRunnable;
    private boolean isAllNoTimeLrc;
    private boolean isFirstInit;
    private boolean isFling;
    private boolean isShowTimeline;
    private boolean isTouching;
    private int lrcPositionToCenter;
    private long mAnimationDuration;
    private ValueAnimator mAnimator;
    private int mCurrentLine;
    private int mCurrentTextColor;
    private float mCurrentTextSize;
    private String mDefaultLabel;
    private int mDelayMs;
    private float mDividerHeight;
    private int mDrawableWidth;
    private Object mFlag;
    private GestureDetector mGestureDetector;
    private final TextPaint mLabelPaint;
    private final List<LrcRow> mLrcEntryList;
    private float mLrcPadding;
    private final TextPaint mLrcPaint;
    private int mNormalTextColor;
    private float mNormalTextSize;
    private float mOffset;
    private OnLayoutChangeListener mOnLayoutChangeListener;
    private OnPlayClickListener mOnPlayClickListener;
    private OnTapListener mOnTapListener;
    private Drawable mPlayDrawable;
    private final TextPaint mRectPaint;
    private Scroller mScroller;
    private final GestureDetector.SimpleOnGestureListener mSimpleOnGestureListener;
    private int mTextGravity;
    private Paint.FontMetrics mTimeFontMetrics;
    private final TextPaint mTimePaint;
    private int mTimeTextColor;
    private int mTimeTextWidth;
    private int mTimelineColor;
    private int mTimelineTextColor;
    private static final float DEFAULT_TEXT_SIZE = com.transsion.utils.a.d(Utils.a(), 24.0f);
    private static final float CURRENT_TEXT_SIZE = com.transsion.utils.a.d(Utils.a(), 30.0f);
    private static final float LABEL_TEXT_SIZE = com.transsion.utils.a.d(Utils.a(), 14.0f);
    private static final float DEFAULT_TIME_TEXT_SIZE = com.transsion.utils.a.d(Utils.a(), 11.0f);

    public interface OnLayoutChangeListener {
        void onLayoutChange();
    }

    public interface OnPlayClickListener {
        boolean onPlayClick(LrcViewNew lrcViewNew, long j);
    }

    public interface OnTapListener {
        void onTap(LrcViewNew lrcViewNew, float f, float f2);
    }

    public LrcViewNew(Context context) {
        this(context, null);
    }

    private void adjustCenter() {
        smoothScrollTo(getCenterLine(), 100L);
    }

    private void drawText(Canvas canvas, StaticLayout staticLayout, float f) {
        canvas.save();
        canvas.translate(getPaddingStart(), f - (staticLayout.getHeight() >> 1));
        staticLayout.draw(canvas);
        canvas.restore();
    }

    private void endAnimation() {
        ValueAnimator valueAnimator = this.mAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.mAnimator.end();
    }

    private int findShowLine(long j) {
        int size = this.mLrcEntryList.size();
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            if (j < this.mLrcEntryList.get(i2).time) {
                size = i2 - 1;
            } else {
                i = i2 + 1;
                if (i >= this.mLrcEntryList.size() || j < this.mLrcEntryList.get(i).time) {
                    return i2;
                }
            }
        }
        return 0;
    }

    public int getCenterLine() {
        int i = -1;
        float fAbs = Float.MAX_VALUE;
        for (int i2 = 0; i2 < this.mLrcEntryList.size(); i2++) {
            if (Math.abs(this.mOffset - getOffset(i2)) < fAbs) {
                fAbs = Math.abs(this.mOffset - getOffset(i2));
                i = i2;
            }
        }
        return i;
    }

    private int getCenterY() {
        return (getHeight() / 2) - this.lrcPositionToCenter;
    }

    public Rect getCurrentLineRect() {
        int centerLine = getCenterLine();
        int centerY = getCenterY();
        StaticLayout staticLayout = this.mLrcEntryList.get(centerLine).getStaticLayout();
        return new Rect(0, centerY - (staticLayout.getHeight() / 2), getWidth(), centerY + (staticLayout.getHeight() / 2));
    }

    private Object getFlag() {
        return this.mFlag;
    }

    private float getLrcWidth() {
        return (getWidth() - getPaddingStart()) - getPaddingEnd();
    }

    public float getOffset(int i) {
        if (this.mLrcEntryList.get(i).offset == Float.MIN_VALUE) {
            float centerY = getCenterY();
            for (int i2 = 1; i2 <= i; i2++) {
                centerY -= ((this.mLrcEntryList.get(i2 - 1).getHeight() + this.mLrcEntryList.get(i2).getHeight()) >> 1) + this.mDividerHeight;
            }
            this.mLrcEntryList.get(i).offset = centerY;
        }
        return this.mLrcEntryList.get(i).offset;
    }

    private void init(AttributeSet attributeSet) {
        this.mLrcPaint.setAntiAlias(true);
        TextPaint textPaint = this.mLrcPaint;
        float f = DEFAULT_TEXT_SIZE;
        textPaint.setTextSize(f);
        this.mLrcPaint.setFakeBoldText(true);
        this.mCurrentTextSize = CURRENT_TEXT_SIZE;
        this.mLrcPaint.setTextAlign(Paint.Align.LEFT);
        this.mTimePaint.setAntiAlias(true);
        this.mTimePaint.setTextSize(DEFAULT_TIME_TEXT_SIZE);
        this.mLabelPaint.setAntiAlias(true);
        this.mLabelPaint.setTextSize(LABEL_TEXT_SIZE);
        this.mLabelPaint.setColor(getResources().getColor(R.color.lyric_label_color));
        this.mNormalTextSize = f;
        this.mTimelineColor = getResources().getColor(R.color.lyric_text_line_color);
        this.mTimeFontMetrics = this.mTimePaint.getFontMetrics();
        this.mDividerHeight = com.transsion.utils.a.d(getContext(), 27.0f);
        this.mPlayDrawable = ResourcesCompat.getDrawable(getResources(), R.drawable.ic_lyric_time_arrow, getContext().getTheme());
        this.mAnimationDuration = 500L;
        GestureDetector gestureDetector = new GestureDetector(getContext(), this.mSimpleOnGestureListener);
        this.mGestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.mScroller = new Scroller(getContext());
    }

    private void initPlayDrawable() {
        this.mPlayDrawable.setBounds(com.transsion.utils.a.d(getContext(), 10.0f), getCenterY() - (this.mPlayDrawable.getIntrinsicHeight() / 2), this.mPlayDrawable.getIntrinsicWidth() + com.transsion.utils.a.d(getContext(), 10.0f), getCenterY() + (this.mPlayDrawable.getIntrinsicHeight() / 2));
    }

    public void lambda$scrollToCurrentLine$2() {
        int i;
        int centerLine = getCenterLine();
        if (!hasLrc() || centerLine == (i = this.mCurrentLine)) {
            return;
        }
        this.isShowTimeline = false;
        smoothScrollTo(i);
    }

    public void lambda$setLabel$0(String str) {
        this.mDefaultLabel = str;
        invalidate();
    }

    public void lambda$smoothScrollTo$3(ValueAnimator valueAnimator) {
        this.mOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void lambda$updateTime$1(long j, boolean z) {
        int iFindShowLine;
        if (!hasLrc() || this.isAllNoTimeLrc || (iFindShowLine = findShowLine(j + ((long) this.mDelayMs))) == this.mCurrentLine) {
            return;
        }
        this.mCurrentLine = iFindShowLine;
        if (this.isShowTimeline) {
            return;
        }
        if (z && !this.isFirstInit) {
            smoothScrollTo(iFindShowLine);
        } else {
            this.isFirstInit = false;
            smoothScrollTo(iFindShowLine, 0L);
        }
    }

    private void reset() {
        endAnimation();
        this.mScroller.forceFinished(true);
        this.isShowTimeline = false;
        this.isTouching = false;
        this.isFling = false;
        removeCallbacks(this.hideTimelineRunnable);
        this.mLrcEntryList.clear();
        this.mOffset = 0.0f;
        this.mCurrentLine = 0;
        this.isAllNoTimeLrc = true;
    }

    private void runOnUi(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }

    private void setFlag(Object obj) {
        this.mFlag = obj;
    }

    public void smoothScrollTo(int i) {
        smoothScrollTo(i, this.mAnimationDuration);
    }

    @Override
    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
            if (this.isAllNoTimeLrc) {
                float currY = this.mScroller.getCurrY();
                this.mOffset = currY;
                float fMin = Math.min(currY, getOffset(0));
                this.mOffset = fMin;
                this.mOffset = Math.max(fMin, getOffset(this.mLrcEntryList.size() - 1));
                invalidate();
            } else {
                this.mOffset = this.mScroller.getCurrY();
                invalidate();
            }
        }
        if (this.isFling && this.mScroller.isFinished()) {
            this.isFling = false;
            if (!hasLrc() || this.isTouching || this.isAllNoTimeLrc) {
                return;
            }
            adjustCenter();
            postDelayed(this.hideTimelineRunnable, 2000L);
        }
    }

    public boolean hasLrc() {
        return !this.mLrcEntryList.isEmpty();
    }

    public void initEntryList() {
        if (!hasLrc() || getWidth() == 0) {
            return;
        }
        this.isAllNoTimeLrc = true;
        this.mLrcPaint.setTextSize(CURRENT_TEXT_SIZE);
        for (LrcRow lrcRow : this.mLrcEntryList) {
            lrcRow.init(this.mLrcPaint, (int) getLrcWidth(), 0);
            if (!lrcRow.noTimeText) {
                this.isAllNoTimeLrc = false;
            }
        }
        if (this.isAllNoTimeLrc) {
            for (LrcRow lrcRow2 : this.mLrcEntryList) {
                this.mLrcPaint.setTextSize(this.mNormalTextSize);
                this.mLrcPaint.setColor(this.mCurrentTextColor);
                lrcRow2.init(this.mLrcPaint, (int) getLrcWidth(), 0);
            }
        }
        this.mOffset = getCenterY();
    }

    public boolean isAllNoTimeLrc() {
        return this.isAllNoTimeLrc;
    }

    @Override
    public void onDetachedFromWindow() {
        removeCallbacks(this.hideTimelineRunnable);
        super.onDetachedFromWindow();
    }

    @Deprecated
    public void onDrag(long j) {
        updateTime(j);
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int centerY = getCenterY();
        int centerLine = getCenterLine();
        if (!hasLrc()) {
            LogUtils.m(TAG, "onDrawText but not lrc so return");
            return;
        }
        if (this.isShowTimeline && !this.isAllNoTimeLrc) {
            this.mPlayDrawable.draw(canvas);
            String str = this.mLrcEntryList.get(centerLine).timeStr;
            int iMeasureText = (int) this.mTimePaint.measureText(str);
            this.mTimePaint.setColor(this.mTimelineColor);
            float f = centerY;
            canvas.drawLine(this.mPlayDrawable.getIntrinsicWidth() + com.transsion.utils.a.d(getContext(), 20.0f), f, (getWidth() - com.transsion.utils.a.d(getContext(), 16.0f)) - iMeasureText, f, this.mTimePaint);
            this.mTimePaint.setColor(this.mTimeTextColor);
            float width = (getWidth() - this.mTimePaint.measureText(str)) - com.transsion.utils.a.d(getContext(), 10.0f);
            Paint.FontMetrics fontMetrics = this.mTimeFontMetrics;
            canvas.drawText(str, width, f - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f), this.mTimePaint);
        }
        float height = 0.0f;
        canvas.translate(0.0f, this.isAllNoTimeLrc ? this.mOffset - com.transsion.utils.a.d(getContext(), 180.0f) : this.mOffset);
        for (int i = 0; i < this.mLrcEntryList.size(); i++) {
            this.mLrcPaint.setTypeface(Typeface.DEFAULT);
            if (this.isAllNoTimeLrc) {
                this.mLrcPaint.setTextSize(LABEL_TEXT_SIZE);
                this.mLrcPaint.setColor(this.mCurrentTextColor);
            } else if (i == this.mCurrentLine) {
                this.mLrcPaint.setColor(this.mCurrentTextColor);
                this.mLrcPaint.setTextSize(this.mCurrentTextSize);
            } else if (this.isShowTimeline && i == centerLine) {
                this.mLrcPaint.setColor(this.mTimelineTextColor);
                this.mLrcPaint.setTextSize(this.mNormalTextSize);
            } else {
                this.mLrcPaint.setTextSize(this.mNormalTextSize);
                this.mLrcPaint.setColor(this.mNormalTextColor);
            }
            StaticLayout staticLayout = this.mLrcEntryList.get(i).getStaticLayout();
            if (i > 0) {
                height += ((this.mLrcEntryList.get(i - 1).getHeight() + staticLayout.getHeight()) >> 1) + this.mDividerHeight;
            }
            drawText(canvas, staticLayout, height);
        }
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            initPlayDrawable();
            initEntryList();
            OnLayoutChangeListener onLayoutChangeListener = this.mOnLayoutChangeListener;
            if (onLayoutChangeListener != null) {
                onLayoutChangeListener.onLayoutChange();
            }
        }
    }

    public void onLrcLoaded(List<LrcRow> list) {
        reset();
        if (list != null && !list.isEmpty()) {
            this.mLrcEntryList.addAll(list);
        }
        Collections.sort(this.mLrcEntryList);
        initEntryList();
        invalidate();
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.isTouching = false;
            getParent().requestDisallowInterceptTouchEvent(false);
            if (hasLrc() && this.isShowTimeline && !this.isAllNoTimeLrc) {
                adjustCenter();
                postDelayed(this.hideTimelineRunnable, 2000L);
            }
        }
        return this.mGestureDetector.onTouchEvent(motionEvent);
    }

    public void scrollToCurrentLine() {
        if (this.mScroller.computeScrollOffset()) {
            this.mScroller.forceFinished(true);
            this.mOffset = this.mScroller.getCurrY();
        }
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$scrollToCurrentLine$2();
            }
        });
    }

    public void setCurrentColor(int i) {
        this.mCurrentTextColor = i;
        postInvalidate();
    }

    public void setCurrentTextSize(float f) {
        this.mCurrentTextSize = f;
    }

    public void setDelayMs(int i) {
        this.mDelayMs = i;
        if (hasLrc()) {
            for (LrcRow lrcRow : this.mLrcEntryList) {
                lrcRow.timeStr = LrcRow.formatTime(lrcRow.time - i);
            }
        }
    }

    public void setDraggable(boolean z, OnPlayClickListener onPlayClickListener) {
        if (!z) {
            this.mOnPlayClickListener = null;
        } else {
            if (onPlayClickListener == null) {
                throw new IllegalArgumentException("if draggable == true, onPlayClickListener must not be null");
            }
            this.mOnPlayClickListener = onPlayClickListener;
        }
    }

    public void setLabel(final String str) {
        runOnUi(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$setLabel$0(str);
            }
        });
    }

    public void setLrcPositionToCenter(int i) {
        this.lrcPositionToCenter = i;
    }

    public void setNormalColor(int i) {
        this.mNormalTextColor = i;
        postInvalidate();
    }

    public void setNormalTextSize(float f) {
        this.mNormalTextSize = f;
    }

    public void setOnLayoutChangeListener(OnLayoutChangeListener onLayoutChangeListener) {
        this.mOnLayoutChangeListener = onLayoutChangeListener;
    }

    @Deprecated
    public void setOnPlayClickListener(OnPlayClickListener onPlayClickListener) {
        this.mOnPlayClickListener = onPlayClickListener;
    }

    public void setOnTapListener(OnTapListener onTapListener) {
        this.mOnTapListener = onTapListener;
    }

    public void setTimeTextColor(int i) {
        this.mTimeTextColor = i;
        postInvalidate();
    }

    public void setTimelineColor(int i) {
        this.mTimelineColor = i;
        postInvalidate();
    }

    public void setTimelineTextColor(int i) {
        this.mTimelineTextColor = i;
        postInvalidate();
    }

    public void updateTime(long j) {
        updateTime(j, true);
    }

    public LrcViewNew(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void smoothScrollTo(int i, long j) {
        float offset = getOffset(i);
        endAnimation();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mOffset, offset);
        this.mAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(j);
        this.mAnimator.setInterpolator(new DecelerateInterpolator());
        this.mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.b.lambda$smoothScrollTo$3(valueAnimator);
            }
        });
        this.mAnimator.start();
    }

    public void updateTime(final long j, final boolean z) {
        runOnUi(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$updateTime$1(j, z);
            }
        });
    }

    public LrcViewNew(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLrcEntryList = new ArrayList();
        this.mLrcPaint = new TextPaint();
        this.mTimePaint = new TextPaint();
        this.mRectPaint = new TextPaint();
        this.isFirstInit = true;
        this.mLabelPaint = new TextPaint();
        this.isAllNoTimeLrc = true;
        this.mSimpleOnGestureListener = new GestureDetector.SimpleOnGestureListener() {
            private boolean isTouchForStopFling = false;

            @Override
            public boolean onDown(MotionEvent motionEvent) {
                LrcViewNew.this.getParent().requestDisallowInterceptTouchEvent(LrcViewNew.this.hasLrc());
                if (LrcViewNew.this.isFling) {
                    this.isTouchForStopFling = true;
                    LrcViewNew.this.mScroller.forceFinished(true);
                } else {
                    this.isTouchForStopFling = false;
                }
                if (!LrcViewNew.this.hasLrc()) {
                    return LrcViewNew.this.mOnTapListener != null;
                }
                LrcViewNew.this.isTouching = true;
                LrcViewNew lrcViewNew = LrcViewNew.this;
                lrcViewNew.removeCallbacks(lrcViewNew.hideTimelineRunnable);
                return (LrcViewNew.this.mOnPlayClickListener == null && LrcViewNew.this.mOnTapListener == null) ? false : true;
            }

            @Override
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (!LrcViewNew.this.hasLrc() || LrcViewNew.this.mOnPlayClickListener == null) {
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                if (!LrcViewNew.this.isShowTimeline) {
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                LrcViewNew.this.isFling = true;
                LrcViewNew lrcViewNew = LrcViewNew.this;
                lrcViewNew.removeCallbacks(lrcViewNew.hideTimelineRunnable);
                LrcViewNew lrcViewNew2 = LrcViewNew.this;
                LrcViewNew.this.mScroller.fling(0, (int) LrcViewNew.this.mOffset, 0, (int) f2, 0, 0, ((int) lrcViewNew2.getOffset(lrcViewNew2.mLrcEntryList.size() - 1)) - 300, ((int) LrcViewNew.this.getOffset(0)) + 300);
                return true;
            }

            @Override
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (Math.abs(f) > Math.abs(f2) && Math.abs(f) > ViewConfiguration.get(LrcViewNew.this.getContext()).getScaledTouchSlop()) {
                    LrcViewNew.this.getParent().requestDisallowInterceptTouchEvent(false);
                }
                if (!LrcViewNew.this.hasLrc() || LrcViewNew.this.mOnPlayClickListener == null) {
                    return super.onScroll(motionEvent, motionEvent2, f, f2);
                }
                if (LrcViewNew.this.isShowTimeline) {
                    if (Math.abs(f2) > 2.0f) {
                        hb0.markDirect("vd_audio_lyrics_drag_view");
                    }
                    LrcViewNew.this.mOffset += -f2;
                    int i2 = LrcViewNew.this.isAllNoTimeLrc ? 0 : 300;
                    LrcViewNew lrcViewNew = LrcViewNew.this;
                    float f3 = i2;
                    lrcViewNew.mOffset = Math.min(lrcViewNew.mOffset, LrcViewNew.this.getOffset(0) + f3);
                    LrcViewNew lrcViewNew2 = LrcViewNew.this;
                    float f4 = lrcViewNew2.mOffset;
                    LrcViewNew lrcViewNew3 = LrcViewNew.this;
                    lrcViewNew2.mOffset = Math.max(f4, lrcViewNew3.getOffset(lrcViewNew3.mLrcEntryList.size() - 1) - f3);
                    if (LrcViewNew.this.mOffset >= LrcViewNew.this.getOffset(0)) {
                        LrcViewNew.this.getParent().requestDisallowInterceptTouchEvent(false);
                    }
                } else {
                    LrcViewNew.this.isShowTimeline = true;
                }
                LrcViewNew.this.invalidate();
                return true;
            }

            @Override
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                if (LrcViewNew.this.hasLrc() && LrcViewNew.this.mOnPlayClickListener != null && LrcViewNew.this.isShowTimeline && LrcViewNew.this.getCurrentLineRect().contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    int centerLine = LrcViewNew.this.getCenterLine();
                    long j = ((LrcRow) LrcViewNew.this.mLrcEntryList.get(centerLine)).time;
                    if (LrcViewNew.this.mOnPlayClickListener != null) {
                        OnPlayClickListener onPlayClickListener = LrcViewNew.this.mOnPlayClickListener;
                        LrcViewNew lrcViewNew = LrcViewNew.this;
                        if (onPlayClickListener.onPlayClick(lrcViewNew, j - ((long) lrcViewNew.mDelayMs))) {
                            LrcViewNew.this.isShowTimeline = false;
                            LrcViewNew lrcViewNew2 = LrcViewNew.this;
                            lrcViewNew2.removeCallbacks(lrcViewNew2.hideTimelineRunnable);
                            LrcViewNew.this.mCurrentLine = centerLine;
                            hb0.markDirect("vd_audio_lyrics_drag_cl");
                            LrcViewNew.this.invalidate();
                            return true;
                        }
                    }
                    if (LrcViewNew.this.mOnTapListener != null) {
                        LrcViewNew.this.mOnTapListener.onTap(LrcViewNew.this, motionEvent.getX(), motionEvent.getY());
                    }
                } else if (LrcViewNew.this.mOnTapListener != null && !this.isTouchForStopFling) {
                    LrcViewNew.this.mOnTapListener.onTap(LrcViewNew.this, motionEvent.getX(), motionEvent.getY());
                }
                return super.onSingleTapConfirmed(motionEvent);
            }
        };
        this.hideTimelineRunnable = new Runnable() {
            @Override
            public void run() {
                if (LrcViewNew.this.hasLrc() && LrcViewNew.this.isShowTimeline) {
                    LrcViewNew.this.isShowTimeline = false;
                    if (!MusicPlayManager.S().s0()) {
                        LrcViewNew.this.invalidate();
                    } else {
                        LrcViewNew lrcViewNew = LrcViewNew.this;
                        lrcViewNew.smoothScrollTo(lrcViewNew.mCurrentLine);
                    }
                }
            }
        };
        init(attributeSet);
    }
}
