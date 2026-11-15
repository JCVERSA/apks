package com.transsion.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.common.R;
import defpackage.dt5;
import defpackage.fs5;
import defpackage.h27;
import defpackage.ur5;

public class MusicLottieAnimationView extends LottieAnimationView implements h27.b {
    private static final String AUDIO_PLAYING_ASSET = "audio_playing.json";
    public static boolean mIsPlaying = false;
    private boolean mCompositionRequested;
    int mPlatformBasicColor;

    public MusicLottieAnimationView(Context context) {
        super(context);
        initLazyLoad();
    }

    public static void bindPlayingIndicator(MusicLottieAnimationView musicLottieAnimationView, int i, boolean z) {
        if (musicLottieAnimationView == null) {
            return;
        }
        musicLottieAnimationView.setVisibility(z ? 0 : 8);
        if (!z) {
            musicLottieAnimationView.pauseAnimation();
            return;
        }
        musicLottieAnimationView.mPlatformBasicColor = i;
        musicLottieAnimationView.ensureCompositionLoaded();
        LottieUtils.dynamicModifyAutoPlayingLottieColor(musicLottieAnimationView, i);
        if (mIsPlaying) {
            musicLottieAnimationView.playAnimation();
        } else {
            musicLottieAnimationView.pauseAnimation();
        }
    }

    private void initLazyLoad() {
        setCacheComposition(true);
        if (getComposition() != null) {
            this.mCompositionRequested = true;
        } else {
            cancelAnimation();
        }
    }

    public void lambda$ensureCompositionLoaded$0(ur5 ur5Var) {
        if (getComposition() == null) {
            setComposition(ur5Var);
        }
        LottieUtils.dynamicModifyAutoPlayingLottieColor(this, this.mPlatformBasicColor);
        updateAnimotion();
    }

    public void updateAnimotion() {
        if (mIsPlaying && getVisibility() == 0) {
            resumeAnimation();
        } else {
            pauseAnimation();
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i == 1026) {
            mIsPlaying = ((Boolean) objArr[0]).booleanValue();
            updateAnimotion();
        } else {
            if (i != 1030) {
                return;
            }
            mIsPlaying = ((Integer) objArr[0]).intValue() == 1;
            updateAnimotion();
        }
    }

    public void ensureCompositionLoaded() {
        if (this.mCompositionRequested || getComposition() != null) {
            return;
        }
        this.mCompositionRequested = true;
        fs5.l(getContext().getApplicationContext(), AUDIO_PLAYING_ASSET).d(new dt5() {
            @Override
            public final void onResult(Object obj) {
                this.a.lambda$ensureCompositionLoaded$0((ur5) obj);
            }
        });
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.mPlatformBasicColor = typedValue.data;
        h27.c().b(this, AnalyticsListener.EVENT_DRM_KEYS_REMOVED);
        h27.c().b(this, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR);
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.updateAnimotion();
            }
        });
    }

    @Override
    public void onDetachedFromWindow() {
        h27.c().f(this, AnalyticsListener.EVENT_DRM_KEYS_REMOVED);
        h27.c().f(this, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR);
        super.onDetachedFromWindow();
    }

    @Override
    public void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        if (getVisibility() == 0) {
            if (i != 1) {
                pauseAnimation();
            } else if (mIsPlaying) {
                resumeAnimation();
            }
        }
    }

    @Override
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            pauseAnimation();
            return;
        }
        ensureCompositionLoaded();
        LottieUtils.dynamicModifyAutoPlayingLottieColor(this, this.mPlatformBasicColor);
        h27.c().b(this, AnalyticsListener.EVENT_DRM_KEYS_REMOVED);
        h27.c().b(this, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR);
        if (mIsPlaying) {
            resumeAnimation();
        }
    }

    public MusicLottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initLazyLoad();
    }

    public MusicLottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initLazyLoad();
    }
}
