package com.transsion.widgets.battery;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.transsion.common.R;
import com.transsion.receiver.BatteryControllerReceiver;

public class BatteryMeterView extends FrameLayout implements BatteryControllerReceiver.a {
    private BatteryControllerReceiver mBatteryControllerReceiver;
    private int mBatteryHeight;
    private final ImageView mBatteryIconView;
    private int mBatteryWidth;
    private boolean mCharging;
    private ImageView mChargingView;
    private Context mContext;
    private final BatteryMeterDrawableBase mDrawable;
    private int mLevel;
    private boolean mRegistered;
    private final Runnable unRegisterRunnable;

    public BatteryMeterView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void registerBatteryReceiver(boolean z) {
        BatteryControllerReceiver batteryControllerReceiver = this.mBatteryControllerReceiver;
        if (batteryControllerReceiver != null) {
            if (!z) {
                removeCallbacks(this.unRegisterRunnable);
                postDelayed(this.unRegisterRunnable, 10000L);
            } else {
                if (this.mRegistered) {
                    return;
                }
                batteryControllerReceiver.a(getContext());
                this.mBatteryControllerReceiver.b(this);
                this.mRegistered = true;
            }
        }
    }

    private void setRTLPadding() {
        if (getResources().getConfiguration().getLayoutDirection() == 1) {
            setPadding(0, 0, getResources().getDimensionPixelOffset(R.dimen.dp2), 0);
        }
    }

    private void showChangingView(boolean z) {
        if (z != this.mCharging) {
            Log.d("BatteryMeterView", "showChangingView charging:" + z + ",mCharging:" + this.mCharging);
            this.mCharging = z;
            if (!z) {
                removeView(this.mChargingView);
                this.mChargingView = null;
                return;
            }
            this.mChargingView = new ImageView(getContext());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
            layoutParams.setMargins(getResources().getDimensionPixelOffset(R.dimen.dp1), 0, 0, 0);
            this.mChargingView.setImageResource(R.drawable.ic_change);
            addView(this.mChargingView, layoutParams);
        }
    }

    public void lambda$new$0() {
        if (this.mRegistered) {
            getContext().unregisterReceiver(this.mBatteryControllerReceiver);
            this.mBatteryControllerReceiver.b(null);
            this.mBatteryControllerReceiver = null;
            this.mRegistered = false;
        }
    }

    @Override
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mBatteryControllerReceiver = new BatteryControllerReceiver();
        registerBatteryReceiver(getVisibility() == 0);
    }

    @Override
    public void onBatteryLevelChanged(int i, boolean z, boolean z2) {
        this.mDrawable.setBatteryLevel(i);
        boolean z3 = i < 100 && z && z2;
        showChangingView(z3);
        BatteryMeterDrawableBase batteryMeterDrawableBase = this.mDrawable;
        if (batteryMeterDrawableBase != null) {
            batteryMeterDrawableBase.setCharging(z3);
        }
        this.mLevel = i;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        lambda$new$0();
        removeCallbacks(this.unRegisterRunnable);
    }

    @Override
    public void setVisibility(int i) {
        super.setVisibility(i);
        registerBatteryReceiver(i == 0);
    }

    public BatteryMeterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLevel = -1;
        this.unRegisterRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
        this.mContext = context;
        this.mBatteryWidth = getResources().getDimensionPixelSize(R.dimen.ic_sb_battery_width);
        this.mBatteryHeight = getResources().getDimensionPixelSize(R.dimen.ic_sb_battery_height);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BatteryMeterView, i, 0);
        BatteryMeterDrawableBase batteryMeterDrawableBase = new BatteryMeterDrawableBase(context, typedArrayObtainStyledAttributes.getColor(R.styleable.BatteryMeterView_frameColor, context.getColor(R.color.white)));
        this.mDrawable = batteryMeterDrawableBase;
        typedArrayObtainStyledAttributes.recycle();
        ImageView imageView = new ImageView(context);
        this.mBatteryIconView = imageView;
        imageView.setImageDrawable(batteryMeterDrawableBase);
        setRTLPadding();
        addView(imageView, new ViewGroup.MarginLayoutParams(this.mBatteryWidth, this.mBatteryHeight));
        setClipChildren(false);
        setClipToPadding(false);
    }
}
