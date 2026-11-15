package com.transsion.ad.bidding.nativead;

import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.mediation.ad.TNativeAd;
import com.transsion.ad.bidding.base.x;
import com.transsion.ad.hi.HiSavanaAdManager;
import com.transsion.ad.scene.SceneInterceptManager;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class BiddingHiSavanaNativeProvider extends x {

    public static final a f40957j = new a(null);

    private static final Lazy f40958k = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return BiddingHiSavanaNativeProvider.q();
        }
    });

    private String f40961f;

    private String f40962g;

    private TNativeAd f40963h;

    private final ConcurrentLinkedDeque f40959d = new ConcurrentLinkedDeque();

    private final ConcurrentSkipListSet f40960e = new ConcurrentSkipListSet(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return BiddingHiSavanaNativeProvider.r((TAdNativeInfo) obj, (TAdNativeInfo) obj2);
        }
    });

    private AtomicBoolean f40964i = new AtomicBoolean(false);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Map a() {
            return (Map) BiddingHiSavanaNativeProvider.f40958k.getValue();
        }

        public final BiddingHiSavanaNativeProvider b(String str) {
            String strH = com.transsion.ad.scene.a.f41152a.h(str);
            if (strH == null || strH.length() == 0) {
                return null;
            }
            BiddingHiSavanaNativeProvider biddingHiSavanaNativeProvider = (BiddingHiSavanaNativeProvider) a().get(strH);
            if (biddingHiSavanaNativeProvider != null) {
                return biddingHiSavanaNativeProvider;
            }
            BiddingHiSavanaNativeProvider biddingHiSavanaNativeProvider2 = new BiddingHiSavanaNativeProvider();
            biddingHiSavanaNativeProvider2.v(strH);
            biddingHiSavanaNativeProvider2.w(str);
            a().put(strH, biddingHiSavanaNativeProvider2);
            return biddingHiSavanaNativeProvider2;
        }

        private a() {
        }
    }

    public final String getClassTag() {
        String simpleName = BiddingHiSavanaNativeProvider.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final TAdNativeInfo k() {
        if (this.f40960e.isEmpty()) {
            return null;
        }
        TAdNativeInfo tAdNativeInfo = (TAdNativeInfo) this.f40960e.pollFirst();
        if (tAdNativeInfo == null || !tAdNativeInfo.isExpired()) {
            return tAdNativeInfo;
        }
        tAdNativeInfo.release();
        return k();
    }

    public final String l() {
        String str = this.f40962g;
        return str == null ? "" : str;
    }

    private final boolean n() {
        int iL = com.transsion.ad.scene.a.f41152a.l(this.f40961f);
        boolean z10 = this.f40960e.size() >= iL;
        if (z10) {
            xh.a.f75336a.l("ad_n", getClassTag() + " --> isUpperLimit() --- 达到阈值了 --> nativeInfoList.size = " + this.f40960e.size() + " -- cacheUpperLimit = " + iL, 5, false);
        }
        return z10;
    }

    public static void p(BiddingHiSavanaNativeProvider biddingHiSavanaNativeProvider, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "";
        }
        biddingHiSavanaNativeProvider.o(str);
    }

    public static final Map q() {
        return new LinkedHashMap();
    }

    public static final int r(TAdNativeInfo tAdNativeInfo, TAdNativeInfo tAdNativeInfo2) {
        int iCompare = Double.compare(tAdNativeInfo2.getEcpmPrice(), tAdNativeInfo.getEcpmPrice());
        if (iCompare != 0) {
            return iCompare;
        }
        String adId = tAdNativeInfo.getAdId();
        String adId2 = tAdNativeInfo2.getAdId();
        Intrinsics.g(adId2, "getAdId(...)");
        return adId.compareTo(adId2);
    }

    public static Object t(BiddingHiSavanaNativeProvider biddingHiSavanaNativeProvider, String str, Map map, Continuation continuation, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = null;
        }
        return biddingHiSavanaNativeProvider.s(str, map, continuation);
    }

    public final void g(oh.a aVar) {
        this.f40959d.add(aVar);
    }

    public final void h(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        k.d(o0.a(y0.c()), null, null, new BiddingHiSavanaNativeProvider$enterScene$1(this, sceneId, null), 3, null);
    }

    public final TAdNativeInfo i() {
        List<TAdNativeInfo> nativeAdInfo;
        TNativeAd tNativeAd = this.f40963h;
        if (tNativeAd != null && (nativeAdInfo = tNativeAd.getNativeAdInfo()) != null) {
            this.f40960e.addAll(nativeAdInfo);
        }
        TAdNativeInfo tAdNativeInfoK = k();
        if (!n()) {
            o("同步获取广告，继续装填缓存池");
        }
        return tAdNativeInfoK;
    }

    public final TNativeAd j() {
        return this.f40963h;
    }

    public final boolean m() {
        return !this.f40960e.isEmpty();
    }

    public final void o(String msg) {
        Intrinsics.h(msg, "msg");
        if (!HiSavanaAdManager.f41090a.f()) {
            xh.a.f75336a.l("ad_n", getClassTag() + " --> loadAd(" + msg + ") --> 广告SDK没有初始化", 6, false);
            return;
        }
        if (this.f40964i.get()) {
            return;
        }
        this.f40964i.set(true);
        if (this.f40963h == null) {
            TNativeAd tNativeAd = new TNativeAd(Utils.a(), l());
            this.f40963h = tNativeAd;
            tNativeAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(this).build());
            xh.a.f75336a.l("ad_n", "============= " + getClassTag() + " --> loadAd() --> mPlacementId = " + l() + " --> create TNativeAd() =================== ", 5, false);
        }
        TNativeAd tNativeAd2 = this.f40963h;
        if (tNativeAd2 != null) {
            tNativeAd2.loadAd();
        }
    }

    @Override
    public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onClick(tAdNativeInfo, additionalInfo);
        Iterator it = this.f40959d.iterator();
        while (it.hasNext()) {
            ((oh.a) it.next()).onClick(tAdNativeInfo, additionalInfo);
        }
    }

    @Override
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadFailure(tAdErrorCode, additionalInfo);
        this.f40964i.set(false);
        xh.a.m(xh.a.f75336a, "ad_n", getClassTag() + " --> onLoadFailure() --> placementId = " + l() + " --> errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), 6, false, 8, null);
        Iterator it = this.f40959d.iterator();
        while (it.hasNext()) {
            ((oh.a) it.next()).onLoadFailure(tAdErrorCode, additionalInfo);
        }
    }

    @Override
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        List<TAdNativeInfo> nativeAdInfo;
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadSuccess(additionalInfo);
        TNativeAd tNativeAd = this.f40963h;
        if (tNativeAd != null && (nativeAdInfo = tNativeAd.getNativeAdInfo()) != null) {
            this.f40960e.addAll(nativeAdInfo);
        }
        if (!n()) {
            o("缓存池没有达到阈值，继续请求");
        }
        this.f40964i.set(false);
        Iterator it = this.f40959d.iterator();
        while (it.hasNext()) {
            ((oh.a) it.next()).onLoadSuccess(additionalInfo);
        }
    }

    @Override
    public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShow(tAdNativeInfo, additionalInfo);
        Iterator it = this.f40959d.iterator();
        while (it.hasNext()) {
            ((oh.a) it.next()).onShow(tAdNativeInfo, additionalInfo);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object s(String str, Map map, Continuation continuation) {
        BiddingHiSavanaNativeProvider$preLoadAd$1 biddingHiSavanaNativeProvider$preLoadAd$1;
        if (continuation instanceof BiddingHiSavanaNativeProvider$preLoadAd$1) {
            biddingHiSavanaNativeProvider$preLoadAd$1 = (BiddingHiSavanaNativeProvider$preLoadAd$1) continuation;
            int i10 = biddingHiSavanaNativeProvider$preLoadAd$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                biddingHiSavanaNativeProvider$preLoadAd$1.label = i10 - Integer.MIN_VALUE;
            } else {
                biddingHiSavanaNativeProvider$preLoadAd$1 = new BiddingHiSavanaNativeProvider$preLoadAd$1(this, continuation);
            }
        } else {
            biddingHiSavanaNativeProvider$preLoadAd$1 = new BiddingHiSavanaNativeProvider$preLoadAd$1(this, continuation);
        }
        Object objA = biddingHiSavanaNativeProvider$preLoadAd$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = biddingHiSavanaNativeProvider$preLoadAd$1.label;
        if (i11 == 0) {
            ResultKt.b(objA);
            if (!HiSavanaAdManager.f41090a.f()) {
                return Unit.f64096a;
            }
            SceneInterceptManager sceneInterceptManager = SceneInterceptManager.f41151a;
            biddingHiSavanaNativeProvider$preLoadAd$1.L$0 = str;
            biddingHiSavanaNativeProvider$preLoadAd$1.L$1 = map;
            biddingHiSavanaNativeProvider$preLoadAd$1.label = 1;
            objA = sceneInterceptManager.a(str, biddingHiSavanaNativeProvider$preLoadAd$1);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = (Map) biddingHiSavanaNativeProvider$preLoadAd$1.L$1;
            str = (String) biddingHiSavanaNativeProvider$preLoadAd$1.L$0;
            ResultKt.b(objA);
        }
        if (((Boolean) ((Pair) objA).getFirst()).booleanValue()) {
            return Unit.f64096a;
        }
        if (com.transsion.ad.scene.c.f41154a.a(str)) {
            return Unit.f64096a;
        }
        if (m()) {
            return Unit.f64096a;
        }
        k.d(o0.a(y0.b()), null, null, new BiddingHiSavanaNativeProvider$preLoadAd$2(str, this, map, null), 3, null);
        return Unit.f64096a;
    }

    public final void u(oh.a aVar) {
        this.f40959d.remove(aVar);
    }

    public final void v(String str) {
        this.f40962g = str;
    }

    public final void w(String str) {
        this.f40961f = str;
    }
}
