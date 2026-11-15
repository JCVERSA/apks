package com.hisavana.mediation;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.interfacz.Iad;
import com.hisavana.common.interfacz.QueryPriceListener;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.common.utils.MediaLogUtil;
import com.hisavana.common.utils.RunTimer;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.handler.DispatcherHandler;
import defpackage.npd;
import defpackage.o9;
import defpackage.r6;
import defpackage.rud;
import defpackage.sod;
import defpackage.ul4;
import defpackage.vid;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class a {
    public Bundle A;
    public double a;
    public rud b;
    public RunTimer c;
    public final com.hisavana.mediation.b e;
    public int f;
    public int g;
    public final Handler h;
    public Object i;
    public final String j;
    public int n;
    public final CloudControlConfig.CodeSeat o;
    public int q;
    public int s;
    public final DispatcherHandler v;
    public final vid w;
    public npd x;
    public CopyOnWriteArrayList d = new CopyOnWriteArrayList();
    public int k = 0;
    public final AtomicInteger l = new AtomicInteger();
    public boolean m = false;
    public int p = 1;
    public int r = 1;
    public int t = 1;
    public int u = 1;
    public int y = 1;
    public AdCache.AdCacheExpiredWatcher z = new C0120a();

    public class C0120a implements AdCache.AdCacheExpiredWatcher {
        public C0120a() {
        }

        @Override
        public void onExpired(ICacheAd iCacheAd) {
            AdLogUtil.Log().d("CacheHandler", "ad expired");
        }
    }

    public class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1001) {
                AdLogUtil.Log().w("CacheHandler", "receive MSG_REQUEST_NEXT_GROUP_WAITING...");
                a.this.g0();
            } else if (i == 1002) {
                AdLogUtil.Log().w("CacheHandler", "receive MSG_BIDDING_WAITING...");
                a.this.U(1);
            } else {
                Object obj = message.obj;
                if (obj instanceof Iad) {
                    ((Iad) obj).loadAd();
                }
            }
        }
    }

    public class c implements QueryPriceListener {
        public final Context a;

        public c(Context context) {
            this.a = context;
        }

        public final void a(List list) {
            double ecpmPrice;
            if (list == null || list.isEmpty() || a.this.f0()) {
                return;
            }
            AdLogUtil.Log().d("CacheHandler", "--- load ad mode --- ");
            Iterator it = a.this.d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    ecpmPrice = 0.0d;
                    break;
                }
                Iad iad = (Iad) it.next();
                if (iad != null && iad.getLoadStatus() == 0) {
                    ecpmPrice = iad.getEcpmPrice();
                    break;
                }
            }
            AdLogUtil.Log().d("CacheHandler", "checkToLoadWaterfallAd priceThreshold --- ," + ecpmPrice);
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Network network = (Network) it2.next();
                Iad iadD = a.this.v.d(this.a, a.this.o, network);
                if (iadD != null) {
                    a.this.d.add(iadD);
                    if (network.getPrice().doubleValue() >= ecpmPrice) {
                        a.this.A(iadD, 1);
                    }
                }
            }
            a.this.v.g(a.this.d);
        }

        @Override
        public void onQueryPriceFailed() {
            AdLogUtil.Log().d("CacheHandler", "receive query price failed");
            a(null);
        }

        @Override
        public void onQueryPriceSuccess(List list) {
            AdLogUtil.Log().d("CacheHandler", "CacheHandler --> queryPrice --> receive query price success");
            a(list);
        }
    }

    public a(CloudControlConfig.CodeSeat codeSeat, vid vidVar, rud rudVar) {
        this.q = -1;
        this.s = 0;
        this.o = codeSeat;
        this.w = vidVar;
        vidVar.y(0);
        this.e = new com.hisavana.mediation.b(vidVar, codeSeat, false);
        this.v = new DispatcherHandler(codeSeat, vidVar);
        this.h = new b(Looper.getMainLooper());
        this.q = codeSeat.getCodeSeatType().intValue();
        this.b = rudVar;
        this.j = codeSeat.getCodeSeatId();
        G().registerWatcher(this.z);
        this.s = vidVar.D();
    }

    public static TAdErrorCode v(int i) {
        if (i == 2) {
            return TAdErrorCode.ERROR_FILL_FAILED_WiTH_EXPIRED;
        }
        if (i != 3) {
            return i != 4 ? TAdErrorCode.ERROR_FILL_FAILED_WITH_NO_AD : TAdErrorCode.ERROR_FILL_FAILED_LOW_PRICE;
        }
        return TAdErrorCode.ERROR_FILL_FAILED_SENSITIVE;
    }

    public final boolean A(Iad iad, int i) {
        boolean zK;
        if (iad == null) {
            return false;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(iad, i);
        if (AdUtil.requestStatusOff()) {
            this.l.addAndGet(1);
            zK = this.v.l(iad, i, this.r, tInnerAdRequestBodyC, true);
            if (zK) {
                this.e.f(iad.getNetwork(), true);
            } else {
                this.l.decrementAndGet();
            }
        } else {
            int loadStatus = iad.getLoadStatus();
            if (loadStatus == 1 || loadStatus == 3 || loadStatus == 2) {
                return false;
            }
            this.l.addAndGet(1);
            zK = this.v.k(iad, i, this.r, tInnerAdRequestBodyC);
            if (loadStatus == 0 && zK) {
                this.e.f(iad.getNetwork(), true);
            } else if (!zK) {
                this.l.decrementAndGet();
            }
        }
        return zK;
    }

    public final String C(int i) {
        if (i == 0) {
            return "NONE";
        }
        if (i == 1) {
            return "LOADING";
        }
        if (i != 2) {
            return i != 3 ? "" : "FAILED";
        }
        return "SUCCESS";
    }

    public final void E() {
        CopyOnWriteArrayList<Iad> copyOnWriteArrayList = this.d;
        if (copyOnWriteArrayList != null) {
            for (Iad iad : copyOnWriteArrayList) {
                if (iad != null) {
                    iad.stopLoader();
                }
            }
            this.d.clear();
        }
        this.b = null;
        this.w.y(0);
        this.r = 0;
        p0();
        this.e.n();
        G().unRegisterWatcher();
        Handler handler = this.h;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.n = 3;
        AdLogUtil.Log().d("CacheHandler", "----------------->destroy,mUseCache:" + this.i);
        o(this.i);
        this.i = null;
        npd npdVar = this.x;
        if (npdVar != null) {
            npdVar.c();
        }
    }

    public void F(Object obj) {
    }

    public abstract AdCache G();

    public boolean I(int i) {
        if (this.b == null) {
            return false;
        }
        RecordTestInfo.record("load ad num: " + i + " with group");
        StringBuilder sb = new StringBuilder();
        sb.append("load next group,mReqCount ");
        sb.append(i);
        MediaLogUtil.d("CacheHandler", sb.toString());
        int i2 = 0;
        boolean z = false;
        for (Iad iad : this.d) {
            if (iad != null) {
                if (sod.e(iad)) {
                    if (A(iad, 1)) {
                        vid vidVar = this.w;
                        vidVar.y(vidVar.E() + 1);
                        z = true;
                    }
                } else if (i2 < i && A(iad, 1)) {
                    vid vidVar2 = this.w;
                    vidVar2.y(vidVar2.E() + 1);
                    i2++;
                }
            }
        }
        return i2 > 0 || z;
    }

    public int J() {
        return G().checkCacheStatus(this.j, this.w.J());
    }

    public final void K(int i) {
        if (this.n == 3) {
            return;
        }
        AdLogUtil.Log().w("CacheHandler", "notify load success");
        this.n = 3;
        rud rudVar = this.b;
        if (rudVar != null) {
            rudVar.k(i);
            p0();
            this.b.o();
        }
    }

    public int M() {
        return 0;
    }

    public void O(int i) {
        if (i > 0) {
            this.p = i;
        }
    }

    public int P() {
        return 1;
    }

    public void R(int i) {
        this.y = i;
    }

    public double S() {
        return this.a;
    }

    public final void U(int i) {
        a(i, false);
    }

    public int V() {
        return this.s;
    }

    public final void X(int i) {
        for (Iad iad : this.d) {
            if (iad != null) {
                iad.setTimeOut(true);
            }
        }
        Bundle bundle = new Bundle();
        bundle.putString(TrackingKey.TRIGGER_ID, this.A.getString(TrackingKey.TRIGGER_ID));
        bundle.putLong(TrackingKey.TRIGGER_TS, this.A.getLong(TrackingKey.TRIGGER_TS));
        bundle.putInt(TrackingKey.AD_TYPE, this.q);
        bundle.putString(TrackingKey.CLD_APP_ID, r6.b);
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.A.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putInt(TrackingKey.BID_START_TIME_TYPE, i);
        bundle.putFloat(TrackingKey.BID_START_DURATION, this.g);
        try {
            bundle.putFloat(TrackingKey.TRIGGER_TO_BID_DURATION, System.currentTimeMillis() - this.A.getLong(TrackingKey.TRIGGER_TS));
        } catch (Exception unused) {
        }
        bundle.putString(TrackingKey.CLD_CONFIGURE_ID, o9.e().j("cloudControlVersion"));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.A.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.A.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        TrackingManager.trackingStartBid(bundle);
    }

    public final boolean Z() {
        return this.l.get() > 0;
    }

    public final int a(int i, boolean z) {
        if (!a0() || e0()) {
            return 1;
        }
        if (this.n < 2) {
            AdLogUtil.Log().w("CacheHandler", "*----> start bidding...");
            RecordTestInfo.record("start bidding,bidStartTimeType:" + i);
            MediaLogUtil.d("CacheHandler", "startBidding,bidStartTimeType " + i + " BIDDING_DURATION_REACHED:1,HIGH_PRICE_RETURN:2");
            X(i);
            this.n = 2;
            l0();
            k0();
        }
        int iJ = J();
        f();
        if (iJ == 0) {
            K(this.m ? 1 : 2);
            AdLogUtil.Log().w("CacheHandler", "startBidding finish take bidding ad,and notifyLoadBest and unit id is " + this.j);
            MediaLogUtil.d("CacheHandler", "bidding success,ad fill*****************");
        } else {
            if (z || Z()) {
                AdLogUtil.Log().d("CacheHandler", "startBidding,ad is null but still have ad requesting");
                return iJ;
            }
            AdLogUtil.Log().w("CacheHandler", "startBidding failed,no ad fill");
            h(v(iJ));
        }
        return iJ;
    }

    public final boolean a0() {
        rud rudVar;
        return (this.n >= 3 || (rudVar = this.b) == null || (rudVar.j() == null && this.b.a() == null)) ? false : true;
    }

    public TInnerAdRequestBody c(Iad iad, int i) {
        return new TInnerAdRequestBody.Builder().setAdListener(new d(iad, i)).build();
    }

    public final boolean c0() {
        return this.v.m(this.d);
    }

    public Object d(boolean z) {
        return this.i;
    }

    public abstract boolean d0();

    public boolean e0() {
        return this.t == 2;
    }

    public final void f() {
        this.a = G().getMaxPrice(this.j, this.w.J());
    }

    public final boolean f0() {
        return this.n >= 2;
    }

    public void g(Bundle bundle) {
        this.A = bundle;
    }

    public final boolean g0() {
        if (c0()) {
            return false;
        }
        this.r++;
        boolean zI = I(this.u == 1 ? this.k : 1);
        if (zI) {
            o0();
        }
        return zI;
    }

    public final void h(TAdErrorCode tAdErrorCode) {
        if (this.n == 3) {
            return;
        }
        AdLogUtil.Log().w("CacheHandler", "notify load failed");
        p0();
        this.n = 3;
        y(tAdErrorCode);
    }

    public final void h0() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.d;
        if (copyOnWriteArrayList != null && (!copyOnWriteArrayList.isEmpty() || !this.e.q().isEmpty())) {
            I(this.k);
            AdLogUtil.Log().d("CacheHandler", "start WaitForBidding & startWaitForNextGroupRequest");
            n0();
            o0();
            return;
        }
        AdLogUtil.Log().d("CacheHandler", "*----> no ad source can be load.");
        if (!G().hasAds(this.j, this.w.J()) || e0()) {
            h(TAdErrorCode.ERROR_FILL_FAILED_WiTH_EXPIRED);
        } else {
            U(2);
        }
    }

    public void i(TInnerAdRequestBody tInnerAdRequestBody, rud rudVar) {
        WrapTAdAllianceListener adListener;
        if (tInnerAdRequestBody == null || (adListener = tInnerAdRequestBody.getAdListener()) == null) {
            return;
        }
        adListener.setAdListener(rudVar);
    }

    public void i0() {
        z(this.i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j(Iad iad) {
        int i;
        if (iad == 0 || !AdUtil.isBiddingNetwork(iad.getNetwork())) {
            return;
        }
        AdLogUtil.Log().d("CacheHandler", "replace cloud price use first price，firstprice：" + iad.getEcpmPrice() + "，cloud price：" + iad.getNetwork().getPrice());
        iad.getNetwork().setPrice(Double.valueOf(iad.getEcpmPrice()));
        if (iad instanceof BaseAd) {
            ((BaseAd) iad).mBundle.putDouble(TrackingKey.BIDDING_PRICE, iad.getEcpmPrice());
        } else if (iad instanceof AdNativeInfo) {
            ((AdNativeInfo) iad).getNativeAdWrapper().getAdImpl().mBundle.putDouble(TrackingKey.BIDDING_PRICE, iad.getEcpmPrice());
        }
        this.v.g(this.d);
        if (iad.isAdxAd() && ((i = this.s) == 1 || i == 3)) {
            U(2);
            return;
        }
        if (iad.isEwAd()) {
            int i2 = this.s;
            if (i2 == 2 || i2 == 3) {
                U(2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j0() {
        if (LogSwitch.isDebug) {
            StringBuilder sb = new StringBuilder();
            int i = 0;
            for (Iad iad : this.d) {
                if (iad != 0) {
                    if (iad instanceof BaseAd) {
                        i = ((BaseAd) iad).mBundle.getInt(TrackingKey.RETURN_TIME);
                    } else if (iad instanceof AdNativeInfo) {
                        i = ((AdNativeInfo) iad).getNativeAdWrapper().getAdImpl().mBundle.getInt(TrackingKey.RETURN_TIME);
                    }
                    boolean z = iad.getAdSource() == 1;
                    sb.append(ComConstants.transferSourceToStr(iad.getAdSource()));
                    if (z && iad.getNetwork() != null) {
                        sb.append("-");
                        sb.append(iad.getMediatorSourceName());
                    }
                    sb.append("，");
                    sb.append(C(iad.getLoadStatus()));
                    sb.append("，returnTime：");
                    sb.append(i);
                    sb.append("\n");
                }
            }
            AdLogUtil.Log().d("CacheHandler", "--- executer list load status--- : " + sb.toString());
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(sb.toString(), RecordTestInfo.LOG_CODE6);
            }
        }
    }

    public final void k(RunTimer runTimer) {
        this.c = runTimer;
    }

    public final void k0() {
        Handler handler = this.h;
        if (handler != null) {
            handler.removeMessages(1002);
        }
    }

    public final void l0() {
        AdLogUtil.Log().w("CacheHandler", "removeWaitForNextGroupRequest...");
        Handler handler = this.h;
        if (handler != null) {
            handler.removeMessages(1001);
        }
    }

    public void m0() {
        F(this.i);
    }

    public final void n0() {
        if (e0() || this.h == null) {
            return;
        }
        AdLogUtil.Log().d("CacheHandler", "startWaitForBidding...");
        this.h.removeMessages(1002);
        this.h.sendEmptyMessageDelayed(1002, this.g);
    }

    public abstract void o(Object obj);

    public final void o0() {
        Handler handler;
        if (this.u != 1 || (handler = this.h) == null) {
            return;
        }
        handler.removeMessages(1001);
        this.h.sendEmptyMessageDelayed(1001, this.f);
    }

    public final void p(rud rudVar) {
        this.b = rudVar;
    }

    public void p0() {
        if (this.c != null) {
            AdLogUtil.Log().w("LoadHandler", "stop timer");
            this.c.cancelTimeTask();
            this.c = null;
        }
    }

    public boolean q(Context context) {
        this.d.clear();
        this.m = false;
        this.l.set(0);
        boolean z = this.y == 2;
        this.g = Math.max((z ? this.o.getRealtimeBiddingWaitTime() : this.o.getBiddingWaitTime()).intValue(), 500);
        this.f = Math.max(this.o.getAdRequestTimeInterval().intValue(), 500);
        this.k = this.o.getAdRequestConcurrentCount().intValue() <= 0 ? 1 : this.o.getAdRequestConcurrentCount().intValue();
        this.p = Math.max(1, Math.min(P(), this.o.getAdRequestCount().intValue()));
        this.n = 1;
        this.t = (z ? this.o.getRealtimeFillCallbackMode() : this.o.getFillCallbackMode()).intValue();
        this.u = this.o.getRequestIntervalMode().intValue();
        if (LogSwitch.isDebug) {
            String str = String.format(ul4.a().getString(R.string.hisavana_log_msg1), Integer.valueOf(this.g), Integer.valueOf(this.f), Integer.valueOf(this.k), this.o.getAdRequestCount(), this.o.getPreload(), this.o.getAdShowCountLimitDay(), this.o.getAdShowCountLimitHour(), this.o.getAdShowTimeInterval());
            RecordTestInfo.LogMsg(str, RecordTestInfo.LOG_CODE1);
            MediaLogUtil.d("CacheHandler", "prepareForRequest,config " + str);
            AdLogUtil.Log().i("CacheHandler", "*----> WaitBiddingTime:" + this.g + ",WaitNextGroupRequestTime:" + this.f + ",ConcurrentReqCount:" + this.k + ",PoolAppendStrategy:" + this.o.getPreloadLogic() + ",adRequestCount:" + this.o.getAdRequestCount() + " ----- codeSeatId = " + this.o.getCodeSeatId());
        }
        if (this.o.getNetworks() == null || this.o.getNetworks().size() == 0) {
            AdLogUtil.Log().w("CacheHandler", "adUnit:" + this.j + " no networks , load/preload/trigger_preload request end");
            MediaLogUtil.e("CacheHandler", "prepareForRequest,networks is empty");
            return false;
        }
        if (e0() && J() == 0) {
            f();
            AdLogUtil.Log().d("CacheHandler", "-------->quick fill success ");
            K(5);
        }
        this.e.l();
        this.d = this.v.f(context, this.e.p(), this.e.o(), this.e.r(), false);
        x(context);
        h0();
        return true;
    }

    public boolean r(CloudControlConfig.CodeSeat codeSeat, Network network) {
        if (network == null || TextUtils.isEmpty(network.getCodeSeatId())) {
            return false;
        }
        return A(this.v.d(ul4.a(), codeSeat, network), 5);
    }

    public void w() {
        E();
    }

    public final void x(Context context) {
        RecordTestInfo.record("fanbidding queryPrice,codeSeatId:" + this.j);
        this.e.d(new c(context));
    }

    public void y(TAdErrorCode tAdErrorCode) {
        rud rudVar = this.b;
        if (rudVar != null) {
            rudVar.onError(tAdErrorCode);
        }
    }

    public void z(Object obj) {
    }

    public class d extends WrapTAdAllianceListener {
        public Iad a;
        public Object b;
        public final int c;

        public d(Iad iad, int i) {
            this.a = iad;
            this.c = i;
        }

        public final String a() {
            int i = a.this.n;
            if (i == 0) {
                return null;
            }
            if (i == 1) {
                return "PROGRESS_REQUEST";
            }
            return i == 2 ? "PROGRESS_BIDDING" : "PROGRESS_DISPATCHED";
        }

        public final void b(boolean z) {
            Iad iad = this.a;
            if (iad == null) {
                AdLogUtil.Log().d("CacheHandler", "mExecutor is null");
                return;
            }
            int iA = 1;
            if (z && iad.getNetwork() != null && this.a.getNetwork().getBiddingType().intValue() == 1 && this.a.getNetwork().getPrice().doubleValue() < this.a.getNetwork().getMinPrice().intValue()) {
                a.this.d.remove(this.a);
            }
            boolean zE0 = a.this.e0();
            if (!zE0) {
                a aVar = a.this;
                if (aVar.n == 2) {
                    iA = aVar.a(2, true);
                } else {
                    boolean zC0 = aVar.c0();
                    AdLogUtil.Log().d("CacheHandler", "mProgress " + a.this.n + " reachTopPrice " + zC0);
                    a aVar2 = a.this;
                    if (aVar2.n < 2 && zC0) {
                        iA = aVar2.a(2, true);
                    }
                }
            } else if (z) {
                iA = a.this.J();
                a.this.f();
                if (iA == 0) {
                    a.this.K(5);
                }
            }
            boolean Z = a.this.Z();
            boolean zG0 = (a.this.u == 2 || !Z) ? a.this.g0() : false;
            if (Z || zG0) {
                return;
            }
            if (zE0 || a.this.n == 2) {
                a.this.h(a.v(iA));
            }
        }

        public final void c() {
            a.this.l.decrementAndGet();
            Iad iad = this.a;
            if (iad == null) {
                AdLogUtil.Log().d("CacheHandler", "mExecuter is null");
                return;
            }
            iad.setLoadStatus(2);
            a aVar = a.this;
            aVar.m = aVar.n == 1;
            a.this.j(this.a);
            AdLogUtil.Log().d("CacheHandler", "*----> onLoaded(),mProgress = " + a() + ",mFlightingAdCount.get() = " + a.this.l.get() + ",ad fill adSource:" + this.a.getAdSource() + ", ad placementId: " + this.a.getPlacementId());
            StringBuilder sb = new StringBuilder();
            sb.append("ad onAdLoaded,adSource ");
            sb.append(this.a.getAdSource());
            sb.append(",id ");
            sb.append(this.a.getPlacementId());
            MediaLogUtil.d("CacheHandler", sb.toString());
            a.this.j0();
            AdLogUtil.Log().d("CacheHandler", "onAdLoaded requestCategory " + this.c);
            int i = this.c;
            if (i == 1) {
                b(true);
            } else {
                if (i != 5) {
                    return;
                }
                d();
            }
        }

        public final void d() {
            rud rudVar = a.this.b;
            if (rudVar != null) {
                if (rudVar.j() == null && a.this.b.a() == null) {
                    return;
                }
                int iJ = a.this.J();
                a.this.f();
                if (iJ == 0) {
                    a.this.K(3);
                } else {
                    a.this.h(a.v(iJ));
                }
            }
        }

        @Override
        public void onError(TAdErrorCode tAdErrorCode) {
            a.this.l.decrementAndGet();
            Iad iad = this.a;
            if (iad == null) {
                AdLogUtil.Log().d("CacheHandler", "mExecuter is null");
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
            sb.append(a.this.l.get());
            sb.append(" progress ");
            sb.append(a.this.n);
            adLogUtilLog.d("CacheHandler", sb.toString());
            a.this.j0();
            MediaLogUtil.d("CacheHandler", "ad load Error,source " + this.a.getAdSource() + ",id " + this.a.getPlacementId());
            int i = this.c;
            if (i == 1) {
                AdLogUtil.Log().d("CacheHandler", "onError current is load");
                b(false);
            } else {
                if (i != 5) {
                    return;
                }
                d();
            }
        }

        @Override
        public void onLoad(List list) {
            this.b = list;
            c();
        }

        @Override
        public void onNativeFeedShow(int i, TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
            super.onNativeFeedShow(i, tAdNativeInfo, additionalInfo);
            AdLogUtil.Log().d("CacheHandler", "*----> ad onshow() " + a.this.j);
            if (a.this.Z()) {
                AdLogUtil.Log().d("CacheHandler", "currently have requesting ad,terminate preload flow.");
                return;
            }
            if (!NetStateManager.checkNetworkState(false)) {
                AdLogUtil.Log().d("CacheHandler", "network is disconnect");
                return;
            }
            if (a.this.x == null) {
                a aVar = a.this;
                aVar.x = new npd(aVar.o, aVar.w);
            }
            a.this.x.d(ul4.a());
        }

        @Override
        public void onSkipClick() {
            rud rudVar = a.this.b;
            if (rudVar != null) {
                rudVar.onSkipClick();
            }
        }

        @Override
        public void onTimeReach() {
            rud rudVar = a.this.b;
            if (rudVar != null) {
                rudVar.onTimeReach();
            }
        }

        @Override
        public void onLoad() {
            this.b = this.a;
            c();
        }
    }
}
