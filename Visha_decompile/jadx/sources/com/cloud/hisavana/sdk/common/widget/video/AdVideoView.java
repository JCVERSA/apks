package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.VideoMeasureManager;
import com.cloud.hisavana.sdk.p;
import defpackage.hm4;
import defpackage.ikd;
import defpackage.nrd;
import defpackage.oyd;
import defpackage.wsd;
import defpackage.xnd;
import defpackage.y30;

public class AdVideoView extends FrameLayout {
    public wsd b;
    public final MediaTextureView c;
    public final ScaleImageView d;
    public xnd e;
    public AdsDTO f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public d k;
    public final Runnable l;
    public y30 m;

    public class a implements xnd {
        public a() {
        }

        @Override
        public void a(p pVar) {
            ikd.b().w("AdVideoView", "onPlayerError code=" + pVar.a() + " msg=" + pVar.b());
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.a(pVar);
            }
            try {
                Bitmap bitmap = AdVideoView.this.c.getBitmap();
                if (bitmap != null) {
                    AdVideoView.this.d.setImageBitmap(bitmap);
                    AdVideoView.this.d.setVisibility(0);
                }
            } catch (Throwable th) {
                ikd.b().w("AdVideoView", "getBitmap failed: " + th.getMessage());
            }
        }

        @Override
        public void b(long j, long j2, int i) {
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.b(j, j2, i);
            }
        }

        @Override
        public void c(boolean z) {
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.c(z);
            }
        }

        @Override
        public void d() {
            AdVideoView.this.j = true;
            AdVideoView.this.m();
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.d();
            }
        }

        @Override
        public void e() {
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.e();
            }
        }

        @Override
        public void f(boolean z) {
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.f(z);
            }
        }

        @Override
        public void onComplete() {
            AdVideoView adVideoView = AdVideoView.this;
            adVideoView.removeCallbacks(adVideoView.l);
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.onComplete();
            }
        }

        @Override
        public void onIsPlayingChanged(boolean z) {
            if (z) {
                AdVideoView.this.d.setVisibility(8);
                AdVideoView.this.n();
            } else {
                AdVideoView adVideoView = AdVideoView.this;
                adVideoView.removeCallbacks(adVideoView.l);
            }
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.onIsPlayingChanged(z);
            }
        }

        @Override
        public void onVideoSizeChanged(int i, int i2) {
            AdVideoView.this.c.adaptVideoSize(i > 0 ? i : hm4.h(), i2 > 0 ? i2 : hm4.g());
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.onVideoSizeChanged(i, i2);
            }
        }

        @Override
        public void onVolumeChanged(float f) {
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.onVolumeChanged(f);
            }
        }
    }

    public class b extends DrawableResponseListener {
        public b() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.f(false);
            }
        }

        @Override
        public void g(int i, AdImage adImage) {
            ikd.b().d("AdVideoView", "setCompanionSize onRequestSuccess");
            if (AdVideoView.this.isPlaying()) {
                return;
            }
            AdVideoView.this.d.setVisibility(0);
            if (AdVideoView.this.e != null) {
                AdVideoView.this.e.f(true);
            }
        }
    }

    public class c implements y30 {
        public c() {
        }

        @Override
        public void a(double d) {
            if (AdVideoView.this.j) {
                if (d <= 0.0d) {
                    if (AdVideoView.this.isPlaying()) {
                        AdVideoView.this.pause();
                    }
                    if (!AdVideoView.this.h || AdVideoView.this.k == null || AdVideoView.this.b == null) {
                        return;
                    }
                    AdVideoView.this.k.a();
                    return;
                }
                if (AdVideoView.this.b != null) {
                    if (AdVideoView.this.isPlaying()) {
                        return;
                    }
                    AdVideoView.this.play();
                } else {
                    if (!AdVideoView.this.h || AdVideoView.this.k == null) {
                        return;
                    }
                    AdVideoView.this.k.b();
                }
            }
        }
    }

    public interface d {
        void a();

        void b();
    }

    public AdVideoView(@NonNull Context context) {
        this(context, null);
    }

    public void dispatchPause() {
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.b();
            removeCallbacks(this.l);
        }
    }

    public void dispatchPlay() {
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.e();
            n();
        }
    }

    public void dispatchPlayPause() {
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.d();
        }
    }

    public long getCurrentPosition() {
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            return wsdVar.getCurrentPosition();
        }
        return 0L;
    }

    public long getDuration() {
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            return wsdVar.getDuration();
        }
        return 0L;
    }

    public boolean isPlayWhenReady() {
        wsd wsdVar = this.b;
        return wsdVar != null && wsdVar.getPlayWhenReady();
    }

    public boolean isPlaying() {
        wsd wsdVar = this.b;
        return wsdVar != null && wsdVar.isPlaying();
    }

    public final void m() {
        AdsDTO adsDTO;
        if (!this.g || (adsDTO = this.f) == null) {
            return;
        }
        VideoMeasureManager.INSTANCE.g(new oyd(adsDTO, this, this.m));
    }

    public final void n() {
        post(this.l);
    }

    public void o() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.c, layoutParams);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        addView(this.d, layoutParams2);
    }

    public void openOrCloseVolume() {
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.a();
        }
    }

    public final void p(wsd wsdVar, AdsDTO adsDTO, String str, boolean z, boolean z2) {
        if (wsdVar == null || wsdVar != this.b) {
            return;
        }
        wsdVar.b(adsDTO, str, z, z2);
    }

    public void pause() {
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.pause();
        }
    }

    public void play() {
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.play();
        }
    }

    public void release() {
        ikd.b().d("AdVideoView", "release videoPlayer=" + System.identityHashCode(this.b));
        VideoMeasureManager.INSTANCE.f(this.f);
        this.c.destroyDrawingCache();
        removeCallbacks(this.l);
        this.k = null;
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.release();
            this.b = null;
        }
    }

    public void releasePlayer() {
        ikd.b().d("AdVideoView", "releasePlayer videoPlayer=" + System.identityHashCode(this.b));
        removeCallbacks(this.l);
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.release();
            this.b = null;
        }
    }

    public void repeat() {
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.c();
        }
    }

    public final void seekTo(long j) {
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.seekTo(j);
        }
    }

    public void setAdMediaPlayerListener(xnd xndVar) {
        this.e = xndVar;
    }

    public void setCompanionSize(String str) {
        DownLoadRequest.o(str, null, 12, new b(), this.d);
    }

    public void setCompanionViewVisibility(int i) {
        ScaleImageView scaleImageView = this.d;
        if (scaleImageView != null) {
            scaleImageView.setVisibility(i);
        }
    }

    public void setListModeVisibilityCallback(@Nullable d dVar) {
        this.k = dVar;
    }

    public void setMeasureAble(boolean z) {
        this.g = z;
    }

    public void setMediaData(final AdsDTO adsDTO, final String str, final boolean z, final boolean z2) {
        ikd.b().d("AdVideoView", "setMediaData path=" + str + " shouldCache=" + z2);
        this.f = adsDTO;
        this.j = false;
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.release();
        }
        wsd wsdVarA = nrd.a.a(getContext());
        this.b = wsdVarA;
        wsdVarA.a(this.c);
        this.b.setPlayWhenReady(this.i);
        this.b.a(this.h);
        this.b.c(new a());
        if (adsDTO != null && adsDTO.getMaterialWith() > 0 && adsDTO.getMaterialHeight() > 0) {
            setVideoSize(adsDTO.getMaterialWith(), adsDTO.getMaterialHeight());
        }
        final wsd wsdVar2 = this.b;
        this.c.post(new Runnable() {
            @Override
            public final void run() {
                this.b.p(wsdVar2, adsDTO, str, z, z2);
            }
        });
    }

    public void setPlayWhenReady(boolean z) {
        this.i = z;
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.setPlayWhenReady(z);
        }
    }

    public void setUseListMode(boolean z) {
        this.h = z;
        wsd wsdVar = this.b;
        if (wsdVar != null) {
            wsdVar.a(z);
        }
    }

    public void setVideoSize(int i, int i2) {
        ikd.b().d("AdVideoView", "setVideoSize width=" + i + " height=" + i2);
        this.c.adaptVideoSize(i > 0 ? i : hm4.h(), i2 > 0 ? i2 : hm4.g());
        xnd xndVar = this.e;
        if (xndVar != null) {
            xndVar.onVideoSizeChanged(i, i2);
        }
    }

    public AdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = true;
        this.i = true;
        this.l = new Runnable() {
            @Override
            public void run() {
                if (AdVideoView.this.b == null || !AdVideoView.this.b.isPlaying()) {
                    return;
                }
                long duration = AdVideoView.this.b.getDuration();
                long currentPosition = AdVideoView.this.b.getCurrentPosition();
                int i2 = duration == 0 ? 0 : (int) ((100 * currentPosition) / duration);
                if (AdVideoView.this.e != null) {
                    AdVideoView.this.e.b(duration, currentPosition, i2);
                }
                if (AdVideoView.this.b.isPlaying()) {
                    AdVideoView adVideoView = AdVideoView.this;
                    adVideoView.postDelayed(adVideoView.l, 1000 - (currentPosition % 1000));
                }
            }
        };
        this.m = new c();
        this.c = new MediaTextureView(context);
        this.d = new ScaleImageView(context);
        o();
    }
}
