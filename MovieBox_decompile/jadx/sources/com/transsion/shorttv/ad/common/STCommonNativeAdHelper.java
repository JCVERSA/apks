package com.transsion.shorttv.ad.common;

import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.ad.AdLoadState;
import java.lang.ref.WeakReference;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

public final class STCommonNativeAdHelper {

    private final String f50679a;

    private final n0 f50680b;

    private BiddingNativeManager f50681c;

    private BiddingIntermediateMaterialBean f50682d;

    private Function1 f50683e;

    private Function1 f50684f;

    private WeakReference f50685g;

    private String f50686h;

    private AdLoadState f50687i;

    private final STCommonNativeAdHelper$nativeAdListener$1 f50688j;

    /* JADX WARN: Type inference failed for: r2v3, types: [com.transsion.shorttv.ad.common.STCommonNativeAdHelper$nativeAdListener$1] */
    public STCommonNativeAdHelper(String sceneId, n0 scope) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(scope, "scope");
        this.f50679a = sceneId;
        this.f50680b = scope;
        this.f50686h = "";
        this.f50687i = AdLoadState.IDLE;
        this.f50688j = new oh.a() {
            @Override
            public void i(TAdErrorCode tAdErrorCode) {
                super.i(tAdErrorCode);
                this.f50689d.f50687i = AdLoadState.FAILED;
                yq.a aVar = yq.a.f76390a;
                String strO = this.f50689d.o();
                String str = "onBiddingError, error=" + tAdErrorCode;
                BiddingNativeManager biddingNativeManager = this.f50689d.f50681c;
                aVar.d(strO, str, biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
                k.d(this.f50689d.f50680b, y0.c(), null, new STCommonNativeAdHelper$nativeAdListener$1$onBiddingError$1(this.f50689d, null), 2, null);
            }

            @Override
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.j(biddingIntermediateMaterialBean);
                this.f50689d.f50687i = AdLoadState.SUCCEED;
                yq.a aVar = yq.a.f76390a;
                String strO = this.f50689d.o();
                BiddingNativeManager biddingNativeManager = this.f50689d.f50681c;
                aVar.b(strO, "onBiddingLoad", biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
                this.f50689d.f50682d = biddingIntermediateMaterialBean;
                k.d(this.f50689d.f50680b, y0.c(), null, new STCommonNativeAdHelper$nativeAdListener$1$onBiddingLoad$1(this.f50689d, null), 2, null);
            }

            @Override
            public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.m(biddingIntermediateMaterialBean);
                this.f50689d.f50687i = AdLoadState.CLOSED;
                yq.a aVar = yq.a.f76390a;
                String strO = this.f50689d.o();
                BiddingNativeManager biddingNativeManager = this.f50689d.f50681c;
                aVar.d(strO, "onBiddingWrapperAdClose", biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
                this.f50689d.m(4);
            }

            @Override
            public void n(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.n(biddingIntermediateMaterialBean);
                yq.a aVar = yq.a.f76390a;
                String strO = this.f50689d.o();
                BiddingNativeManager biddingNativeManager = this.f50689d.f50681c;
                aVar.b(strO, "onBiddingWrapperAdDisplay", biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
                k.d(this.f50689d.f50680b, y0.c(), null, new STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdDisplay$1(this.f50689d, null), 2, null);
            }

            @Override
            public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.p(biddingIntermediateMaterialBean);
                yq.a aVar = yq.a.f76390a;
                String strO = this.f50689d.o();
                BiddingNativeManager biddingNativeManager = this.f50689d.f50681c;
                aVar.d(strO, "onBiddingWrapperAdShowError", biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
                k.d(this.f50689d.f50680b, y0.c(), null, new STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdShowError$1(this.f50689d, null), 2, null);
            }
        };
    }

    public static void n(STCommonNativeAdHelper sTCommonNativeAdHelper, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        sTCommonNativeAdHelper.m(i10);
    }

    public final void m(int i10) {
        this.f50687i = AdLoadState.DESTROYED;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (this.f50681c != null) {
                if (i10 == 0) {
                    yq.a.f76390a.b(this.f50686h, "trigger destroy", this.f50679a);
                } else if (i10 == 1) {
                    yq.a.f76390a.b(this.f50686h, "trigger destroy when load error", this.f50679a);
                } else if (i10 == 2) {
                    yq.a.f76390a.b(this.f50686h, "trigger destroy when show error", this.f50679a);
                } else if (i10 == 3) {
                    yq.a.f76390a.b(this.f50686h, "trigger destroy before load", this.f50679a);
                } else if (i10 != 4) {
                    yq.a.f76390a.b(this.f50686h, "trigger destroy", this.f50679a);
                } else {
                    yq.a.f76390a.b(this.f50686h, "trigger destroy when ad closed", this.f50679a);
                }
                BiddingNativeManager biddingNativeManager = this.f50681c;
                if (biddingNativeManager != null) {
                    biddingNativeManager.U();
                }
                this.f50681c = null;
            }
            this.f50682d = null;
            this.f50683e = null;
            this.f50684f = null;
            WeakReference weakReference = this.f50685g;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.f50685g = null;
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final String o() {
        return this.f50686h;
    }

    public final String p() {
        return this.f50679a;
    }

    public final void q(Function1 callback) {
        Intrinsics.h(callback, "callback");
        if (this.f50679a.length() == 0) {
            yq.a.f76390a.d(this.f50686h, "trigger load ad error, sceneId is null", this.f50679a);
            return;
        }
        AdLoadState adLoadState = this.f50687i;
        if (adLoadState == AdLoadState.LOADING) {
            yq.a.f76390a.d(this.f50686h, "trigger load ad error, current ad is loading", this.f50679a);
        } else if (adLoadState == AdLoadState.SUCCEED) {
            yq.a.f76390a.d(this.f50686h, "trigger load ad error, current ad is already loaded succeed", this.f50679a);
        } else {
            k.d(this.f50680b, y0.c(), null, new STCommonNativeAdHelper$loadAd$1(this, callback, null), 2, null);
        }
    }

    public final void r(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f50686h = str;
    }

    public final void s(r layoutProvider, NativeWrapperAdView nativeAdView, Function1 function1) {
        Intrinsics.h(layoutProvider, "layoutProvider");
        Intrinsics.h(nativeAdView, "nativeAdView");
        if (this.f50681c != null && this.f50682d != null) {
            k.d(this.f50680b, y0.c(), null, new STCommonNativeAdHelper$showAd$1(this, function1, nativeAdView, layoutProvider, null), 2, null);
            return;
        }
        yq.a.f76390a.d(this.f50686h, "trigger show ad error, nativeManager or maxEcpmObject is null", this.f50679a);
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }
}
