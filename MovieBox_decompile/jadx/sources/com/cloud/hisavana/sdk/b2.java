package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.widget.CountTimeView;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.video.SplashAdVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.lang.ref.WeakReference;

public class b2 {

    private View f21073a;

    private SplashAdVideoView f21074b;

    private long f21075c;

    private final e1 f21076d;

    private InteractiveWebView f21078f;

    private j4 f21085m;

    private int f21086n;

    private String f21077e = null;

    private float f21079g = -1.0f;

    private float f21080h = -1.0f;

    private float f21081i = -1.0f;

    private float f21082j = -1.0f;

    private boolean f21083k = false;

    private boolean f21084l = false;

    private final e f21087o = new e(this);

    class a implements InteractiveWebView.c {
        a() {
        }

        @Override
        public void a(String str) {
            CountTimeView countTimeViewJ;
            b4.b().d("SplashImage", "interactiveEvent: " + str);
            b2.this.l(str);
            if (b2.this.f21076d == null || (countTimeViewJ = b2.this.f21076d.J()) == null) {
                return;
            }
            countTimeViewJ.cancel();
            countTimeViewJ.changeFinishMode();
        }

        @Override
        public void b() {
            b4.b().d("SplashImage", "handleClick ");
            b2 b2Var = b2.this;
            b2Var.q(b2Var.f21078f);
        }

        @Override
        public void c() {
            b4.b().d("SplashImage", "timeoutShutdown ");
            if (b2.this.f21076d != null) {
                b2.this.f21076d.z0();
            }
        }
    }

    class b implements ValueCallback {
        b() {
        }

        @Override
        public void onReceiveValue(String str) {
            b4.b().e("SplashImage", "onReceiveValue " + str);
        }
    }

    class c extends DrawableResponseListener {
        c() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b2.this.h(taErrorCode);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            if (b2.this.f21076d != null) {
                b2.this.f21076d.k0(true);
            }
        }
    }

    class d extends DrawableResponseListener {
        d() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b2.this.h(taErrorCode);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            if (b2.this.f21076d != null) {
                b2.this.f21076d.k0(true);
            }
        }
    }

    private static class e extends com.cloud.hisavana.sdk.common.tranmeasure.a {

        private final WeakReference f21092b;

        public e(b2 b2Var) {
            this.f21092b = new WeakReference(b2Var);
        }

        @Override
        public void a(AdsDTO adsDTO) {
            e1 e1Var;
            super.a(adsDTO);
            b4.b().d("ssp_measure", "onViewImpressed --> view has impression");
            b2 b2Var = (b2) this.f21092b.get();
            if (b2Var == null || b2Var.f21083k || (e1Var = b2Var.f21076d) == null) {
                return;
            }
            b2Var.f21083k = true;
            b4.b().d("ssp_measure", "mSplashAd.adListener().onAdShow()");
            e1Var.Q();
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return;
            }
            O.g().k(adsDTO.getImpBeanRequest().pmid);
            if (adsDTO.getSource() == 4) {
                Y.f20925a.q(adsDTO.getAdCreativeId(), adsDTO.getCodeSeatId());
            } else if (adsDTO.isOfflineAd()) {
                adsDTO.setShowNum(Integer.valueOf(adsDTO.getShowNum().intValue() + 1));
                p.F().q(adsDTO);
            }
        }
    }

    private class f implements View.OnClickListener {
        private f() {
        }

        @Override
        public void onClick(View view) {
            b2.this.q(view);
        }

        f(b2 b2Var, a aVar) {
            this();
        }
    }

    private class g implements View.OnTouchListener {
        private g() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                b2.this.f21079g = motionEvent.getX();
                b2.this.f21080h = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            b2.this.f21081i = motionEvent.getX();
            b2.this.f21082j = motionEvent.getY();
            return false;
        }

        g(b2 b2Var, a aVar) {
            this();
        }
    }

    public b2(e1 e1Var) {
        this.f21076d = e1Var;
    }

    private void d(View view) {
        if (view instanceof ImageView) {
            com.cloud.sdk.commonutil.util.k.a((ImageView) view);
        }
    }

    public void h(TaErrorCode taErrorCode) {
        try {
            e1 e1Var = this.f21076d;
            if (e1Var != null) {
                e1Var.B0();
                this.f21076d.c0(taErrorCode);
            }
        } catch (Throwable unused) {
        }
    }

    private void i(AdsDTO adsDTO) {
        if (this.f21073a == null) {
            this.f21073a = new ImageView(this.f21076d.H());
        }
        ((ImageView) this.f21073a).setScaleType(ImageView.ScaleType.CENTER_CROP);
        DownLoadRequest.n(adsDTO.getAdImgUrl(), adsDTO, new d(), (ImageView) this.f21073a);
    }

    private void j(AdsDTO adsDTO, InteractiveWebView interactiveWebView) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getIndexLocation()) || interactiveWebView == null) {
            r(TaErrorCode.ERROR_SHOW_INDEXLOCATION_EMPTY);
            e1 e1Var = this.f21076d;
            if (e1Var != null) {
                e1Var.z0();
                return;
            }
            return;
        }
        if (!new File(adsDTO.getIndexLocation()).exists()) {
            r(TaErrorCode.ERROR_SHOW_AD_INTERACTIVEAD_FILE_NOT_EXIST);
            e1 e1Var2 = this.f21076d;
            if (e1Var2 != null) {
                e1Var2.z0();
            }
            AthenaTracker.S(adsDTO, 3);
            return;
        }
        interactiveWebView.loadUrl(AdPayload.FILE_SCHEME + adsDTO.getIndexLocation());
        e1 e1Var3 = this.f21076d;
        if (e1Var3 != null) {
            e1Var3.k0(false);
        }
    }

    public void l(String str) {
        e1 e1Var = this.f21076d;
        if (e1Var == null) {
            b4.b().e("SplashImage", "trackInteractionEvent splashAd is null");
            return;
        }
        AdsDTO adsDTO = e1Var.f21806o;
        if (adsDTO == null) {
            b4.b().e("SplashImage", "trackInteractionEvent adsDto is null");
        } else {
            AthenaTracker.y(adsDTO, str);
        }
    }

    public void q(View view) {
        if (view == null) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f21075c <= 1000 || this.f21076d == null) {
                return;
            }
            this.f21075c = jCurrentTimeMillis;
            J0.b(view.getContext(), this.f21076d.f21806o, new DownUpPointBean(this.f21079g, this.f21080h, this.f21081i, this.f21082j, view.getMeasuredHeight(), view.getMeasuredWidth()), this.f21076d.p().v());
            AthenaTracker.W(this.f21076d.f21806o);
            this.f21076d.O();
        } catch (Throwable th2) {
            b4.b().e("ssp", Log.getStackTraceString(th2));
        }
    }

    private void r(TaErrorCode taErrorCode) {
        try {
            e1 e1Var = this.f21076d;
            if (e1Var != null) {
                e1Var.d0(taErrorCode, null);
            }
        } catch (Throwable unused) {
        }
    }

    private void s(AdsDTO adsDTO) {
        b4.b().d("SplashImage", "attachImgAd");
        if (this.f21073a == null) {
            this.f21073a = new ImageView(this.f21076d.H());
        }
        ((ImageView) this.f21073a).setScaleType(ImageView.ScaleType.CENTER_CROP);
        DownLoadRequest.o(adsDTO.getAdImgUrl(), adsDTO, 2, new c(), (ImageView) this.f21073a);
    }

    private void v(View view) {
        if (view == null || this.f21076d == null) {
            return;
        }
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.f21076d.f21806o, view, this.f21087o);
        String strJ = com.cloud.hisavana.sdk.common.util.r.f21605a.j(this.f21076d.f21806o);
        ViewGroup viewGroupK = this.f21076d.K();
        a aVar = null;
        if (TextUtils.isEmpty(strJ) || viewGroupK == null) {
            view.setOnTouchListener(new g(this, aVar));
            view.setOnClickListener(new f(this, aVar));
        } else {
            viewGroupK.setOnTouchListener(new g(this, aVar));
            viewGroupK.setOnClickListener(new f(this, aVar));
        }
    }

    private void w(AdsDTO adsDTO) {
        b4.b().d("SplashImage", "attachInteractiveAd");
        if (adsDTO == null) {
            h(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
        } else {
            C(adsDTO);
            j(adsDTO, this.f21078f);
        }
    }

    private void y(AdsDTO adsDTO) {
        b4.b().d("SplashImage", "fillVideoAd");
        if (this.f21074b == null) {
            this.f21074b = new SplashAdVideoView(this.f21076d.H());
        }
        this.f21074b.resetVolumePosition(!TextUtils.isEmpty(com.cloud.hisavana.sdk.common.util.r.f21605a.j(this.f21076d.f21806o)));
        this.f21074b.setAdMediaPlayerListener(this.f21085m);
        String strJ = w2.j(this.f21076d.f21806o);
        if (TextUtils.isEmpty(strJ)) {
            r(TaErrorCode.ERROR_SHOW_AD_MAINURL_EMPTY);
            e1 e1Var = this.f21076d;
            if (e1Var != null) {
                e1Var.z0();
                return;
            }
            return;
        }
        this.f21074b.setMediaData(strJ, adsDTO, strJ.startsWith("http"));
        e1 e1Var2 = this.f21076d;
        if (e1Var2 != null) {
            e1Var2.k0(false);
        }
    }

    public void A(AdsDTO adsDTO) {
        View view;
        if (adsDTO == null) {
            h(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            return;
        }
        AthenaTracker.A(adsDTO);
        if (adsDTO.isVastTypeAd()) {
            y(adsDTO);
            view = this.f21074b;
        } else if (adsDTO.isInteractiveAd()) {
            w(adsDTO);
            view = this.f21078f;
        } else if (adsDTO.getSource() != 4) {
            s(adsDTO);
            view = this.f21073a;
        } else if (adsDTO.getDefaultMaterialType() == 1) {
            i(adsDTO);
            view = this.f21073a;
        } else {
            y(adsDTO);
            view = this.f21074b;
        }
        v(view);
    }

    public View B(AdsDTO adsDTO) {
        if (adsDTO == null) {
            b4.b().e("SplashImage", "getView adsDto is null");
            return new View(com.cloud.sdk.commonutil.util.e.a());
        }
        if (adsDTO.isInteractiveAd()) {
            return this.f21078f;
        }
        return (adsDTO.isVastTypeAd() || adsDTO.getDefaultMaterialType() == 2) ? this.f21074b : this.f21073a;
    }

    public void C(AdsDTO adsDTO) {
        if (adsDTO == null) {
            b4.b().e("SplashImage", "initializeInteractiveAdView adsDTO is null");
            return;
        }
        if (this.f21078f != null || this.f21076d.H() == null) {
            return;
        }
        a aVar = null;
        try {
            InteractiveWebView interactiveWebView = new InteractiveWebView(this.f21076d.H());
            this.f21078f = interactiveWebView;
            interactiveWebView.setWebClientCallback(adsDTO);
            this.f21078f.setInteractiveListener(new a());
            this.f21078f.setOnTouchListener(new g(this, aVar));
        } catch (Throwable th2) {
            b4.b().e("SplashImage", "create webview error: " + Log.getStackTraceString(th2));
            this.f21078f = null;
        }
    }

    public void D(AdsDTO adsDTO) {
        SplashAdVideoView splashAdVideoView;
        if (adsDTO == null || !adsDTO.isVastTypeAd() || (splashAdVideoView = this.f21074b) == null) {
            return;
        }
        splashAdVideoView.pause();
    }

    public void b() {
        e1 e1Var = this.f21076d;
        if (e1Var != null && e1Var.f21806o != null) {
            com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(this.f21076d.f21806o);
        }
        d(this.f21073a);
        this.f21073a = null;
        InteractiveWebView interactiveWebView = this.f21078f;
        if (interactiveWebView != null) {
            interactiveWebView.setInteractiveListener(null);
            this.f21078f.destroy();
            this.f21078f = null;
        }
        SplashAdVideoView splashAdVideoView = this.f21074b;
        if (splashAdVideoView != null) {
            splashAdVideoView.setAdMediaPlayerListener(null);
            this.f21074b.release();
            this.f21074b = null;
        }
        b4.b().d("ssp", PushConstants.PROVIDER_FIELD_DESTROY);
    }

    public void c(int i10) {
        this.f21086n = i10;
    }

    public void k(j4 j4Var) {
        this.f21085m = j4Var;
    }

    public void z(AdsDTO adsDTO) {
        InteractiveWebView interactiveWebView;
        if (adsDTO == null) {
            return;
        }
        if (adsDTO.isVastTypeAd()) {
            SplashAdVideoView splashAdVideoView = this.f21074b;
            if (splashAdVideoView != null) {
                splashAdVideoView.play();
                return;
            }
            return;
        }
        if (!adsDTO.isInteractiveAd() || (interactiveWebView = this.f21078f) == null) {
            return;
        }
        interactiveWebView.evaluateJavascript("javascript:continuePlay()", new b());
    }
}
