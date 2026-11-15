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
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.c4;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.j4;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.google.android.exoplayer2.PlaybackException;

public class NativeAdVideoView extends FrameLayout implements View.OnClickListener {

    private AdVideoView f21699a;

    private final ImageView f21700b;

    private final ImageView f21701c;

    private final ProgressBar f21702d;

    private boolean f21703e;

    private boolean f21704f;

    private j4 f21705g;

    class a implements j4 {
        a() {
        }

        @Override
        public void a() {
            if (NativeAdVideoView.this.f21705g != null) {
                NativeAdVideoView.this.f21705g.a();
            }
            if (NativeAdVideoView.this.f21700b.getVisibility() == 8) {
                NativeAdVideoView.this.f21700b.setVisibility(0);
            }
        }

        @Override
        public void b(long j10, long j11, int i10) {
            NativeAdVideoView.this.f21702d.setProgress(i10);
            if (NativeAdVideoView.this.f21705g != null) {
                NativeAdVideoView.this.f21705g.b(j10, j11, i10);
            }
        }

        @Override
        public void c(boolean z10) {
            if (NativeAdVideoView.this.f21705g != null) {
                NativeAdVideoView.this.f21705g.c(z10);
            }
        }

        @Override
        public void d() {
            if (NativeAdVideoView.this.f21705g != null) {
                NativeAdVideoView.this.f21705g.d();
            }
            if (NativeAdVideoView.this.f21703e && NativeAdVideoView.this.f21702d.getVisibility() == 8) {
                NativeAdVideoView.this.f21702d.setVisibility(0);
            }
        }

        @Override
        public void e(boolean z10) {
            if (NativeAdVideoView.this.f21705g != null) {
                NativeAdVideoView.this.f21705g.e(z10);
            }
        }

        @Override
        public void onComplete() {
            if (NativeAdVideoView.this.f21705g != null) {
                NativeAdVideoView.this.f21705g.onComplete();
            }
            if (NativeAdVideoView.this.f21704f) {
                if (NativeAdVideoView.this.f21699a != null) {
                    NativeAdVideoView.this.f21699a.repeat();
                }
            } else if (NativeAdVideoView.this.f21699a != null) {
                NativeAdVideoView.this.f21699a.setCompanionViewVisibility(0);
            }
            if (NativeAdVideoView.this.f21703e && !NativeAdVideoView.this.f21704f) {
                if (NativeAdVideoView.this.f21700b.getVisibility() == 0) {
                    NativeAdVideoView.this.f21700b.setVisibility(8);
                }
                NativeAdVideoView.this.f21701c.setVisibility(0);
                if (NativeAdVideoView.this.f21702d.getVisibility() == 0) {
                    NativeAdVideoView.this.f21702d.setVisibility(8);
                }
            }
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            if (NativeAdVideoView.this.f21705g != null) {
                NativeAdVideoView.this.f21705g.onIsPlayingChanged(z10);
            }
            if (NativeAdVideoView.this.f21703e && z10) {
                NativeAdVideoView.this.f21701c.setVisibility(8);
            }
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            if (NativeAdVideoView.this.f21705g != null) {
                NativeAdVideoView.this.f21705g.onPlayerError(playbackException);
            }
            NativeAdVideoView.this.f21701c.setVisibility(0);
        }

        @Override
        public void onVideoSizeChanged(int i10, int i11) {
            if (NativeAdVideoView.this.f21705g != null) {
                NativeAdVideoView.this.f21705g.onVideoSizeChanged(i10, i11);
            }
        }

        @Override
        public void onVolumeChanged(float f10) {
            if (NativeAdVideoView.this.f21705g != null) {
                NativeAdVideoView.this.f21705g.onVolumeChanged(f10);
            }
            if (NativeAdVideoView.this.f21703e) {
                if (f10 == 0.0f) {
                    NativeAdVideoView.this.f21700b.setImageResource(R$drawable.hisavana_volume_close);
                } else {
                    NativeAdVideoView.this.f21700b.setImageResource(R$drawable.hisavana_volume_open);
                }
            }
        }
    }

    public NativeAdVideoView(@NonNull Context context) {
        this(context, null);
    }

    private void h() {
        AdVideoView adVideoView = this.f21699a;
        if (adVideoView == null) {
            return;
        }
        adVideoView.setAdMediaPlayerListener(new a());
    }

    protected void i() {
        this.f21700b.setOnClickListener(this);
        this.f21701c.setOnClickListener(this);
        this.f21701c.setVisibility(8);
        this.f21700b.setVisibility(8);
    }

    @Override
    public void onClick(View view) {
        AdVideoView adVideoView;
        if (view.getId() == R$id.im_repeat) {
            if (this.f21699a == null || !NetStateManager.checkNetworkState(false)) {
                return;
            }
            this.f21699a.repeat();
            return;
        }
        if (view.getId() != R$id.im_volume || (adVideoView = this.f21699a) == null) {
            return;
        }
        adVideoView.openOrCloseVolume();
    }

    public void pause() {
        AdVideoView adVideoView = this.f21699a;
        if (adVideoView != null) {
            adVideoView.pause();
        }
    }

    public void play() {
        AdVideoView adVideoView = this.f21699a;
        if (adVideoView != null) {
            adVideoView.play();
        }
    }

    public void release() {
        AdVideoView adVideoView = this.f21699a;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(null);
            this.f21699a.release();
            this.f21699a.removeAllViews();
            removeView(this.f21699a);
            this.f21699a = null;
        }
        j4 j4Var = this.f21705g;
        if (j4Var instanceof c4) {
            ((c4) j4Var).i();
        }
        this.f21705g = null;
    }

    public void setAdMediaPlayerListener(j4 j4Var) {
        this.f21705g = j4Var;
    }

    public void setAutoReset(boolean z10) {
        this.f21704f = z10;
    }

    public void setCompanionSize(String str) {
        AdVideoView adVideoView = this.f21699a;
        if (adVideoView != null) {
            adVideoView.setCompanionSize(str);
        }
    }

    public void setMediaData(String str, AdsDTO adsDTO, boolean z10) {
        b4.b().d("NativeAdVideoView", "setMediaData -------------> path = " + str);
        AdVideoView adVideoView = this.f21699a;
        if (adVideoView != null) {
            adVideoView.setMediaData(adsDTO, str, c7.b.n(), z10);
        }
    }

    public void setPlayWhenReady(boolean z10) {
        AdVideoView adVideoView = this.f21699a;
        if (adVideoView != null) {
            adVideoView.setPlayWhenReady(z10);
        }
    }

    public void setShowComponents(boolean z10) {
        this.f21703e = z10;
    }

    public void setUseListMode(boolean z10) {
        AdVideoView adVideoView = this.f21699a;
        if (adVideoView != null) {
            adVideoView.setUseListMode(z10);
        }
    }

    public NativeAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f21703e = true;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.layout_native_ad_video_view, (ViewGroup) this, false);
        removeAllViews();
        addView(viewInflate);
        this.f21699a = (AdVideoView) viewInflate.findViewById(R$id.ad_video);
        this.f21700b = (ImageView) viewInflate.findViewById(R$id.im_volume);
        this.f21701c = (ImageView) viewInflate.findViewById(R$id.im_repeat);
        this.f21702d = (ProgressBar) viewInflate.findViewById(R$id.ad_progress);
        i();
        h();
    }
}
