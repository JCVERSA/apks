package com.transsion.shorttv.ad.common;

import android.app.Activity;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.shorttv.ad.AdLoadState;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

public final class STCommonVideoAdHelper {

    private final String f50690a;

    private final n0 f50691b;

    private BiddingVideoManager f50692c;

    private BiddingIntermediateMaterialBean f50693d;

    private Function3 f50694e;

    private Function0 f50695f;

    private Function1 f50696g;

    private String f50697h;

    private AdLoadState f50698i;

    private boolean f50699j;

    private final STCommonVideoAdHelper$videoListener$1 f50700k;

    /* JADX WARN: Type inference failed for: r2v3, types: [com.transsion.shorttv.ad.common.STCommonVideoAdHelper$videoListener$1] */
    public STCommonVideoAdHelper(String sceneId, n0 scope) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(scope, "scope");
        this.f50690a = sceneId;
        this.f50691b = scope;
        this.f50697h = "";
        this.f50698i = AdLoadState.IDLE;
        this.f50700k = new oh.a() {
            @Override
            public void i(TAdErrorCode tAdErrorCode) {
                super.i(tAdErrorCode);
                this.f50701d.f50698i = AdLoadState.FAILED;
                yq.a aVar = yq.a.f76390a;
                String strR = this.f50701d.r();
                String str = "onBiddingError, error=" + tAdErrorCode;
                BiddingVideoManager biddingVideoManager = this.f50701d.f50692c;
                aVar.d(strR, str, biddingVideoManager != null ? biddingVideoManager.getMSceneId() : null);
                k.d(this.f50701d.f50691b, y0.c(), null, new STCommonVideoAdHelper$videoListener$1$onBiddingError$1(this.f50701d, tAdErrorCode, null), 2, null);
            }

            @Override
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.j(biddingIntermediateMaterialBean);
                this.f50701d.f50698i = AdLoadState.SUCCEED;
                yq.a aVar = yq.a.f76390a;
                String strR = this.f50701d.r();
                BiddingVideoManager biddingVideoManager = this.f50701d.f50692c;
                aVar.b(strR, "onBiddingLoad", biddingVideoManager != null ? biddingVideoManager.getMSceneId() : null);
                this.f50701d.f50693d = biddingIntermediateMaterialBean;
                k.d(this.f50701d.f50691b, y0.c(), null, new STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1(this.f50701d, null), 2, null);
            }

            @Override
            public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.m(biddingIntermediateMaterialBean);
                this.f50701d.f50698i = AdLoadState.CLOSED;
                yq.a aVar = yq.a.f76390a;
                String strR = this.f50701d.r();
                String str = "onBiddingWrapperAdClose, isRewarded=" + this.f50701d.f50699j;
                BiddingVideoManager biddingVideoManager = this.f50701d.f50692c;
                aVar.b(strR, str, biddingVideoManager != null ? biddingVideoManager.getMSceneId() : null);
                k.d(this.f50701d.f50691b, y0.c(), null, new STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdClose$1(this.f50701d, this.f50701d.f50699j, null), 2, null);
            }

            @Override
            public void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.o(biddingIntermediateMaterialBean);
                yq.a aVar = yq.a.f76390a;
                String strR = this.f50701d.r();
                BiddingVideoManager biddingVideoManager = this.f50701d.f50692c;
                aVar.b(strR, "onBiddingWrapperAdRewarded", biddingVideoManager != null ? biddingVideoManager.getMSceneId() : null);
                this.f50701d.f50699j = true;
                k.d(this.f50701d.f50691b, y0.c(), null, new STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdRewarded$1(this.f50701d, null), 2, null);
            }
        };
    }

    public static void q(STCommonVideoAdHelper sTCommonVideoAdHelper, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        sTCommonVideoAdHelper.p(i10);
    }

    public final void p(int i10) {
        this.f50698i = AdLoadState.DESTROYED;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (this.f50692c != null) {
                if (i10 == 0) {
                    yq.a.f76390a.b(this.f50697h, "trigger destroy", this.f50690a);
                } else if (i10 == 1) {
                    yq.a.f76390a.b(this.f50697h, "trigger destroy when load error", this.f50690a);
                } else if (i10 == 3) {
                    yq.a.f76390a.b(this.f50697h, "trigger destroy before load", this.f50690a);
                } else if (i10 != 4) {
                    yq.a.f76390a.b(this.f50697h, "trigger destroy", this.f50690a);
                } else {
                    yq.a.f76390a.b(this.f50697h, "trigger destroy when ad closed", this.f50690a);
                }
                BiddingVideoManager biddingVideoManager = this.f50692c;
                if (biddingVideoManager != null) {
                    biddingVideoManager.U();
                }
                this.f50692c = null;
            }
            this.f50693d = null;
            this.f50694e = null;
            this.f50695f = null;
            this.f50696g = null;
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final String r() {
        return this.f50697h;
    }

    public final String s() {
        return this.f50690a;
    }

    public final void t(Function3 function3) {
        if (this.f50690a.length() == 0) {
            yq.a.f76390a.d(this.f50697h, "trigger load ad error, sceneId is null", this.f50690a);
            return;
        }
        AdLoadState adLoadState = this.f50698i;
        if (adLoadState == AdLoadState.LOADING) {
            yq.a.f76390a.d(this.f50697h, "trigger load ad error, current ad is loading", this.f50690a);
        } else if (adLoadState == AdLoadState.SUCCEED) {
            yq.a.f76390a.d(this.f50697h, "trigger load ad error, current ad is already loaded succeed", this.f50690a);
        } else {
            k.d(this.f50691b, y0.c(), null, new STCommonVideoAdHelper$loadAd$1(this, function3, null), 2, null);
        }
    }

    public final void u(Activity activity, Function0 function0, Function1 function1) {
        Intrinsics.h(activity, "activity");
        if (this.f50692c == null || this.f50693d == null) {
            yq.a.f76390a.d(this.f50697h, "trigger show ad error, videoManager or maxEcpmObject is null", this.f50690a);
        } else {
            k.d(this.f50691b, y0.c(), null, new STCommonVideoAdHelper$showAd$1(this, function0, function1, activity, null), 2, null);
        }
    }
}
