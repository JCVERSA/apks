package com.transsion.subroom.activity;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.hi.HiSavanaAdManager;
import com.transsion.home.viewmodel.TrendingUGCViewModel;
import com.transsion.home.viewmodel.preload.PreloadTrendingData;
import com.transsion.push.tpush.PushRegisterManager;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsion.subroom.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0005\b\u0007\u0018\u0000 42\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J!\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u0019\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0003J\u0019\u0010\u0016\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0003J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001a\u0010\u0012J\u000f\u0010\u001b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u001c\u0010\u0003J\u000f\u0010\u001d\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u001d\u0010\u0003R\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001b\u0010+\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010)R\u0016\u0010/\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010)R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102¨\u00065"}, d2 = {"Lcom/transsion/subroom/activity/SplashActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "", "b0", "g0", "", "state", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "maxEcpmObject", "a0", "(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V", "f0", "Y", "", "isSplashAdLoaded", "h0", "(Z)V", "setStatusBar", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onBackPressed", "hasFocus", "onWindowFocusChanged", "onResume", "onPause", "onDestroy", "Lcom/transsion/ad/bidding/splash/b;", "a", "Lcom/transsion/ad/bidding/splash/b;", "splashManager", "Lcom/transsion/ad/hi/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/hi/b;", "hiSdkInitListener", "Landroid/os/Handler;", "c", "Lkotlin/Lazy;", "Z", "()Landroid/os/Handler;", "mHandler", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "isBackups", "e", "isAdLoadStarted", "", "f", "J", "startTime", "g", "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"CustomSplashScreen"})
@SourceDebugExtension
public final class SplashActivity extends AppCompatActivity {

    private com.transsion.ad.bidding.splash.b splashManager;

    private com.transsion.ad.hi.b hiSdkInitListener;

    private final Lazy mHandler = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SplashActivity.d0();
        }
    });

    private boolean isBackups;

    private boolean isAdLoadStarted;

    private long startTime;

    public static final class b implements com.transsion.ad.hi.b {

        final Runnable f52605b;

        b(Runnable runnable) {
            this.f52605b = runnable;
        }

        @Override
        public void onInitSuccess() {
            wf.a.C0922a.f(wf.a.f74274a, "SplashActivity", "HiSavana init success, cost " + (System.currentTimeMillis() - SplashActivity.this.startTime) + ", --> start load ad", false, 4, null);
            SplashActivity.this.Z().removeCallbacks(this.f52605b);
            SplashActivity.this.g0();
        }
    }

    private final void Y() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        if (System.currentTimeMillis() - bVar.b().getLong("app_config_fetch_time", 0L) > 1800000) {
            bm.e.p(bm.e.f15845a, null, null, 3, null);
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SplashActivity$fetchAppConfig$1(null), 3, null);
            bVar.b().putLong("app_config_fetch_time", System.currentTimeMillis());
        }
    }

    public final Handler Z() {
        return (Handler) this.mHandler.getValue();
    }

    public final void a0(String state, BiddingIntermediateMaterialBean maxEcpmObject) {
        com.transsion.ad.bidding.splash.b bVar;
        AbsAdBidding absAdBiddingH0;
        Z().removeCallbacksAndMessages(null);
        AppStartReport appStartReport = AppStartReport.f52508a;
        appStartReport.e(new AppStartDotState(AppStartDotState.AD_RENDERING, 0L, 2, null));
        if (this.isBackups) {
            return;
        }
        this.isBackups = true;
        boolean zEquals = TextUtils.equals(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, state);
        if (TextUtils.equals("time_out", state)) {
            ai.c.f362a.j("", "", 5, 105, "开屏广告加载超时", null);
        }
        if (!zEquals) {
            com.transsion.ad.bidding.splash.b bVar2 = this.splashManager;
            if (bVar2 != null) {
                bVar2.U();
            }
            this.splashManager = null;
        }
        if (!zEquals) {
            com.transsion.startup.pref.consume.c.f52518a.q();
        }
        setStatusBar();
        f0();
        Y();
        h0(zEquals);
        if (getIntent().getBooleanExtra("without_ad", false)) {
            com.transsion.startup.pref.consume.c.f52518a.q();
            appStartReport.e(new AppStartDotState(AppStartDotState.AD_END, 0L, 2, null));
        } else {
            if (!zEquals || (bVar = this.splashManager) == null || (absAdBiddingH0 = bVar.H0(Integer.valueOf(R$layout.splash_ad_app_layout))) == null) {
                return;
            }
            AbsAdBidding.O0(absAdBiddingH0, this, maxEcpmObject, false, 4, null);
        }
    }

    private final void b0() {
        JsonElement jsonElement;
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                SplashActivity.c0(this.f52618a);
            }
        };
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("ColdStartScene");
        Z().postDelayed(runnable, ((long) ((jsonObjectB == null || (jsonElement = jsonObjectB.get("initTimeout")) == null) ? 1 : jsonElement.getAsInt())) * 1000);
        b bVar = new b(runnable);
        this.hiSdkInitListener = bVar;
        HiSavanaAdManager.f41090a.b(bVar);
    }

    public static final void c0(SplashActivity splashActivity) {
        wf.a.C0922a.f(wf.a.f74274a, "SplashActivity", "HiSavana init timeout, load ad directly.", false, 4, null);
        splashActivity.g0();
    }

    public static final Handler d0() {
        return new Handler(Looper.getMainLooper());
    }

    public static final void e0(SplashActivity splashActivity) {
        splashActivity.a0("time_out", null);
    }

    private final void f0() {
        PreloadTrendingData.a aVar = PreloadTrendingData.f44531n;
        aVar.a().z();
        if (ij.g.f62108a.b()) {
            TrendingUGCViewModel.a aVar2 = TrendingUGCViewModel.f44486l;
            Application application = getApplication();
            Intrinsics.g(application, "getApplication(...)");
            TrendingUGCViewModel trendingUGCViewModelA = aVar2.a(application);
            if (trendingUGCViewModelA != null) {
                trendingUGCViewModelA.A(this);
            }
        } else {
            aVar.a().U(this);
        }
        aVar.a().G();
    }

    public final void g0() {
        if (this.isAdLoadStarted) {
            return;
        }
        this.isAdLoadStarted = true;
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new SplashActivity$startSplashAdLoad$1(this, null), 3, null);
    }

    private final void h0(boolean isSplashAdLoaded) {
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        intent.putExtra("isSplashAdLoaded", isSplashAdLoaded);
        startActivity(intent);
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SplashActivity$toMain$1(this, null), 3, null);
        overridePendingTransition(0, 0);
        finish();
    }

    private final void setStatusBar() {
        getWindow().addFlags(Integer.MIN_VALUE);
        getWindow().clearFlags(67108864);
        getWindow().getDecorView().setSystemUiVisibility(13312);
    }

    @Override
    public void onBackPressed() {
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        AppStartReport appStartReport = AppStartReport.f52508a;
        appStartReport.e(new AppStartDotState(AppStartDotState.SPLASH_START, 0L, 2, null));
        e1.a.f59230b.a(this);
        this.startTime = System.currentTimeMillis();
        com.transsion.startup.pref.consume.c cVar = com.transsion.startup.pref.consume.c.f52518a;
        cVar.l(this);
        if (!isTaskRoot() && !Intrinsics.c(getIntent().getStringExtra("from"), "deeplink")) {
            wf.a.C0922a.f(wf.a.f74274a, "SplashActivity", "finish from TaskRoot", false, 4, null);
            finish();
            return;
        }
        qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        if (aVar != null) {
            aVar.n(aVar.o() + 1);
        }
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        bVar.b().getBoolean("first_start_not_show_cold_ad", false);
        if (0 == 0) {
            cVar.r();
            a0("skip", null);
            bVar.b().putBoolean("first_start_not_show_cold_ad", true);
        } else {
            cVar.m();
            appStartReport.e(new AppStartDotState(AppStartDotState.AD_LOADING, 0L, 2, null));
            b0();
            Z().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    SplashActivity.e0(this.f52615a);
                }
            }, ((long) com.transsion.ad.scene.a.f41152a.s("ColdStartScene")) * 1000);
        }
        PushRegisterManager.f48859a.u();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        com.transsion.baseui.activity.k.f(null, this, 1, null);
        com.transsion.ad.bidding.splash.b bVar = this.splashManager;
        if (bVar != null) {
            bVar.K0(null);
        }
        com.transsion.ad.hi.b bVar2 = this.hiSdkInitListener;
        if (bVar2 != null) {
            HiSavanaAdManager.f41090a.h(bVar2);
        }
        this.hiSdkInitListener = null;
    }

    @Override
    protected void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.k(null, this, 1, null);
    }

    @Override
    protected void onResume() {
        super.onResume();
        com.transsion.baseui.activity.k.o(null, this, 1, null);
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        if (hasFocus) {
            AppStartReport.f52508a.e(new AppStartDotState(AppStartDotState.SPLASH_RESUME, 0L, 2, null));
        }
    }
}
