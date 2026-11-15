package com.transsion.wrapperad;

import android.app.Activity;
import android.os.Build;
import android.text.TextUtils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.ad.MBAd;
import com.transsion.ad.strategy.AdOverridePendingTransitionManager;
import com.transsion.ad.strategy.AppManager;
import com.transsion.baselib.report.k;
import com.transsion.memberapi.MemberSource;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebPageIdentity;
import com.transsion.wrapperad.h5.H5InterstitialAdProvider;
import com.transsion.wrapperad.h5.H5VideoAdProvider;
import com.transsion.wrapperadapi.H5AdStateEnum;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;
import org.json.JSONObject;

public final class WrapperAdProvider implements vw.b {

    public static final a f55971a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements rh.a {
        b() {
        }

        @Override
        public void a(String str, AdOverridePendingTransitionManager.AdOverridePendingTransitionEnum adOverridePendingTransitionEnum) {
            Pair pairA = AdOverridePendingTransitionManager.f41160a.a(adOverridePendingTransitionEnum);
            Activity activityO = k.f42210a.o();
            Navigator navigatorK = TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", str).K(WebConstants.PAGE_FROM, "MB_AD");
            if (activityO == null || activityO.isFinishing() || activityO.isDestroyed()) {
                ij.k.p(navigatorK);
                return;
            }
            if (pairA != null) {
                activityO.overridePendingTransition(((Number) pairA.getFirst()).intValue(), ((Number) pairA.getSecond()).intValue());
            }
            Navigator.x(navigatorK, activityO, null, 2, null);
        }

        @Override
        public void b(String str) {
            Object objM453constructorimpl;
            if (str != null) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    if (Build.VERSION.SDK_INT < 36) {
                        ql.a.f69892a.d(str);
                    }
                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                }
                Result.m452boximpl(objM453constructorimpl);
            }
        }

        @Override
        public void c(String sceneId) {
            im.b bVar;
            Intrinsics.h(sceneId, "sceneId");
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB == null || (bVar = (im.b) TheRouter.d(im.b.class, new Object[0])) == null) {
                return;
            }
            bVar.u(activityB, MemberSource.SOURCE_AD, null, false, sceneId);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00b5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object a(Continuation continuation) {
        WrapperAdProvider$initAd$1 wrapperAdProvider$initAd$1;
        a2 a2VarC;
        WrapperAdProvider$initAd$4 wrapperAdProvider$initAd$4;
        if (continuation instanceof WrapperAdProvider$initAd$1) {
            wrapperAdProvider$initAd$1 = (WrapperAdProvider$initAd$1) continuation;
            int i10 = wrapperAdProvider$initAd$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                wrapperAdProvider$initAd$1.label = i10 - Integer.MIN_VALUE;
            } else {
                wrapperAdProvider$initAd$1 = new WrapperAdProvider$initAd$1(this, continuation);
            }
        } else {
            wrapperAdProvider$initAd$1 = new WrapperAdProvider$initAd$1(this, continuation);
        }
        Object obj = wrapperAdProvider$initAd$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = wrapperAdProvider$initAd$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else if (i11 == 2) {
                ResultKt.b(obj);
                a2VarC = y0.c();
                wrapperAdProvider$initAd$4 = new WrapperAdProvider$initAd$4(null);
                wrapperAdProvider$initAd$1.label = 3;
                if (i.g(a2VarC, wrapperAdProvider$initAd$4, wrapperAdProvider$initAd$1) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        a2 a2VarC2 = y0.c();
        WrapperAdProvider$initAd$2 wrapperAdProvider$initAd$2 = new WrapperAdProvider$initAd$2(null);
        wrapperAdProvider$initAd$1.label = 1;
        if (i.g(a2VarC2, wrapperAdProvider$initAd$2, wrapperAdProvider$initAd$1) == objF) {
            return objF;
        }
        MBAd mBAd = MBAd.f40749a;
        MBAd.a aVarA = new MBAd.b().f("2301069UF9YjuO").c(false).h(false).d(AppManager.AppEnum.APP_MOVIE_BOX).g("HotStartScene").b("/wefeed-mobile-bff/ad/config").i(true).j(true).k(true).l(true).e(new b()).a();
        wrapperAdProvider$initAd$1.label = 2;
        if (mBAd.d(aVarA, wrapperAdProvider$initAd$1) == objF) {
            return objF;
        }
        a2VarC = y0.c();
        wrapperAdProvider$initAd$4 = new WrapperAdProvider$initAd$4(null);
        wrapperAdProvider$initAd$1.label = 3;
        if (i.g(a2VarC, wrapperAdProvider$initAd$4, wrapperAdProvider$initAd$1) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public void b(String str, vw.a callback) {
        Object objM453constructorimpl;
        Intrinsics.h(callback, "callback");
        if (TextUtils.isEmpty(str)) {
            callback.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "adConfig is empty");
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            if (str == null) {
                str = "{}";
            }
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("sceneId");
            if (TextUtils.isEmpty(strOptString)) {
                callback.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "sceneId is empty");
                return;
            }
            int iOptInt = jSONObject.optInt("adType");
            if (iOptInt == 3) {
                H5VideoAdProvider.f55992a.h(strOptString, callback);
            } else if (iOptInt == 4) {
                H5InterstitialAdProvider.f55988a.f(strOptString, callback);
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl == null) {
                return;
            }
            callback.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), thM456exceptionOrNullimpl.getMessage());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public Object c(Continuation continuation) {
        Object objE = MBAd.f40749a.e("/wefeed-mobile-bff/ad/config", continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f64096a;
    }
}
