package com.transsion.ad.bidding.icon;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import ci.n;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.mediation.ad.TNativeAd;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.ad.report.BiddingStateEnum;
import com.transsion.ad.scene.AdSceneDisplayLimitManager;
import com.transsion.ad.scene.SceneInterceptManager;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.y0;

public final class BiddingIconAdManager extends oh.a {

    private String f40920g;

    private oh.a f40921h;

    private int f40922i;

    private AdPlans f40924k;

    private AdPlans f40925l;

    private BiddingHiSavanaIconAdManager f40928o;

    private e f40929p;

    private List f40917d = new ArrayList();

    private List f40918e = new ArrayList();

    private List f40919f = new ArrayList();

    private AtomicBoolean f40923j = new AtomicBoolean(false);

    private final Lazy f40926m = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return BiddingIconAdManager.T();
        }
    });

    private final Runnable f40927n = new Runnable() {
        @Override
        public final void run() {
            BiddingIconAdManager.H(this.f40934a);
        }
    };

    private final Set f40930q = new LinkedHashSet();

    private String f40931r = "";

    private final void F(String str) {
        AdPlans adPlans;
        String str2;
        L().removeCallbacksAndMessages(null);
        if (this.f40923j.get()) {
            this.f40923j.set(false);
            try {
                Result.Companion companion = Result.INSTANCE;
                List listG = G(Q());
                BiddingWrapperIconBean biddingWrapperIconBean = (BiddingWrapperIconBean) CollectionsKt.k0(listG);
                Integer numValueOf = biddingWrapperIconBean != null ? Integer.valueOf(biddingWrapperIconBean.getType()) : null;
                if (numValueOf != null && numValueOf.intValue() == 2) {
                    adPlans = this.f40924k;
                } else {
                    adPlans = (numValueOf != null && numValueOf.intValue() == 1) ? this.f40925l : null;
                }
                List list = listG;
                ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(Double.valueOf(((BiddingWrapperIconBean) it.next()).getEcpm()));
                }
                if (listG.isEmpty()) {
                    str2 = "竞价失败 --> 无广告数据";
                } else {
                    str2 = "竞价成功 --> ecpmList = " + arrayList + " --> max item: ecpm = " + (biddingWrapperIconBean != null ? Double.valueOf(biddingWrapperIconBean.getEcpm()) : null) + ", plans.id = " + (adPlans != null ? adPlans.getId() : null) + ", plans.name = " + (adPlans != null ? adPlans.getName() : null);
                }
                ai.c cVar = ai.c.f362a;
                String strO = O();
                String sceneId = getSceneId();
                if (sceneId == null) {
                    sceneId = "";
                }
                cVar.d(strO, sceneId, 106, 6, listG.isEmpty() ? BiddingStateEnum.BIDDING_REPORT_BIDDING_FAIL : BiddingStateEnum.BIDDING_REPORT_BIDDING_SUCCESS, str2, arrayList.toString(), String.valueOf(biddingWrapperIconBean != null ? Double.valueOf(biddingWrapperIconBean.getEcpm()) : null), String.valueOf(adPlans != null ? adPlans.getId() : null), String.valueOf(adPlans != null ? adPlans.getName() : null), "");
                xh.a.g(xh.a.f75336a, getClassTag() + " --> sceneId = " + getSceneId() + " --> onBiddingLoad() --> " + str2 + " --> targetNum = " + this.f40922i + " --> data.size = " + listG.size(), 0, false, 2, null);
                int i10 = this.f40922i;
                if (i10 > 0) {
                    listG = CollectionsKt.U0(CollectionsKt.K0(listG, i10));
                }
                List list2 = this.f40919f;
                if (list2 != null) {
                    list2.clear();
                }
                List list3 = this.f40919f;
                if (list3 != null) {
                    list3.addAll(listG);
                }
                oh.a aVar = this.f40921h;
                if (aVar != null) {
                    aVar.w(listG);
                }
                AdSceneDisplayLimitManager adSceneDisplayLimitManager = AdSceneDisplayLimitManager.f41150a;
                String str3 = this.f40920g;
                if (str3 == null) {
                    str3 = "";
                }
                adSceneDisplayLimitManager.b(str3);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    private final List G(final boolean z10) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f40917d.iterator();
        while (it.hasNext()) {
            arrayList.add(J((TAdNativeInfo) it.next()));
        }
        Iterator it2 = this.f40918e.iterator();
        while (it2.hasNext()) {
            arrayList.add(N((RecommendInfo) it2.next()));
        }
        final Comparator comparator = new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t10, T t11) {
                return ComparisonsKt.d(Double.valueOf(((BiddingWrapperIconBean) t11).getEcpm()), Double.valueOf(((BiddingWrapperIconBean) t10).getEcpm()));
            }
        };
        CollectionsKt.A(arrayList, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t10, T t11) {
                int iCompare = comparator.compare(t10, t11);
                if (iCompare != 0) {
                    return iCompare;
                }
                boolean z11 = z10;
                int type = ((BiddingWrapperIconBean) t10).getType();
                if (!z11) {
                    type = -type;
                }
                Integer numValueOf = Integer.valueOf(type);
                boolean z12 = z10;
                int type2 = ((BiddingWrapperIconBean) t11).getType();
                if (!z12) {
                    type2 = -type2;
                }
                return ComparisonsKt.d(numValueOf, Integer.valueOf(type2));
            }
        });
        this.f40917d.clear();
        this.f40918e.clear();
        return arrayList;
    }

    public static final void H(BiddingIconAdManager biddingIconAdManager) {
        biddingIconAdManager.F("竞价时间到");
    }

    private final BiddingWrapperIconBean J(TAdNativeInfo tAdNativeInfo) {
        return new BiddingWrapperIconBean(2, null, tAdNativeInfo, tAdNativeInfo.getEcpmPrice(), false, 16, null);
    }

    private final Handler L() {
        return (Handler) this.f40926m.getValue();
    }

    private final BiddingWrapperIconBean N(RecommendInfo recommendInfo) {
        Double bidEcpmCent;
        AdPlans adPlans = this.f40925l;
        return new BiddingWrapperIconBean(1, recommendInfo, null, (adPlans == null || (bidEcpmCent = adPlans.getBidEcpmCent()) == null) ? 0.0d : bidEcpmCent.doubleValue(), false, 16, null);
    }

    private final String O() {
        return this.f40931r;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    public final Object P(String str, boolean z10, List list, Continuation continuation) {
        BiddingIconAdManager$innerLoadAd$1 biddingIconAdManager$innerLoadAd$1;
        int iB;
        Object objM453constructorimpl;
        Object objM453constructorimpl2;
        int i10;
        Object next;
        Object next2;
        if (continuation instanceof BiddingIconAdManager$innerLoadAd$1) {
            biddingIconAdManager$innerLoadAd$1 = (BiddingIconAdManager$innerLoadAd$1) continuation;
            int i11 = biddingIconAdManager$innerLoadAd$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                biddingIconAdManager$innerLoadAd$1.label = i11 - Integer.MIN_VALUE;
            } else {
                biddingIconAdManager$innerLoadAd$1 = new BiddingIconAdManager$innerLoadAd$1(this, continuation);
            }
        } else {
            biddingIconAdManager$innerLoadAd$1 = new BiddingIconAdManager$innerLoadAd$1(this, continuation);
        }
        BiddingIconAdManager$innerLoadAd$1 biddingIconAdManager$innerLoadAd$2 = biddingIconAdManager$innerLoadAd$1;
        Object obj = biddingIconAdManager$innerLoadAd$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = biddingIconAdManager$innerLoadAd$2.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            iB = com.transsion.ad.scene.a.f41152a.b(str, 2);
            xh.a.g(xh.a.f75336a, getClassTag() + " --> sceneId = " + getSceneId() + " --> loadAd() --> 开始加载广告 --> biddingTime = " + iB, 0, false, 2, null);
            try {
                Result.Companion companion = Result.INSTANCE;
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                    next2 = it.next();
                } while (!Intrinsics.c(((AdPlans) next2).getAdSource(), AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_HI.getValue()));
                objM453constructorimpl = Result.m453constructorimpl((AdPlans) next2);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            if (Result.m459isFailureimpl(objM453constructorimpl)) {
                objM453constructorimpl = null;
            }
            AdPlans adPlans = (AdPlans) objM453constructorimpl;
            this.f40924k = adPlans;
            if (adPlans == null || com.transsion.ad.scene.c.f41154a.a(str)) {
                xh.a.f75336a.f(getClassTag() + " --> sceneId = " + getSceneId() + " --> innerLoadAd() --> 程序化广告无计划或场景关闭", 5, false);
            } else {
                if (this.f40928o == null) {
                    BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager = new BiddingHiSavanaIconAdManager();
                    this.f40928o = biddingHiSavanaIconAdManager;
                    biddingHiSavanaIconAdManager.g(str);
                    BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager2 = this.f40928o;
                    if (biddingHiSavanaIconAdManager2 != null) {
                        biddingHiSavanaIconAdManager2.f(this);
                    }
                }
                BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager3 = this.f40928o;
                if (biddingHiSavanaIconAdManager3 != null) {
                    biddingHiSavanaIconAdManager3.e();
                }
                BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager4 = this.f40928o;
                if (biddingHiSavanaIconAdManager4 != null) {
                    biddingHiSavanaIconAdManager4.c(str);
                }
            }
            try {
                Iterator it2 = list.iterator();
                do {
                    if (!it2.hasNext()) {
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                    next = it2.next();
                } while (!Intrinsics.c(((AdPlans) next).getAdSource(), AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_ICON.getValue()));
                objM453constructorimpl2 = Result.m453constructorimpl((AdPlans) next);
            } catch (Throwable th3) {
                Result.Companion companion3 = Result.INSTANCE;
                objM453constructorimpl2 = Result.m453constructorimpl(ResultKt.a(th3));
            }
            AdPlans adPlans2 = (AdPlans) (Result.m459isFailureimpl(objM453constructorimpl2) ? null : objM453constructorimpl2);
            this.f40925l = adPlans2;
            if (adPlans2 == null || com.transsion.ad.scene.c.f41154a.b(str)) {
                xh.a.f75336a.f(getClassTag() + " --> sceneId = " + getSceneId() + " --> innerLoadAd() --> 包断广告无计划或场景关闭", 5, false);
            } else {
                if (this.f40929p == null) {
                    e eVar = new e();
                    this.f40929p = eVar;
                    eVar.C(this);
                    e eVar2 = this.f40929p;
                    if (eVar2 != null) {
                        eVar2.B(z10);
                    }
                }
                e eVar3 = this.f40929p;
                if (eVar3 != null) {
                    biddingIconAdManager$innerLoadAd$2.I$0 = iB;
                    biddingIconAdManager$innerLoadAd$2.label = 1;
                    if (e.A(eVar3, 0, str, null, biddingIconAdManager$innerLoadAd$2, 5, null) == objF) {
                        return objF;
                    }
                    i10 = iB;
                }
            }
            L().postDelayed(this.f40927n, ((long) iB) * 1000);
            return Unit.f64096a;
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        i10 = biddingIconAdManager$innerLoadAd$2.I$0;
        ResultKt.b(obj);
        iB = i10;
        L().postDelayed(this.f40927n, ((long) iB) * 1000);
        return Unit.f64096a;
    }

    private final boolean Q() {
        String asString;
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b(getSceneId());
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get(TrackingKey.PRIORITY)) == null || (asString = jsonElement.getAsString()) == null) {
            asString = "hi";
        }
        return TextUtils.equals(asString, "hi");
    }

    public static Object S(BiddingIconAdManager biddingIconAdManager, String str, boolean z10, int i10, oh.a aVar, Map map, Continuation continuation, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            map = null;
        }
        return biddingIconAdManager.R(str, z10, i10, aVar, map, continuation);
    }

    public static final Handler T() {
        return new Handler(Looper.getMainLooper());
    }

    public final void U(oh.a aVar, String str) {
        xh.a.g(xh.a.f75336a, str, 6, false, 4, null);
        if (aVar != null) {
            aVar.i(new TAdErrorCode(1101, str));
        }
    }

    public static final void V(BiddingIconAdManager biddingIconAdManager) {
        biddingIconAdManager.F("数据都回来了 --> onHiIconAdReady");
    }

    public static final void W(BiddingIconAdManager biddingIconAdManager) {
        biddingIconAdManager.F("数据都回来了 --> onPSDistributionReady");
    }

    public final String getClassTag() {
        String simpleName = BiddingIconAdManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void E(BiddingWrapperIconView iconView) {
        Intrinsics.h(iconView, "iconView");
        this.f40930q.add(iconView);
    }

    public final void I() {
        L().removeCallbacksAndMessages(null);
        this.f40921h = null;
        this.f40917d.clear();
        this.f40918e.clear();
        e eVar = this.f40929p;
        if (eVar != null) {
            eVar.x();
        }
        Iterator it = this.f40930q.iterator();
        while (it.hasNext()) {
            ((BiddingWrapperIconView) it.next()).destroy();
        }
        List list = this.f40919f;
        if (list != null) {
            list.clear();
        }
        BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager = this.f40928o;
        if (biddingHiSavanaIconAdManager != null) {
            biddingHiSavanaIconAdManager.b();
        }
        xh.a.g(xh.a.f75336a, getClassTag() + " --> sceneId = " + getSceneId() + " --> destroy() --> 资源回收", 0, false, 2, null);
    }

    public final oh.a K() {
        return this;
    }

    public final TNativeAd M() {
        BiddingHiSavanaIconAdManager biddingHiSavanaIconAdManager = this.f40928o;
        if (biddingHiSavanaIconAdManager != null) {
            return biddingHiSavanaIconAdManager.d();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    public final Object R(String str, boolean z10, int i10, oh.a aVar, Map map, Continuation continuation) {
        BiddingIconAdManager$loadIconAd$1 biddingIconAdManager$loadIconAd$1;
        boolean z11;
        String str2;
        int i11;
        oh.a aVar2;
        Map map2;
        if (continuation instanceof BiddingIconAdManager$loadIconAd$1) {
            biddingIconAdManager$loadIconAd$1 = (BiddingIconAdManager$loadIconAd$1) continuation;
            int i12 = biddingIconAdManager$loadIconAd$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                biddingIconAdManager$loadIconAd$1.label = i12 - Integer.MIN_VALUE;
            } else {
                biddingIconAdManager$loadIconAd$1 = new BiddingIconAdManager$loadIconAd$1(this, continuation);
            }
        } else {
            biddingIconAdManager$loadIconAd$1 = new BiddingIconAdManager$loadIconAd$1(this, continuation);
        }
        BiddingIconAdManager$loadIconAd$1 biddingIconAdManager$loadIconAd$2 = biddingIconAdManager$loadIconAd$1;
        Object objA = biddingIconAdManager$loadIconAd$2.result;
        Object objF = IntrinsicsKt.f();
        int i13 = biddingIconAdManager$loadIconAd$2.label;
        if (i13 != 0) {
            if (i13 == 1) {
                i11 = biddingIconAdManager$loadIconAd$2.I$0;
                boolean z12 = biddingIconAdManager$loadIconAd$2.Z$0;
                Map map3 = (Map) biddingIconAdManager$loadIconAd$2.L$2;
                oh.a aVar3 = (oh.a) biddingIconAdManager$loadIconAd$2.L$1;
                str2 = (String) biddingIconAdManager$loadIconAd$2.L$0;
                ResultKt.b(objA);
                z11 = z12;
                map2 = map3;
                aVar2 = aVar3;
            } else {
                if (i13 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objA);
            }
            return Unit.f64096a;
        }
        ResultKt.b(objA);
        SceneInterceptManager sceneInterceptManager = SceneInterceptManager.f41151a;
        biddingIconAdManager$loadIconAd$2.L$0 = str;
        biddingIconAdManager$loadIconAd$2.L$1 = aVar;
        biddingIconAdManager$loadIconAd$2.L$2 = map;
        z11 = z10;
        biddingIconAdManager$loadIconAd$2.Z$0 = z11;
        biddingIconAdManager$loadIconAd$2.I$0 = i10;
        biddingIconAdManager$loadIconAd$2.label = 1;
        objA = sceneInterceptManager.a(str, biddingIconAdManager$loadIconAd$2);
        if (objA == objF) {
            return objF;
        }
        str2 = str;
        i11 = i10;
        aVar2 = aVar;
        map2 = map;
        Pair pair = (Pair) objA;
        if (((Boolean) pair.getFirst()).booleanValue()) {
            U(aVar2, (String) pair.getSecond());
            return Unit.f64096a;
        }
        if (this.f40923j.get()) {
            return Unit.f64096a;
        }
        this.f40923j.set(true);
        this.f40931r = n.f16945a.b();
        ai.c.f362a.k(O(), str2, 6, 102, "", "");
        this.f40921h = aVar2;
        this.f40920g = str2;
        this.f40922i = i11;
        i0 i0VarB = y0.b();
        BiddingIconAdManager$loadIconAd$2 biddingIconAdManager$loadIconAd$3 = new BiddingIconAdManager$loadIconAd$2(str2, map2, this, aVar2, z11, null);
        biddingIconAdManager$loadIconAd$2.L$0 = null;
        biddingIconAdManager$loadIconAd$2.L$1 = null;
        biddingIconAdManager$loadIconAd$2.L$2 = null;
        biddingIconAdManager$loadIconAd$2.label = 2;
        if (i.g(i0VarB, biddingIconAdManager$loadIconAd$3, biddingIconAdManager$loadIconAd$2) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public void e(TAdErrorCode tAdErrorCode, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.e(tAdErrorCode, biddingIntermediateMaterialBean);
        xh.a.g(xh.a.f75336a, getClassTag() + " --> sceneId = " + getSceneId() + " --> onBiddingBuyOutError() --> errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), 0, false, 6, null);
    }

    public final String getSceneId() {
        return this.f40920g;
    }

    @Override
    public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onClick(tAdNativeInfo, additionalInfo);
        ai.c.f362a.a((128 & 1) != 0 ? "" : O(), getSceneId(), "", tAdNativeInfo != null ? Integer.valueOf(tAdNativeInfo.getAdSource()) : null, "", 6, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, null, (128 & 512) != 0 ? null : null, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : "");
        oh.a aVar = this.f40921h;
        if (aVar != null) {
            aVar.onClick(tAdNativeInfo, additionalInfo);
        }
        xh.a aVar2 = xh.a.f75336a;
        String classTag = getClassTag();
        String sceneId = getSceneId();
        AdPlans adPlans = this.f40924k;
        xh.a.g(aVar2, classTag + " --> sceneId = " + sceneId + " --> onBiddingWrapperAdClick() --> name = " + (adPlans != null ? adPlans.getName() : null), 0, false, 2, null);
    }

    @Override
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadFailure(tAdErrorCode, additionalInfo);
        oh.a aVar = this.f40921h;
        if (aVar != null) {
            aVar.onLoadFailure(tAdErrorCode, additionalInfo);
        }
        xh.a.g(xh.a.f75336a, getClassTag() + " --> sceneId = " + getSceneId() + " --> onLoadFailure() --> placementId = " + additionalInfo.getPlacementId() + " --> errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), 0, false, 6, null);
    }

    @Override
    public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        String id2;
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShow(tAdNativeInfo, additionalInfo);
        ai.c cVar = ai.c.f362a;
        String strO = O();
        String sceneId = getSceneId();
        AdPlans adPlans = this.f40924k;
        if (adPlans == null || (id2 = adPlans.getId()) == null) {
            id2 = "";
        }
        cVar.f((128 & 1) != 0 ? "" : strO, sceneId, id2, 103, "", 6, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, null, (128 & 512) != 0 ? null : null, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : null);
        xh.a aVar = xh.a.f75336a;
        String classTag = getClassTag();
        String sceneId2 = getSceneId();
        AdPlans adPlans2 = this.f40924k;
        xh.a.g(aVar, classTag + " --> sceneId = " + sceneId2 + " --> onBiddingWrapperAdDisplay() --> name = " + (adPlans2 != null ? adPlans2.getName() : null), 0, false, 2, null);
    }

    @Override
    public void onShowError(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShowError(tAdErrorCode, additionalInfo);
        xh.a aVar = xh.a.f75336a;
        String classTag = getClassTag();
        String sceneId = getSceneId();
        AdPlans adPlans = this.f40924k;
        xh.a.g(aVar, classTag + " --> sceneId = " + sceneId + " --> onIconShowError() --> name = " + (adPlans != null ? adPlans.getName() : null) + ", errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), 0, false, 2, null);
    }

    @Override
    public void q(List tAdNativeInfos) {
        Intrinsics.h(tAdNativeInfos, "tAdNativeInfos");
        super.q(tAdNativeInfos);
        xh.a.g(xh.a.f75336a, getClassTag() + " --> sceneId = " + getSceneId() + " --> onIconAdReady() --> tAdNativeInfos.size = " + tAdNativeInfos.size(), 0, false, 2, null);
        this.f40917d.clear();
        this.f40917d.addAll(tAdNativeInfos);
        if (this.f40918e.isEmpty()) {
            return;
        }
        L().post(new Runnable() {
            @Override
            public final void run() {
                BiddingIconAdManager.V(this.f40935a);
            }
        });
    }

    @Override
    public void r(RecommendInfo recommendInfo) {
        String id2;
        super.r(recommendInfo);
        ai.c cVar = ai.c.f362a;
        String strO = O();
        String sceneId = getSceneId();
        AdPlans adPlans = this.f40925l;
        if (adPlans == null || (id2 = adPlans.getId()) == null) {
            id2 = "";
        }
        cVar.a((128 & 1) != 0 ? "" : strO, sceneId, id2, 102, "", 6, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, recommendInfo, (128 & 512) != 0 ? null : null, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : "");
        com.transsion.ad.strategy.b.f41175a.k(null);
        zh.b bVar = zh.b.f76790a;
        String sceneId2 = getSceneId();
        if (sceneId2 == null) {
            sceneId2 = "";
        }
        AdPlans adPlans2 = this.f40925l;
        bVar.a(recommendInfo, true, sceneId2, adPlans2 != null ? adPlans2.getBidEcpmCent() : null);
        oh.a aVar = this.f40921h;
        if (aVar != null) {
            aVar.r(recommendInfo);
        }
        xh.a aVar2 = xh.a.f75336a;
        String classTag = getClassTag();
        String sceneId3 = getSceneId();
        AdPlans adPlans3 = this.f40925l;
        xh.a.g(aVar2, classTag + " --> sceneId = " + sceneId3 + " --> onBiddingWrapperAdClick() --> name = " + (adPlans3 != null ? adPlans3.getName() : null), 0, false, 2, null);
    }

    @Override
    public void t(RecommendInfo recommendInfo) {
        String id2;
        super.t(recommendInfo);
        ai.c cVar = ai.c.f362a;
        String strO = O();
        String sceneId = getSceneId();
        AdPlans adPlans = this.f40925l;
        if (adPlans == null || (id2 = adPlans.getId()) == null) {
            id2 = "";
        }
        cVar.f((128 & 1) != 0 ? "" : strO, sceneId, id2, 102, "", 6, (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, recommendInfo, (128 & 512) != 0 ? null : null, (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : "");
        List<BiddingWrapperIconBean> list = this.f40919f;
        if (list != null) {
            for (BiddingWrapperIconBean biddingWrapperIconBean : list) {
                RecommendInfo recommendInfo2 = biddingWrapperIconBean.getRecommendInfo();
                if (Intrinsics.c(recommendInfo2 != null ? Long.valueOf(recommendInfo2.getId()) : null, recommendInfo != null ? Long.valueOf(recommendInfo.getId()) : null)) {
                    biddingWrapperIconBean.setDisplay(true);
                }
            }
        }
        xh.a aVar = xh.a.f75336a;
        String classTag = getClassTag();
        String sceneId2 = getSceneId();
        AdPlans adPlans2 = this.f40925l;
        xh.a.g(aVar, classTag + " --> sceneId = " + sceneId2 + " --> onBiddingWrapperAdDisplay() --> name = " + (adPlans2 != null ? adPlans2.getName() : null), 0, false, 2, null);
    }

    @Override
    public void u(RecommendInfo recommendInfo) {
        super.u(recommendInfo);
        xh.a aVar = xh.a.f75336a;
        String classTag = getClassTag();
        String sceneId = getSceneId();
        AdPlans adPlans = this.f40925l;
        xh.a.g(aVar, classTag + " --> sceneId = " + sceneId + " --> onIconShowError() --> name = " + (adPlans != null ? adPlans.getName() : null), 0, false, 2, null);
    }

    @Override
    public void v(List list) {
        super.v(list);
        xh.a.g(xh.a.f75336a, getClassTag() + " --> onPSDistributionReady() --> mSceneId = " + getSceneId() + " --> data.size = " + (list != null ? Integer.valueOf(list.size()) : null), 0, false, 2, null);
        this.f40918e.clear();
        if (list != null) {
            this.f40918e.addAll(list);
        }
        if (this.f40917d.isEmpty()) {
            return;
        }
        L().post(new Runnable() {
            @Override
            public final void run() {
                BiddingIconAdManager.W(this.f40936a);
            }
        });
    }
}
