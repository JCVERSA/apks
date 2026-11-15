package com.mbridge.msdk.dycreator.baseview.rewardpopview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.Nullable;

public class MBGradientAndShadowTextView extends TextView {

    private int f33881a;

    private int f33882b;

    private int f33883c;

    private int f33884d;

    private LinearGradient f33885e;
    public float mShadowDx;
    public float mShadowDy;
    public float mShadowRadius;

    public static class GradientAndShadowParameters {
        public int gradientEndColor;
        public int gradientStartColor;
        public int shadowColor;
        public int textSize = 40;
        public float shadowRadius = 3.0f;
        public float shadowDx = 1.5f;
        public float shadowDy = 1.8f;
    }

    public MBGradientAndShadowTextView(Context context) {
        super(context);
        this.f33881a = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBED;
        this.f33882b = AcquireRewardPopViewConst.DEFAULT_COLOR_FFBD6F;
        this.f33883c = AcquireRewardPopViewConst.DEFAULT_COLOR_EC7501;
        this.f33884d = 40;
        this.mShadowRadius = 3.0f;
        this.mShadowDx = 1.5f;
        this.mShadowDy = 1.8f;
        a();
    }

    private void a() {
        setTextSize(this.f33884d);
        setTypeface(Typeface.defaultFromStyle(3));
        this.f33885e = new LinearGradient(0.0f, 0.0f, 0.0f, getTextSize(), this.f33881a, this.f33882b, Shader.TileMode.CLAMP);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        getPaint().setShader(null);
        getPaint().setShadowLayer(3.0f, 1.5f, 1.8f, this.f33883c);
        super.onDraw(canvas);
        getPaint().clearShadowLayer();
        getPaint().setShader(this.f33885e);
        super.onDraw(canvas);
    }

    public MBGradientAndShadowTextView(Context context, GradientAndShadowParameters gradientAndShadowParameters) {
        super(context);
        this.f33881a = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBED;
        this.f33882b = AcquireRewardPopViewConst.DEFAULT_COLOR_FFBD6F;
        this.f33883c = AcquireRewardPopViewConst.DEFAULT_COLOR_EC7501;
        this.f33884d = 40;
        this.mShadowRadius = 3.0f;
        this.mShadowDx = 1.5f;
        this.mShadowDy = 1.8f;
        if (gradientAndShadowParameters != null) {
            this.f33881a = gradientAndShadowParameters.gradientStartColor;
            this.f33882b = gradientAndShadowParameters.gradientEndColor;
            this.f33883c = gradientAndShadowParameters.shadowColor;
            this.f33884d = gradientAndShadowParameters.textSize;
            this.mShadowRadius = gradientAndShadowParameters.shadowRadius;
            this.mShadowDx = gradientAndShadowParameters.shadowDx;
            this.mShadowDy = gradientAndShadowParameters.shadowDy;
        }
        a();
    }

    public MBGradientAndShadowTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33881a = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBED;
        this.f33882b = AcquireRewardPopViewConst.DEFAULT_COLOR_FFBD6F;
        this.f33883c = AcquireRewardPopViewConst.DEFAULT_COLOR_EC7501;
        this.f33884d = 40;
        this.mShadowRadius = 3.0f;
        this.mShadowDx = 1.5f;
        this.mShadowDy = 1.8f;
    }

    public MBGradientAndShadowTextView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33881a = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBED;
        this.f33882b = AcquireRewardPopViewConst.DEFAULT_COLOR_FFBD6F;
        this.f33883c = AcquireRewardPopViewConst.DEFAULT_COLOR_EC7501;
        this.f33884d = 40;
        this.mShadowRadius = 3.0f;
        this.mShadowDx = 1.5f;
        this.mShadowDy = 1.8f;
    }

    public MBGradientAndShadowTextView(Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f33881a = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBED;
        this.f33882b = AcquireRewardPopViewConst.DEFAULT_COLOR_FFBD6F;
        this.f33883c = AcquireRewardPopViewConst.DEFAULT_COLOR_EC7501;
        this.f33884d = 40;
        this.mShadowRadius = 3.0f;
        this.mShadowDx = 1.5f;
        this.mShadowDy = 1.8f;
    }
}
