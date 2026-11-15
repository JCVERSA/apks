package com.transsion.widgets.battery;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.BatteryManager;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleObserver;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.OnLifecycleEvent;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.transsion.common.R;
import defpackage.se;

public class BatteryView extends View implements LifecycleObserver {
    private int borderColor;
    private float borderPadding;
    private Paint borderPaint;
    private RectF borderRf;
    private float borderWidth;
    private int chargingSpeed;
    private int currentPower;
    private int headerColor;
    private Paint headerPaint;
    private RectF headerRf;
    private float headerWidth;
    private int height;
    private int highColor;
    private int lowColor;
    private int lowValue;
    private Context mContext;
    private Handler mHandler;
    private Lifecycle mLifecycle;
    private OnBatteryPowerListener mOnBatteryPowerListener;
    private int mediumColor;
    private int mediumValue;
    private int noChargingHighColor;
    private BatteryViewOrientation orientation;
    private int power;
    private Paint powerPaint;
    private RectF powerRf;
    private float radis;
    private BroadcastReceiver receiver;
    private Runnable runnable;
    private int width;

    public BatteryView(Context context) {
        this(context, null);
    }

    private void drawHorizontalLeft(Canvas canvas) {
        if (this.borderRf == null) {
            float f = this.headerWidth + this.borderPadding;
            float f2 = this.borderWidth;
            this.borderRf = new RectF(f + f2, f2, this.width - f2, this.height - f2);
        }
        RectF rectF = this.borderRf;
        float f3 = this.radis;
        canvas.drawRoundRect(rectF, f3, f3, this.borderPaint);
        if (this.powerRf == null) {
            initBattery();
            setPower(this.currentPower);
        }
        RectF rectF2 = this.powerRf;
        float f4 = this.radis;
        canvas.drawRoundRect(rectF2, f4, f4, this.powerPaint);
        if (this.headerRf == null) {
            float f5 = this.height / 3.0f;
            this.headerRf = new RectF(0.0f, f5, this.headerWidth, 2.0f * f5);
        }
        RectF rectF3 = this.headerRf;
        float f6 = this.radis;
        canvas.drawRoundRect(rectF3, f6, f6, this.headerPaint);
    }

    private void drawHorizontalRight(Canvas canvas) {
        if (this.borderRf == null) {
            float f = this.borderWidth;
            this.borderRf = new RectF(f, f, ((this.width - f) - this.borderPadding) - this.headerWidth, this.height - f);
        }
        RectF rectF = this.borderRf;
        float f2 = this.radis;
        canvas.drawRoundRect(rectF, f2, f2, this.borderPaint);
        if (this.powerRf == null) {
            initBattery();
            setPower(this.currentPower);
        }
        RectF rectF2 = this.powerRf;
        float f3 = this.radis;
        canvas.drawRoundRect(rectF2, f3, f3, this.powerPaint);
        if (this.headerRf == null) {
            float f4 = this.height / 3.0f;
            int i = this.width;
            this.headerRf = new RectF(i - this.headerWidth, f4, i, 2.0f * f4);
        }
        RectF rectF3 = this.headerRf;
        float f5 = this.radis;
        canvas.drawRoundRect(rectF3, f5, f5, this.headerPaint);
    }

    private void drawVerticalBottom(Canvas canvas) {
        if (this.borderRf == null) {
            float f = this.borderWidth;
            this.borderRf = new RectF(f, f, this.width - f, ((this.height - this.headerWidth) - this.borderPadding) - f);
        }
        RectF rectF = this.borderRf;
        float f2 = this.radis;
        canvas.drawRoundRect(rectF, f2, f2, this.borderPaint);
        if (this.powerRf == null) {
            initBattery();
            setPower(this.currentPower);
        }
        RectF rectF2 = this.powerRf;
        float f3 = this.radis;
        canvas.drawRoundRect(rectF2, f3, f3, this.powerPaint);
        if (this.headerRf == null) {
            float f4 = this.width / 3.0f;
            int i = this.height;
            this.headerRf = new RectF(f4, i - this.headerWidth, 2.0f * f4, i);
        }
        RectF rectF3 = this.headerRf;
        float f5 = this.radis;
        canvas.drawRoundRect(rectF3, f5, f5, this.headerPaint);
    }

    private void drawVerticalTop(Canvas canvas) {
        if (this.borderRf == null) {
            float f = this.borderWidth;
            this.borderRf = new RectF(f, this.headerWidth + this.borderPadding + f, this.width - f, this.height - f);
        }
        RectF rectF = this.borderRf;
        float f2 = this.radis;
        canvas.drawRoundRect(rectF, f2, f2, this.borderPaint);
        if (this.powerRf == null) {
            initBattery();
            setPower(this.currentPower);
        }
        RectF rectF2 = this.powerRf;
        float f3 = this.radis;
        canvas.drawRoundRect(rectF2, f3, f3, this.powerPaint);
        if (this.headerRf == null) {
            float f4 = this.width / 3.0f;
            this.headerRf = new RectF(f4, 0.0f, 2.0f * f4, this.headerWidth);
        }
        RectF rectF3 = this.headerRf;
        float f5 = this.radis;
        canvas.drawRoundRect(rectF3, f5, f5, this.headerPaint);
    }

    private void getAttrs(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BatteryView);
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.BatteryView_bv_orientation, 1);
        if (i == 0) {
            this.orientation = BatteryViewOrientation.HORIZONTAL_LEFT;
        } else if (i == 1) {
            this.orientation = BatteryViewOrientation.HORIZONTAL_RIGHT;
        } else if (i == 2) {
            this.orientation = BatteryViewOrientation.VERTICAL_TOP;
        } else if (i == 3) {
            this.orientation = BatteryViewOrientation.VERTICAL_BOTTOM;
        }
        this.borderPadding = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BatteryView_bv_border_padding, 2);
        this.borderWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BatteryView_bv_border_width, 2);
        this.headerWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BatteryView_bv_header_width, 10);
        this.radis = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BatteryView_bv_radis, 2);
        this.borderColor = typedArrayObtainStyledAttributes.getColor(R.styleable.BatteryView_bv_border_color, -1);
        this.lowColor = typedArrayObtainStyledAttributes.getColor(R.styleable.BatteryView_bv_power_color_low, this.mContext.getResources().getColor(R.color.low));
        this.lowValue = typedArrayObtainStyledAttributes.getInt(R.styleable.BatteryView_bv_power_value_low, 10);
        this.mediumColor = typedArrayObtainStyledAttributes.getColor(R.styleable.BatteryView_bv_power_color_medium, this.mContext.getResources().getColor(R.color.medium));
        this.mediumValue = typedArrayObtainStyledAttributes.getInt(R.styleable.BatteryView_bv_power_value_medium, 20);
        int i2 = R.styleable.BatteryView_bv_power_color_high;
        Resources resources = this.mContext.getResources();
        int i3 = R.color.high;
        this.highColor = typedArrayObtainStyledAttributes.getColor(i2, resources.getColor(i3));
        this.headerColor = typedArrayObtainStyledAttributes.getColor(R.styleable.BatteryView_bv_header_color, -1);
        this.noChargingHighColor = typedArrayObtainStyledAttributes.getColor(R.styleable.BatteryView_bv_no_charging_color_high, this.mContext.getResources().getColor(i3));
        int i4 = typedArrayObtainStyledAttributes.getInt(R.styleable.BatteryView_bv_charging_speed, 2) % 10;
        this.chargingSpeed = i4;
        if (i4 == 0) {
            this.chargingSpeed = 1;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private float getHorizontalWidth(int i) {
        float f = this.width - (this.borderWidth * 2.0f);
        float f2 = this.borderPadding;
        return ((((f - (2.0f * f2)) - f2) - this.headerWidth) * i) / 100.0f;
    }

    private float getVerticalHeight(int i) {
        return ((((this.height - (this.borderWidth * 2.0f)) - (this.borderPadding * 3.0f)) - this.headerWidth) * i) / 100.0f;
    }

    private void initBattery() {
        try {
            BatteryManager batteryManager = (BatteryManager) se.a().getSystemService("batterymanager");
            if (batteryManager != null) {
                this.currentPower = batteryManager.getIntProperty(4);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void initPaints() {
        Paint paint = new Paint();
        this.borderPaint = paint;
        paint.setAntiAlias(true);
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setColor(this.borderColor);
        this.borderPaint.setStrokeWidth(this.borderWidth);
        Paint paint2 = new Paint();
        this.powerPaint = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = this.powerPaint;
        Paint.Style style = Paint.Style.FILL;
        paint3.setStyle(style);
        this.powerPaint.setColor(this.highColor);
        this.powerPaint.setStrokeWidth(0.0f);
        Paint paint4 = new Paint();
        this.headerPaint = paint4;
        paint4.setAntiAlias(true);
        this.headerPaint.setStyle(style);
        this.headerPaint.setColor(this.headerColor);
        this.headerPaint.setStrokeWidth(0.0f);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    private void registerPower() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        this.mContext.registerReceiver(this.receiver, intentFilter);
    }

    public void startCharge() {
        if (this.runnable != null) {
            return;
        }
        this.power = this.currentPower;
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                BatteryView.this.power %= 100;
                BatteryView batteryView = BatteryView.this;
                batteryView.setPower(batteryView.power);
                BatteryView.this.power += BatteryView.this.chargingSpeed;
                BatteryView.this.mHandler.postDelayed(this, 200L);
            }
        };
        this.runnable = runnable;
        this.mHandler.post(runnable);
    }

    public void stopCharge() {
        Runnable runnable = this.runnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
            this.runnable = null;
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    private void unregisterPower() {
        this.mContext.unregisterReceiver(this.receiver);
    }

    @Override
    public void onDraw(Canvas canvas) {
        BatteryViewOrientation batteryViewOrientation = this.orientation;
        if (batteryViewOrientation == BatteryViewOrientation.HORIZONTAL_LEFT) {
            drawHorizontalLeft(canvas);
            return;
        }
        if (batteryViewOrientation == BatteryViewOrientation.HORIZONTAL_RIGHT) {
            drawHorizontalRight(canvas);
        } else if (batteryViewOrientation == BatteryViewOrientation.VERTICAL_TOP) {
            drawVerticalTop(canvas);
        } else if (batteryViewOrientation == BatteryViewOrientation.VERTICAL_BOTTOM) {
            drawVerticalBottom(canvas);
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.width = getMeasuredWidth();
        this.height = getMeasuredHeight();
    }

    public void removeOnBatteryPowerListener() {
        this.mOnBatteryPowerListener = null;
    }

    public void setChargingSpeed(int i) {
        this.chargingSpeed = i;
    }

    public void setLifecycleOwner(@NonNull LifecycleOwner lifecycleOwner) {
        Lifecycle lifecycle = this.mLifecycle;
        if (lifecycle != null) {
            lifecycle.removeObserver(this);
        }
        Lifecycle lifecycle2 = lifecycleOwner.getLifecycle();
        this.mLifecycle = lifecycle2;
        lifecycle2.addObserver(this);
    }

    public void setOnBatteryPowerListener(OnBatteryPowerListener onBatteryPowerListener) {
        this.mOnBatteryPowerListener = onBatteryPowerListener;
    }

    public synchronized void setPower(int i) {
        try {
            OnBatteryPowerListener onBatteryPowerListener = this.mOnBatteryPowerListener;
            if (onBatteryPowerListener != null) {
                onBatteryPowerListener.onPower(this.currentPower);
            }
            if (i <= this.lowValue) {
                this.powerPaint.setColor(this.lowColor);
            } else if (i < this.mediumValue) {
                this.powerPaint.setColor(this.mediumColor);
            } else if (this.runnable == null) {
                this.powerPaint.setColor(this.noChargingHighColor);
            } else {
                this.powerPaint.setColor(this.highColor);
            }
            BatteryViewOrientation batteryViewOrientation = this.orientation;
            if (batteryViewOrientation == BatteryViewOrientation.HORIZONTAL_RIGHT) {
                float horizontalWidth = getHorizontalWidth(i);
                float f = this.borderWidth;
                float f2 = this.borderPadding;
                this.powerRf = new RectF(f + f2, f + f2, f + f2 + horizontalWidth, (this.height - f) - f2);
                postInvalidate();
            } else if (batteryViewOrientation == BatteryViewOrientation.HORIZONTAL_LEFT) {
                float horizontalWidth2 = getHorizontalWidth(i);
                int i2 = this.width;
                float f3 = this.borderWidth;
                float f4 = this.borderPadding;
                this.powerRf = new RectF(((i2 - f3) - f4) - horizontalWidth2, f3 + f4, (i2 - f3) - f4, (this.height - f3) - f4);
                postInvalidate();
            } else if (batteryViewOrientation == BatteryViewOrientation.VERTICAL_TOP) {
                float verticalHeight = getVerticalHeight(i);
                float f5 = this.borderWidth;
                float f6 = this.borderPadding;
                int i3 = this.height;
                this.powerRf = new RectF(f5 + f6, ((i3 - f5) - f6) - verticalHeight, (this.width - f5) - f6, (i3 - f5) - f6);
                postInvalidate();
            } else if (batteryViewOrientation == BatteryViewOrientation.VERTICAL_BOTTOM) {
                float verticalHeight2 = getVerticalHeight(i);
                float f7 = this.borderWidth;
                float f8 = this.borderPadding;
                this.powerRf = new RectF(f7 + f8, f7 + f8, (this.width - f7) - f8, f7 + f8 + verticalHeight2);
                postInvalidate();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public BatteryView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BatteryView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.currentPower = 60;
        this.mHandler = new Handler();
        this.receiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context2, Intent intent) {
                int intExtra = intent.getIntExtra(MediaFormat.KEY_LEVEL, 0);
                Log.i("电池剩余电量power", intExtra + "");
                intent.getIntExtra("scale", 0);
                if (intent.getIntExtra("status", 1) != 2 || intExtra >= 100) {
                    BatteryView.this.stopCharge();
                } else {
                    BatteryView.this.startCharge();
                }
                BatteryView.this.currentPower = intExtra;
                if (BatteryView.this.powerRf == null || BatteryView.this.runnable != null) {
                    return;
                }
                BatteryView.this.setPower(intExtra);
            }
        };
        this.mContext = context;
        getAttrs(context, attributeSet);
        initPaints();
    }
}
