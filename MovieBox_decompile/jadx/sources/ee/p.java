package ee;

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

public class p {

    public final CloudControlConfig.CodeSeat f59626b;

    public final i f59627c;

    public final String f59628d;

    public final int f59629e;

    public final q f59630f;

    public final DispatcherHandler f59633i;

    public final String f59625a = "PreloadHandler";

    public CopyOnWriteArrayList f59631g = new CopyOnWriteArrayList();

    public final AtomicInteger f59632h = new AtomicInteger();

    public int f59634j = 1;

    public class a implements QueryPriceListener {

        public final Context f59635a;

        public a(Context context) {
            this.f59635a = context;
        }

        @Override
        public void onQueryPriceFailed() {
            AdLogUtil.Log().d("PreloadHandler", "receive query price failed");
            p.this.e(this.f59635a, null);
        }

        @Override
        public void onQueryPriceSuccess(List list) {
            AdLogUtil.Log().d("PreloadHandler", "CacheHandler --> queryPrice --> receive query price success");
            p.this.e(this.f59635a, list);
        }
    }

    public class b extends WrapTAdAllianceListener {

        public Iad f59637a;

        public b(Iad iad) {
            this.f59637a = iad;
        }

        public final void a() {
            p.this.f59632h.decrementAndGet();
            if (this.f59637a == null) {
                AdLogUtil.Log().d("PreloadHandler", "mExecuter is null");
                return;
            }
            AdLogUtil.Log().d("PreloadHandler", "*----> request ad success, adSource:" + this.f59637a.getAdSource() + ", ad placementId: " + this.f59637a.getPlacementId() + ",mFlightingAdCount.get() = " + p.this.f59632h.get());
            this.f59637a.setLoadStatus(2);
            if (o.e(this.f59637a)) {
                if (this.f59637a.getNetwork() != null) {
                    this.f59637a.getNetwork().setPrice(Double.valueOf(this.f59637a.getEcpmPrice()));
                }
                ICacheAd iCacheAd = this.f59637a;
                if (iCacheAd instanceof BaseAd) {
                    ((BaseAd) iCacheAd).mBundle.putDouble(TrackingKey.BIDDING_PRICE, iCacheAd.getEcpmPrice());
                } else if (iCacheAd instanceof AdNativeInfo) {
                    ((AdNativeInfo) iCacheAd).getNativeAdWrapper().getAdImpl().mBundle.putDouble(TrackingKey.BIDDING_PRICE, this.f59637a.getEcpmPrice());
                }
                p.this.f59633i.g(p.this.f59631g);
            }
            if (p.this.j() || p.this.f59633i.m(p.this.f59631g)) {
                return;
            }
            p.this.m();
        }

        @Override
        public void onError(TAdErrorCode tAdErrorCode) {
            p.this.f59632h.decrementAndGet();
            Iad iad = this.f59637a;
            if (iad == null) {
                AdLogUtil.Log().d("PreloadHandler", "mExecuter is null");
                return;
            }
            iad.setLoadStatus(3);
            AdLogUtil adLogUtilLog = AdLogUtil.Log();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("*----> request ad fail,error code: ");
            sb2.append(tAdErrorCode != null ? Integer.valueOf(tAdErrorCode.getErrorCode()) : null);
            sb2.append(",adSource:");
            sb2.append(this.f59637a.getAdSource());
            sb2.append(", ad placementId: ");
            sb2.append(this.f59637a.getPlacementId());
            sb2.append(",mFlightingAdCount.get() = ");
            sb2.append(p.this.f59632h.get());
            adLogUtilLog.d("PreloadHandler", sb2.toString());
            if (p.this.j() || p.this.f59633i.m(p.this.f59631g)) {
                return;
            }
            p.this.m();
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

    public p(CloudControlConfig.CodeSeat codeSeat, i iVar) {
        this.f59626b = codeSeat;
        this.f59627c = iVar;
        this.f59628d = codeSeat == null ? "" : codeSeat.getCodeSeatId();
        this.f59629e = codeSeat == null ? -1 : codeSeat.getCodeSeatType().intValue();
        this.f59630f = new q(iVar, codeSeat, true);
        this.f59633i = new DispatcherHandler(codeSeat, iVar);
    }

    public TInnerAdRequestBody a(Iad iad) {
        return new TInnerAdRequestBody.Builder().setAdListener(new b(iad)).build();
    }

    public void c() {
        CopyOnWriteArrayList<Iad> copyOnWriteArrayList = this.f59631g;
        if (copyOnWriteArrayList != null) {
            for (Iad iad : copyOnWriteArrayList) {
                if (iad != null) {
                    iad.stopLoader();
                }
            }
            this.f59631g.clear();
        }
        q qVar = this.f59630f;
        if (qVar != null) {
            qVar.n();
        }
    }

    public void d(Context context) {
        if (g(this.f59626b)) {
            this.f59632h.set(0);
            this.f59631g.clear();
            this.f59630f.l();
            i(context);
        }
    }

    public final void e(Context context, List list) {
        CopyOnWriteArrayList copyOnWriteArrayListF = this.f59633i.f(context, list, this.f59630f.o(), this.f59630f.r(), true);
        this.f59631g = copyOnWriteArrayListF;
        if (copyOnWriteArrayListF == null || copyOnWriteArrayListF.isEmpty()) {
            AdLogUtil.Log().d("PreloadHandler", "*----> no ad source can be preload.");
        } else {
            m();
        }
    }

    public final boolean g(CloudControlConfig.CodeSeat codeSeat) {
        int iIntValue = codeSeat.getPreload().booleanValue() ? codeSeat.getPreloadLogic().intValue() : -1;
        if (iIntValue == -1) {
            AdLogUtil.Log().w("PreloadHandler", "current code seat id is " + this.f59628d + "preload is close...");
            return false;
        }
        AdCache adCacheB = this.f59633i.b();
        if (iIntValue != 1 || adCacheB == null || !adCacheB.hasAds(codeSeat.getCodeSeatId(), this.f59627c.J())) {
            return true;
        }
        AdLogUtil.Log().w("PreloadHandler", "autoAppend & INSUFFICIENT_APPEND,but adunit:" + this.f59628d + " has cached ad, load/preload/trigger_preload request end");
        return false;
    }

    public final void i(Context context) {
        RecordTestInfo.record("fanbidding queryPrice,codeSeatId:" + this.f59628d);
        this.f59630f.d(new a(context));
    }

    public final boolean j() {
        return this.f59632h.get() > 0;
    }

    public final boolean k(Iad iad) {
        boolean zK = false;
        if (iad == null) {
            return false;
        }
        TInnerAdRequestBody tInnerAdRequestBodyA = a(iad);
        if (AdUtil.requestStatusOff()) {
            this.f59632h.addAndGet(1);
            zK = this.f59633i.l(iad, 2, this.f59634j, tInnerAdRequestBodyA, true);
            if (zK) {
                this.f59630f.f(iad.getNetwork(), true);
            }
        } else {
            int loadStatus = iad.getLoadStatus();
            AdLogUtil.Log().d("PreloadHandler", "codeSeatId is" + this.f59628d + ":ad source is " + iad.getAdSource() + ", load status is " + loadStatus);
            if (loadStatus != 1 && loadStatus != 3 && loadStatus != 2) {
                this.f59632h.addAndGet(1);
                zK = this.f59633i.k(iad, 2, this.f59634j, tInnerAdRequestBodyA);
                if (loadStatus == 0 && zK) {
                    this.f59630f.f(iad.getNetwork(), true);
                } else if (!zK) {
                    this.f59632h.decrementAndGet();
                }
            }
        }
        return zK;
    }

    public final void m() {
        RecordTestInfo.record("load ad num: 1 with group");
        int i10 = 0;
        for (Iad iad : this.f59631g) {
            if (iad != null) {
                if (o.e(iad)) {
                    if (k(iad)) {
                        i iVar = this.f59627c;
                        iVar.y(iVar.E() + 1);
                    }
                } else if (i10 == 0 && k(iad)) {
                    i iVar2 = this.f59627c;
                    iVar2.y(iVar2.E() + 1);
                    i10++;
                }
            }
        }
    }
}
