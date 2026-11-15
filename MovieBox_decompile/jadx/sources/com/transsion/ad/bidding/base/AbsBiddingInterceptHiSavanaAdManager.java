package com.transsion.ad.bidding.base;

import android.app.Activity;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.transsion.ad.hi.HiSavanaAdManager;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.scene.SceneInterceptManager;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public abstract class AbsBiddingInterceptHiSavanaAdManager extends x implements xh.b {

    private oh.a f40840d;

    private String f40841e;

    private Map f40842f;

    private AtomicBoolean f40843g = new AtomicBoolean(false);

    private AdditionalInfo f40844h;

    public final boolean j(List list) {
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (AdPlanSourceManager.f41117a.d((AdPlans) it.next())) {
                return true;
            }
        }
        return false;
    }

    public final void b(oh.a aVar) {
        oh.a aVar2 = this.f40840d;
        if (aVar2 != null && Intrinsics.c(aVar2, aVar)) {
            n(null);
            xh.b.a.c(this, 3, "destroy() --> 移除监听", null, false, 4, null);
        }
    }

    public final void c(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new AbsBiddingInterceptHiSavanaAdManager$enterScene$1(this, sceneId, null), 3, null);
    }

    public abstract fe.b d();

    public abstract int e();

    public final AdditionalInfo f() {
        fe.b bVarD = d();
        if (bVarD == null || bVarD.hasAd() || e() == 5) {
            return this.f40844h;
        }
        return null;
    }

    public final oh.a g() {
        return this.f40840d;
    }

    @Override
    public String getClassTag() {
        return xh.b.a.a(this);
    }

    @Override
    public String getMSceneId() {
        return "";
    }

    public final String h() {
        return this.f40841e;
    }

    public final Boolean i() {
        fe.b bVarD = d();
        if (bVarD != null) {
            return Boolean.valueOf(bVarD.hasAd());
        }
        return null;
    }

    public final void k() {
        if (!HiSavanaAdManager.f41090a.f() && e() != 5) {
            oh.a aVar = this.f40840d;
            if (aVar != null) {
                aVar.onLoadFailure(new TAdErrorCode(103, "广告SDK没有初始化"), new AdditionalInfo());
                return;
            }
            return;
        }
        if (this.f40843g.get()) {
            oh.a aVar2 = this.f40840d;
            if (aVar2 != null) {
                aVar2.onLoadFailure(new TAdErrorCode(103, "当前正在展示Hi广告"), new AdditionalInfo());
                return;
            }
            return;
        }
        if (d() == null) {
            oh.a aVar3 = this.f40840d;
            if (aVar3 != null) {
                aVar3.onLoadFailure(new TAdErrorCode(103, "getAdInstance() == null"), new AdditionalInfo());
                return;
            }
            return;
        }
        fe.b bVarD = d();
        if (bVarD != null) {
            bVarD.loadAd();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object l(String str, Map map, Continuation continuation) {
        AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1 absBiddingInterceptHiSavanaAdManager$preLoadAd$1;
        if (continuation instanceof AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1) {
            absBiddingInterceptHiSavanaAdManager$preLoadAd$1 = (AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1) continuation;
            int i10 = absBiddingInterceptHiSavanaAdManager$preLoadAd$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                absBiddingInterceptHiSavanaAdManager$preLoadAd$1.label = i10 - Integer.MIN_VALUE;
            } else {
                absBiddingInterceptHiSavanaAdManager$preLoadAd$1 = new AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1(this, continuation);
            }
        } else {
            absBiddingInterceptHiSavanaAdManager$preLoadAd$1 = new AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1(this, continuation);
        }
        Object objA = absBiddingInterceptHiSavanaAdManager$preLoadAd$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = absBiddingInterceptHiSavanaAdManager$preLoadAd$1.label;
        if (i11 == 0) {
            ResultKt.b(objA);
            if (!HiSavanaAdManager.f41090a.f()) {
                return Unit.f64096a;
            }
            SceneInterceptManager sceneInterceptManager = SceneInterceptManager.f41151a;
            absBiddingInterceptHiSavanaAdManager$preLoadAd$1.L$0 = str;
            absBiddingInterceptHiSavanaAdManager$preLoadAd$1.L$1 = map;
            absBiddingInterceptHiSavanaAdManager$preLoadAd$1.label = 1;
            objA = sceneInterceptManager.a(str, absBiddingInterceptHiSavanaAdManager$preLoadAd$1);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = (Map) absBiddingInterceptHiSavanaAdManager$preLoadAd$1.L$1;
            str = (String) absBiddingInterceptHiSavanaAdManager$preLoadAd$1.L$0;
            ResultKt.b(objA);
        }
        if (((Boolean) ((Pair) objA).getFirst()).booleanValue()) {
            return Unit.f64096a;
        }
        if (com.transsion.ad.scene.c.f41154a.a(str)) {
            return Unit.f64096a;
        }
        fe.b bVarD = d();
        if (bVarD != null && bVarD.hasAd()) {
            return Unit.f64096a;
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2(str, map, this, null), 3, null);
        return Unit.f64096a;
    }

    public abstract void m();

    public final AbsBiddingInterceptHiSavanaAdManager n(oh.a aVar) {
        this.f40840d = aVar;
        return this;
    }

    public final void o(String str) {
        this.f40841e = str;
    }

    @Override
    public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onClick(tAdNativeInfo, additionalInfo);
        oh.a aVar = this.f40840d;
        if (aVar != null) {
            aVar.onClick(tAdNativeInfo, additionalInfo);
        }
    }

    @Override
    public void onClosed(int i10) {
        super.onClosed(i10);
        this.f40843g.set(false);
        oh.a aVar = this.f40840d;
        if (aVar != null) {
            aVar.onClosed(i10);
        }
        this.f40840d = null;
        m();
        if (e() == 5) {
            return;
        }
        k();
    }

    @Override
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadFailure(tAdErrorCode, additionalInfo);
        this.f40843g.set(false);
        oh.a aVar = this.f40840d;
        if (aVar != null) {
            aVar.onLoadFailure(tAdErrorCode, additionalInfo);
        }
    }

    @Override
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadSuccess(additionalInfo);
        this.f40844h = additionalInfo;
        oh.a aVar = this.f40840d;
        if (aVar != null) {
            aVar.onLoadSuccess(additionalInfo);
        }
    }

    @Override
    public void onLog(int i10, String str, String str2, boolean z10) {
        xh.b.a.b(this, i10, str, str2, z10);
    }

    @Override
    public void onRewarded() {
        super.onRewarded();
        oh.a aVar = this.f40840d;
        if (aVar != null) {
            aVar.onRewarded();
        }
    }

    @Override
    public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShow(tAdNativeInfo, additionalInfo);
        this.f40843g.set(true);
        oh.a aVar = this.f40840d;
        if (aVar != null) {
            aVar.onShow(tAdNativeInfo, additionalInfo);
        }
        this.f40844h = null;
    }

    @Override
    public void onShowError(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShowError(tAdErrorCode, additionalInfo);
        this.f40843g.set(false);
        oh.a aVar = this.f40840d;
        if (aVar != null) {
            aVar.onShowError(tAdErrorCode, additionalInfo);
        }
    }

    public abstract void p(Activity activity, String str, Integer num, Map map);

    public final void q(Activity activity, Integer num, String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        if (activity == null) {
            oh.a aVar = this.f40840d;
            if (aVar != null) {
                aVar.onShowError(new TAdErrorCode(103, "activity is null"), new AdditionalInfo());
                return;
            }
            return;
        }
        if (this.f40843g.get()) {
            oh.a aVar2 = this.f40840d;
            if (aVar2 != null) {
                aVar2.onShowError(new TAdErrorCode(103, "当前正在展示Hi广告"), new AdditionalInfo());
                return;
            }
            return;
        }
        if (e() == 5) {
            p(activity, sceneId, num, this.f40842f);
            return;
        }
        fe.b bVarD = d();
        if (bVarD != null && bVarD.hasAd()) {
            p(activity, sceneId, num, this.f40842f);
            return;
        }
        oh.a aVar3 = this.f40840d;
        if (aVar3 != null) {
            aVar3.onShowError(new TAdErrorCode(103, "当前还没有广告"), new AdditionalInfo());
        }
        n(null);
        k();
    }
}
