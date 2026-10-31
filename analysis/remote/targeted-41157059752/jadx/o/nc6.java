package o;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.PinkiePie;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.snaptube.ad.tracker.TrackManager;
import com.snaptube.ads.R$id;
import com.snaptube.ads.feedback.callback.FeedbackLayoutDecorator;
import com.snaptube.ads.nativead.AdImagePlaceholderHelper;
import com.snaptube.ads.nativead.AdView;
import com.snaptube.ads.selfbuild.request.model.SnaptubeAdModel;
import com.snaptube.ads.utils.ClickResponseCollector;
import com.snaptube.ads.view.AdPlayerContainer;
import com.snaptube.ads.view.SplashAdView;
import com.snaptube.ads_log_v2.AdForm;
import com.snaptube.ads_log_v2.AdLogV2Action;
import com.snaptube.ads_log_v2.AdLogV2Event;
import com.snaptube.base.view.AdxBannerContainer;
import com.snaptube.premium.base.ui.R$drawable;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.ThreadPool;
import dagger.Lazy;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import net.pubnative.mediation.adapter.model.SnaptubeNativeAdModel;
import net.pubnative.mediation.exception.AdException;
import net.pubnative.mediation.exception.AdPosExceptionMessage;
import net.pubnative.mediation.exception.AdPosRequestException;
import net.pubnative.mediation.request.model.AdLogDataFromAdModel;
import net.pubnative.mediation.request.model.PubnativeAdModel;
import net.pubnative.mediation.utils.AdExtKt;

public class nc6 extends u25 {
    public final HashSet d;
    public FeedbackLayoutDecorator e;

    @Inject
    b7 f;

    @Inject
    sd g;

    @Inject
    y93 h;

    @Inject
    gb i;

    @Inject
    rh3 j;

    public class a implements PubnativeAdModel.Listener {
        public final String a;

        public a(String str) {
            this.a = str;
        }

        @Override
        public void onAdClick(PubnativeAdModel pubnativeAdModel) {
            nc6.O(nc6.this, this.a, pubnativeAdModel.getPlacementId(), pubnativeAdModel.getNetworkName());
            ClickResponseCollector.i(pubnativeAdModel);
        }

        @Override
        public void onAdClose(PubnativeAdModel pubnativeAdModel) {
            nc6.U(nc6.this, this.a);
        }

        @Override
        public void onAdImpressionConfirmed(PubnativeAdModel pubnativeAdModel) {
            nc6.N(nc6.this, this.a, pubnativeAdModel.getPlacementId(), pubnativeAdModel.getNetworkName());
        }

        @Override
        public void onAdRewarded(PubnativeAdModel pubnativeAdModel) {
            dq2.j("激励回调：" + this.a);
            b88.k(nc6.this.c, "激励回调");
            nc6.V(nc6.this, this.a);
        }

        @Override
        public void onAdSkip(PubnativeAdModel pubnativeAdModel) {
            nc6.W(nc6.this, this.a);
        }
    }

    public class b implements SnaptubeAdModel.f {
        public final PubnativeAdModel a;
        public final db b;

        public b(PubnativeAdModel pubnativeAdModel, db dbVar) {
            this.a = pubnativeAdModel;
            this.b = dbVar;
        }

        @Override
        public boolean a(SnaptubeAdModel snaptubeAdModel, View view) {
            this.a.invokeOnAdClick();
            if (this.b.l() instanceof gt0) {
                return ((gt0) this.b.l()).s();
            }
            return false;
        }
    }

    public class c extends m0 {
        public final PubnativeAdModel a;

        public c(PubnativeAdModel pubnativeAdModel) {
            this.a = pubnativeAdModel;
        }

        @Override
        public void onResourceReady(Object obj) {
            PubnativeAdModel pubnativeAdModel = this.a;
            if (pubnativeAdModel instanceof SnaptubeNativeAdModel) {
                ((SnaptubeNativeAdModel) pubnativeAdModel).recordEndTrackingTime();
            }
            TrackManager.a(this.a.getTrackingModel());
            TrackManager.d(this.a.getTrackingModel());
        }
    }

    public class d extends m0 {
        public long a;
        public final Runnable b;
        public final String c;
        public final ViewGroup d;
        public final PubnativeAdModel e;
        public final long f;
        public final db g;

        public d(String str, ViewGroup viewGroup, PubnativeAdModel pubnativeAdModel, long j, db dbVar) {
            this.c = str;
            this.d = viewGroup;
            this.e = pubnativeAdModel;
            this.f = j;
            this.g = dbVar;
            this.b = new oc6(this, str, viewGroup, pubnativeAdModel);
        }

        public static void a(d dVar, String str, ViewGroup viewGroup, PubnativeAdModel pubnativeAdModel) {
            dVar.b(str, viewGroup, pubnativeAdModel);
        }

        public final void b(String str, ViewGroup viewGroup, PubnativeAdModel pubnativeAdModel) {
            ProductionEnv.debugLog("PubNativeAdManager", "on render timeout");
            nc6.a0(nc6.this, str, new AdPosRequestException(AdPosExceptionMessage.TIMEOUT_LOAD_RESOURCE, 2));
            nc6.I(nc6.this, viewGroup, null);
            nc6.J(nc6.this, pubnativeAdModel, this.a);
        }

        @Override
        public void onLoadFailed() {
            ProductionEnv.debugLog("PubNativeAdManager", "onLoadFailed: ");
            nc6.X(nc6.this, this.c, new AdPosRequestException(AdPosExceptionMessage.TIMEOUT_LOAD_RESOURCE, 2));
            nc6.I(nc6.this, this.d, this.b);
            nc6.J(nc6.this, this.e, this.a);
        }

        @Override
        public void onLoadStart() {
            ProductionEnv.debugLog("PubNativeAdManager", "onLoadStart: " + this.f);
            this.a = System.currentTimeMillis();
            nc6.L(nc6.this, this.d, this.g.d());
            nc6.M(nc6.this, this.d, this.f, this.b);
            nc6.K(nc6.this, this.e, this.a);
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0060  */
        @Override
        public void onResourceReady(Object obj) {
            ProductionEnv.debugLog("PubNativeAdManager", "onResourceReady: " + obj);
            nc6.I(nc6.this, this.d, this.b);
            PubnativeAdModel pubnativeAdModel = this.e;
            if (pubnativeAdModel instanceof SnaptubeNativeAdModel) {
                ((SnaptubeNativeAdModel) pubnativeAdModel).recordEndTrackingTime();
            }
            if (obj instanceof Drawable) {
                Drawable drawable = (Drawable) obj;
                if (drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight() > 1.0f) {
                    nc6.Y(nc6.this, 1);
                } else {
                    nc6.Z(nc6.this, 0);
                }
            } else {
                nc6.Z(nc6.this, 0);
            }
            nc6.J(nc6.this, this.e, this.a);
            TrackManager.a(this.e.getTrackingModel());
            TrackManager.d(this.e.getTrackingModel());
        }
    }

    public class e implements AdPlayerContainer.g {
        public long a;
        public final Runnable b;
        public final AdPlayerContainer c;
        public final String d;
        public final ViewGroup e;
        public final PubnativeAdModel f;
        public final db g;
        public final long h;

        public e(AdPlayerContainer adPlayerContainer, String str, ViewGroup viewGroup, PubnativeAdModel pubnativeAdModel, db dbVar, long j) {
            this.c = adPlayerContainer;
            this.d = str;
            this.e = viewGroup;
            this.f = pubnativeAdModel;
            this.g = dbVar;
            this.h = j;
            this.b = new pc6(this, adPlayerContainer, str, viewGroup, pubnativeAdModel);
        }

        public static void g(e eVar, AdPlayerContainer adPlayerContainer, String str, ViewGroup viewGroup, PubnativeAdModel pubnativeAdModel) {
            eVar.h(adPlayerContainer, str, viewGroup, pubnativeAdModel);
        }

        @Override
        public void a() {
            pa.c(this);
        }

        @Override
        public void b() {
            ProductionEnv.debugLog("PubNativeAdManager", "onStartPlayer: ");
            this.a = System.currentTimeMillis();
            nc6.L(nc6.this, this.e, this.g.d());
            nc6.M(nc6.this, this.e, this.h, this.b);
            nc6.K(nc6.this, this.f, this.a);
        }

        @Override
        public void c() {
            pa.b(this);
        }

        @Override
        public void d(float f) {
            ProductionEnv.debugLog("PubNativeAdManager", "onRenderedFistFrame: " + f);
            this.c.w0(this);
            nc6.I(nc6.this, this.e, this.b);
            if (f > 1.0f) {
                if (AdExtKt.isCTAInfoComplete(this.f)) {
                    nc6.b0(nc6.this, 1);
                } else {
                    nc6.P(nc6.this, 3);
                }
            } else if (AdExtKt.isCTAInfoComplete(this.f)) {
                nc6.Q(nc6.this, 0);
            } else {
                nc6.R(nc6.this, 2);
            }
            View viewFindViewById = this.e.findViewById(R$id.btn_voice);
            if (viewFindViewById instanceof ImageView) {
                viewFindViewById.setVisibility(0);
                this.c.e0((ImageView) viewFindViewById);
            }
            nc6.J(nc6.this, this.f, this.a);
        }

        @Override
        public void e(ExoPlaybackException exoPlaybackException) {
            ProductionEnv.debugLog("PubNativeAdManager", "onPlayerError: ");
            this.c.H0(true);
            nc6.S(nc6.this, this.d, new AdPosRequestException(exoPlaybackException, 2));
            this.c.w0(this);
            nc6.I(nc6.this, this.e, this.b);
            nc6.J(nc6.this, this.f, this.a);
        }

        @Override
        public void f() {
            pa.a(this);
        }

        public final void h(AdPlayerContainer adPlayerContainer, String str, ViewGroup viewGroup, PubnativeAdModel pubnativeAdModel) {
            ProductionEnv.debugLog("PubNativeAdManager", "on render timeout");
            adPlayerContainer.H0(false);
            nc6.T(nc6.this, str, new AdPosRequestException(AdPosExceptionMessage.TIMEOUT_LOAD_RESOURCE, 2));
            nc6.I(nc6.this, viewGroup, null);
            nc6.J(nc6.this, pubnativeAdModel, this.a);
        }
    }

    public interface f {
        void k(nc6 nc6Var);
    }

    public nc6(Context context, String str, Lazy lazy) {
        super(context);
        this.d = new HashSet();
        ((f) fc1.a(context.getApplicationContext())).k(this);
        this.e = new FeedbackLayoutDecorator();
    }

    public static void F(ViewGroup viewGroup, Bitmap bitmap) {
        i0(viewGroup, bitmap);
    }

    public static void G(PubnativeAdModel pubnativeAdModel, long j, long j2) {
        j0(pubnativeAdModel, j, j2);
    }

    public static void H(PubnativeAdModel pubnativeAdModel, long j) {
        k0(pubnativeAdModel, j);
    }

    public static void I(nc6 nc6Var, ViewGroup viewGroup, Runnable runnable) {
        nc6Var.g0(viewGroup, runnable);
    }

    public static void J(nc6 nc6Var, PubnativeAdModel pubnativeAdModel, long j) {
        nc6Var.m0(pubnativeAdModel, j);
    }

    public static void K(nc6 nc6Var, PubnativeAdModel pubnativeAdModel, long j) {
        nc6Var.n0(pubnativeAdModel, j);
    }

    public static void L(nc6 nc6Var, ViewGroup viewGroup, boolean z) {
        nc6Var.p0(viewGroup, z);
    }

    public static void M(nc6 nc6Var, ViewGroup viewGroup, long j, Runnable runnable) {
        nc6Var.q0(viewGroup, j, runnable);
    }

    public static void N(nc6 nc6Var, String str, String str2, String str3) {
        nc6Var.r(str, str2, str3);
    }

    public static void O(nc6 nc6Var, String str, String str2, String str3) {
        nc6Var.o(str, str2, str3);
    }

    public static void P(nc6 nc6Var, int i) {
        nc6Var.s(i);
    }

    public static void Q(nc6 nc6Var, int i) {
        nc6Var.s(i);
    }

    public static void R(nc6 nc6Var, int i) {
        nc6Var.s(i);
    }

    public static void S(nc6 nc6Var, String str, AdException adException) {
        nc6Var.q(str, adException);
    }

    public static void T(nc6 nc6Var, String str, AdException adException) {
        nc6Var.q(str, adException);
    }

    public static void U(nc6 nc6Var, String str) {
        nc6Var.p(str);
    }

    public static void V(nc6 nc6Var, String str) {
        nc6Var.t(str);
    }

    public static void W(nc6 nc6Var, String str) {
        nc6Var.u(str);
    }

    public static void X(nc6 nc6Var, String str, AdException adException) {
        nc6Var.q(str, adException);
    }

    public static void Y(nc6 nc6Var, int i) {
        nc6Var.s(i);
    }

    public static void Z(nc6 nc6Var, int i) {
        nc6Var.s(i);
    }

    public static void a0(nc6 nc6Var, String str, AdException adException) {
        nc6Var.q(str, adException);
    }

    public static void b0(nc6 nc6Var, int i) {
        nc6Var.s(i);
    }

    public static void e0(PubnativeAdModel pubnativeAdModel) {
        pubnativeAdModel.stopTracking();
        pubnativeAdModel.setListener(null);
    }

    public static void i0(ViewGroup viewGroup, Bitmap bitmap) {
        ImageView imageView;
        if (bitmap == null || (imageView = (ImageView) viewGroup.findViewById(R$id.nativeAdBlurBackground)) == null || imageView.getDrawable() != null) {
            return;
        }
        PubnativeAdModel.setBlurImage(imageView, bitmap, 25, 2);
    }

    public static void j0(PubnativeAdModel pubnativeAdModel, long j, long j2) {
        pubnativeAdModel.setEndLoadingTime(j);
        HashMap map = new HashMap();
        map.put("client_request_time", Long.valueOf(j2));
        map.put("black_screen_elapsed", Long.valueOf(j - j2));
        com.snaptube.ads_log_v2.b.g().j(AdLogV2Event.a.b(AdLogV2Action.SPLASH_BLACK_SCREEN_END).Q(new AdLogDataFromAdModel(pubnativeAdModel)).x(map).a());
    }

    public static void k0(PubnativeAdModel pubnativeAdModel, long j) {
        pubnativeAdModel.setStartLoadingTime(j);
        HashMap map = new HashMap();
        map.put("client_request_time", Long.valueOf(j));
        com.snaptube.ads_log_v2.b.g().j(AdLogV2Event.a.b(AdLogV2Action.SPLASH_BLACK_SCREEN_START).Q(new AdLogDataFromAdModel(pubnativeAdModel)).x(map).a());
    }

    @Override
    public void E(String str, Object obj) {
        if (obj == null) {
            return;
        }
        e0((PubnativeAdModel) obj);
    }

    @Override
    public boolean a(String str) {
        return !TextUtils.isEmpty(str) && this.i.e(str);
    }

    public final void c0(db dbVar) {
        ViewGroup viewGroupL = dbVar.l();
        Context context = viewGroupL.getContext();
        String strI = dbVar.i();
        PubnativeAdModel pubnativeAdModelC = dbVar.c();
        long j = dbVar.j();
        if (TextUtils.isEmpty(pubnativeAdModelC.getVideoUrl()) && TextUtils.isEmpty(pubnativeAdModelC.getAdVastUrl())) {
            AdPlayerContainer adPlayerContainer = (AdPlayerContainer) viewGroupL.findViewById(com.snaptube.premium.base.ui.R$id.nativeAdPlayerContainer);
            if (adPlayerContainer != null) {
                adPlayerContainer.H0(true);
                return;
            }
            return;
        }
        TrackManager.k(pubnativeAdModelC.getTrackingModel());
        View viewFindViewById = viewGroupL.findViewById(com.snaptube.premium.base.ui.R$id.nativeAdPlayerContainer);
        AdPlayerContainer adPlayerContainer2 = viewFindViewById instanceof AdPlayerContainer ? (AdPlayerContainer) viewFindViewById : new AdPlayerContainer(context);
        adPlayerContainer2.setAdPlayerViewListener(new kc6(viewGroupL));
        adPlayerContainer2.setVisibility(0);
        adPlayerContainer2.setPlacement(pubnativeAdModelC.getAdPos());
        if (dbVar.l() instanceof SplashAdView) {
            adPlayerContainer2.c0(new e(adPlayerContainer2, strI, viewGroupL, pubnativeAdModelC, dbVar, j));
        } else if ((pubnativeAdModelC instanceof SnaptubeNativeAdModel) && ((SnaptubeNativeAdModel) pubnativeAdModelC).isVastVideo() && (viewGroupL instanceof AdView)) {
            ((AdView) viewGroupL).setRadius(dbVar.b());
        }
        adPlayerContainer2.d0(pubnativeAdModelC, viewGroupL.findViewById(R$id.nativeAdCover), viewGroupL instanceof AdView ? (AdView) viewGroupL : null);
    }

    public final void d0(Context context, db dbVar) {
        ViewGroup viewGroupL = dbVar.l();
        PubnativeAdModel pubnativeAdModelC = dbVar.c();
        boolean zK = dbVar.k();
        String strI = dbVar.i();
        boolean z = viewGroupL instanceof SplashAdView;
        if (z && pubnativeAdModelC != null && !TextUtils.isEmpty(pubnativeAdModelC.getAdxBannerHtml())) {
            q(strI, new AdPosRequestException(AdPosExceptionMessage.FORMAT_ERROR, 3));
            return;
        }
        FeedbackLayoutDecorator feedbackLayoutDecorator = this.e;
        if (feedbackLayoutDecorator != null) {
            feedbackLayoutDecorator.e(viewGroupL);
        }
        l0(pubnativeAdModelC);
        pubnativeAdModelC.setBannerMargin(dbVar.g(), dbVar.h(), dbVar.f(), dbVar.e());
        pubnativeAdModelC.setBannerWidth(dbVar.a());
        pubnativeAdModelC.setBannerRadius(dbVar.b());
        if (pubnativeAdModelC.interceptBindData(context, viewGroupL)) {
            return;
        }
        if (pubnativeAdModelC.bindAdxBanner(viewGroupL) && zK) {
            FeedbackLayoutDecorator feedbackLayoutDecorator2 = this.e;
            if (feedbackLayoutDecorator2 != null) {
                feedbackLayoutDecorator2.b(context, viewGroupL, strI, pubnativeAdModelC);
            }
            TrackManager.i(viewGroupL, pubnativeAdModelC);
            PinkiePie.DianePie();
            pubnativeAdModelC.trackLifecycle(context);
            return;
        }
        AdxBannerContainer adxBannerContainerFindAdxBanner = PubnativeAdModel.findAdxBanner(viewGroupL);
        if (adxBannerContainerFindAdxBanner != null) {
            adxBannerContainerFindAdxBanner.unbind();
        }
        ViewGroup viewGroup = (ViewGroup) viewGroupL.findViewById(R$id.adchoice_container);
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            View advertisingDisclosureView = pubnativeAdModelC.getAdvertisingDisclosureView(viewGroupL.getContext());
            if (advertisingDisclosureView != null) {
                viewGroup.addView(advertisingDisclosureView);
            }
        }
        if (pubnativeAdModelC.getAdForm() == AdForm.NATIVE || (pubnativeAdModelC instanceof nc3)) {
            o0(context, dbVar, viewGroupL, z, pubnativeAdModelC, strI);
        }
        ProductionEnv.debugLog("PubNativeAdManager", "shouldTrack=" + zK);
        if (zK) {
            if (z && (pubnativeAdModelC instanceof SnaptubeNativeAdModel)) {
                ((SnaptubeNativeAdModel) pubnativeAdModelC).setSnaptubeAdListener(new b(pubnativeAdModelC, dbVar));
            }
            TrackManager.i(viewGroupL, pubnativeAdModelC);
            PinkiePie.DianePie();
            pubnativeAdModelC.trackLifecycle(context);
        }
        View viewFindViewById = viewGroupL.findViewById(R$id.btn_remove_ad);
        FeedbackLayoutDecorator feedbackLayoutDecorator3 = this.e;
        if (feedbackLayoutDecorator3 != null && viewFindViewById != null) {
            feedbackLayoutDecorator3.c(viewFindViewById, strI, pubnativeAdModelC);
        }
    }

    @Override
    public void e(db dbVar) {
        f0(dbVar);
    }

    @Override
    public void f(String str, Map map, Map map2, boolean z) {
        if (TextUtils.isEmpty(str)) {
            q(str, new AdPosRequestException("pos_no_config", 3));
        } else {
            this.i.c(jb.e(str));
        }
    }

    public final void f0(db dbVar) {
        ProductionEnv.debugLog("PubNativeAdManager", "doRenderAd params=" + dbVar);
        PubnativeAdModel pubnativeAdModelC = dbVar.c();
        if (pubnativeAdModelC == null) {
            return;
        }
        if (pubnativeAdModelC.getIsRendered()) {
            ProductionEnv.debugLog("PubNativeAdManager", "Skip render process because ad data is rendered.");
            return;
        }
        pubnativeAdModelC.setIsRendered(true);
        pubnativeAdModelC.setListener(new a(dbVar.i()));
        d0(this.c, dbVar);
    }

    public final void g0(ViewGroup viewGroup, Runnable runnable) {
        View viewFindViewById;
        if (runnable != null) {
            viewGroup.removeCallbacks(runnable);
        }
        View viewFindViewWithTag = viewGroup.findViewWithTag("tag_progress");
        if (viewFindViewWithTag == null) {
            return;
        }
        viewFindViewWithTag.setVisibility(8);
        viewGroup.removeView(viewFindViewWithTag);
        View viewFindViewById2 = viewGroup.findViewById(R$id.ad_text_label_close_layout);
        if (viewFindViewById2 != null && (viewFindViewById = viewFindViewById2.findViewById(R$id.ad_text_label)) != null) {
            viewFindViewById.setVisibility(0);
        }
    }

    public final View h0(ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        ProgressBar progressBar = new ProgressBar(context);
        progressBar.setVisibility(0);
        progressBar.setIndeterminate(true);
        progressBar.setIndeterminateDrawable(ContextCompat.getDrawable(context, R$drawable.progressbar_circle));
        FrameLayout frameLayout = new FrameLayout(context);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        frameLayout.setLayoutParams(layoutParams);
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        frameLayout.addView(progressBar, layoutParams2);
        frameLayout.setTag("tag_progress");
        frameLayout.setId(R$id.loading_progress);
        viewGroup.addView(frameLayout, layoutParams);
        View viewFindViewById = viewGroup.findViewById(R$id.ad_text_label_close_layout);
        if (viewFindViewById != null) {
            viewFindViewById.bringToFront();
            View viewFindViewById2 = viewFindViewById.findViewById(R$id.ad_text_label);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(4);
            }
        }
        return frameLayout;
    }

    public final void l0(PubnativeAdModel pubnativeAdModel) {
        if (pubnativeAdModel == null) {
            return;
        }
        this.j.log(3, "PubNativeAdManager", "ad_info:" + pubnativeAdModel.getProvider() + "|" + pubnativeAdModel.getAdPos() + "|" + pubnativeAdModel.getPlacementId() + "|" + pubnativeAdModel.getAdGlobalId());
    }

    public final void m0(PubnativeAdModel pubnativeAdModel, long j) {
        ThreadPool.a(new mc6(pubnativeAdModel, System.currentTimeMillis(), j));
    }

    public final void n0(PubnativeAdModel pubnativeAdModel, long j) {
        ThreadPool.a(new lc6(pubnativeAdModel, j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void o0(Context context, db dbVar, ViewGroup viewGroup, boolean z, PubnativeAdModel pubnativeAdModel, String str) {
        Object obj;
        long j = dbVar.j();
        View viewFindViewById = viewGroup.findViewById(R$id.nativeAdCover);
        View viewFindViewById2 = viewGroup.findViewById(R$id.nativeAdIcon);
        View viewFindViewById3 = viewGroup.findViewById(R$id.nativeAdIconBg);
        View viewFindViewById4 = viewGroup.findViewById(R$id.nativeAdBody);
        View viewFindViewById5 = viewGroup.findViewById(R$id.nativeAdSocialContext);
        View viewFindViewById6 = viewGroup.findViewById(R$id.nativeAdCallToAction);
        if (!(viewFindViewById instanceof jj3)) {
            AdImagePlaceholderHelper.b(viewFindViewById, viewFindViewById2, false);
        }
        c0(dbVar);
        if (!z) {
            if (viewFindViewById6 != null) {
                viewFindViewById6.setVisibility(0);
            }
            if (!TextUtils.isEmpty(pubnativeAdModel.getTitle())) {
                int i = R$id.nativeAdTitle;
                if (viewGroup.findViewById(i) != null) {
                    viewGroup.findViewById(i).setVisibility(0);
                }
            }
            if (!TextUtils.isEmpty(pubnativeAdModel.getBrand())) {
                int i2 = R$id.nativeAdBrand;
                if (viewGroup.findViewById(i2) != null) {
                    viewGroup.findViewById(i2).setVisibility(0);
                }
            }
            if (viewFindViewById != null && viewFindViewById2 != null && TextUtils.isEmpty(pubnativeAdModel.getIconUrl())) {
                viewFindViewById2.setVisibility(8);
            } else if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(0);
            }
        }
        c cVar = new c(pubnativeAdModel);
        e54 dVar = z ? new d(str, viewGroup, pubnativeAdModel, j, dbVar) : cVar;
        if (TextUtils.isEmpty(pubnativeAdModel.getIconUrl()) && TextUtils.isEmpty(pubnativeAdModel.getBannerUrl()) && TextUtils.isEmpty(pubnativeAdModel.getVideoUrl()) && TextUtils.isEmpty(pubnativeAdModel.getAdVastUrl())) {
            TrackManager.a(pubnativeAdModel.getTrackingModel());
            TrackManager.h(pubnativeAdModel.getTrackingModel());
        }
        pubnativeAdModel.withTitle(viewGroup.findViewById(R$id.nativeAdTitle)).withBrand(viewGroup.findViewById(R$id.nativeAdBrand)).withSocailContext(viewFindViewById5).withDescription(viewFindViewById4).withIcon(viewFindViewById2, cVar).withAdCover(viewFindViewById, dVar).withCallToAction(viewFindViewById6).withRating(viewGroup.findViewById(R$id.nativeStarRating), viewGroup.findViewById(R$id.nativeStarRatingText));
        PubnativeAdModel.setImage(viewGroup.findViewById(R$id.nativeAdIcon2), pubnativeAdModel.getAvatar(), pubnativeAdModel.getAdPos(), pubnativeAdModel.getAdForm());
        PubnativeAdModel.setImage(viewGroup.findViewById(R$id.nativeAdIcon1), pubnativeAdModel.getIconUrl(), pubnativeAdModel.getAdPos(), pubnativeAdModel.getAdForm());
        if (viewFindViewById3 != 0) {
            PubnativeAdModel.setBlurBg(viewFindViewById3, pubnativeAdModel.getIconUrl(), zl1.b(context, 1), 240);
        }
        View viewFindViewById7 = viewGroup.findViewById(R$id.nativeAdVideoTitle);
        if (viewFindViewById7 instanceof TextView) {
            ((TextView) viewFindViewById7).setText(pubnativeAdModel.getVideoTitle());
        }
        View viewFindViewById8 = viewGroup.findViewById(R$id.nativeAdVideoDesc);
        if (viewFindViewById8 instanceof TextView) {
            ((TextView) viewFindViewById8).setText(pubnativeAdModel.getVideoDesc());
        }
        View viewFindViewById9 = viewGroup.findViewById(R$id.nativeDownloadCount);
        if (viewFindViewById9 instanceof TextView) {
            String count = pubnativeAdModel.getCount();
            viewFindViewById9.setVisibility(TextUtils.isEmpty(count) ? 8 : 0);
            ((TextView) viewFindViewById9).setText(count);
        }
        if (viewFindViewById6 instanceof og3) {
            obj = viewFindViewById6;
            this.g.c(pubnativeAdModel.getPackageName(), (og3) obj);
        } else {
            obj = viewFindViewById6;
        }
        if (viewFindViewById4 == null && (viewFindViewById5 instanceof TextView) && TextUtils.isEmpty(pubnativeAdModel.getSocialContext())) {
            pubnativeAdModel.withDescription(viewFindViewById5);
        }
        if (viewGroup instanceof pe3) {
            List<View> listA = pe3.a.a((pe3) viewGroup, false);
            if (!listA.isEmpty()) {
                pubnativeAdModel.withCallToActions(listA);
            } else if (obj != null) {
                pubnativeAdModel.withCallToActions(Arrays.asList(viewGroup, obj));
            } else {
                pubnativeAdModel.withCallToAction(viewGroup);
            }
        }
    }

    public final void p0(ViewGroup viewGroup, boolean z) {
        if (z) {
            View viewFindViewWithTag = viewGroup.findViewWithTag("tag_progress");
            if (viewFindViewWithTag == null) {
                viewFindViewWithTag = h0(viewGroup);
            }
            viewFindViewWithTag.setVisibility(0);
        }
    }

    public final void q0(ViewGroup viewGroup, long j, Runnable runnable) {
        if (j < 0) {
            return;
        }
        viewGroup.postDelayed(runnable, j);
    }
}
