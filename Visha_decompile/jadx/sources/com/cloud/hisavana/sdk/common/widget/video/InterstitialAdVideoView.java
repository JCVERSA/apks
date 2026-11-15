package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.hisavana.sdk.p;
import defpackage.ikd;
import defpackage.vkd;
import defpackage.xnd;

public class InterstitialAdVideoView extends FrameLayout {
    public final String b;
    public AdVideoView c;
    public final ImageView d;
    public ProgressBar e;
    public boolean f;
    public boolean g;
    public xnd h;

    public class a implements xnd {
        public a() {
        }

        @Override
        public void a(p pVar) {
            if (InterstitialAdVideoView.this.h != null) {
                InterstitialAdVideoView.this.h.a(pVar);
            }
            InterstitialAdVideoView.this.d.setVisibility(0);
        }

        @Override
        public void b(long j, long j2, int i) {
            InterstitialAdVideoView.this.e.setProgress(i);
            if (InterstitialAdVideoView.this.h != null) {
                InterstitialAdVideoView.this.h.b(j, j2, i);
            }
        }

        @Override
        public void c(boolean z) {
        }

        @Override
        public void d() {
            if (InterstitialAdVideoView.this.h != null) {
                InterstitialAdVideoView.this.h.d();
            }
        }

        @Override
        public void e() {
            if (InterstitialAdVideoView.this.h != null) {
                InterstitialAdVideoView.this.h.e();
            }
            if (InterstitialAdVideoView.this.e.getVisibility() == 8 && InterstitialAdVideoView.this.g) {
                InterstitialAdVideoView.this.e.setVisibility(0);
            }
        }

        @Override
        public void f(boolean z) {
            if (InterstitialAdVideoView.this.h != null) {
                InterstitialAdVideoView.this.h.f(z);
            }
        }

        @Override
        public void onComplete() {
            if (InterstitialAdVideoView.this.h != null) {
                InterstitialAdVideoView.this.h.onComplete();
            }
            if (InterstitialAdVideoView.this.c != null && InterstitialAdVideoView.this.f) {
                InterstitialAdVideoView.this.c.repeat();
            }
            if (InterstitialAdVideoView.this.e.getVisibility() == 0) {
                InterstitialAdVideoView.this.e.setVisibility(8);
            }
        }

        @Override
        public void onIsPlayingChanged(boolean z) {
            if (InterstitialAdVideoView.this.h != null) {
                InterstitialAdVideoView.this.h.onIsPlayingChanged(z);
            }
            if (z) {
                InterstitialAdVideoView.this.d.setVisibility(8);
            }
        }

        @Override
        public void onVideoSizeChanged(int i, int i2) {
            if (InterstitialAdVideoView.this.h != null) {
                InterstitialAdVideoView.this.h.onVideoSizeChanged(i, i2);
            }
        }

        @Override
        public void onVolumeChanged(float f) {
            if (InterstitialAdVideoView.this.h != null) {
                InterstitialAdVideoView.this.h.onVolumeChanged(f);
            }
        }
    }

    public InterstitialAdVideoView(@NonNull Context context) {
        this(context, null);
    }

    public long getDuration() {
        AdVideoView adVideoView = this.c;
        if (adVideoView != null) {
            return adVideoView.getDuration();
        }
        return 0L;
    }

    public final void i() {
        if (this.c == null) {
            return;
        }
        this.d.setVisibility(8);
        this.d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.j(view);
            }
        });
        this.c.setAdMediaPlayerListener(new a());
    }

    public final void j(View view) {
        if (this.c == null || !NetStateManager.checkNetworkState(false)) {
            return;
        }
        this.c.repeat();
    }

    public final void k(View view) {
        AdVideoView adVideoView = this.c;
        if (adVideoView != null) {
            adVideoView.openOrCloseVolume();
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
        xnd xndVar = this.h;
        if (xndVar instanceof vkd) {
            ((vkd) xndVar).j();
        }
        this.h = null;
    }

    public void seekToPosition(long j) {
        AdVideoView adVideoView = this.c;
        if (adVideoView != null) {
            adVideoView.seekTo(j);
        }
    }

    public void setAdMediaPlayerListener(xnd xndVar) {
        this.h = xndVar;
    }

    public void setAutoReset(boolean z) {
        this.f = z;
    }

    public void setCompanionSize(String str) {
        AdVideoView adVideoView = this.c;
        if (adVideoView != null) {
            adVideoView.setCompanionSize(str);
        }
    }

    public void setMediaData(String str, AdsDTO adsDTO, boolean z, boolean z2) {
        ikd.b().d("NativeAdVideoView", "setMediaData -------------> path = " + str);
        AdVideoView adVideoView = this.c;
        if (adVideoView != null) {
            adVideoView.setMediaData(adsDTO, str, z, z2);
        }
    }

    public void setProgressBarVisibility(int i) {
        ProgressBar progressBar = this.e;
        if (progressBar == null) {
            return;
        }
        this.g = i == 0;
        progressBar.setVisibility(i != 0 ? 8 : 0);
    }

    public void setVideoSize(int i, int i2) {
        AdVideoView adVideoView = this.c;
        if (adVideoView != null) {
            adVideoView.setVideoSize(i, i2);
        }
    }

    public void setVolumeView(View view) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.k(view2);
                }
            });
        }
    }

    public InterstitialAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InterstitialAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = "NativeAdVideoView";
        this.g = true;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_interstitial_ad_video_view, (ViewGroup) this, false);
        this.d = (ImageView) viewInflate.findViewById(R.id.repeat_btn);
        removeAllViews();
        addView(viewInflate);
        this.c = (AdVideoView) viewInflate.findViewById(R.id.ad_video);
        this.e = (ProgressBar) viewInflate.findViewById(R.id.ad_progress);
        i();
    }
}
