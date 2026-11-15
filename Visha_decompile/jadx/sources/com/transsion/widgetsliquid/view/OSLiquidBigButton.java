package com.transsion.widgetsliquid.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.transsion.widgetslib.view.OSBigButton;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetslib.widget.OsPressSmoothCornerDrawable;
import com.transsion.widgetsliquid.R;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import defpackage.olb;
import defpackage.u97;
import defpackage.yj1;

public class OSLiquidBigButton extends OSLiquidContainerRootLayout {
    public OSBigButton N;
    public OsPressSmoothCornerDrawable O;
    public Context P;
    public boolean Q;
    public View.OnClickListener R;
    public u97 S;

    public OSLiquidBigButton(Context context) {
        this(context, null);
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    @Override
    public boolean dispatchTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!isEnabled()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.O.showWithFadeAnimation();
        } else if (action == 1 || action == 3) {
            this.O.hideWithFadeAnimation();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public OSBigButton getOsBigButton() {
        return this.N;
    }

    @Override
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        measureChild(this.N, i, i2);
        if (mode == 1073741824 || this.N.getMeasuredHeight() <= 0 || this.N.getMeasuredWidth() <= 0) {
            super.onMeasure(i, i2);
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.N.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.N.getMeasuredHeight(), 1073741824));
        }
        if (this.N.getMeasuredHeight() > 0) {
            float measuredHeight = this.N.getMeasuredHeight() / 2.0f;
            setShadowCorner(measuredHeight);
            this.O.setCornerRadius(measuredHeight);
        }
    }

    public final void s() {
        setPadding(0, 0, 0, 0);
        setClipChildren(false);
        setClipToPadding(false);
        this.O.setEnableDefRoundCorner(false);
        this.N.setBackgroundColor(0);
        if (olb.Z(getContext())) {
            int iD = yj1.d(this.P, this.Q ? 0 : 16);
            int paddingTop = this.N.getPaddingTop();
            this.N.setPadding(iD, paddingTop, iD, paddingTop);
        }
        if (isNightMode()) {
            if (getMixLevel() == 1 || getMixLevel() == 5) {
                this.O.setFillColor(Color.parseColor("#14FFFFFF"));
            } else {
                this.O.setFillColor(Color.parseColor("#33FFFFFF"));
            }
        } else if (getMixLevel() == 5 || getMixLevel() == 0) {
            this.O.setFillColor(Color.parseColor("#33FFFFFF"));
        } else {
            this.O.setFillColor(Color.parseColor("#CCFFFFFF"));
        }
        if (olb.P) {
            setElasticTypeConfig(ElasticTypeConfig.BUTTON);
            setLightTypeConfig(LightTypeConfig.BIG_BUTTON_AUTO);
            this.N.setOnTouchListener(null);
        } else {
            this.S.c(this.N, 1.05f, this);
            addView(this.O, new FrameLayout.LayoutParams(-1, -1));
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        addView(this.N, layoutParams);
    }

    @Override
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (getMixLevel() == 0) {
            super.setAlpha(z ? 1.0f : 0.4f);
            this.N.setClickable(z);
            return;
        }
        if (getMixLevel() != 5) {
            if (getMixLevel() == 1) {
                this.N.setEnabled(z);
                return;
            } else {
                this.N.setClickable(z);
                return;
            }
        }
        this.N.setEnabled(z);
        if (z) {
            if (Build.VERSION.SDK_INT >= 31) {
                int iZ = olb.z(this.P);
                setBrandColor(Color.argb((int) (getBrandAlpha().floatValue() * 255.0f), Color.red(iZ), Color.green(iZ), Color.blue(iZ)));
                return;
            }
            return;
        }
        int iM = olb.m(this.P, R.attr.os_brand_disabled, R.color.os_brand_disabled_hios);
        if (Build.VERSION.SDK_INT >= 31) {
            setBrandColor(Color.argb((int) (getBrandAlpha().floatValue() * 255.0f), Color.red(iM), Color.green(iM), Color.blue(iM)));
        }
    }

    @Override
    public void setOnClickListener(final View.OnClickListener onClickListener) {
        if (onClickListener == null) {
            this.R = null;
            super.setOnClickListener(null);
            this.N.setOnClickListener(null);
        } else {
            View.OnClickListener onClickListener2 = new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.t(onClickListener, view);
                }
            };
            this.R = onClickListener2;
            super.setOnClickListener(onClickListener2);
            this.N.setOnClickListener(this.R);
        }
    }

    public void setText(CharSequence charSequence) {
        this.N.setText(charSequence);
    }

    @Override
    public void setVisibility(int i) {
        super.setVisibility(i);
        this.N.setVisibility(i);
        this.O.setVisibility(i);
    }

    public final void t(View.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this);
    }

    public OSLiquidBigButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OSLiquidBigButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Q = false;
        this.N = new OSBigButton(context, attributeSet, i);
        this.O = new OsPressSmoothCornerDrawable(context, attributeSet, i);
        this.P = context;
        this.S = new u97();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.transsion.widgetslib.R.styleable.osBigLiqButton);
        this.Q = typedArrayObtainStyledAttributes.getBoolean(com.transsion.widgetslib.R.styleable.osBigLiqButton_isTinyButton, false);
        typedArrayObtainStyledAttributes.recycle();
        if (this.Q) {
            this.N.setMaxButtonHeightDp(30);
            this.N.setMinButtonHeightDp(30);
            this.N.setMaxTextLine(1);
            this.N.setMaxLines(1);
        }
        s();
    }
}
