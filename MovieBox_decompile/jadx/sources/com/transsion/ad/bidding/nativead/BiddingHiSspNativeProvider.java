package com.transsion.ad.bidding.nativead;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsion.ad.hi.HiSavanaAdManager;
import com.transsion.ad.ps.installed.AppInstallManager;
import com.transsion.ad.scene.SceneInterceptManager;
import java.util.ArrayList;
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
import kotlin.Result;
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

public final class BiddingHiSspNativeProvider extends com.cloud.hisavana.sdk.api.listener.d {

    public static final a f40965h = new a(null);

    private static final Lazy f40966i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return BiddingHiSspNativeProvider.o();
        }
    });

    private b7.c f40968c;

    private String f40969d;

    private AtomicBoolean f40967b = new AtomicBoolean(false);

    private final ConcurrentLinkedDeque f40970e = new ConcurrentLinkedDeque();

    private final ConcurrentSkipListSet f40971f = new ConcurrentSkipListSet(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return BiddingHiSspNativeProvider.p((TaNativeInfo) obj, (TaNativeInfo) obj2);
        }
    });

    private int f40972g = 3;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Map a() {
            return (Map) BiddingHiSspNativeProvider.f40966i.getValue();
        }

        public final BiddingHiSspNativeProvider b(String str) {
            String strI = com.transsion.ad.scene.a.f41152a.i(str);
            if (strI == null || strI.length() == 0) {
                return null;
            }
            BiddingHiSspNativeProvider biddingHiSspNativeProvider = (BiddingHiSspNativeProvider) a().get(strI);
            if (biddingHiSspNativeProvider != null) {
                return biddingHiSspNativeProvider;
            }
            BiddingHiSspNativeProvider biddingHiSspNativeProvider2 = new BiddingHiSspNativeProvider();
            biddingHiSspNativeProvider2.s(strI);
            a().put(strI, biddingHiSspNativeProvider2);
            return biddingHiSspNativeProvider2;
        }

        private a() {
        }
    }

    public final String j() {
        String simpleName = BiddingHiSspNativeProvider.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final String l() {
        String str = this.f40969d;
        return str == null ? "" : str;
    }

    private final boolean m() {
        boolean z10 = this.f40971f.size() >= this.f40972g;
        if (z10) {
            xh.a.m(xh.a.f75336a, "ad_n", j() + " --> isUpperLimit() --- 达到阈值了 --> nativeInfoList.size = " + this.f40971f.size() + " -- cacheUpperLimit = " + this.f40972g, 0, false, 4, null);
        }
        return z10;
    }

    public static final Map o() {
        return new LinkedHashMap();
    }

    public static final int p(TaNativeInfo taNativeInfo, TaNativeInfo taNativeInfo2) {
        boolean zC = Intrinsics.c(taNativeInfo.getAdCreateId(), taNativeInfo2.getAdCreateId());
        AdImage image = taNativeInfo.getImage();
        String imgUrl = image != null ? image.getImgUrl() : null;
        AdImage image2 = taNativeInfo2.getImage();
        boolean zC2 = Intrinsics.c(imgUrl, image2 != null ? image2.getImgUrl() : null);
        if (zC || zC2) {
            int iCompare = Double.compare(taNativeInfo2.getBidPrice(), taNativeInfo.getBidPrice());
            if (iCompare != 0) {
                return iCompare;
            }
            return 0;
        }
        int iCompare2 = Double.compare(taNativeInfo2.getBidPrice(), taNativeInfo.getBidPrice());
        if (iCompare2 != 0) {
            return iCompare2;
        }
        String adCreateId = taNativeInfo2.getAdCreateId();
        String adCreateId2 = taNativeInfo.getAdCreateId();
        Intrinsics.g(adCreateId2, "getAdCreateId(...)");
        int iCompareTo = adCreateId.compareTo(adCreateId2);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        String imgUrl2 = taNativeInfo2.getImage().getImgUrl();
        String imgUrl3 = taNativeInfo.getImage().getImgUrl();
        Intrinsics.g(imgUrl3, "getImgUrl(...)");
        return imgUrl2.compareTo(imgUrl3);
    }

    public final void h(com.cloud.hisavana.sdk.api.listener.d dVar) {
        this.f40970e.add(dVar);
    }

    public final List i(int i10, boolean z10) {
        Object objM453constructorimpl;
        ArrayList arrayList;
        if (i10 > this.f40972g) {
            this.f40972g = i10;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Iterator it = this.f40971f.iterator();
            while (it.hasNext()) {
                TaNativeInfo taNativeInfo = (TaNativeInfo) it.next();
                b7.c cVar = this.f40968c;
                if (cVar != null && !cVar.u(taNativeInfo)) {
                    taNativeInfo.destroy();
                    it.remove();
                }
            }
            if (!z10 || this.f40971f.size() >= i10) {
                arrayList = new ArrayList();
                int iMin = Math.min(i10, this.f40971f.size());
                for (int i11 = 0; i11 < iMin; i11++) {
                    TaNativeInfo taNativeInfo2 = (TaNativeInfo) this.f40971f.pollFirst();
                    if (taNativeInfo2 != null) {
                        arrayList.add(taNativeInfo2);
                    }
                }
            } else {
                arrayList = null;
            }
            objM453constructorimpl = Result.m453constructorimpl(arrayList);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        List list = (List) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : null);
        n();
        return list;
    }

    public final b7.c k() {
        return this.f40968c;
    }

    public final void n() {
        if (!HiSavanaAdManager.f41090a.f()) {
            xh.a.m(xh.a.f75336a, "ad_n", j() + " --> loadAd() --> 广告SDK没有初始化", 0, false, 4, null);
            return;
        }
        if (m() || this.f40967b.get()) {
            return;
        }
        this.f40967b.set(true);
        if (this.f40968c == null) {
            b7.c cVar = new b7.c(l());
            this.f40968c = cVar;
            cVar.p(this);
            b7.c cVar2 = this.f40968c;
            if (cVar2 != null) {
                cVar2.z(this.f40972g);
            }
            xh.a.m(xh.a.f75336a, "ad_n", "============= " + j() + " --> loadAd() --> mPlacementId = " + l() + " --> create TNativeAd() ============= ", 0, false, 4, null);
        }
        b7.c cVar3 = this.f40968c;
        if (cVar3 != null) {
            cVar3.z(this.f40972g);
        }
        b7.c cVar4 = this.f40968c;
        if (cVar4 != null) {
            cVar4.v();
        }
    }

    @Override
    public void onAdActivate(AdActiveInfo adActiveInfo) {
        String packageName;
        super.onAdActivate(adActiveInfo);
        AppInstallManager appInstallManager = AppInstallManager.f41147a;
        if (adActiveInfo == null || (packageName = adActiveInfo.getPackageName()) == null) {
            packageName = "ew没有传递过来包名";
        }
        AppInstalledBean appInstalledBeanA = appInstallManager.a(packageName);
        appInstalledBeanA.setSource(AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_EW);
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        appInstallManager.e(applicationA, appInstalledBeanA);
    }

    @Override
    public void onAdLoaded(List list) {
        this.f40967b.set(false);
        if (list != null) {
            this.f40971f.addAll(list);
        }
    }

    @Override
    public void onError(TaErrorCode taErrorCode) {
        this.f40967b.set(false);
        xh.a.f75336a.l("ad_n", j() + " --> onError() --> placementId = " + l() + " --> errorMessage = " + (taErrorCode != null ? taErrorCode.getErrorMessage() : null), 6, false);
    }

    @Override
    public void onNativeAdClick(TaNativeInfo taNativeInfo) {
        Iterator it = this.f40970e.iterator();
        while (it.hasNext()) {
            ((com.cloud.hisavana.sdk.api.listener.d) it.next()).onNativeAdClick(taNativeInfo);
        }
    }

    @Override
    public void onNativeAdShow(TaNativeInfo taNativeInfo) {
        Iterator it = this.f40970e.iterator();
        while (it.hasNext()) {
            ((com.cloud.hisavana.sdk.api.listener.d) it.next()).onNativeAdShow(taNativeInfo);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object q(String str, int i10, Map map, Continuation continuation) {
        BiddingHiSspNativeProvider$preLoadAd$1 biddingHiSspNativeProvider$preLoadAd$1;
        String str2;
        Map map2;
        int i11;
        if (continuation instanceof BiddingHiSspNativeProvider$preLoadAd$1) {
            biddingHiSspNativeProvider$preLoadAd$1 = (BiddingHiSspNativeProvider$preLoadAd$1) continuation;
            int i12 = biddingHiSspNativeProvider$preLoadAd$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                biddingHiSspNativeProvider$preLoadAd$1.label = i12 - Integer.MIN_VALUE;
            } else {
                biddingHiSspNativeProvider$preLoadAd$1 = new BiddingHiSspNativeProvider$preLoadAd$1(this, continuation);
            }
        } else {
            biddingHiSspNativeProvider$preLoadAd$1 = new BiddingHiSspNativeProvider$preLoadAd$1(this, continuation);
        }
        Object objA = biddingHiSspNativeProvider$preLoadAd$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = biddingHiSspNativeProvider$preLoadAd$1.label;
        if (i13 == 0) {
            ResultKt.b(objA);
            if (!HiSavanaAdManager.f41090a.f()) {
                return Unit.f64096a;
            }
            SceneInterceptManager sceneInterceptManager = SceneInterceptManager.f41151a;
            biddingHiSspNativeProvider$preLoadAd$1.L$0 = str;
            biddingHiSspNativeProvider$preLoadAd$1.L$1 = map;
            biddingHiSspNativeProvider$preLoadAd$1.I$0 = i10;
            biddingHiSspNativeProvider$preLoadAd$1.label = 1;
            objA = sceneInterceptManager.a(str, biddingHiSspNativeProvider$preLoadAd$1);
            if (objA == objF) {
                return objF;
            }
            str2 = str;
            map2 = map;
            i11 = i10;
        } else {
            if (i13 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i14 = biddingHiSspNativeProvider$preLoadAd$1.I$0;
            map2 = (Map) biddingHiSspNativeProvider$preLoadAd$1.L$1;
            str2 = (String) biddingHiSspNativeProvider$preLoadAd$1.L$0;
            ResultKt.b(objA);
            i11 = i14;
        }
        if (((Boolean) ((Pair) objA).getFirst()).booleanValue()) {
            return Unit.f64096a;
        }
        if (com.transsion.ad.scene.c.f41154a.a(str2)) {
            return Unit.f64096a;
        }
        if (!this.f40971f.isEmpty()) {
            return Unit.f64096a;
        }
        k.d(o0.a(y0.b()), null, null, new BiddingHiSspNativeProvider$preLoadAd$2(str2, this, map2, i11, null), 3, null);
        return Unit.f64096a;
    }

    public final void r(com.cloud.hisavana.sdk.api.listener.d dVar) {
        this.f40970e.remove(dVar);
    }

    public final void s(String str) {
        this.f40969d = str;
    }
}
