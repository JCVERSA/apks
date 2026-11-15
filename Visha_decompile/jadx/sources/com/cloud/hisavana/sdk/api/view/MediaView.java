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
import androidx.webkit.ProxyConfig;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.b0;
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
import com.cloud.hisavana.sdk.p;
import com.cloud.sdk.commonutil.R;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import defpackage.ikd;
import defpackage.md8;
import defpackage.pp4;
import defpackage.qpd;
import defpackage.vkd;

public class MediaView extends FrameLayout {
    public TranCircleImageView b;
    public AdImage c;
    public NativeAdVideoView d;
    public TAdWebView e;
    public InteractiveFrameLayout f;
    public InteractiveWebView g;
    public int h;
    public boolean i;
    public volatile boolean j;
    public float k;
    public float l;
    public float m;
    public float n;

    public class a implements InteractiveWebView.c {
        public final AdsDTO a;
        public final qpd b;
        public final TaNativeInfo c;

        public a(AdsDTO adsDTO, qpd qpdVar, TaNativeInfo taNativeInfo) {
            this.a = adsDTO;
            this.b = qpdVar;
            this.c = taNativeInfo;
        }

        @Override
        public void a(String str) {
            AthenaTracker.B(this.a, str);
        }

        @Override
        public void b() {
            if (MediaView.this.g != null) {
                qpd qpdVar = this.b;
                b0 b0Var = qpdVar instanceof b0 ? (b0) qpdVar : null;
                U0.b(MediaView.this.g.getContext(), this.a, new DownUpPointBean(MediaView.this.k, MediaView.this.l, MediaView.this.m, MediaView.this.n, MediaView.this.g.getMeasuredHeight(), MediaView.this.g.getMeasuredWidth()), b0Var != null && b0Var.p().x());
                AthenaTracker.b0(this.a);
                if (b0Var == null || b0Var.Z() == null) {
                    return;
                }
                b0Var.Z().y(this.c);
            }
        }

        @Override
        public void c() {
        }
    }

    public class b extends vkd {
        public b(AdsDTO adsDTO) {
            super(adsDTO);
        }

        @Override
        public void a(p pVar) {
            super.a(pVar);
        }

        @Override
        public void b(long j, long j2, int i) {
            super.b(j, j2, i);
        }

        @Override
        public void d() {
            super.d();
        }

        @Override
        public void e() {
            super.e();
        }

        @Override
        public void onComplete() {
            super.onComplete();
        }

        @Override
        public void onIsPlayingChanged(boolean z) {
            super.onIsPlayingChanged(z);
        }

        @Override
        public void onVideoSizeChanged(int i, int i2) {
            super.onVideoSizeChanged(i, i2);
        }

        @Override
        public void onVolumeChanged(float f) {
            super.onVolumeChanged(f);
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                MediaView.this.k = motionEvent.getX();
                MediaView.this.l = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            MediaView.this.m = motionEvent.getX();
            MediaView.this.n = motionEvent.getY();
            return false;
        }

        public c(MediaView mediaView, a aVar) {
            this();
        }
    }

    public MediaView(@NonNull Context context) {
        this(context, null);
    }

    public final FrameLayout.LayoutParams d(int i, int i2) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i2);
        layoutParams.gravity = 17;
        return layoutParams;
    }

    public void destroy() {
        this.j = true;
        TAdWebView tAdWebView = this.e;
        if (tAdWebView != null) {
            ViewParent parent = tAdWebView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.e);
            }
            this.e.stopLoading();
            this.e.getSettings().setJavaScriptEnabled(false);
            this.e.setWebViewClient(null);
            this.e.setWebChromeClient(null);
            this.e.clearHistory();
            this.e.removeAllViews();
            this.e.destroy();
            this.e = null;
        }
        InteractiveWebView interactiveWebView = this.g;
        if (interactiveWebView != null) {
            interactiveWebView.destroy();
            this.g = null;
        }
        NativeAdVideoView nativeAdVideoView = this.d;
        if (nativeAdVideoView != null) {
            nativeAdVideoView.release();
            this.d = null;
        }
        pp4.a(this.b);
        AdImage adImage = this.c;
        if (adImage != null) {
            adImage.destroy();
        }
        removeAllViews();
    }

    public final void f(TaNativeInfo taNativeInfo, String str) {
        if (taNativeInfo == null) {
            return;
        }
        AdsDTO adItem = taNativeInfo.getAdItem();
        qpd nativeBridge = taNativeInfo.getNativeBridge();
        if (this.f == null) {
            this.f = new InteractiveFrameLayout(getContext());
        }
        this.f.setScale(str);
        if (indexOfChild(this.f) < 0) {
            addView(this.f, d(-1, -1));
        }
        if (this.g == null) {
            InteractiveWebView interactiveWebView = new InteractiveWebView(getContext());
            this.g = interactiveWebView;
            interactiveWebView.setWebClientCallback(adItem);
            this.g.setOnTouchListener(new c(this, null));
            this.g.setInteractiveListener(new a(adItem, nativeBridge, taNativeInfo));
        }
    }

    public final void g(final InteractiveWebView interactiveWebView, InteractiveFrameLayout interactiveFrameLayout, final String str, int i, int i2) {
        try {
            ViewParent parent = interactiveWebView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(interactiveWebView);
            }
            interactiveFrameLayout.addView(interactiveWebView, new FrameLayout.LayoutParams(i, i2));
            this.g.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
            this.g.layout(0, 0, i, i2);
            interactiveWebView.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.h(interactiveWebView, str);
                }
            });
        } catch (Throwable th) {
            ikd.b().w("MediaView", "setInteractiveView error: " + th.getMessage());
        }
    }

    public final void h(InteractiveWebView interactiveWebView, String str) {
        if (this.j || interactiveWebView.getParent() == null) {
            return;
        }
        interactiveWebView.loadUrl("file://" + str);
    }

    public final void i(AdsDTO adsDTO, boolean z) {
        if (this.d == null) {
            NativeAdVideoView nativeAdVideoView = new NativeAdVideoView(getContext());
            this.d = nativeAdVideoView;
            nativeAdVideoView.setAdMediaPlayerListener(new b(adsDTO));
        }
        this.d.setUseListMode(z);
        if (indexOfChild(this.d) < 0) {
            addView(this.d, d(-1, -2));
        }
        TranCircleImageView tranCircleImageView = this.b;
        if (tranCircleImageView == null || !(tranCircleImageView.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) this.b.getParent()).removeView(this.b);
        this.b = null;
    }

    public void init(int i) {
        this.h = i;
        if (i != 3) {
            l();
        }
    }

    public boolean isAttached() {
        return this.i;
    }

    public final void l() {
        if (this.b == null) {
            TranCircleImageView tranCircleImageView = new TranCircleImageView(getContext());
            this.b = tranCircleImageView;
            tranCircleImageView.setId(R.id.native_mediaview_iv_id);
        }
        if (indexOfChild(this.b) < 0) {
            addView(this.b, d(-1, -2));
        }
        if (this.h == 2 && this.b.getLayoutParams() != null) {
            this.b.getLayoutParams().height = -2;
        }
        NativeAdVideoView nativeAdVideoView = this.d;
        if (nativeAdVideoView == null || !(nativeAdVideoView.getParent() instanceof ViewGroup)) {
            return;
        }
        this.d.release();
        ((ViewGroup) this.d.getParent()).removeView(this.d);
        this.d = null;
    }

    public void pause() {
        NativeAdVideoView nativeAdVideoView = this.d;
        if (nativeAdVideoView != null) {
            nativeAdVideoView.pause();
        }
    }

    public void play() {
        NativeAdVideoView nativeAdVideoView = this.d;
        if (nativeAdVideoView != null) {
            nativeAdVideoView.play();
        }
    }

    public void setInteractiveView(TaNativeInfo taNativeInfo, final String str, String str2) {
        f(taNativeInfo, str2);
        final InteractiveFrameLayout interactiveFrameLayout = this.f;
        final InteractiveWebView interactiveWebView = this.g;
        if (interactiveFrameLayout == null || interactiveWebView == null) {
            return;
        }
        interactiveFrameLayout.registerGlobalLayoutListener(new InteractiveFrameLayout.a() {
            @Override
            public final void a(int i, int i2) {
                this.a.g(interactiveWebView, interactiveFrameLayout, str, i, i2);
            }
        });
    }

    public void setMediaView(AdImage adImage, ImageView.ScaleType scaleType, boolean z) {
        l();
        TranCircleImageView tranCircleImageView = this.b;
        if (tranCircleImageView == null || scaleType == null) {
            return;
        }
        if (z) {
            tranCircleImageView.setAdjustViewBounds(true);
            this.b.setMaxWidth(md8.k());
            this.b.setMaxHeight(md8.j());
        } else {
            tranCircleImageView.setAdjustViewBounds(true);
            this.b.setScaleType(scaleType);
        }
        if (adImage != null) {
            this.c = adImage;
            this.i = adImage.attachView(this.b);
        }
    }

    public void setRadius(float f, float f2, float f3, float f4) {
        TranCircleImageView tranCircleImageView = this.b;
        if (tranCircleImageView != null) {
            tranCircleImageView.setTopLeftRadius(f);
            this.b.setTopRightRadius(f2);
            this.b.setBottomLeftRadius(f3);
            this.b.setBottomRightRadius(f4);
            this.b.setCircle((f == 0.0f && f2 == 0.0f && f3 == 0.0f && f4 == 0.0f) ? false : true);
            this.b.invalidate();
        }
    }

    public void setVideoView(String str, boolean z, String str2, AdsDTO adsDTO, boolean z2) {
        i(adsDTO, z2);
        if (TextUtils.isEmpty(str) || this.d == null || adsDTO == null) {
            ikd.b().e("MediaView", "setVideoView filePath is null or adVideoView is null or adsDTO is null");
            return;
        }
        AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
        if (impBeanRequest != null) {
            ikd.b().d("MediaView", "init impBean.isAutoPlayVideoAd " + impBeanRequest.isAutoPlayVideoAd);
            this.d.setPlayWhenReady(impBeanRequest.isAutoPlayVideoAd);
        }
        ikd.b().d("MediaView", "isMaterialStyleValid---->" + z + "   materialStyle---->" + str2);
        this.d.setShowComponents(true);
        this.d.setAutoReset(true);
        if (adsDTO.getVideoInfo() != null && adsDTO.getVideoInfo().getVideoMask() != null) {
            this.d.setCompanionSize(adsDTO.getVideoInfo().getVideoMask().getResource());
        }
        this.d.setMediaData(str, adsDTO, str.startsWith(ProxyConfig.MATCH_HTTP));
    }

    public MediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = null;
        this.c = null;
        this.e = null;
        this.j = false;
        this.n = -1.0f;
    }
}
