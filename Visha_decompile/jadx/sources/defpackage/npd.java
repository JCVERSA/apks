package defpackage;

import android.content.Context;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.interfacz.Iad;
import com.hisavana.common.interfacz.QueryPriceListener;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.handler.DispatcherHandler;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public class npd {
    public final CloudControlConfig.CodeSeat b;
    public final vid c;
    public final String d;
    public final int e;
    public final com.hisavana.mediation.b f;
    public final DispatcherHandler i;
    public final String a = "PreloadHandler";
    public CopyOnWriteArrayList g = new CopyOnWriteArrayList();
    public final AtomicInteger h = new AtomicInteger();
    public int j = 1;

    public class a implements QueryPriceListener {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override
        public void onQueryPriceFailed() {
            AdLogUtil.Log().d("PreloadHandler", "receive query price failed");
            npd.this.e(this.a, null);
        }

        @Override
        public void onQueryPriceSuccess(List list) {
            AdLogUtil.Log().d("PreloadHandler", "CacheHandler --> queryPrice --> receive query price success");
            npd.this.e(this.a, list);
        }
    }

    public class b extends WrapTAdAllianceListener {
        public Iad a;

        public b(Iad iad) {
            this.a = iad;
        }

        public final void a() {
            npd.this.h.decrementAndGet();
            if (this.a == null) {
                AdLogUtil.Log().d("PreloadHandler", "mExecuter is null");
                return;
            }
            AdLogUtil.Log().d("PreloadHandler", "*----> request ad success, adSource:" + this.a.getAdSource() + ", ad placementId: " + this.a.getPlacementId() + ",mFlightingAdCount.get() = " + npd.this.h.get());
            this.a.setLoadStatus(2);
            if (sod.e(this.a)) {
                if (this.a.getNetwork() != null) {
                    this.a.getNetwork().setPrice(Double.valueOf(this.a.getEcpmPrice()));
                }
                ICacheAd iCacheAd = this.a;
                if (iCacheAd instanceof BaseAd) {
                    ((BaseAd) iCacheAd).mBundle.putDouble(TrackingKey.BIDDING_PRICE, iCacheAd.getEcpmPrice());
                } else if (iCacheAd instanceof AdNativeInfo) {
                    ((AdNativeInfo) iCacheAd).getNativeAdWrapper().getAdImpl().mBundle.putDouble(TrackingKey.BIDDING_PRICE, this.a.getEcpmPrice());
                }
                npd.this.i.g(npd.this.g);
            }
            if (npd.this.j() || npd.this.i.m(npd.this.g)) {
                return;
            }
            npd.this.m();
        }

        @Override
        public void onError(TAdErrorCode tAdErrorCode) {
            npd.this.h.decrementAndGet();
            Iad iad = this.a;
            if (iad == null) {
                AdLogUtil.Log().d("PreloadHandler", "mExecuter is null");
                return;
            }
            iad.setLoadStatus(3);
            AdLogUtil adLogUtilLog = AdLogUtil.Log();
            StringBuilder sb = new StringBuilder();
            sb.append("*----> request ad fail,error code: ");
            sb.append(tAdErrorCode != null ? Integer.valueOf(tAdErrorCode.getErrorCode()) : null);
            sb.append(",adSource:");
            sb.append(this.a.getAdSource());
            sb.append(", ad placementId: ");
            sb.append(this.a.getPlacementId());
            sb.append(",mFlightingAdCount.get() = ");
            sb.append(npd.this.h.get());
            adLogUtilLog.d("PreloadHandler", sb.toString());
            if (npd.this.j() || npd.this.i.m(npd.this.g)) {
                return;
            }
            npd.this.m();
        }

        @Override
        public void onLoad(List list) {
            a();
        }

        @Override
        public void onLoad() {
            a();
        }
    }

    public npd(CloudControlConfig.CodeSeat codeSeat, vid vidVar) {
        this.b = codeSeat;
        this.c = vidVar;
        this.d = codeSeat == null ? "" : codeSeat.getCodeSeatId();
        this.e = codeSeat == null ? -1 : codeSeat.getCodeSeatType().intValue();
        this.f = new com.hisavana.mediation.b(vidVar, codeSeat, true);
        this.i = new DispatcherHandler(codeSeat, vidVar);
    }

    public TInnerAdRequestBody a(Iad iad) {
        return new TInnerAdRequestBody.Builder().setAdListener(new b(iad)).build();
    }

    public void c() {
        CopyOnWriteArrayList<Iad> copyOnWriteArrayList = this.g;
        if (copyOnWriteArrayList != null) {
            for (Iad iad : copyOnWriteArrayList) {
                if (iad != null) {
                    iad.stopLoader();
                }
            }
            this.g.clear();
        }
        com.hisavana.mediation.b bVar = this.f;
        if (bVar != null) {
            bVar.n();
        }
    }

    public void d(Context context) {
        if (g(this.b)) {
            this.h.set(0);
            this.g.clear();
            this.f.l();
            i(context);
        }
    }

    public final void e(Context context, List list) {
        CopyOnWriteArrayList copyOnWriteArrayListF = this.i.f(context, list, this.f.o(), this.f.r(), true);
        this.g = copyOnWriteArrayListF;
        if (copyOnWriteArrayListF == null || copyOnWriteArrayListF.isEmpty()) {
            AdLogUtil.Log().d("PreloadHandler", "*----> no ad source can be preload.");
        } else {
            m();
        }
    }

    public final boolean g(CloudControlConfig.CodeSeat codeSeat) {
        int iIntValue = codeSeat.getPreload().booleanValue() ? codeSeat.getPreloadLogic().intValue() : -1;
        if (iIntValue == -1) {
            AdLogUtil.Log().w("PreloadHandler", "current code seat id is " + this.d + "preload is close...");
            return false;
        }
        AdCache adCacheB = this.i.b();
        if (iIntValue != 1 || adCacheB == null || !adCacheB.hasAds(codeSeat.getCodeSeatId(), this.c.J())) {
            return true;
        }
        AdLogUtil.Log().w("PreloadHandler", "autoAppend & INSUFFICIENT_APPEND,but adunit:" + this.d + " has cached ad, load/preload/trigger_preload request end");
        return false;
    }

    public final void i(Context context) {
        RecordTestInfo.record("fanbidding queryPrice,codeSeatId:" + this.d);
        this.f.d(new a(context));
    }

    public final boolean j() {
        return this.h.get() > 0;
    }

    public final boolean k(Iad iad) {
        boolean zK = false;
        if (iad == null) {
            return false;
        }
        TInnerAdRequestBody tInnerAdRequestBodyA = a(iad);
        if (AdUtil.requestStatusOff()) {
            this.h.addAndGet(1);
            zK = this.i.l(iad, 2, this.j, tInnerAdRequestBodyA, true);
            if (zK) {
                this.f.f(iad.getNetwork(), true);
            }
        } else {
            int loadStatus = iad.getLoadStatus();
            AdLogUtil.Log().d("PreloadHandler", "codeSeatId is" + this.d + ":ad source is " + iad.getAdSource() + ", load status is " + loadStatus);
            if (loadStatus != 1 && loadStatus != 3 && loadStatus != 2) {
                this.h.addAndGet(1);
                zK = this.i.k(iad, 2, this.j, tInnerAdRequestBodyA);
                if (loadStatus == 0 && zK) {
                    this.f.f(iad.getNetwork(), true);
                } else if (!zK) {
                    this.h.decrementAndGet();
                }
            }
        }
        return zK;
    }

    public final void m() {
        RecordTestInfo.record("load ad num: 1 with group");
        int i = 0;
        for (Iad iad : this.g) {
            if (iad != null) {
                if (sod.e(iad)) {
                    if (k(iad)) {
                        vid vidVar = this.c;
                        vidVar.y(vidVar.E() + 1);
                    }
                } else if (i == 0 && k(iad)) {
                    vid vidVar2 = this.c;
                    vidVar2.y(vidVar2.E() + 1);
                    i++;
                }
            }
        }
    }
}
