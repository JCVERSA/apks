package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.p;
import defpackage.ikd;
import defpackage.r6;
import defpackage.vkd;
import defpackage.xnd;

public class SplashAdVideoView extends FrameLayout {
    public final String b;
    public AdVideoView c;
    public final ImageView d;
    public boolean e;
    public xnd f;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            if (SplashAdVideoView.this.c != null) {
                SplashAdVideoView.this.c.openOrCloseVolume();
            }
        }
    }

    public class b implements xnd {
        public b() {
        }

        @Override
        public void a(p pVar) {
            if (SplashAdVideoView.this.f != null) {
                SplashAdVideoView.this.f.a(pVar);
            }
        }

        @Override
        public void b(long j, long j2, int i) {
            if (SplashAdVideoView.this.f != null) {
                SplashAdVideoView.this.f.b(j, j2, i);
            }
        }

        @Override
        public void c(boolean z) {
            ikd.b().d("SplashAdVideoView", "onVideoClickToPauseOrPlay isPlay " + z);
        }

        @Override
        public void d() {
            if (SplashAdVideoView.this.f != null) {
                SplashAdVideoView.this.f.d();
            }
        }

        @Override
        public void e() {
            if (SplashAdVideoView.this.f != null) {
                SplashAdVideoView.this.f.e();
            }
        }

        @Override
        public void f(boolean z) {
            if (SplashAdVideoView.this.f != null) {
                SplashAdVideoView.this.f.f(z);
            }
        }

        @Override
        public void onComplete() {
            if (SplashAdVideoView.this.c != null && SplashAdVideoView.this.e) {
                SplashAdVideoView.this.c.repeat();
            }
            if (SplashAdVideoView.this.f != null) {
                SplashAdVideoView.this.f.onComplete();
            }
        }

        @Override
        public void onIsPlayingChanged(boolean z) {
            if (SplashAdVideoView.this.f != null) {
                SplashAdVideoView.this.f.onIsPlayingChanged(z);
            }
        }

        @Override
        public void onVideoSizeChanged(int i, int i2) {
            if (SplashAdVideoView.this.f != null) {
                SplashAdVideoView.this.f.onVideoSizeChanged(i, i2);
            }
        }

        @Override
        public void onVolumeChanged(float f) {
            if (f == 0.0f) {
                SplashAdVideoView.this.d.setImageResource(R.drawable.hisavana_volume_close);
            } else {
                SplashAdVideoView.this.d.setImageResource(R.drawable.hisavana_volume_open);
            }
            if (SplashAdVideoView.this.f != null) {
                SplashAdVideoView.this.f.onVolumeChanged(f);
            }
        }
    }

    public SplashAdVideoView(@NonNull Context context) {
        this(context, null);
    }

    public final void e() {
        AdVideoView adVideoView = this.c;
        if (adVideoView == null) {
            return;
        }
        adVideoView.setAdMediaPlayerListener(new b());
    }

    public int getDuration() {
        AdVideoView adVideoView = this.c;
        if (adVideoView == null) {
            return 0;
        }
        if (adVideoView.getDuration() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) this.c.getDuration();
    }

    public int getRemainingDuration() {
        AdVideoView adVideoView = this.c;
        if (adVideoView == null) {
            return 0;
        }
        long duration = adVideoView.getDuration();
        ikd.b().d("SplashAdVideoView", "getRemainingDuration -------------> duration = " + duration);
        long currentPosition = this.c.getCurrentPosition();
        ikd.b().d("SplashAdVideoView", "getRemainingDuration -------------> currentDuration = " + currentPosition);
        long j = duration - currentPosition;
        ikd.b().d("SplashAdVideoView", "getRemainingDuration -------------> remainingDuration = " + j);
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    public void pause() {
        AdVideoView adVideoView = this.c;
        if (adVideoView != null) {
            adVideoView.pause();
        }
    }

    public void play() {
        AdVideoView adVideoView = this.c;
        if (adVideoView != null) {
            adVideoView.play();
        }
    }

    public void release() {
        AdVideoView adVideoView = this.c;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(null);
            this.c.release();
            this.c.removeAllViews();
            removeView(this.c);
            this.c = null;
        }
        xnd xndVar = this.f;
        if (xndVar instanceof vkd) {
            ((vkd) xndVar).j();
        }
        this.f = null;
    }

    public void resetVolumePosition(boolean z) {
        ImageView imageView = this.d;
        if (imageView != null && z) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            Resources resources = getResources();
            int i = R.dimen.hisavana_ad_dimen_8;
            marginLayoutParams.leftMargin = resources.getDimensionPixelOffset(i);
            marginLayoutParams.topMargin = getResources().getDimensionPixelOffset(i);
            this.d.setLayoutParams(marginLayoutParams);
        }
    }

    public void setAdMediaPlayerListener(xnd xndVar) {
        this.f = xndVar;
    }

    public void setAutoReset(boolean z) {
        this.e = z;
    }

    public void setCompanionSize(String str, int i, int i2) {
        AdVideoView adVideoView = this.c;
        if (adVideoView != null) {
            adVideoView.setCompanionSize(str);
        }
    }

    public void setMediaData(String str, AdsDTO adsDTO, boolean z) {
        ikd.b().d("SplashAdVideoView", "setMediaData -------------> path = " + str);
        AdVideoView adVideoView = this.c;
        if (adVideoView != null) {
            adVideoView.setPlayWhenReady(true);
            this.c.setMediaData(adsDTO, str, r6.r(), z);
        }
    }

    public SplashAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SplashAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = "SplashAdVideoView";
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_splash_ad_video_view, (ViewGroup) this, false);
        removeAllViews();
        addView(viewInflate);
        this.c = (AdVideoView) viewInflate.findViewById(R.id.ad_video);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.im_volume);
        this.d = imageView;
        imageView.setOnClickListener(new a());
        e();
    }
}
