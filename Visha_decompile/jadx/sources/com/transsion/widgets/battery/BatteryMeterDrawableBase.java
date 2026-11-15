package com.transsion.widgets.battery;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.google.android.material.timepicker.TimeModel;
import com.transsion.common.R;
import java.util.Locale;

public class BatteryMeterDrawableBase extends Drawable {
    private static final float ASPECT_RATIO = 0.58f;
    private static final float RADIUS_RATIO = 0.05882353f;
    public static final String TAG = "BatteryMeterDrawableBase";
    private float battaryWidth;
    protected final Paint mBatteryPaint;
    protected final Paint mBoltPaint;
    private int mChargeColor;
    private boolean mCharging;
    protected final int[] mColors;
    protected final Context mContext;
    protected final Paint mFramePaint;
    private int mHeight;
    private final int mIntrinsicHeight;
    private final int mIntrinsicWidth;
    private boolean mLoadBoltBg;
    private boolean mLoadChargeBg;
    private boolean mLoadPlusBg;
    protected boolean mLongBatteryLife;
    private int mPaddingBatteryBodyAndBolt;
    protected final Paint mPlusPaint;
    private boolean mPowerSaveEnabled;
    private boolean mShowPercent;
    protected Paint mTempPaint;
    protected final Paint mTextPaint;
    private final int mWarningLevel;
    protected final Paint mWarningTextPaint;
    private int mWidth;
    private int mLevel = -1;
    protected boolean mPowerSaveAsColorError = true;
    private int mIconTint = -1;
    private final Rect mPadding = new Rect();
    private final Path mBatteryBgPath = new Path();
    private final Path mBatteryBoltPath = new Path();
    private final Path mBatteryPlusPath = new Path();
    private final Path mBatteryButtomPath = new Path();

    public BatteryMeterDrawableBase(Context context, int i) {
        this.mContext = context;
        Resources resources = context.getResources();
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(R.array.batterymeter_color_levels);
        TypedArray typedArrayObtainTypedArray2 = resources.obtainTypedArray(R.array.batterymeter_color_values);
        int length = typedArrayObtainTypedArray.length();
        this.mColors = new int[length * 2];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            this.mColors[i3] = typedArrayObtainTypedArray.getInt(i2, 0);
            this.mColors[i3 + 1] = typedArrayObtainTypedArray2.getColor(i2, 0);
        }
        typedArrayObtainTypedArray.recycle();
        typedArrayObtainTypedArray2.recycle();
        this.mWarningLevel = 15;
        Paint paint = new Paint(1);
        this.mFramePaint = paint;
        paint.setColor(i);
        paint.setDither(true);
        paint.setStrokeWidth(0.0f);
        Paint.Style style = Paint.Style.FILL_AND_STROKE;
        paint.setStyle(style);
        Paint paint2 = new Paint(1);
        this.mBatteryPaint = paint2;
        paint2.setDither(true);
        paint2.setStrokeWidth(0.0f);
        paint2.setStyle(style);
        Paint paint3 = new Paint(1);
        this.mTextPaint = paint3;
        paint3.setTypeface(Typeface.create("sans-serif-condensed", 1));
        Paint.Align align = Paint.Align.CENTER;
        paint3.setTextAlign(align);
        Paint paint4 = new Paint(1);
        this.mWarningTextPaint = paint4;
        paint4.setTypeface(Typeface.create(C.SANS_SERIF_NAME, 1));
        paint4.setTextAlign(align);
        int[] iArr = this.mColors;
        if (iArr.length > 1) {
            paint4.setColor(iArr[1]);
        }
        Context context2 = this.mContext;
        int i4 = R.color.os_red_basic_color;
        this.mChargeColor = context2.getColor(i4);
        Paint paint5 = new Paint(1);
        this.mBoltPaint = paint5;
        paint5.setColor(this.mContext.getColor(i4));
        Paint paint6 = new Paint(1);
        this.mPlusPaint = paint6;
        paint6.setColor(this.mContext.getColor(i4));
        this.mIntrinsicWidth = 48;
        this.mIntrinsicHeight = 25;
        this.mPaddingBatteryBodyAndBolt = 4;
        this.battaryWidth = 36.0f;
    }

    public static float constrain(float f, float f2, float f3) {
        if (f < f2) {
            return f2;
        }
        return f > f3 ? f3 : f;
    }

    private void drawBattery(Canvas canvas) {
        int i = this.mLevel;
        Rect bounds = getBounds();
        if (i == -1) {
            return;
        }
        this.mBatteryPaint.setColor(getColorForLevel(i));
        this.mBatteryPaint.setAlpha(77);
        this.mFramePaint.setColor(this.mIconTint);
        if (this.mShowPercent) {
            this.mBatteryPaint.setAlpha(77);
        }
        if (i <= this.mWarningLevel) {
            this.mBatteryPaint.setAlpha(255);
        }
        loadChargeBg();
        canvas.drawPath(this.mBatteryButtomPath, this.mFramePaint);
        canvas.drawPath(this.mBatteryBgPath, this.mFramePaint);
        drawBatteryBody(canvas, i, bounds);
    }

    private void drawBatteryBody(Canvas canvas, int i, Rect rect) {
        float fConstrain = constrain(i / 100.0f, 0.0f, 1.0f);
        int i2 = this.mPaddingBatteryBodyAndBolt;
        int i3 = rect.right;
        canvas.drawRoundRect((i3 - i2) - (this.battaryWidth * fConstrain), rect.top + i2 + 1.0f, (i3 - i2) - 1.0f, (rect.bottom - i2) - 1.0f, 1.0f, 1.0f, this.mBatteryPaint);
        if (this.mShowPercent) {
            Locale locale = Locale.getDefault();
            String strValueOf = locale.getLanguage().contains("ar") ? String.format(locale, TimeModel.NUMBER_FORMAT, Integer.valueOf(i)) : String.valueOf(i);
            Paint paint = this.mFramePaint;
            this.mTempPaint = paint;
            paint.setTextSize(18.0f);
            Rect rect2 = new Rect();
            this.mTempPaint.getTextBounds(strValueOf, 0, strValueOf.length(), rect2);
            canvas.drawText(strValueOf, rect.left + ((rect.width() - rect2.width()) / 2.0f), ((rect.height() / 2.0f) - rect2.bottom) + (rect2.height() / 2.0f), this.mTempPaint);
        }
    }

    private int getColorForLevel(int i) {
        if (this.mCharging) {
            return this.mIconTint;
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr = this.mColors;
            if (i2 >= iArr.length) {
                return i3;
            }
            int i4 = iArr[i2];
            int i5 = iArr[i2 + 1];
            if (i <= i4) {
                return i2 == iArr.length + (-2) ? this.mIconTint : i5;
            }
            i2 += 2;
            i3 = i5;
        }
    }

    private void loadBoltBg() {
        if (!this.mCharging || this.mLoadBoltBg) {
            return;
        }
        this.mLoadBoltBg = true;
        this.mBatteryBoltPath.moveTo(26.9f, 5.0f);
        this.mBatteryBoltPath.rLineTo(-0.7f, 6.0f);
        this.mBatteryBoltPath.rLineTo(4.5f, 0.0f);
        this.mBatteryBoltPath.rLineTo(-6.7f, 9.0f);
        this.mBatteryBoltPath.rLineTo(0.7f, -6.0f);
        this.mBatteryBoltPath.rLineTo(-4.5f, 0.0f);
        this.mBatteryBoltPath.lineTo(26.9f, 5.0f);
        this.mBatteryBoltPath.close();
        this.mBatteryBoltPath.moveTo(26.9f, 5.0f);
    }

    private void loadChargeBg() {
        if (this.mLoadChargeBg) {
            return;
        }
        this.mLoadChargeBg = true;
        this.mBatteryButtomPath.moveTo(43.4f, 1.4f);
        this.mBatteryButtomPath.rLineTo(-36.0f, 0.0f);
        this.mBatteryButtomPath.cubicTo(5.5f, 1.4f, 4.0f, 3.0f, 4.0f, 4.9f);
        this.mBatteryButtomPath.rLineTo(0.0f, 15.4f);
        this.mBatteryButtomPath.rCubicTo(0.0f, 1.9f, 1.5f, 3.4f, 3.4f, 3.4f);
        this.mBatteryButtomPath.rLineTo(36.0f, 0.0f);
        this.mBatteryButtomPath.rCubicTo(1.9f, 0.0f, 3.4f, -1.5f, 3.4f, -3.4f);
        this.mBatteryButtomPath.lineTo(46.800003f, 4.9f);
        this.mBatteryButtomPath.cubicTo(46.8f, 3.0f, 45.3f, 1.4f, 43.4f, 1.4f);
        this.mBatteryButtomPath.close();
        this.mBatteryButtomPath.moveTo(43.4f, 1.4f);
        this.mBatteryButtomPath.moveTo(45.1f, 19.4f);
        this.mBatteryButtomPath.rCubicTo(0.0f, 1.4f, -1.2f, 2.6f, -2.6f, 2.6f);
        this.mBatteryButtomPath.lineTo(8.3f, 22.0f);
        this.mBatteryButtomPath.rCubicTo(-1.4f, 0.0f, -2.6f, -1.2f, -2.6f, -2.6f);
        this.mBatteryButtomPath.lineTo(5.7000003f, 5.7f);
        this.mBatteryButtomPath.rCubicTo(0.0f, -1.4f, 1.2f, -2.6f, 2.6f, -2.6f);
        this.mBatteryButtomPath.rLineTo(34.3f, 0.0f);
        this.mBatteryButtomPath.rCubicTo(1.4f, 0.0f, 2.6f, 1.2f, 2.6f, 2.6f);
        this.mBatteryButtomPath.lineTo(45.199997f, 19.4f);
        this.mBatteryButtomPath.close();
        this.mBatteryButtomPath.moveTo(45.1f, 19.4f);
        this.mBatteryBgPath.moveTo(2.3f, 7.4f);
        this.mBatteryBgPath.rLineTo(0.9f, 0.0f);
        this.mBatteryBgPath.rLineTo(0.0f, 10.3f);
        this.mBatteryBgPath.lineTo(2.3f, 17.7f);
        this.mBatteryBgPath.rCubicTo(-0.9f, 0.0f, -1.7f, -0.8f, -1.7f, -1.7f);
        this.mBatteryBgPath.lineTo(0.5999999f, 9.2f);
        this.mBatteryBgPath.cubicTo(0.6f, 8.2f, 1.3f, 7.4f, 2.3f, 7.4f);
        this.mBatteryBgPath.close();
        this.mBatteryBgPath.moveTo(2.3f, 7.4f);
    }

    private void loadPlusBg() {
        if (!this.mPowerSaveEnabled || this.mLoadPlusBg) {
            return;
        }
        this.mLoadPlusBg = true;
        this.mBatteryPlusPath.moveTo(30.0f, 11.2f);
        this.mBatteryPlusPath.rLineTo(-4.1f, 0.0f);
        this.mBatteryPlusPath.lineTo(25.9f, 7.1f);
        this.mBatteryPlusPath.rCubicTo(0.0f, -0.6f, -0.5f, -1.1f, -1.1f, -1.1f);
        this.mBatteryPlusPath.rCubicTo(-0.6f, 0.0f, -1.1f, 0.5f, -1.1f, 1.1f);
        this.mBatteryPlusPath.rLineTo(0.0f, 4.1f);
        this.mBatteryPlusPath.rLineTo(-4.1f, 0.0f);
        this.mBatteryPlusPath.rCubicTo(-0.6f, 0.0f, -1.1f, 0.5f, -1.1f, 1.1f);
        this.mBatteryPlusPath.rCubicTo(0.0f, 0.6f, 0.5f, 1.1f, 1.1f, 1.1f);
        this.mBatteryPlusPath.rLineTo(4.1f, 0.0f);
        this.mBatteryPlusPath.rLineTo(0.0f, 4.1f);
        this.mBatteryPlusPath.rCubicTo(0.0f, 0.6f, 0.5f, 1.1f, 1.1f, 1.1f);
        this.mBatteryPlusPath.rCubicTo(0.6f, 0.0f, 1.1f, -0.5f, 1.1f, -1.1f);
        this.mBatteryPlusPath.rLineTo(0.0f, -4.1f);
        this.mBatteryPlusPath.lineTo(30.0f, 13.4f);
        this.mBatteryPlusPath.rCubicTo(0.6f, 0.0f, 1.1f, -0.5f, 1.1f, -1.1f);
        this.mBatteryPlusPath.cubicTo(31.1f, 11.7f, 30.6f, 11.2f, 30.0f, 11.2f);
        this.mBatteryPlusPath.close();
        this.mBatteryPlusPath.moveTo(30.0f, 11.2f);
    }

    private static float[] loadPoints(Resources resources, int i) {
        int[] intArray = resources.getIntArray(i);
        int iMax = 0;
        int iMax2 = 0;
        for (int i2 = 0; i2 < intArray.length; i2 += 2) {
            iMax = Math.max(iMax, intArray[i2]);
            iMax2 = Math.max(iMax2, intArray[i2 + 1]);
        }
        float[] fArr = new float[intArray.length];
        for (int i3 = 0; i3 < intArray.length; i3 += 2) {
            fArr[i3] = intArray[i3] / iMax;
            int i4 = i3 + 1;
            fArr[i4] = intArray[i4] / iMax2;
        }
        return fArr;
    }

    private void updateSize() {
        Rect bounds = getBounds();
        int i = bounds.bottom;
        Rect rect = this.mPadding;
        this.mHeight = (i - rect.bottom) - (bounds.top + rect.top);
        this.mWidth = (bounds.right - rect.right) - (bounds.left + rect.left);
    }

    public int batteryColorForLevel(int i) {
        return (this.mCharging || (this.mPowerSaveEnabled && this.mPowerSaveAsColorError)) ? this.mChargeColor : getColorForLevel(i);
    }

    @Override
    public void draw(Canvas canvas) {
        drawBattery(canvas);
    }

    public float getAspectRatio() {
        return ASPECT_RATIO;
    }

    public int getBatteryLevel() {
        return this.mLevel;
    }

    public boolean getCharging() {
        return this.mCharging;
    }

    @Override
    public int getIntrinsicHeight() {
        return this.mIntrinsicHeight;
    }

    @Override
    public int getIntrinsicWidth() {
        return this.mIntrinsicWidth;
    }

    @Override
    public int getOpacity() {
        return -1;
    }

    @Override
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.mPadding;
        if (rect2.left == 0 && rect2.top == 0 && rect2.right == 0 && rect2.bottom == 0) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    public Boolean getPowerSaveEnabled() {
        return Boolean.valueOf(this.mPowerSaveEnabled);
    }

    public float getRadiusRatio() {
        return RADIUS_RATIO;
    }

    public void postInvalidate() {
        unscheduleSelf(new Runnable() {
            @Override
            public final void run() {
                this.b.invalidateSelf();
            }
        });
        scheduleSelf(new Runnable() {
            @Override
            public final void run() {
                this.b.invalidateSelf();
            }
        }, 0L);
    }

    @Override
    public void setAlpha(int i) {
    }

    public void setBatteryLevel(int i) {
        this.mLevel = i;
        postInvalidate();
    }

    @Override
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        updateSize();
    }

    public void setCharging(boolean z) {
        this.mCharging = z;
        postInvalidate();
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.mFramePaint.setColorFilter(colorFilter);
        this.mBatteryPaint.setColorFilter(colorFilter);
        this.mWarningTextPaint.setColorFilter(colorFilter);
        this.mBoltPaint.setColorFilter(colorFilter);
        this.mPlusPaint.setColorFilter(colorFilter);
    }

    public void setColors(int i, int i2, int i3) {
        this.mIconTint = i3;
        this.mFramePaint.setColor(i3);
        this.mBoltPaint.setColor(i3);
        this.mChargeColor = i3;
        invalidateSelf();
    }

    public void setLongBatteryStatus(boolean z) {
        if (this.mLongBatteryLife != z) {
            this.mLongBatteryLife = z;
            postInvalidate();
        }
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        Rect rect = this.mPadding;
        rect.left = i;
        rect.top = i2;
        rect.right = i3;
        rect.bottom = i4;
        updateSize();
    }

    public void setPowerSave(boolean z) {
        this.mPowerSaveEnabled = z;
        postInvalidate();
    }

    public void setPowerSaveAsColorError(boolean z) {
        this.mPowerSaveAsColorError = z;
    }

    public void setShowPercent(boolean z) {
        this.mShowPercent = z;
        postInvalidate();
    }
}
