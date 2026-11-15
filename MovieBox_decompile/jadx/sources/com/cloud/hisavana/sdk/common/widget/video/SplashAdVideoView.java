package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.R$dimen;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.c4;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.j4;
import com.google.android.exoplayer2.PlaybackException;

public class SplashAdVideoView extends FrameLayout {

    private final String f21714a;

    private AdVideoView f21715b;

    private final ImageView f21716c;

    private boolean f21717d;

    private j4 f21718e;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            if (SplashAdVideoView.this.f21715b != null) {
                SplashAdVideoView.this.f21715b.openOrCloseVolume();
            }
        }
    }

    class b implements j4 {
        b() {
        }

        @Override
        public void a() {
            if (SplashAdVideoView.this.f21718e != null) {
                SplashAdVideoView.this.f21718e.a();
            }
        }

        @Override
        public void b(long j10, long j11, int i10) {
            if (SplashAdVideoView.this.f21718e != null) {
                SplashAdVideoView.this.f21718e.b(j10, j11, i10);
            }
        }

        @Override
        public void c(boolean z10) {
            b4.b().d("SplashAdVideoView", "onVideoClickToPauseOrPlay isPlay " + z10);
        }

        @Override
        public void d() {
            if (SplashAdVideoView.this.f21718e != null) {
                SplashAdVideoView.this.f21718e.d();
            }
        }

        @Override
        public void e(boolean z10) {
            if (SplashAdVideoView.this.f21718e != null) {
                SplashAdVideoView.this.f21718e.e(z10);
            }
        }

        @Override
        public void onComplete() {
            if (SplashAdVideoView.this.f21715b != null && SplashAdVideoView.this.f21717d) {
                SplashAdVideoView.this.f21715b.repeat();
            }
            if (SplashAdVideoView.this.f21718e != null) {
                SplashAdVideoView.this.f21718e.onComplete();
            }
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            if (SplashAdVideoView.this.f21718e != null) {
                SplashAdVideoView.this.f21718e.onIsPlayingChanged(z10);
            }
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            if (SplashAdVideoView.this.f21718e != null) {
                SplashAdVideoView.this.f21718e.onPlayerError(playbackException);
            }
        }

        @Override
        public void onVideoSizeChanged(int i10, int i11) {
            if (SplashAdVideoView.this.f21718e != null) {
                SplashAdVideoView.this.f21718e.onVideoSizeChanged(i10, i11);
            }
        }

        @Override
        public void onVolumeChanged(float f10) {
            if (f10 == 0.0f) {
                SplashAdVideoView.this.f21716c.setImageResource(R$drawable.hisavana_volume_close);
            } else {
                SplashAdVideoView.this.f21716c.setImageResource(R$drawable.hisavana_volume_open);
            }
            if (SplashAdVideoView.this.f21718e != null) {
                SplashAdVideoView.this.f21718e.onVolumeChanged(f10);
            }
        }
    }

    public SplashAdVideoView(@NonNull Context context) {
        this(context, null);
    }

    private void e() {
        AdVideoView adVideoView = this.f21715b;
        if (adVideoView == null) {
            return;
        }
        adVideoView.setAdMediaPlayerListener(new b());
    }

    public int getDuration() {
        AdVideoView adVideoView = this.f21715b;
        if (adVideoView == null) {
            return 0;
        }
        if (adVideoView.getDuration() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) this.f21715b.getDuration();
    }

    public int getRemainingDuration() {
        AdVideoView adVideoView = this.f21715b;
        if (adVideoView == null) {
            return 0;
        }
        long duration = adVideoView.getDuration();
        b4.b().d("SplashAdVideoView", "getRemainingDuration -------------> duration = " + duration);
        long currentPosition = this.f21715b.getCurrentPosition();
        b4.b().d("SplashAdVideoView", "getRemainingDuration -------------> currentDuration = " + currentPosition);
        long j10 = duration - currentPosition;
        b4.b().d("SplashAdVideoView", "getRemainingDuration -------------> remainingDuration = " + j10);
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j10;
    }

    public void pause() {
        AdVideoView adVideoView = this.f21715b;
        if (adVideoView != null) {
            adVideoView.pause();
        }
    }

    public void play() {
        AdVideoView adVideoView = this.f21715b;
        if (adVideoView != null) {
            adVideoView.play();
        }
    }

    public void release() {
        AdVideoView adVideoView = this.f21715b;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(null);
            this.f21715b.release();
            this.f21715b.removeAllViews();
            removeView(this.f21715b);
            this.f21715b = null;
        }
        j4 j4Var = this.f21718e;
        if (j4Var instanceof c4) {
            ((c4) j4Var).i();
        }
        this.f21718e = null;
    }

    public void resetVolumePosition(boolean z10) {
        ImageView imageView = this.f21716c;
        if (imageView != null && z10) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            marginLayoutParams.leftMargin = getResources().getDimensionPixelOffset(R$dimen.hisavana_ad_dimen_8);
            marginLayoutParams.topMargin = getResources().getDimensionPixelOffset(R$dimen.hisavana_ad_dimen_8);
            this.f21716c.setLayoutParams(marginLayoutParams);
        }
    }

    public void setAdMediaPlayerListener(j4 j4Var) {
        this.f21718e = j4Var;
    }

    public void setAutoReset(boolean z10) {
        this.f21717d = z10;
    }

    public void setCompanionSize(String str, int i10, int i11) {
        AdVideoView adVideoView = this.f21715b;
        if (adVideoView != null) {
            adVideoView.setCompanionSize(str);
        }
    }

    public void setMediaData(String str, AdsDTO adsDTO, boolean z10) {
        b4.b().d("SplashAdVideoView", "setMediaData -------------> path = " + str);
        AdVideoView adVideoView = this.f21715b;
        if (adVideoView != null) {
            adVideoView.setPlayWhenReady(true);
            this.f21715b.setMediaData(adsDTO, str, c7.b.n(), z10);
        }
    }

    public SplashAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SplashAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f21714a = "SplashAdVideoView";
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.layout_splash_ad_video_view, (ViewGroup) this, false);
        removeAllViews();
        addView(viewInflate);
        this.f21715b = (AdVideoView) viewInflate.findViewById(R$id.ad_video);
        ImageView imageView = (ImageView) viewInflate.findViewById(R$id.im_volume);
        this.f21716c = imageView;
        imageView.setOnClickListener(new a());
        e();
    }
}
