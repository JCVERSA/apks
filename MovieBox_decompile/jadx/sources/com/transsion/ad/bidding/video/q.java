package com.transsion.ad.bidding.video;

import android.app.Activity;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.mediation.ad.TRewardedAd;
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

public final class q extends AbsBiddingInterceptHiSavanaAdManager {

    public static final a f41040j = new a(null);

    private static final Lazy f41041k = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return q.t();
        }
    });

    private TRewardedAd f41042i;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final HashMap a() {
            return (HashMap) q.f41041k.getValue();
        }

        public final q b(String str) {
            String strH;
            if (TextUtils.isEmpty(str) || (strH = com.transsion.ad.scene.a.f41152a.h(str)) == null) {
                return null;
            }
            q qVar = (q) a().get(strH);
            if (qVar != null) {
                return qVar;
            }
            q qVar2 = new q();
            qVar2.o(strH);
            a().put(strH, qVar2);
            return qVar2;
        }

        private a() {
        }
    }

    public static final HashMap t() {
        return new HashMap();
    }

    @Override
    public fe.b d() {
        String strH = h();
        if (TextUtils.isEmpty(strH)) {
            return null;
        }
        if (this.f41042i == null) {
            TRewardedAd tRewardedAd = new TRewardedAd(Utils.a(), strH);
            this.f41042i = tRewardedAd;
            tRewardedAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(this).build());
        }
        return this.f41042i;
    }

    @Override
    public int e() {
        return 3;
    }

    @Override
    public String getLogTag() {
        return "ad_v";
    }

    @Override
    public void m() {
        TRewardedAd tRewardedAd = this.f41042i;
        if (tRewardedAd != null) {
            tRewardedAd.destroy();
        }
        this.f41042i = null;
    }

    @Override
    public void p(Activity topActivity, String sceneId, Integer num, Map map) {
        Object objM453constructorimpl;
        oh.a aVarG;
        Unit unit;
        TRewardedAd tRewardedAd;
        Intrinsics.h(topActivity, "topActivity");
        Intrinsics.h(sceneId, "sceneId");
        if (com.transsion.ad.strategy.c.f41178a.d(map) && (tRewardedAd = this.f41042i) != null) {
            tRewardedAd.setContainVulgarContent(true);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            TRewardedAd tRewardedAd2 = this.f41042i;
            if (tRewardedAd2 != null) {
                tRewardedAd2.show(topActivity);
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
