package com.transsion.ad.bidding.splash;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.common.interfacz.OnSkipListener;
import com.hisavana.mediation.ad.TSplashAd;
import com.hisavana.mediation.ad.TSplashView;
import com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager;
import com.transsion.ad.strategy.c;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a extends AbsBiddingInterceptHiSavanaAdManager {

    public static final C0567a f41007l = new C0567a(null);

    private static final Lazy f41008m = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return com.transsion.ad.bidding.splash.a.v();
        }
    });

    private TSplashAd f41009i;

    private Integer f41010j;

    private WeakReference f41011k;

    public static final class C0567a {
        public C0567a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final HashMap b() {
            return (HashMap) a.f41008m.getValue();
        }

        public final a a(String str) {
            String strH;
            if (TextUtils.isEmpty(str) || (strH = com.transsion.ad.scene.a.f41152a.h(str)) == null) {
                return null;
            }
            a aVar = (a) b().get(strH);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            aVar2.o(strH);
            b().put(strH, aVar2);
            return aVar2;
        }

        private C0567a() {
        }
    }

    public static final class b implements OnSkipListener {
        b() {
        }

        public static final Unit b(a aVar) {
            aVar.onClosed(103);
            return Unit.f64096a;
        }

        @Override
        public void onClick() {
            xh.a.m(xh.a.f75336a, "ad_s", "BiddingHisavanaSplashActivity --> onSkipClick()", 0, false, 12, null);
            a.this.onClosed(103);
        }

        @Override
        public void onTimeReach() {
            xh.a.m(xh.a.f75336a, "ad_s", "BiddingHisavanaSplashActivity --> onTimeReach()", 0, false, 12, null);
            WeakReference weakReference = a.this.f41011k;
            Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
            BiddingHisavanaSplashActivity biddingHisavanaSplashActivity = activity instanceof BiddingHisavanaSplashActivity ? (BiddingHisavanaSplashActivity) activity : null;
            if (biddingHisavanaSplashActivity != null) {
                final a aVar = a.this;
                biddingHisavanaSplashActivity.O(new Function0() {
                    @Override
                    public final Object invoke() {
                        return com.transsion.ad.bidding.splash.a.b.b(aVar);
                    }
                });
            }
        }
    }

    public static final HashMap v() {
        return new HashMap();
    }

    @Override
    public fe.b d() {
        if (this.f41009i == null) {
            TSplashAd tSplashAd = new TSplashAd(Utils.a(), h());
            this.f41009i = tSplashAd;
            tSplashAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(this).build());
            TSplashAd tSplashAd2 = this.f41009i;
            if (tSplashAd2 != null) {
                tSplashAd2.setSplashMode(2);
            }
            TSplashAd tSplashAd3 = this.f41009i;
            if (tSplashAd3 != null) {
                tSplashAd3.setLogoLayoutHeightRatio(Float.valueOf(0.15f));
            }
            TSplashAd tSplashAd4 = this.f41009i;
            if (tSplashAd4 != null) {
                tSplashAd4.setOnSkipListener(new b());
            }
        }
        return this.f41009i;
    }

    @Override
    public int e() {
        return 5;
    }

    @Override
    public String getLogTag() {
        return "ad_s";
    }

    @Override
    public void m() {
        TSplashAd tSplashAd = this.f41009i;
        if (tSplashAd != null) {
            tSplashAd.destroy();
        }
        this.f41009i = null;
    }

    @Override
    public void onClosed(int i10) {
        Activity activity;
        xh.a.m(xh.a.f75336a, "ad_s", "BiddingHisavanaSplashActivity --> onClosed()", 0, false, 12, null);
        WeakReference weakReference = this.f41011k;
        if (weakReference != null && (activity = (Activity) weakReference.get()) != null) {
            activity.finish();
        }
        super.onClosed(i10);
    }

    @Override
    public void p(Activity topActivity, String sceneId, Integer num, Map map) {
        Object objM453constructorimpl;
        TSplashAd tSplashAd;
        Intrinsics.h(topActivity, "topActivity");
        Intrinsics.h(sceneId, "sceneId");
        this.f41010j = num;
        if (c.f41178a.d(map) && (tSplashAd = this.f41009i) != null) {
            tSplashAd.setContainVulgarContent(true);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = new Intent(topActivity, (Class<?>) BiddingHisavanaSplashActivity.class);
            intent.putExtra("key_scene_id", sceneId);
            topActivity.startActivity(intent);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            xh.a.m(xh.a.f75336a, "ad_s", "程序化开屏 show 异常 --> " + thM456exceptionOrNullimpl.getMessage(), 0, false, 12, null);
            oh.a aVarG = g();
            if (aVarG != null) {
                aVarG.onShowError(new TAdErrorCode(-1, "程序化开屏 show 异常 --> " + thM456exceptionOrNullimpl.getMessage()), new AdditionalInfo());
            }
        }
    }

    public final Integer u() {
        return this.f41010j;
    }

    public final void w(BiddingHisavanaSplashActivity activity, TSplashView tSplashView, View view) {
        TSplashAd tSplashAd;
        Intrinsics.h(activity, "activity");
        this.f41011k = new WeakReference(activity);
        if (tSplashView == null || (tSplashAd = this.f41009i) == null) {
            return;
        }
        tSplashAd.showAd(tSplashView, view);
    }
}
