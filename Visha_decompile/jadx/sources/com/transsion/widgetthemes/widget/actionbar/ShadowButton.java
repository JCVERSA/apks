package com.transsion.widgetthemes.widget.actionbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageButton;
import com.transsion.widgetsThemes.R;

@SuppressLint({"AppCompatCustomView"})
public class ShadowButton extends ImageButton {
    private static final int AMBIENT_SHADOW_ALPHA_DIVISOR = 3;
    private static final float BC_SHADOW_SCALE_FACTOR = 0.5f;
    private static final int BG_INSET = 4;
    private static final boolean DEBUG = false;
    private static final int SHADOW_RADIUS = 3;
    private static final String TAG = "FloatButton";
    private float mBgInset;
    private int mBgWidth;
    private int mHeight;
    private boolean mIsMultiWin;
    private Paint mPaint;
    private int mShadowColor;
    private float mShadowRadius;
    private int mWidth;

    public ShadowButton(Context context) {
        this(context, null);
    }

    private void applyShadowMode() {
        float f = this.mShadowRadius;
        setElevation((0.5f * f) + f);
        setOutlineSpotShadowColor(this.mShadowColor);
        setOutlineAmbientShadowColor(Color.argb(Color.alpha(this.mShadowColor) / 3, Color.red(this.mShadowColor), Color.green(this.mShadowColor), Color.blue(this.mShadowColor)));
        invalidateOutline();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.mIsMultiWin) {
            setMeasuredDimension((int) (size * 0.75f), (int) (((double) size2) * 0.75d));
        } else {
            setMeasuredDimension(size, size2);
        }
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i > 0) {
            this.mWidth = i;
            this.mHeight = i2;
            this.mBgWidth = (int) (i - (this.mBgInset * 2.0f));
        }
        applyShadowMode();
    }

    public void setMultiWindowMode(boolean z) {
        this.mIsMultiWin = z;
        if (z) {
            setShadowRadius(this.mShadowRadius * 0.75f);
        }
        Log.i("os_fb", "FloatButton, setMultiWindowMode() isMultiWin=" + z);
        requestLayout();
    }

    public void setShadowColor(int i) {
        this.mShadowColor = i;
        applyShadowMode();
        invalidate();
    }

    public void setShadowRadius(float f) {
        this.mShadowRadius = f;
        applyShadowMode();
        invalidate();
    }

    public ShadowButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        float f = context.getResources().getDisplayMetrics().density;
        this.mShadowRadius = 3.0f * f;
        this.mBgInset = 4.0f * f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.osFloatButton, 0, 0);
        this.mShadowRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.osFloatButton_fbshadowRadius, this.mShadowRadius) - f;
        this.mShadowColor = typedArrayObtainStyledAttributes.getColor(R.styleable.osFloatButton_fbshadowColor, 1711516148);
        typedArrayObtainStyledAttributes.recycle();
        if (getBackground() != null) {
            this.mBgWidth = getBackground().getIntrinsicWidth();
        }
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        if (getBackgroundTintList() != null) {
            this.mPaint.setColor(getBackgroundTintList().getDefaultColor());
        } else {
            this.mPaint.setColor(0);
        }
        setOutlineProvider(new ViewOutlineProvider() {
            @Override
            public void getOutline(View view, Outline outline) {
                int i = ShadowButton.this.mBgWidth / 2;
                outline.setOval((ShadowButton.this.mWidth / 2) - i, 0, (ShadowButton.this.mWidth / 2) + i, ShadowButton.this.mBgWidth);
            }
        });
        applyShadowMode();
    }
}
