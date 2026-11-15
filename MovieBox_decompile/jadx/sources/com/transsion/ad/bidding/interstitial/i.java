package com.transsion.ad.bidding.interstitial;

import android.app.Activity;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.mediation.ad.TInterstitialAd;
import com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager;
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

public final class i extends AbsBiddingInterceptHiSavanaAdManager {

    public static final a f40954j = new a(null);

    private static final Lazy f40955k = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return i.t();
        }
    });

    private TInterstitialAd f40956i;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final HashMap a() {
            return (HashMap) i.f40955k.getValue();
        }

        public final i b(String str) {
            String strH;
            if (TextUtils.isEmpty(str) || (strH = com.transsion.ad.scene.a.f41152a.h(str)) == null) {
                return null;
            }
            i iVar = (i) a().get(strH);
            if (iVar != null) {
                return iVar;
            }
            i iVar2 = new i();
            iVar2.o(strH);
            a().put(strH, iVar2);
            return iVar2;
        }

        private a() {
        }
    }

    public static final HashMap t() {
        return new HashMap();
    }

    @Override
    public fe.b d() {
        if (this.f40956i == null) {
            TInterstitialAd tInterstitialAd = new TInterstitialAd(Utils.a(), h());
            this.f40956i = tInterstitialAd;
            tInterstitialAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(this).build());
        }
        return this.f40956i;
    }

    @Override
    public int e() {
        return 4;
    }

    @Override
    public String getLogTag() {
        return "ad_int";
    }

    @Override
    public void m() {
        TInterstitialAd tInterstitialAd = this.f40956i;
        if (tInterstitialAd != null) {
            tInterstitialAd.destroy();
        }
        this.f40956i = null;
    }

    @Override
    public void p(Activity topActivity, String sceneId, Integer num, Map map) {
        Object objM453constructorimpl;
        oh.a aVarG;
        Unit unit;
        TInterstitialAd tInterstitialAd;
        Intrinsics.h(topActivity, "topActivity");
        Intrinsics.h(sceneId, "sceneId");
        if (com.transsion.ad.strategy.c.f41178a.d(map) && (tInterstitialAd = this.f40956i) != null) {
            tInterstitialAd.setContainVulgarContent(true);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            TInterstitialAd tInterstitialAd2 = this.f40956i;
            if (tInterstitialAd2 != null) {
                tInterstitialAd2.show(topActivity);
                unit = Unit.f64096a;
            } else {
                oh.a aVarG2 = g();
                if (aVarG2 != null) {
                    aVarG2.onShowError(new TAdErrorCode(-1, "tInterstitialAd == null"), new AdditionalInfo());
                    unit = Unit.f64096a;
                } else {
                    unit = null;
                }
            }
            objM453constructorimpl = Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null || (aVarG = g()) == null) {
            return;
        }
        aVarG.onShowError(new TAdErrorCode(-1, "程序化 show 异常 it = " + thM456exceptionOrNullimpl.getMessage()), new AdditionalInfo());
    }
}
