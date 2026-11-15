package com.transsion.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.NonNull;
import com.transsion.widgetslib.R;
import org.slf4j.Marker;

public class BadgeView extends View {
    public static final int OS_RED_POINT_TYPE_BIG = 2;
    public static final int OS_RED_POINT_TYPE_MEDIUM = 1;
    public static final int OS_RED_POINT_TYPE_NUM_BIG = 5;
    public static final int OS_RED_POINT_TYPE_NUM_MEDIUM = 4;
    public static final int OS_RED_POINT_TYPE_NUM_SMALL = 3;
    public static final int OS_RED_POINT_TYPE_SMALL = 0;
    private static final String TAG = "RedPointView";
    private int backgroundColor;
    private int corner;
    private int mCurrentRedPointType;
    private int mHeight;
    private int mNumColor;
    private String mNumText;
    private int mPadding;
    private Paint mPaintBg;
    private Paint mPaintText;
    private float mPlusWidth;
    private RectF mRectf;
    private int mTextSize;
    private float mTextWidth;
    private int mWidth;
    private int plusTextSize;

    public BadgeView(Context context) {
        this(context, null);
    }

    public static int dp2px(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    private void initView(@NonNull Context context, AttributeSet attributeSet) {
        this.mRectf = new RectF(0.0f, 0.0f, this.mWidth, this.mHeight);
        Paint paint = new Paint();
        this.mPaintBg = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.mPaintText = paint2;
        paint2.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSRedPointTextView);
        this.mCurrentRedPointType = typedArrayObtainStyledAttributes.getInt(R.styleable.OSRedPointTextView_osRedPointTextViewType, 0);
        this.mNumText = setNum(typedArrayObtainStyledAttributes.getInt(R.styleable.OSRedPointTextView_osRedPointTextViewNum, 0));
        typedArrayObtainStyledAttributes.recycle();
        setRedPointType(this.mCurrentRedPointType);
    }

    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.mRectf;
        int i = this.corner;
        canvas.drawRoundRect(rectF, i, i, this.mPaintBg);
        if (TextUtils.isEmpty(this.mNumText)) {
            return;
        }
        Paint.FontMetrics fontMetrics = this.mPaintText.getFontMetrics();
        float f = fontMetrics.bottom;
        int i2 = (int) ((this.mHeight / 2) + (((f - fontMetrics.top) / 2.0f) - f));
        int i3 = (int) ((this.mWidth - this.mTextWidth) / 2.0f);
        if (this.mCurrentRedPointType != 5 || !this.mNumText.contains(Marker.ANY_NON_NULL_MARKER)) {
            canvas.drawText(this.mNumText, i3, i2, this.mPaintText);
            return;
        }
        String str = this.mNumText;
        float f2 = i3;
        canvas.drawText(str.substring(0, str.length() - 1), f2, i2, this.mPaintText);
        this.mPaintText.setTextSize(this.plusTextSize);
        Paint.FontMetrics fontMetrics2 = this.mPaintText.getFontMetrics();
        float f3 = fontMetrics2.bottom;
        canvas.drawText(Marker.ANY_NON_NULL_MARKER, f2 + (this.mTextWidth - this.mPlusWidth), (int) ((this.mHeight / 2) + (((f3 - fontMetrics2.top) / 2.0f) - f3)), this.mPaintText);
        this.mPaintText.setTextSize(this.mTextSize);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(this.mWidth, this.mHeight);
    }

    @Override
    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
        setRedPointType(this.mCurrentRedPointType);
    }

    public String setNum(int i) {
        this.mNumText = i + "";
        if (i > 99) {
            this.mNumText = "99+";
        } else if (i < 0) {
            this.mNumText = "";
        }
        setRedPointType(this.mCurrentRedPointType);
        return this.mNumText;
    }

    public void setRedPointType(int i) {
        this.mPaintBg.setColor(this.backgroundColor);
        this.mPaintText.setColor(this.mNumColor);
        this.mCurrentRedPointType = i;
        if (i == 0) {
            this.mHeight = dp2px(6);
            this.mPadding = dp2px(0);
            this.mTextSize = dp2px(0);
            this.mWidth = this.mHeight;
        } else if (i == 1) {
            this.mHeight = dp2px(8);
            this.mPadding = dp2px(0);
            this.mTextSize = dp2px(0);
            this.mWidth = this.mHeight;
        } else if (i == 2) {
            this.mHeight = dp2px(12);
            this.mPadding = dp2px(0);
            this.mTextSize = dp2px(0);
            this.mWidth = this.mHeight;
        } else if (i == 3) {
            this.mHeight = dp2px(14);
            this.mPadding = dp2px(3);
            this.mTextSize = dp2px(9);
            this.plusTextSize = dp2px(6);
            this.mPaintText.setTextSize(this.mTextSize);
            if (TextUtils.isEmpty(this.mNumText)) {
                this.mWidth = this.mHeight;
            } else {
                float fMeasureText = this.mPaintText.measureText(this.mNumText);
                this.mTextWidth = fMeasureText;
                this.mWidth = (int) (fMeasureText + (this.mPadding * 2));
            }
        } else if (i == 4) {
            this.mHeight = dp2px(19);
            this.mPadding = dp2px(4);
            int iDp2px = dp2px(12);
            this.mTextSize = iDp2px;
            this.mPaintText.setTextSize(iDp2px);
            if (TextUtils.isEmpty(this.mNumText)) {
                this.mWidth = this.mHeight;
            } else {
                float fMeasureText2 = this.mPaintText.measureText(this.mNumText);
                this.mTextWidth = fMeasureText2;
                this.mWidth = (int) (fMeasureText2 + (this.mPadding * 2));
            }
        } else if (i == 5) {
            this.mHeight = dp2px(20);
            this.mPadding = dp2px(3);
            this.mTextSize = dp2px(12);
            this.plusTextSize = dp2px(9);
            this.mPaintText.setTextSize(this.mTextSize);
            if (TextUtils.isEmpty(this.mNumText)) {
                this.mWidth = this.mHeight;
            } else {
                if (this.mNumText.endsWith(Marker.ANY_NON_NULL_MARKER)) {
                    String str = this.mNumText;
                    float fMeasureText3 = this.mPaintText.measureText(str.substring(0, str.length() - 1));
                    this.mPaintText.setTextSize(dp2px(9));
                    float fMeasureText4 = this.mPaintText.measureText(Marker.ANY_NON_NULL_MARKER);
                    this.mPlusWidth = fMeasureText4;
                    this.mTextWidth = fMeasureText3 + fMeasureText4;
                } else {
                    this.mTextWidth = this.mPaintText.measureText(this.mNumText);
                }
                this.mWidth = (int) (this.mTextWidth + (this.mPadding * 2));
            }
        }
        this.corner = this.mHeight / 2;
        this.mPaintText.setTextSize(this.mTextSize);
        int iMax = Math.max(this.mWidth, this.mHeight);
        this.mWidth = iMax;
        RectF rectF = this.mRectf;
        rectF.left = 0.0f;
        rectF.top = 0.0f;
        rectF.right = iMax;
        rectF.bottom = this.mHeight;
        invalidate();
    }

    public BadgeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, typedValue, true);
        this.backgroundColor = typedValue.data;
        this.mNumColor = Color.parseColor("#FFFFFF");
        this.mCurrentRedPointType = 0;
        initView(context, attributeSet);
    }
}
