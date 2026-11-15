package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.widget.ImageView;
import androidx.webkit.ProxyConfig;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.common.widget.CountTimeView;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.TemplateAdWebView;
import com.cloud.hisavana.sdk.common.widget.video.SplashAdVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.q1;
import com.cloud.hisavana.sdk.u;
import com.cloud.hisavana.sdk.w;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.transsion.push.PushConstants;
import java.io.File;
import java.lang.ref.WeakReference;

public class oid {
    public View a;
    public SplashAdVideoView b;
    public long c;
    public final q1 d;
    public InteractiveWebView f;
    public TemplateAdWebView g;
    public xnd n;
    public int o;
    public String e = null;
    public float h = -1.0f;
    public float i = -1.0f;
    public float j = -1.0f;
    public float k = -1.0f;
    public boolean l = false;
    public boolean m = false;
    public final f p = new f(this);

    public class a implements InteractiveWebView.c {
        public a() {
        }

        @Override
        public void a(String str) {
            CountTimeView countTimeViewJ;
            ikd.b().d("SplashImage", "interactiveEvent: " + str);
            oid.this.o(str);
            if (oid.this.d == null || (countTimeViewJ = oid.this.d.J()) == null) {
                return;
            }
            countTimeViewJ.cancel();
            countTimeViewJ.changeFinishMode();
        }

        @Override
        public void b() {
            ikd.b().d("SplashImage", "handleClick ");
            oid oidVar = oid.this;
            oidVar.w(oidVar.f);
        }

        @Override
        public void c() {
            ikd.b().d("SplashImage", "timeoutShutdown ");
            if (oid.this.d != null) {
                oid.this.d.x0();
            }
        }
    }

    public class b implements ValueCallback {
        public b() {
        }

        @Override
        public void onReceiveValue(String str) {
            ikd.b().e("SplashImage", "onReceiveValue " + str);
        }
    }

    public class c extends DrawableResponseListener {
        public c() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            oid.this.i(taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            if (oid.this.d != null) {
                oid.this.d.o0(true);
            }
        }
    }

    public class d extends DrawableResponseListener {
        public d() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            oid.this.i(taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            if (oid.this.d != null) {
                oid.this.d.o0(true);
            }
        }
    }

    public class e extends ujd {
        public final AdsDTO a;

        public e(AdsDTO adsDTO) {
            this.a = adsDTO;
        }

        @Override
        public void a() {
            oid.this.d.O();
        }

        @Override
        public void b(int i, boolean z) {
            oid oidVar = oid.this;
            oidVar.w(oidVar.g);
        }

        @Override
        public void c(TaErrorCode taErrorCode) {
            oid.this.i(taErrorCode);
        }

        @Override
        public void e() {
            u.n().h(ul4.a(), oid.this.d, this.a, null, false);
        }

        @Override
        public void g() {
            oid.this.d.R();
        }

        @Override
        public void h() {
            oid.this.d.S();
        }
    }

    public static class f extends com.cloud.hisavana.sdk.common.tranmeasure.a {
        public final WeakReference b;

        public f(oid oidVar) {
            this.b = new WeakReference(oidVar);
        }

        @Override
        public void a(AdsDTO adsDTO) {
            q1 q1Var;
            super.a(adsDTO);
            ikd.b().d(ja1.MEASURE_TAG, "onViewImpressed --> view has impression");
            oid oidVar = (oid) this.b.get();
            if (oidVar == null || oidVar.l || (q1Var = oidVar.d) == null) {
                return;
            }
            oidVar.l = true;
            ikd.b().d(ja1.MEASURE_TAG, "mSplashAd.adListener().onAdShow()");
            q1Var.Q();
            HSCommonUtils.a.x(adsDTO);
        }
    }

    public class g implements View.OnClickListener {
        public g() {
        }

        @Override
        public void onClick(View view) {
            oid.this.w(view);
        }

        public g(oid oidVar, a aVar) {
            this();
        }
    }

    public class h implements View.OnTouchListener {
        public h() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                oid.this.h = motionEvent.getX();
                oid.this.i = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            oid.this.j = motionEvent.getX();
            oid.this.k = motionEvent.getY();
            return false;
        }

        public h(oid oidVar, a aVar) {
            this();
        }
    }

    public oid(q1 q1Var) {
        this.d = q1Var;
    }

    public final void C(View view) {
        if (view == null || this.d == null) {
            return;
        }
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.d.o, view, this.p);
        String strM = HSCommonUtils.a.m(this.d.o);
        ViewGroup viewGroupK = this.d.K();
        a aVar = null;
        if (TextUtils.isEmpty(strM) || viewGroupK == null) {
            view.setOnTouchListener(new h(this, aVar));
            view.setOnClickListener(new g(this, aVar));
        } else {
            viewGroupK.setOnTouchListener(new h(this, aVar));
            viewGroupK.setOnClickListener(new g(this, aVar));
        }
    }

    public final void D(AdsDTO adsDTO) {
        ikd.b().d("SplashImage", "attachInteractiveAd");
        if (adsDTO == null) {
            i(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
        } else {
            L(adsDTO);
            k(adsDTO, this.f);
        }
    }

    public final void G(AdsDTO adsDTO) {
        ikd.b().d("SplashImage", "fillVideoAd");
        if (this.b == null) {
            this.b = new SplashAdVideoView(this.d.H());
        }
        this.b.resetVolumePosition(!TextUtils.isEmpty(HSCommonUtils.a.m(this.d.o)));
        this.b.setAdMediaPlayerListener(this.n);
        String strK = w.k(this.d.o);
        if (TextUtils.isEmpty(strK)) {
            x(TaErrorCode.ERROR_SHOW_AD_MAINURL_EMPTY);
            q1 q1Var = this.d;
            if (q1Var != null) {
                q1Var.x0();
                return;
            }
            return;
        }
        this.b.setMediaData(strK, adsDTO, strK.startsWith(ProxyConfig.MATCH_HTTP));
        q1 q1Var2 = this.d;
        if (q1Var2 != null) {
            q1Var2.o0(false);
        }
    }

    public void H(AdsDTO adsDTO) {
        InteractiveWebView interactiveWebView;
        if (adsDTO == null) {
            return;
        }
        if (adsDTO.isVastTypeAd()) {
            SplashAdVideoView splashAdVideoView = this.b;
            if (splashAdVideoView != null) {
                splashAdVideoView.play();
                return;
            }
            return;
        }
        if (!adsDTO.isInteractiveAd() || (interactiveWebView = this.f) == null) {
            return;
        }
        interactiveWebView.evaluateJavascript("javascript:continuePlay()", new b());
    }

    public final ujd I(AdsDTO adsDTO) {
        return new e(adsDTO);
    }

    public final void J(AdsDTO adsDTO) {
        View view;
        if (adsDTO.isVastTypeAd()) {
            G(adsDTO);
            view = this.b;
        } else if (adsDTO.isInteractiveAd()) {
            D(adsDTO);
            view = this.f;
        } else if (adsDTO.getSource() != 4) {
            y(adsDTO);
            view = this.a;
        } else if (adsDTO.getDefaultMaterialType() == 1) {
            j(adsDTO);
            view = this.a;
        } else {
            G(adsDTO);
            view = this.b;
        }
        C(view);
    }

    public View K(AdsDTO adsDTO) {
        if (adsDTO == null) {
            ikd.b().e("SplashImage", "getView adsDto is null");
            return new View(ul4.a());
        }
        if (adsDTO.isInteractiveAd()) {
            return this.f;
        }
        return (adsDTO.isVastTypeAd() || adsDTO.getDefaultMaterialType() == 2) ? this.b : this.a;
    }

    public void L(AdsDTO adsDTO) {
        if (adsDTO == null) {
            ikd.b().e("SplashImage", "initializeInteractiveAdView adsDTO is null");
            return;
        }
        if (this.f != null || this.d.H() == null) {
            return;
        }
        a aVar = null;
        try {
            InteractiveWebView interactiveWebView = new InteractiveWebView(this.d.H());
            this.f = interactiveWebView;
            interactiveWebView.setWebClientCallback(adsDTO);
            this.f.setInteractiveListener(new a());
            this.f.setOnTouchListener(new h(this, aVar));
        } catch (Throwable th) {
            ikd.b().e("SplashImage", "create webview error: " + Log.getStackTraceString(th));
            this.f = null;
        }
    }

    public void M(AdsDTO adsDTO) {
        SplashAdVideoView splashAdVideoView;
        if (adsDTO == null || !adsDTO.isVastTypeAd() || (splashAdVideoView = this.b) == null) {
            return;
        }
        splashAdVideoView.pause();
    }

    public void d() {
        q1 q1Var = this.d;
        if (q1Var != null && q1Var.o != null) {
            com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(this.d.o);
        }
        h(this.a);
        this.a = null;
        InteractiveWebView interactiveWebView = this.f;
        if (interactiveWebView != null) {
            interactiveWebView.setInteractiveListener(null);
            this.f.destroy();
            this.f = null;
        }
        SplashAdVideoView splashAdVideoView = this.b;
        if (splashAdVideoView != null) {
            splashAdVideoView.setAdMediaPlayerListener(null);
            this.b.release();
            this.b = null;
        }
        TemplateAdWebView templateAdWebView = this.g;
        if (templateAdWebView != null) {
            templateAdWebView.destroyWebView();
            this.g = null;
        }
        ikd.b().d("ssp", PushConstants.PROVIDER_FIELD_DESTROY);
    }

    public void e(int i) {
        TemplateAdWebView templateAdWebView = this.g;
        if (templateAdWebView != null) {
            templateAdWebView.notifyLifecycle(i);
        }
    }

    public void f(Context context, AdsDTO adsDTO) {
        if (adsDTO == null) {
            i(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            return;
        }
        AthenaTracker.D(adsDTO);
        String templateHtmlFilePath = adsDTO.getTemplateHtmlFilePath();
        if (TextUtils.isEmpty(templateHtmlFilePath) || adsDTO.isInteractiveAd() || !TextUtils.isEmpty(adsDTO.getAdm())) {
            J(adsDTO);
        } else {
            g(context, adsDTO, templateHtmlFilePath);
        }
    }

    public final void g(final Context context, final AdsDTO adsDTO, final String str) {
        HSScopeHelper.a.l(new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.z(str, adsDTO, context);
            }
        });
    }

    public final void h(View view) {
        if (view instanceof ImageView) {
            pp4.a((ImageView) view);
        }
    }

    public final void i(TaErrorCode taErrorCode) {
        try {
            q1 q1Var = this.d;
            if (q1Var != null) {
                q1Var.h0(taErrorCode);
            }
        } catch (Throwable unused) {
        }
    }

    public final void j(AdsDTO adsDTO) {
        if (this.a == null) {
            this.a = new ImageView(this.d.H());
        }
        ((ImageView) this.a).setScaleType(ImageView.ScaleType.CENTER_CROP);
        DownLoadRequest.n(adsDTO.getAdImgUrl(), adsDTO, new d(), (ImageView) this.a);
    }

    public final void k(AdsDTO adsDTO, InteractiveWebView interactiveWebView) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getIndexLocation()) || interactiveWebView == null) {
            x(TaErrorCode.ERROR_SHOW_INDEXLOCATION_EMPTY);
            q1 q1Var = this.d;
            if (q1Var != null) {
                q1Var.x0();
                return;
            }
            return;
        }
        if (!new File(adsDTO.getIndexLocation()).exists()) {
            x(TaErrorCode.ERROR_SHOW_AD_INTERACTIVEAD_FILE_NOT_EXIST);
            q1 q1Var2 = this.d;
            if (q1Var2 != null) {
                q1Var2.x0();
            }
            AthenaTracker.X(adsDTO, 3);
            return;
        }
        interactiveWebView.loadUrl("file://" + adsDTO.getIndexLocation());
        q1 q1Var3 = this.d;
        if (q1Var3 != null) {
            q1Var3.o0(false);
        }
    }

    public final void o(String str) {
        q1 q1Var = this.d;
        if (q1Var == null) {
            ikd.b().e("SplashImage", "trackInteractionEvent splashAd is null");
            return;
        }
        AdsDTO adsDTO = q1Var.o;
        if (adsDTO == null) {
            ikd.b().e("SplashImage", "trackInteractionEvent adsDto is null");
        } else {
            AthenaTracker.B(adsDTO, str);
        }
    }

    public final void p(String str, AdsDTO adsDTO, Context context) {
        if (this.d == null) {
            return;
        }
        a aVar = null;
        if (TextUtils.isEmpty(str)) {
            adsDTO.setTemplateHtmlFilePath(null);
            J(adsDTO);
            return;
        }
        try {
            int i = 1;
            if (hm4.e() != 1) {
                i = 0;
            }
            adsDTO.setLayoutDirection(i);
            TemplateAdWebView templateAdWebView = new TemplateAdWebView(context);
            this.g = templateAdWebView;
            templateAdWebView.setup(adsDTO, I(adsDTO));
            this.g.loadTemplate(str);
            com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.d.o, this.g, this.p);
            this.g.setOnTouchListener(new h(this, aVar));
            this.d.m0(this.g);
        } catch (Throwable th) {
            ikd.b().w("SplashImage", "attachTemplateAd setup error: " + th.getMessage());
            adsDTO.setTemplateHtmlFilePath(null);
            J(adsDTO);
        }
    }

    public void q(xnd xndVar) {
        this.n = xndVar;
    }

    public void v(int i) {
        this.o = i;
    }

    public final void w(View view) {
        if (view == null) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.c <= 1000 || this.d == null) {
                return;
            }
            this.c = jCurrentTimeMillis;
            U0.b(view.getContext(), this.d.o, new DownUpPointBean(this.h, this.i, this.j, this.k, view.getMeasuredHeight(), view.getMeasuredWidth()), this.d.p().x());
            AthenaTracker.b0(this.d.o);
            this.d.r0(true);
        } catch (Throwable th) {
            ikd.b().e("ssp", Log.getStackTraceString(th));
        }
    }

    public final void x(TaErrorCode taErrorCode) {
        try {
            q1 q1Var = this.d;
            if (q1Var != null) {
                q1Var.i0(taErrorCode, null);
            }
        } catch (Throwable unused) {
        }
    }

    public final void y(AdsDTO adsDTO) {
        ikd.b().d("SplashImage", "attachImgAd");
        if (this.a == null) {
            this.a = new ImageView(this.d.H());
        }
        ((ImageView) this.a).setScaleType(ImageView.ScaleType.CENTER_CROP);
        DownLoadRequest.o(adsDTO.getAdImgUrl(), adsDTO, 2, new c(), (ImageView) this.a);
    }

    public final void z(String str, final AdsDTO adsDTO, final Context context) throws Throwable {
        final String strD = yu3.d(str);
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                this.b.p(strD, adsDTO, context);
            }
        });
    }
}
