package com.cloud.hisavana.sdk.api.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.c4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.widget.InteractiveFrameLayout;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.TAdWebView;
import com.cloud.hisavana.sdk.common.widget.video.NativeAdVideoView;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.u3;
import com.cloud.hisavana.sdk.x2;
import com.cloud.sdk.commonutil.R$id;
import com.cloud.sdk.commonutil.util.k;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import com.google.android.exoplayer2.PlaybackException;
import com.vungle.ads.internal.model.AdPayload;

public class MediaView extends FrameLayout {

    private TranCircleImageView f21022a;

    private AdImage f21023b;

    private NativeAdVideoView f21024c;

    private TAdWebView f21025d;

    private InteractiveFrameLayout f21026e;

    private InteractiveWebView f21027f;

    private int f21028g;

    private boolean f21029h;

    private volatile boolean f21030i;

    private float f21031j;

    private float f21032k;

    private float f21033l;

    private float f21034m;

    public class b extends c4 {
        public b(AdsDTO adsDTO) {
            super(adsDTO);
        }

        @Override
        public void a() {
            super.a();
        }

        @Override
        public void b(long j10, long j11, int i10) {
            super.b(j10, j11, i10);
        }

        @Override
        public void d() {
            super.d();
        }

        @Override
        public void onComplete() {
            super.onComplete();
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            super.onIsPlayingChanged(z10);
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            super.onPlayerError(playbackException);
        }

        @Override
        public void onVideoSizeChanged(int i10, int i11) {
            super.onVideoSizeChanged(i10, i11);
        }

        @Override
        public void onVolumeChanged(float f10) {
            super.onVolumeChanged(f10);
        }
    }

    private class c implements View.OnTouchListener {
        private c() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                MediaView.this.f21031j = motionEvent.getX();
                MediaView.this.f21032k = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            MediaView.this.f21033l = motionEvent.getX();
            MediaView.this.f21034m = motionEvent.getY();
            return false;
        }

        c(MediaView mediaView, a aVar) {
            this();
        }
    }

    public MediaView(@NonNull Context context) {
        this(context, null);
    }

    private FrameLayout.LayoutParams d(int i10, int i11) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i10, i11);
        layoutParams.gravity = 17;
        return layoutParams;
    }

    private void f(TaNativeInfo taNativeInfo, String str) {
        if (taNativeInfo == null) {
            return;
        }
        AdsDTO adItem = taNativeInfo.getAdItem();
        u3 nativeBridge = taNativeInfo.getNativeBridge();
        if (this.f21026e == null) {
            this.f21026e = new InteractiveFrameLayout(getContext());
        }
        this.f21026e.setScale(str);
        if (indexOfChild(this.f21026e) < 0) {
            addView(this.f21026e, d(-1, -1));
        }
        if (this.f21027f == null) {
            InteractiveWebView interactiveWebView = new InteractiveWebView(getContext());
            this.f21027f = interactiveWebView;
            interactiveWebView.setWebClientCallback(adItem);
            this.f21027f.setOnTouchListener(new c(this, null));
            this.f21027f.setInteractiveListener(new a(adItem, nativeBridge, taNativeInfo));
        }
    }

    public void g(final InteractiveWebView interactiveWebView, InteractiveFrameLayout interactiveFrameLayout, final String str, int i10, int i11) {
        try {
            ViewParent parent = interactiveWebView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(interactiveWebView);
            }
            interactiveFrameLayout.addView(interactiveWebView, new FrameLayout.LayoutParams(i10, i11));
            this.f21027f.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
            this.f21027f.layout(0, 0, i10, i11);
            interactiveWebView.post(new Runnable() {
                @Override
                public final void run() {
                    this.f59463a.h(interactiveWebView, str);
                }
            });
        } catch (Throwable th2) {
            b4.b().w("MediaView", "setInteractiveView error: " + th2.getMessage());
        }
    }

    public void h(InteractiveWebView interactiveWebView, String str) {
        if (this.f21030i || interactiveWebView.getParent() == null) {
            return;
        }
        interactiveWebView.loadUrl(AdPayload.FILE_SCHEME + str);
    }

    private void i(AdsDTO adsDTO, boolean z10) {
        if (this.f21024c == null) {
            NativeAdVideoView nativeAdVideoView = new NativeAdVideoView(getContext());
            this.f21024c = nativeAdVideoView;
            nativeAdVideoView.setAdMediaPlayerListener(new b(adsDTO));
        }
        this.f21024c.setUseListMode(z10);
        if (indexOfChild(this.f21024c) < 0) {
            addView(this.f21024c, d(-1, -2));
        }
        TranCircleImageView tranCircleImageView = this.f21022a;
        if (tranCircleImageView == null || !(tranCircleImageView.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) this.f21022a.getParent()).removeView(this.f21022a);
        this.f21022a = null;
    }

    private void l() {
        if (this.f21022a == null) {
            TranCircleImageView tranCircleImageView = new TranCircleImageView(getContext());
            this.f21022a = tranCircleImageView;
            tranCircleImageView.setId(R$id.native_mediaview_iv_id);
        }
        if (indexOfChild(this.f21022a) < 0) {
            addView(this.f21022a, d(-1, -2));
        }
        if (this.f21028g == 2 && this.f21022a.getLayoutParams() != null) {
            this.f21022a.getLayoutParams().height = -2;
        }
        NativeAdVideoView nativeAdVideoView = this.f21024c;
        if (nativeAdVideoView == null || !(nativeAdVideoView.getParent() instanceof ViewGroup)) {
            return;
        }
        this.f21024c.release();
        ((ViewGroup) this.f21024c.getParent()).removeView(this.f21024c);
        this.f21024c = null;
    }

    public void destroy() {
        this.f21030i = true;
        TAdWebView tAdWebView = this.f21025d;
        if (tAdWebView != null) {
            ViewParent parent = tAdWebView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f21025d);
            }
            this.f21025d.stopLoading();
            this.f21025d.getSettings().setJavaScriptEnabled(false);
            this.f21025d.setWebViewClient(null);
            this.f21025d.setWebChromeClient(null);
            this.f21025d.clearHistory();
            this.f21025d.removeAllViews();
            this.f21025d.destroy();
            this.f21025d = null;
        }
        InteractiveWebView interactiveWebView = this.f21027f;
        if (interactiveWebView != null) {
            interactiveWebView.destroy();
            this.f21027f = null;
        }
        NativeAdVideoView nativeAdVideoView = this.f21024c;
        if (nativeAdVideoView != null) {
            nativeAdVideoView.release();
            this.f21024c = null;
        }
        k.a(this.f21022a);
        AdImage adImage = this.f21023b;
        if (adImage != null) {
            adImage.destroy();
        }
        removeAllViews();
    }

    public void init(int i10) {
        this.f21028g = i10;
        if (i10 != 3) {
            l();
        }
    }

    public boolean isAttached() {
        return this.f21029h;
    }

    public void pause() {
        NativeAdVideoView nativeAdVideoView = this.f21024c;
        if (nativeAdVideoView != null) {
            nativeAdVideoView.pause();
        }
    }

    public void play() {
        NativeAdVideoView nativeAdVideoView = this.f21024c;
        if (nativeAdVideoView != null) {
            nativeAdVideoView.play();
        }
    }

    public void setInteractiveView(TaNativeInfo taNativeInfo, final String str, String str2) {
        f(taNativeInfo, str2);
        final InteractiveFrameLayout interactiveFrameLayout = this.f21026e;
        final InteractiveWebView interactiveWebView = this.f21027f;
        if (interactiveFrameLayout == null || interactiveWebView == null) {
            return;
        }
        interactiveFrameLayout.registerGlobalLayoutListener(new InteractiveFrameLayout.a() {
            @Override
            public final void a(int i10, int i11) {
                this.f59459a.g(interactiveWebView, interactiveFrameLayout, str, i10, i11);
            }
        });
    }

    public void setMediaView(AdImage adImage, ImageView.ScaleType scaleType, boolean z10) {
        l();
        TranCircleImageView tranCircleImageView = this.f21022a;
        if (tranCircleImageView == null || scaleType == null) {
            return;
        }
        if (z10) {
            tranCircleImageView.setAdjustViewBounds(true);
            this.f21022a.setMaxWidth(k7.c.k());
            this.f21022a.setMaxHeight(k7.c.j());
        } else {
            tranCircleImageView.setAdjustViewBounds(true);
            this.f21022a.setScaleType(scaleType);
        }
        if (adImage != null) {
            this.f21023b = adImage;
            this.f21029h = adImage.attachView(this.f21022a);
        }
    }

    public void setRadius(float f10, float f11, float f12, float f13) {
        TranCircleImageView tranCircleImageView = this.f21022a;
        if (tranCircleImageView != null) {
            tranCircleImageView.setTopLeftRadius(f10);
            this.f21022a.setTopRightRadius(f11);
            this.f21022a.setBottomLeftRadius(f12);
            this.f21022a.setBottomRightRadius(f13);
            this.f21022a.setCircle((f10 == 0.0f && f11 == 0.0f && f12 == 0.0f && f13 == 0.0f) ? false : true);
            this.f21022a.invalidate();
        }
    }

    public void setVideoView(String str, boolean z10, String str2, AdsDTO adsDTO, boolean z11) {
        i(adsDTO, z11);
        if (TextUtils.isEmpty(str) || this.f21024c == null || adsDTO == null) {
            b4.b().e("MediaView", "setVideoView filePath is null or adVideoView is null or adsDTO is null");
            return;
        }
        AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
        if (impBeanRequest != null) {
            b4.b().d("MediaView", "init impBean.isAutoPlayVideoAd " + impBeanRequest.isAutoPlayVideoAd);
            this.f21024c.setPlayWhenReady(impBeanRequest.isAutoPlayVideoAd);
        }
        b4.b().d("MediaView", "isMaterialStyleValid---->" + z10 + "   materialStyle---->" + str2);
        this.f21024c.setShowComponents(true);
        this.f21024c.setAutoReset(true);
        if (adsDTO.getVideoInfo() != null && adsDTO.getVideoInfo().getVideoMask() != null) {
            this.f21024c.setCompanionSize(adsDTO.getVideoInfo().getVideoMask().getResource());
        }
        this.f21024c.setMediaData(str, adsDTO, str.startsWith("http"));
    }

    public MediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f21022a = null;
        this.f21023b = null;
        this.f21025d = null;
        this.f21030i = false;
        this.f21034m = -1.0f;
    }

    class a implements InteractiveWebView.c {

        final AdsDTO f21035a;

        final u3 f21036b;

        final TaNativeInfo f21037c;

        a(AdsDTO adsDTO, u3 u3Var, TaNativeInfo taNativeInfo) {
            this.f21035a = adsDTO;
            this.f21036b = u3Var;
            this.f21037c = taNativeInfo;
        }

        @Override
        public void a(String str) {
            AthenaTracker.y(this.f21035a, str);
        }

        @Override
        public void b() {
            if (MediaView.this.f21027f != null) {
                u3 u3Var = this.f21036b;
                x2 x2Var = u3Var instanceof x2 ? (x2) u3Var : null;
                J0.b(MediaView.this.f21027f.getContext(), this.f21035a, new DownUpPointBean(MediaView.this.f21031j, MediaView.this.f21032k, MediaView.this.f21033l, MediaView.this.f21034m, MediaView.this.f21027f.getMeasuredHeight(), MediaView.this.f21027f.getMeasuredWidth()), x2Var != null && x2Var.p().v());
                AthenaTracker.W(this.f21035a);
                if (x2Var == null || x2Var.Z() == null) {
                    return;
                }
                x2Var.Z().y(this.f21037c);
            }
        }

        @Override
        public void c() {
        }
    }
}
