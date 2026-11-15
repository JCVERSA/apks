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
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.c4;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.j4;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.google.android.exoplayer2.PlaybackException;

public class InterstitialAdVideoView extends FrameLayout {

    private final String f21689a;

    private AdVideoView f21690b;

    private final ImageView f21691c;

    private ProgressBar f21692d;

    private boolean f21693e;

    private boolean f21694f;

    private j4 f21695g;

    public InterstitialAdVideoView(@NonNull Context context) {
        this(context, null);
    }

    private void i() {
        if (this.f21690b == null) {
            return;
        }
        this.f21691c.setVisibility(8);
        this.f21691c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f21723a.j(view);
            }
        });
        this.f21690b.setAdMediaPlayerListener(new a());
    }

    public void j(View view) {
        if (this.f21690b == null || !NetStateManager.checkNetworkState(false)) {
            return;
        }
        this.f21690b.repeat();
    }

    public void k(View view) {
        AdVideoView adVideoView = this.f21690b;
        if (adVideoView != null) {
            adVideoView.openOrCloseVolume();
        }
    }

    public long getDuration() {
        AdVideoView adVideoView = this.f21690b;
        if (adVideoView != null) {
            return adVideoView.getDuration();
        }
        return 0L;
    }

    public void release() {
        AdVideoView adVideoView = this.f21690b;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(null);
            this.f21690b.release();
            this.f21690b.removeAllViews();
            removeView(this.f21690b);
            this.f21690b = null;
        }
        j4 j4Var = this.f21695g;
        if (j4Var instanceof c4) {
            ((c4) j4Var).i();
        }
        this.f21695g = null;
    }

    public void seekToPosition(long j10) {
        AdVideoView adVideoView = this.f21690b;
        if (adVideoView != null) {
            adVideoView.seekTo(j10);
        }
    }

    public void setAdMediaPlayerListener(j4 j4Var) {
        this.f21695g = j4Var;
    }

    public void setAutoReset(boolean z10) {
        this.f21693e = z10;
    }

    public void setCompanionSize(String str) {
        AdVideoView adVideoView = this.f21690b;
        if (adVideoView != null) {
            adVideoView.setCompanionSize(str);
        }
    }

    public void setMediaData(String str, AdsDTO adsDTO, boolean z10, boolean z11) {
        b4.b().d("NativeAdVideoView", "setMediaData -------------> path = " + str);
        AdVideoView adVideoView = this.f21690b;
        if (adVideoView != null) {
            adVideoView.setMediaData(adsDTO, str, z10, z11);
        }
    }

    public void setProgressBarVisibility(int i10) {
        ProgressBar progressBar = this.f21692d;
        if (progressBar == null) {
            return;
        }
        this.f21694f = i10 == 0;
        progressBar.setVisibility(i10 != 0 ? 8 : 0);
    }

    public void setVideoSize(int i10, int i11) {
        AdVideoView adVideoView = this.f21690b;
        if (adVideoView != null) {
            adVideoView.setVideoSize(i10, i11);
        }
    }

    public void setVolumeView(View view) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.f21722a.k(view2);
                }
            });
        }
    }

    public InterstitialAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InterstitialAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f21689a = "NativeAdVideoView";
        this.f21694f = true;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.layout_interstitial_ad_video_view, (ViewGroup) this, false);
        this.f21691c = (ImageView) viewInflate.findViewById(R$id.repeat_btn);
        removeAllViews();
        addView(viewInflate);
        this.f21690b = (AdVideoView) viewInflate.findViewById(R$id.ad_video);
        this.f21692d = (ProgressBar) viewInflate.findViewById(R$id.ad_progress);
        i();
    }

    class a implements j4 {
        a() {
        }

        @Override
        public void a() {
            if (InterstitialAdVideoView.this.f21695g != null) {
                InterstitialAdVideoView.this.f21695g.a();
            }
        }

        @Override
        public void b(long j10, long j11, int i10) {
            InterstitialAdVideoView.this.f21692d.setProgress(i10);
            if (InterstitialAdVideoView.this.f21695g != null) {
                InterstitialAdVideoView.this.f21695g.b(j10, j11, i10);
            }
        }

        @Override
        public void d() {
            if (InterstitialAdVideoView.this.f21695g != null) {
                InterstitialAdVideoView.this.f21695g.d();
            }
            if (InterstitialAdVideoView.this.f21692d.getVisibility() == 8 && InterstitialAdVideoView.this.f21694f) {
                InterstitialAdVideoView.this.f21692d.setVisibility(0);
            }
        }

        @Override
        public void e(boolean z10) {
            if (InterstitialAdVideoView.this.f21695g != null) {
                InterstitialAdVideoView.this.f21695g.e(z10);
            }
        }

        @Override
        public void onComplete() {
            if (InterstitialAdVideoView.this.f21695g != null) {
                InterstitialAdVideoView.this.f21695g.onComplete();
            }
            if (InterstitialAdVideoView.this.f21690b != null && InterstitialAdVideoView.this.f21693e) {
                InterstitialAdVideoView.this.f21690b.repeat();
            }
            if (InterstitialAdVideoView.this.f21692d.getVisibility() == 0) {
                InterstitialAdVideoView.this.f21692d.setVisibility(8);
            }
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            if (InterstitialAdVideoView.this.f21695g != null) {
                InterstitialAdVideoView.this.f21695g.onIsPlayingChanged(z10);
            }
            if (z10) {
                InterstitialAdVideoView.this.f21691c.setVisibility(8);
            }
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            if (InterstitialAdVideoView.this.f21695g != null) {
                InterstitialAdVideoView.this.f21695g.onPlayerError(playbackException);
            }
            InterstitialAdVideoView.this.f21691c.setVisibility(0);
        }

        @Override
        public void onVideoSizeChanged(int i10, int i11) {
            if (InterstitialAdVideoView.this.f21695g != null) {
                InterstitialAdVideoView.this.f21695g.onVideoSizeChanged(i10, i11);
            }
        }

        @Override
        public void onVolumeChanged(float f10) {
            if (InterstitialAdVideoView.this.f21695g != null) {
                InterstitialAdVideoView.this.f21695g.onVolumeChanged(f10);
            }
        }

        @Override
        public void c(boolean z10) {
        }
    }
}
