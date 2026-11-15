package com.transsion.widgets.ratingbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.transsion.common.R;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class RtlDfRatingBar extends LinearLayout {
    private List<Integer> mBoundaryList;
    private OnRatingChangedListener mOnRatingChangedListener;
    private float mRating;
    private RatingStatus mRatingStatus;
    private Drawable mStarEmptyDrawable;
    private Drawable mStarFullDrawable;
    private Drawable mStarHalfDrawable;
    private float mStarHeight;
    private float mStarPadding;
    private int mStarTotal;
    private float mStarWidth;

    public RtlDfRatingBar(Context context) {
        this(context, null);
    }

    private float calculateRating(float f) {
        float f2;
        int i = 0;
        while (true) {
            if (i >= this.mStarTotal - 1) {
                f2 = 0.0f;
                break;
            }
            if (f >= this.mBoundaryList.get(i).intValue()) {
                int i2 = i + 1;
                if (f <= this.mBoundaryList.get(i2).intValue()) {
                    if (this.mStarHalfDrawable != null && f < (this.mBoundaryList.get(i).intValue() + this.mBoundaryList.get(i2).intValue()) / 2) {
                        f2 = i + 0.5f;
                        break;
                    }
                    f2 = i2;
                    break;
                }
            }
            i++;
        }
        if (f2 == 0.0f) {
            List<Integer> list = this.mBoundaryList;
            if (f >= list.get(list.size() - 1).intValue()) {
                List<Integer> list2 = this.mBoundaryList;
                f2 = f < ((float) list2.get(list2.size() + (-1)).intValue()) + (this.mStarWidth / 2.0f) ? this.mStarTotal - 0.5f : this.mStarTotal;
            }
        }
        if (f2 == 0.0f) {
            f2 = this.mStarHalfDrawable == null ? 1.0f : 0.5f;
        }
        return isRtl() ? (this.mStarTotal + 1) - f2 : f2;
    }

    private ImageView createStarImageView(boolean z) {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(Math.round(this.mStarWidth), Math.round(this.mStarHeight));
        if (isRtl()) {
            layoutParams.setMargins(Math.round(this.mStarPadding) / 2, 0, Math.round(this.mStarPadding) / 2, 0);
        } else {
            layoutParams.setMargins(Math.round(this.mStarPadding) / 2, 0, Math.round(this.mStarPadding) / 2, 0);
        }
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    private void init(AttributeSet attributeSet) {
        setOrientation(0);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.RtlDfRatingBar);
        this.mRatingStatus = RatingStatus.getStatus(typedArrayObtainStyledAttributes.getInt(R.styleable.RtlDfRatingBar_rdrb_ratingStatus, RatingStatus.DISABLE.mStatus));
        this.mStarFullDrawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.RtlDfRatingBar_rdrb_starFullResource);
        this.mStarEmptyDrawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.RtlDfRatingBar_rdrb_starEmptyResource);
        this.mStarHalfDrawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.RtlDfRatingBar_rdrb_starHalfResource);
        if (this.mStarFullDrawable == null || this.mStarEmptyDrawable == null) {
            throw new IllegalArgumentException("RtlDfRatingBa Error: You must declare starFullResource and starEmptyResource!");
        }
        this.mStarWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.RtlDfRatingBar_rdrb_starImageWidth, 24.0f);
        this.mStarHeight = typedArrayObtainStyledAttributes.getDimension(R.styleable.RtlDfRatingBar_rdrb_starImageHeight, 24.0f);
        this.mStarPadding = typedArrayObtainStyledAttributes.getDimension(R.styleable.RtlDfRatingBar_rdrb_starImagePadding, 4.0f);
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.RtlDfRatingBar_rdrb_starTotal, 5);
        this.mStarTotal = i;
        if (i <= 0) {
            throw new IllegalArgumentException("RtlDfRatingBar Error: starTotal must be positive!");
        }
        this.mRating = typedArrayObtainStyledAttributes.getFloat(R.styleable.RtlDfRatingBar_rdrb_rating, 5.0f);
        typedArrayObtainStyledAttributes.recycle();
        int i2 = 0;
        while (true) {
            int i3 = this.mStarTotal;
            if (i2 >= i3) {
                setRating(this.mRating);
                return;
            } else {
                addView(createStarImageView(i2 == i3 + (-1)));
                i2++;
            }
        }
    }

    private boolean isRtl() {
        return getLayoutDirection() == 1;
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mBoundaryList.isEmpty()) {
            int i5 = 0;
            while (i5 < this.mStarTotal) {
                List<Integer> list = this.mBoundaryList;
                list.add(Integer.valueOf(i5 == 0 ? 0 : list.get(i5 - 1).intValue() + Math.round(this.mStarWidth) + Math.round(this.mStarPadding)));
                i5++;
            }
        }
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mRatingStatus == RatingStatus.ENABLE && !this.mBoundaryList.isEmpty()) {
            setRating(calculateRating(motionEvent.getX()));
            if (motionEvent.getAction() == 0) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setOnRatingChangedListener(OnRatingChangedListener onRatingChangedListener) {
        this.mOnRatingChangedListener = onRatingChangedListener;
    }

    public void setRating(float f) {
        int i = this.mStarTotal;
        if (f > i) {
            f = i;
        }
        this.mRating = f;
        OnRatingChangedListener onRatingChangedListener = this.mOnRatingChangedListener;
        if (onRatingChangedListener != null) {
            onRatingChangedListener.onRatingChanged(f);
        }
        int iFloor = (int) Math.floor(f);
        float fFloatValue = new BigDecimal(String.valueOf(f)).subtract(new BigDecimal(String.valueOf(iFloor))).floatValue();
        for (int i2 = 0; i2 < iFloor; i2++) {
            ((ImageView) getChildAt(i2)).setImageDrawable(this.mStarFullDrawable);
        }
        for (int i3 = iFloor; i3 < this.mStarTotal; i3++) {
            ((ImageView) getChildAt(i3)).setImageDrawable(this.mStarEmptyDrawable);
        }
        double d = fFloatValue;
        if (d >= 0.25d) {
            if (d < 0.75d && this.mStarHalfDrawable != null) {
                ((ImageView) getChildAt(iFloor)).setImageDrawable(this.mStarHalfDrawable);
            } else if (d >= 0.75d) {
                ((ImageView) getChildAt(iFloor)).setImageDrawable(this.mStarFullDrawable);
            }
        }
    }

    public void setRatingStatus(RatingStatus ratingStatus) {
        this.mRatingStatus = ratingStatus;
    }

    public RtlDfRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public RtlDfRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBoundaryList = new ArrayList(5);
        if (attributeSet != null) {
            init(attributeSet);
            return;
        }
        throw new RuntimeException("RtlDfRatingBa Error: You must use RtlDfRatingBa in layout file!");
    }
}
