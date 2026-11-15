package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.common.R;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.widgets.LottieUtils;
import defpackage.h27;

public class VideoLottieAnimationView extends LottieAnimationView implements h27.b {
    public static int mStatus = 1;
    public int b;

    public VideoLottieAnimationView(Context context) {
        super(context);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i == 1026) {
            mStatus = -1;
            lambda$onAttachedToWindow$0();
        } else {
            if (i != 1030) {
                return;
            }
            mStatus = ((Integer) objArr[0]).intValue();
            lambda$onAttachedToWindow$0();
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.b = typedValue.data;
        h27.c().b(this, AnalyticsListener.EVENT_DRM_KEYS_REMOVED);
        mStatus = (VideoPlayManager.X().A0() && VideoPlayManager.X().y0()) ? 1 : 0;
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onAttachedToWindow$0();
            }
        });
    }

    @Override
    public void onDetachedFromWindow() {
        h27.c().f(this, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR);
        h27.c().f(this, AnalyticsListener.EVENT_DRM_KEYS_REMOVED);
        super.onDetachedFromWindow();
    }

    @Override
    public void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        if (getVisibility() == 0) {
            if (i != 1) {
                pauseAnimation();
            } else if (mStatus == 1 && getVisibility() == 0 && VideoPlayManager.X().A0()) {
                resumeAnimation();
            }
        }
    }

    @Override
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            pauseAnimation();
            return;
        }
        LottieUtils.dynamicModifyAutoPlayingLottieColor(this, this.b);
        h27.c().b(this, AnalyticsListener.EVENT_DRM_KEYS_REMOVED);
        h27.c().b(this, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR);
        if (mStatus == 1) {
            resumeAnimation();
        }
    }

    public final void lambda$onAttachedToWindow$0() {
        if (mStatus == 1 && getVisibility() == 0 && VideoPlayManager.X().A0()) {
            resumeAnimation();
        } else if (mStatus == 0 && getVisibility() == 0) {
            pauseAnimation();
        } else {
            pauseAnimation();
        }
    }

    public VideoLottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VideoLottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
