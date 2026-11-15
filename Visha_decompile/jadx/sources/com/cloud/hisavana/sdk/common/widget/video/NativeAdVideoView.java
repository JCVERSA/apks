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
import defpackage.r6;
import defpackage.vkd;
import defpackage.xnd;

public class NativeAdVideoView extends FrameLayout implements View.OnClickListener {
    public AdVideoView b;
    public final ImageView c;
    public final ImageView d;
    public final ProgressBar e;
    public boolean f;
    public boolean g;
    public xnd h;
    public AdsDTO i;
    public String j;
    public boolean k;
    public boolean l;

    public class a implements AdVideoView.d {
        public a() {
        }

        @Override
        public void a() {
            if (NativeAdVideoView.this.b != null) {
                NativeAdVideoView.this.b.releasePlayer();
            }
        }

        @Override
        public void b() {
            if (NativeAdVideoView.this.b == null || NativeAdVideoView.this.i == null || NativeAdVideoView.this.j == null) {
                return;
            }
            ikd.b().d("NativeAdVideoView", "onOnScreen rebuild videoPlayer path=" + NativeAdVideoView.this.j);
            NativeAdVideoView.this.b.setMediaData(NativeAdVideoView.this.i, NativeAdVideoView.this.j, NativeAdVideoView.this.k, NativeAdVideoView.this.l);
        }
    }

    public class b implements xnd {
        public b() {
        }

        @Override
        public void a(p pVar) {
            if (NativeAdVideoView.this.h != null) {
                NativeAdVideoView.this.h.a(pVar);
            }
            NativeAdVideoView.this.d.setVisibility(0);
        }

        @Override
        public void b(long j, long j2, int i) {
            NativeAdVideoView.this.e.setProgress(i);
            if (NativeAdVideoView.this.h != null) {
                NativeAdVideoView.this.h.b(j, j2, i);
            }
        }

        @Override
        public void c(boolean z) {
            if (NativeAdVideoView.this.h != null) {
                NativeAdVideoView.this.h.c(z);
            }
        }

        @Override
        public void d() {
            if (NativeAdVideoView.this.h != null) {
                NativeAdVideoView.this.h.d();
            }
            if (NativeAdVideoView.this.c.getVisibility() == 8) {
                NativeAdVideoView.this.c.setVisibility(0);
            }
        }

        @Override
        public void e() {
            if (NativeAdVideoView.this.h != null) {
                NativeAdVideoView.this.h.e();
            }
            if (NativeAdVideoView.this.f && NativeAdVideoView.this.e.getVisibility() == 8) {
                NativeAdVideoView.this.e.setVisibility(0);
            }
        }

        @Override
        public void f(boolean z) {
            if (NativeAdVideoView.this.h != null) {
                NativeAdVideoView.this.h.f(z);
            }
        }

        @Override
        public void onComplete() {
            if (NativeAdVideoView.this.h != null) {
                NativeAdVideoView.this.h.onComplete();
            }
            if (NativeAdVideoView.this.g) {
                if (NativeAdVideoView.this.b != null) {
                    NativeAdVideoView.this.b.repeat();
                }
            } else if (NativeAdVideoView.this.b != null) {
                NativeAdVideoView.this.b.setCompanionViewVisibility(0);
            }
            if (NativeAdVideoView.this.f && !NativeAdVideoView.this.g) {
                if (NativeAdVideoView.this.c.getVisibility() == 0) {
                    NativeAdVideoView.this.c.setVisibility(8);
                }
                NativeAdVideoView.this.d.setVisibility(0);
                if (NativeAdVideoView.this.e.getVisibility() == 0) {
                    NativeAdVideoView.this.e.setVisibility(8);
                }
            }
        }

        @Override
        public void onIsPlayingChanged(boolean z) {
            if (NativeAdVideoView.this.h != null) {
                NativeAdVideoView.this.h.onIsPlayingChanged(z);
            }
            if (NativeAdVideoView.this.f && z) {
                NativeAdVideoView.this.d.setVisibility(8);
            }
        }

        @Override
        public void onVideoSizeChanged(int i, int i2) {
            if (NativeAdVideoView.this.h != null) {
                NativeAdVideoView.this.h.onVideoSizeChanged(i, i2);
            }
        }

        @Override
        public void onVolumeChanged(float f) {
            if (NativeAdVideoView.this.h != null) {
                NativeAdVideoView.this.h.onVolumeChanged(f);
            }
            if (NativeAdVideoView.this.f) {
                if (f == 0.0f) {
                    NativeAdVideoView.this.c.setImageResource(R.drawable.hisavana_volume_close);
                } else {
                    NativeAdVideoView.this.c.setImageResource(R.drawable.hisavana_volume_open);
                }
            }
        }
    }

    public NativeAdVideoView(@NonNull Context context) {
        this(context, null);
    }

    public final void l() {
        AdVideoView adVideoView = this.b;
        if (adVideoView == null) {
            return;
        }
        adVideoView.setListModeVisibilityCallback(new a());
        this.b.setAdMediaPlayerListener(new b());
    }

    public void m() {
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.d.setVisibility(8);
        this.c.setVisibility(8);
    }

    @Override
    public void onClick(View view) {
        AdVideoView adVideoView;
        if (view.getId() == R.id.im_repeat) {
            if (this.b == null || !NetStateManager.checkNetworkState(false)) {
                return;
            }
            this.b.repeat();
            return;
        }
        if (view.getId() != R.id.im_volume || (adVideoView = this.b) == null) {
            return;
        }
        adVideoView.openOrCloseVolume();
    }

    public void pause() {
        AdVideoView adVideoView = this.b;
        if (adVideoView != null) {
            adVideoView.pause();
        }
    }

    public void play() {
        AdVideoView adVideoView = this.b;
        if (adVideoView != null) {
            adVideoView.play();
        }
    }

    public void release() {
        AdVideoView adVideoView = this.b;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(null);
            this.b.setListModeVisibilityCallback(null);
            this.b.release();
            this.b.removeAllViews();
            removeView(this.b);
            this.b = null;
        }
        this.i = null;
        this.j = null;
        this.k = false;
        this.l = false;
        xnd xndVar = this.h;
        if (xndVar instanceof vkd) {
            ((vkd) xndVar).j();
        }
        this.h = null;
    }

    public void setAdMediaPlayerListener(xnd xndVar) {
        this.h = xndVar;
    }

    public void setAutoReset(boolean z) {
        this.g = z;
    }

    public void setCompanionSize(String str) {
        AdVideoView adVideoView = this.b;
        if (adVideoView != null) {
            adVideoView.setCompanionSize(str);
        }
    }

    public void setMediaData(String str, AdsDTO adsDTO, boolean z) {
        ikd.b().d("NativeAdVideoView", "setMediaData -------------> path = " + str);
        if (this.b != null) {
            boolean zR = r6.r();
            this.i = adsDTO;
            this.j = str;
            this.k = zR;
            this.l = z;
            this.b.setMediaData(adsDTO, str, zR, z);
        }
    }

    public void setPlayWhenReady(boolean z) {
        AdVideoView adVideoView = this.b;
        if (adVideoView != null) {
            adVideoView.setPlayWhenReady(z);
        }
    }

    public void setShowComponents(boolean z) {
        this.f = z;
    }

    public void setUseListMode(boolean z) {
        AdVideoView adVideoView = this.b;
        if (adVideoView != null) {
            adVideoView.setUseListMode(z);
        }
    }

    public NativeAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = true;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_native_ad_video_view, (ViewGroup) this, false);
        removeAllViews();
        addView(viewInflate);
        this.b = (AdVideoView) viewInflate.findViewById(R.id.ad_video);
        this.c = (ImageView) viewInflate.findViewById(R.id.im_volume);
        this.d = (ImageView) viewInflate.findViewById(R.id.im_repeat);
        this.e = (ProgressBar) viewInflate.findViewById(R.id.ad_progress);
        m();
        l();
    }
}
