package com.transsion.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.NonNull;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.common.R;
import defpackage.h27;

public class EpisodeLottieAnimationView extends LottieAnimationView implements h27.b {
    public static int mStatus = 1;
    int mPlatformBasicColor;

    public EpisodeLottieAnimationView(Context context) {
        super(context);
    }

    public void lambda$onAttachedToWindow$0() {
        if (mStatus == 1 && getVisibility() == 0) {
            resumeAnimation();
        } else if (mStatus == 0 && getVisibility() == 0) {
            pauseAnimation();
        } else {
            pauseAnimation();
            setVisibility(8);
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i != 1000) {
            switch (i) {
                case 1014:
                    mStatus = 1;
                    lambda$onAttachedToWindow$0();
                    break;
            }
        }
        mStatus = 0;
        lambda$onAttachedToWindow$0();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.mPlatformBasicColor = typedValue.data;
        h27.c().b(this, 1014);
        h27.c().b(this, 1015);
        h27.c().b(this, 1016);
        h27.c().b(this, 1000);
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onAttachedToWindow$0();
            }
        });
    }

    @Override
    public void onDetachedFromWindow() {
        h27.c().f(this, 1014);
        h27.c().f(this, 1015);
        h27.c().f(this, 1016);
        h27.c().f(this, 1000);
        super.onDetachedFromWindow();
    }

    @Override
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            pauseAnimation();
            return;
        }
        LottieUtils.dynamicModifyAutoPlayingLottieColor(this, this.mPlatformBasicColor);
        h27.c().b(this, 1014);
        h27.c().b(this, 1015);
        h27.c().b(this, 1016);
        h27.c().b(this, 1000);
        if (mStatus == 1) {
            resumeAnimation();
        } else {
            pauseAnimation();
        }
    }

    public EpisodeLottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EpisodeLottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
