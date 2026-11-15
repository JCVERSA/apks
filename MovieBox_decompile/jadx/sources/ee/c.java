package ee;

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
import com.hisavana.mediation.R$string;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.handler.DispatcherHandler;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class c {
    public Bundle A;

    public double f59560a;

    public s f59561b;

    public RunTimer f59562c;

    public final q f59564e;

    public int f59565f;

    public int f59566g;

    public final Handler f59567h;

    public Object f59568i;

    public final String f59569j;

    public int f59573n;

    public final CloudControlConfig.CodeSeat f59574o;

    public int f59576q;

    public int f59578s;

    public final DispatcherHandler f59581v;

    public final i f59582w;

    public p f59583x;

    public CopyOnWriteArrayList f59563d = new CopyOnWriteArrayList();

    public int f59570k = 0;

    public final AtomicInteger f59571l = new AtomicInteger();

    public boolean f59572m = false;

    public int f59575p = 1;

    public int f59577r = 1;

    public int f59579t = 1;

    public int f59580u = 1;

    public int f59584y = 1;

    public AdCache.AdCacheExpiredWatcher f59585z = new a();

    public class a implements AdCache.AdCacheExpiredWatcher {
        public a() {
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
            int i10 = message.what;
            if (i10 == 1001) {
                AdLogUtil.Log().w("CacheHandler", "receive MSG_REQUEST_NEXT_GROUP_WAITING...");
                c.this.g0();
            } else if (i10 == 1002) {
                AdLogUtil.Log().w("CacheHandler", "receive MSG_BIDDING_WAITING...");
                c.this.U(1);
            } else {
                Object obj = message.obj;
                if (obj instanceof Iad) {
                    ((Iad) obj).loadAd();
                }
            }
        }
    }

    public class C0722c implements QueryPriceListener {

        public final Context f59588a;

        public C0722c(Context context) {
            this.f59588a = context;
        }

        public final void a(List list) {
            double ecpmPrice;
            if (list == null || list.isEmpty() || c.this.f0()) {
                return;
            }
            AdLogUtil.Log().d("CacheHandler", "--- load ad mode --- ");
            Iterator it = c.this.f59563d.iterator();
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
                Iad iadD = c.this.f59581v.d(this.f59588a, c.this.f59574o, network);
                if (iadD != null) {
                    c.this.f59563d.add(iadD);
                    if (network.getPrice().doubleValue() >= ecpmPrice) {
                        c.this.A(iadD, 1);
                    }
                }
            }
            c.this.f59581v.g(c.this.f59563d);
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

    public c(CloudControlConfig.CodeSeat codeSeat, i iVar, s sVar) {
        this.f59576q = -1;
        this.f59578s = 0;
        this.f59574o = codeSeat;
        this.f59582w = iVar;
        iVar.y(0);
        this.f59564e = new q(iVar, codeSeat, false);
        this.f59581v = new DispatcherHandler(codeSeat, iVar);
        this.f59567h = new b(Looper.getMainLooper());
        this.f59576q = codeSeat.getCodeSeatType().intValue();
        this.f59561b = sVar;
        this.f59569j = codeSeat.getCodeSeatId();
        G().registerWatcher(this.f59585z);
        this.f59578s = iVar.D();
    }

    public static TAdErrorCode v(int i10) {
        if (i10 == 2) {
            return TAdErrorCode.ERROR_FILL_FAILED_WiTH_EXPIRED;
        }
        if (i10 != 3) {
            return i10 != 4 ? TAdErrorCode.ERROR_FILL_FAILED_WITH_NO_AD : TAdErrorCode.ERROR_FILL_FAILED_LOW_PRICE;
        }
        return TAdErrorCode.ERROR_FILL_FAILED_SENSITIVE;
    }

    public final boolean A(Iad iad, int i10) {
        boolean zK;
        if (iad == null) {
            return false;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(iad, i10);
        if (AdUtil.requestStatusOff()) {
            this.f59571l.addAndGet(1);
            zK = this.f59581v.l(iad, i10, this.f59577r, tInnerAdRequestBodyC, true);
            if (zK) {
                this.f59564e.f(iad.getNetwork(), true);
            } else {
                this.f59571l.decrementAndGet();
            }
        } else {
            int loadStatus = iad.getLoadStatus();
            if (loadStatus == 1 || loadStatus == 3 || loadStatus == 2) {
                return false;
            }
            this.f59571l.addAndGet(1);
            zK = this.f59581v.k(iad, i10, this.f59577r, tInnerAdRequestBodyC);
            if (loadStatus == 0 && zK) {
                this.f59564e.f(iad.getNetwork(), true);
            } else if (!zK) {
                this.f59571l.decrementAndGet();
            }
        }
        return zK;
    }

    public final String D(int i10) {
        if (i10 == 0) {
            return "NONE";
        }
        if (i10 == 1) {
            return "LOADING";
        }
        if (i10 != 2) {
            return i10 != 3 ? "" : "FAILED";
        }
        return "SUCCESS";
    }

    public final void E() {
        CopyOnWriteArrayList<Iad> copyOnWriteArrayList = this.f59563d;
        if (copyOnWriteArrayList != null) {
            for (Iad iad : copyOnWriteArrayList) {
                if (iad != null) {
                    iad.stopLoader();
                }
            }
            this.f59563d.clear();
        }
        this.f59561b = null;
        this.f59582w.y(0);
        this.f59577r = 0;
        p0();
        this.f59564e.n();
        G().unRegisterWatcher();
        Handler handler = this.f59567h;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f59573n = 3;
        AdLogUtil.Log().d("CacheHandler", "----------------->destroy,mUseCache:" + this.f59568i);
        p(this.f59568i);
        this.f59568i = null;
        p pVar = this.f59583x;
        if (pVar != null) {
            pVar.c();
        }
    }

    public void F(Object obj) {
    }

    public abstract AdCache G();

    public boolean I(int i10) {
        if (this.f59561b == null) {
            return false;
        }
        RecordTestInfo.record("load ad num: " + i10 + " with group");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("load next group,mReqCount ");
        sb2.append(i10);
        MediaLogUtil.d("CacheHandler", sb2.toString());
        int i11 = 0;
        boolean z10 = false;
        for (Iad iad : this.f59563d) {
            if (iad != null) {
                if (o.e(iad)) {
                    if (A(iad, 1)) {
                        i iVar = this.f59582w;
                        iVar.y(iVar.E() + 1);
                        z10 = true;
                    }
                } else if (i11 < i10 && A(iad, 1)) {
                    i iVar2 = this.f59582w;
                    iVar2.y(iVar2.E() + 1);
                    i11++;
                }
            }
        }
        return i11 > 0 || z10;
    }

    public int J() {
        return G().checkCacheStatus(this.f59569j, this.f59582w.J());
    }

    public final void K(int i10) {
        if (this.f59573n == 3) {
            return;
        }
        AdLogUtil.Log().w("CacheHandler", "notify load success");
        this.f59573n = 3;
        s sVar = this.f59561b;
        if (sVar != null) {
            sVar.l(i10);
            p0();
            this.f59561b.p();
        }
    }

    public int M() {
        return 0;
    }

    public void O(int i10) {
        if (i10 > 0) {
            this.f59575p = i10;
        }
    }

    public int P() {
        return 1;
    }

    public void R(int i10) {
        this.f59584y = i10;
    }

    public double S() {
        return this.f59560a;
    }

    public final void U(int i10) {
        a(i10, false);
    }

    public int V() {
        return this.f59578s;
    }

    public final void X(int i10) {
        for (Iad iad : this.f59563d) {
            if (iad != null) {
                iad.setTimeOut(true);
            }
        }
        Bundle bundle = new Bundle();
        bundle.putString(TrackingKey.TRIGGER_ID, this.A.getString(TrackingKey.TRIGGER_ID));
        bundle.putLong(TrackingKey.TRIGGER_TS, this.A.getLong(TrackingKey.TRIGGER_TS));
        bundle.putInt("ad_type", this.f59576q);
        bundle.putString(TrackingKey.CLD_APP_ID, c7.b.f16688b);
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.A.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putInt(TrackingKey.BID_START_TIME_TYPE, i10);
        bundle.putFloat(TrackingKey.BID_START_DURATION, this.f59566g);
        try {
            bundle.putFloat(TrackingKey.TRIGGER_TO_BID_DURATION, System.currentTimeMillis() - this.A.getLong(TrackingKey.TRIGGER_TS));
        } catch (Exception unused) {
        }
        bundle.putString(TrackingKey.CLD_CONFIGURE_ID, l7.a.e().j("cloudControlVersion"));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.A.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.A.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        TrackingManager.trackingStartBid(bundle);
    }

    public final boolean Z() {
        return this.f59571l.get() > 0;
    }

    public final int a(int i10, boolean z10) {
        if (!a0() || e0()) {
            return 1;
        }
        if (this.f59573n < 2) {
            AdLogUtil.Log().w("CacheHandler", "*----> start bidding...");
            RecordTestInfo.record("start bidding,bidStartTimeType:" + i10);
            MediaLogUtil.d("CacheHandler", "startBidding,bidStartTimeType " + i10 + " BIDDING_DURATION_REACHED:1,HIGH_PRICE_RETURN:2");
            X(i10);
            this.f59573n = 2;
            l0();
            k0();
        }
        int iJ = J();
        f();
        if (iJ == 0) {
            K(this.f59572m ? 1 : 2);
            AdLogUtil.Log().w("CacheHandler", "startBidding finish take bidding ad,and notifyLoadBest and unit id is " + this.f59569j);
            MediaLogUtil.d("CacheHandler", "bidding success,ad fill*****************");
        } else {
            if (z10 || Z()) {
                AdLogUtil.Log().d("CacheHandler", "startBidding,ad is null but still have ad requesting");
                return iJ;
            }
            AdLogUtil.Log().w("CacheHandler", "startBidding failed,no ad fill");
            h(v(iJ));
        }
        return iJ;
    }

    public final boolean a0() {
        s sVar;
        return (this.f59573n >= 3 || (sVar = this.f59561b) == null || (sVar.k() == null && this.f59561b.a() == null)) ? false : true;
    }

    public TInnerAdRequestBody c(Iad iad, int i10) {
        return new TInnerAdRequestBody.Builder().setAdListener(new d(iad, i10)).build();
    }

    public final boolean c0() {
        return this.f59581v.m(this.f59563d);
    }

    public abstract boolean d0();

    public Object e(boolean z10) {
        return this.f59568i;
    }

    public boolean e0() {
        return this.f59579t == 2;
    }

    public final void f() {
        this.f59560a = G().getMaxPrice(this.f59569j, this.f59582w.J());
    }

    public final boolean f0() {
        return this.f59573n >= 2;
    }

    public void g(Bundle bundle) {
        this.A = bundle;
    }

    public final boolean g0() {
        if (c0()) {
            return false;
        }
        this.f59577r++;
        boolean zI = I(this.f59580u == 1 ? this.f59570k : 1);
        if (zI) {
            o0();
        }
        return zI;
    }

    public final void h(TAdErrorCode tAdErrorCode) {
        if (this.f59573n == 3) {
            return;
        }
        AdLogUtil.Log().w("CacheHandler", "notify load failed");
        p0();
        this.f59573n = 3;
        y(tAdErrorCode);
    }

    public final void h0() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f59563d;
        if (copyOnWriteArrayList != null && (!copyOnWriteArrayList.isEmpty() || !this.f59564e.q().isEmpty())) {
            I(this.f59570k);
            AdLogUtil.Log().d("CacheHandler", "start WaitForBidding & startWaitForNextGroupRequest");
            n0();
            o0();
            return;
        }
        AdLogUtil.Log().d("CacheHandler", "*----> no ad source can be load.");
        if (!G().hasAds(this.f59569j, this.f59582w.J()) || e0()) {
            h(TAdErrorCode.ERROR_FILL_FAILED_WiTH_EXPIRED);
        } else {
            U(2);
        }
    }

    public void i(TInnerAdRequestBody tInnerAdRequestBody, s sVar) {
        WrapTAdAllianceListener adListener;
        if (tInnerAdRequestBody == null || (adListener = tInnerAdRequestBody.getAdListener()) == null) {
            return;
        }
        adListener.setAdListener(sVar);
    }

    public void i0() {
        z(this.f59568i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j(Iad iad) {
        int i10;
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
        this.f59581v.g(this.f59563d);
        if (iad.isAdxAd() && ((i10 = this.f59578s) == 1 || i10 == 3)) {
            U(2);
            return;
        }
        if (iad.isEwAd()) {
            int i11 = this.f59578s;
            if (i11 == 2 || i11 == 3) {
                U(2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j0() {
        if (LogSwitch.isDebug) {
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            for (Iad iad : this.f59563d) {
                if (iad != 0) {
                    if (iad instanceof BaseAd) {
                        i10 = ((BaseAd) iad).mBundle.getInt(TrackingKey.RETURN_TIME);
                    } else if (iad instanceof AdNativeInfo) {
                        i10 = ((AdNativeInfo) iad).getNativeAdWrapper().getAdImpl().mBundle.getInt(TrackingKey.RETURN_TIME);
                    }
                    boolean z10 = iad.getAdSource() == 1;
                    sb2.append(ComConstants.transferSourceToStr(iad.getAdSource()));
                    if (z10 && iad.getNetwork() != null) {
                        sb2.append("-");
                        sb2.append(iad.getMediatorSourceName());
                    }
                    sb2.append("，");
                    sb2.append(D(iad.getLoadStatus()));
                    sb2.append("，returnTime：");
                    sb2.append(i10);
                    sb2.append("\n");
                }
            }
            AdLogUtil.Log().d("CacheHandler", "--- executer list load status--- : " + sb2.toString());
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(sb2.toString(), RecordTestInfo.LOG_CODE6);
            }
        }
    }

    public final void k(RunTimer runTimer) {
        this.f59562c = runTimer;
    }

    public final void k0() {
        Handler handler = this.f59567h;
        if (handler != null) {
            handler.removeMessages(1002);
        }
    }

    public final void l0() {
        AdLogUtil.Log().w("CacheHandler", "removeWaitForNextGroupRequest...");
        Handler handler = this.f59567h;
        if (handler != null) {
            handler.removeMessages(1001);
        }
    }

    public void m0() {
        F(this.f59568i);
    }

    public final void n0() {
        if (e0() || this.f59567h == null) {
            return;
        }
        AdLogUtil.Log().d("CacheHandler", "startWaitForBidding...");
        this.f59567h.removeMessages(1002);
        this.f59567h.sendEmptyMessageDelayed(1002, this.f59566g);
    }

    public final void o(s sVar) {
        this.f59561b = sVar;
    }

    public final void o0() {
        Handler handler;
        if (this.f59580u != 1 || (handler = this.f59567h) == null) {
            return;
        }
        handler.removeMessages(1001);
        this.f59567h.sendEmptyMessageDelayed(1001, this.f59565f);
    }

    public abstract void p(Object obj);

    public void p0() {
        if (this.f59562c != null) {
            AdLogUtil.Log().w("LoadHandler", "stop timer");
            this.f59562c.cancelTimeTask();
            this.f59562c = null;
        }
    }

    public boolean q(Context context) {
        this.f59563d.clear();
        this.f59572m = false;
        this.f59571l.set(0);
        boolean z10 = this.f59584y == 2;
        this.f59566g = Math.max((z10 ? this.f59574o.getRealtimeBiddingWaitTime() : this.f59574o.getBiddingWaitTime()).intValue(), 500);
        this.f59565f = Math.max(this.f59574o.getAdRequestTimeInterval().intValue(), 500);
        this.f59570k = this.f59574o.getAdRequestConcurrentCount().intValue() <= 0 ? 1 : this.f59574o.getAdRequestConcurrentCount().intValue();
        this.f59575p = Math.max(1, Math.min(P(), this.f59574o.getAdRequestCount().intValue()));
        this.f59573n = 1;
        this.f59579t = (z10 ? this.f59574o.getRealtimeFillCallbackMode() : this.f59574o.getFillCallbackMode()).intValue();
        this.f59580u = this.f59574o.getRequestIntervalMode().intValue();
        if (LogSwitch.isDebug) {
            String str = String.format(com.cloud.sdk.commonutil.util.e.a().getString(R$string.hisavana_log_msg1), Integer.valueOf(this.f59566g), Integer.valueOf(this.f59565f), Integer.valueOf(this.f59570k), this.f59574o.getAdRequestCount(), this.f59574o.getPreload(), this.f59574o.getAdShowCountLimitDay(), this.f59574o.getAdShowCountLimitHour(), this.f59574o.getAdShowTimeInterval());
            RecordTestInfo.LogMsg(str, RecordTestInfo.LOG_CODE1);
            MediaLogUtil.d("CacheHandler", "prepareForRequest,config " + str);
            AdLogUtil.Log().i("CacheHandler", "*----> WaitBiddingTime:" + this.f59566g + ",WaitNextGroupRequestTime:" + this.f59565f + ",ConcurrentReqCount:" + this.f59570k + ",PoolAppendStrategy:" + this.f59574o.getPreloadLogic() + ",adRequestCount:" + this.f59574o.getAdRequestCount() + " ----- codeSeatId = " + this.f59574o.getCodeSeatId());
        }
        if (this.f59574o.getNetworks() == null || this.f59574o.getNetworks().size() == 0) {
            AdLogUtil.Log().w("CacheHandler", "adUnit:" + this.f59569j + " no networks , load/preload/trigger_preload request end");
            MediaLogUtil.e("CacheHandler", "prepareForRequest,networks is empty");
            return false;
        }
        if (e0() && J() == 0) {
            f();
            AdLogUtil.Log().d("CacheHandler", "-------->quick fill success ");
            K(5);
        }
        this.f59564e.l();
        this.f59563d = this.f59581v.f(context, this.f59564e.p(), this.f59564e.o(), this.f59564e.r(), false);
        x(context);
        h0();
        return true;
    }

    public boolean r(CloudControlConfig.CodeSeat codeSeat, Network network) {
        if (network == null || TextUtils.isEmpty(network.getCodeSeatId())) {
            return false;
        }
        return A(this.f59581v.d(com.cloud.sdk.commonutil.util.e.a(), codeSeat, network), 5);
    }

    public void w() {
        E();
    }

    public final void x(Context context) {
        RecordTestInfo.record("fanbidding queryPrice,codeSeatId:" + this.f59569j);
        this.f59564e.d(new C0722c(context));
    }

    public void y(TAdErrorCode tAdErrorCode) {
        s sVar = this.f59561b;
        if (sVar != null) {
            sVar.onError(tAdErrorCode);
        }
    }

    public void z(Object obj) {
    }

    public class d extends WrapTAdAllianceListener {

        public Iad f59590a;

        public Object f59591b;

        public final int f59592c;

        public d(Iad iad, int i10) {
            this.f59590a = iad;
            this.f59592c = i10;
        }

        public final String a() {
            int i10 = c.this.f59573n;
            if (i10 == 0) {
                return null;
            }
            if (i10 == 1) {
                return "PROGRESS_REQUEST";
            }
            return i10 == 2 ? "PROGRESS_BIDDING" : "PROGRESS_DISPATCHED";
        }

        public final void b(boolean z10) {
            Iad iad = this.f59590a;
            if (iad == null) {
                AdLogUtil.Log().d("CacheHandler", "mExecutor is null");
                return;
            }
            int iA = 1;
            if (z10 && iad.getNetwork() != null && this.f59590a.getNetwork().getBiddingType().intValue() == 1 && this.f59590a.getNetwork().getPrice().doubleValue() < this.f59590a.getNetwork().getMinPrice().intValue()) {
                c.this.f59563d.remove(this.f59590a);
            }
            boolean zE0 = c.this.e0();
            if (!zE0) {
                c cVar = c.this;
                if (cVar.f59573n == 2) {
                    iA = cVar.a(2, true);
                } else {
                    boolean zC0 = cVar.c0();
                    AdLogUtil.Log().d("CacheHandler", "mProgress " + c.this.f59573n + " reachTopPrice " + zC0);
                    c cVar2 = c.this;
                    if (cVar2.f59573n < 2 && zC0) {
                        iA = cVar2.a(2, true);
                    }
                }
            } else if (z10) {
                iA = c.this.J();
                c.this.f();
                if (iA == 0) {
                    c.this.K(5);
                }
            }
            boolean Z = c.this.Z();
            boolean zG0 = (c.this.f59580u == 2 || !Z) ? c.this.g0() : false;
            if (Z || zG0) {
                return;
            }
            if (zE0 || c.this.f59573n == 2) {
                c.this.h(c.v(iA));
            }
        }

        public final void c() {
            c.this.f59571l.decrementAndGet();
            Iad iad = this.f59590a;
            if (iad == null) {
                AdLogUtil.Log().d("CacheHandler", "mExecuter is null");
                return;
            }
            iad.setLoadStatus(2);
            c cVar = c.this;
            cVar.f59572m = cVar.f59573n == 1;
            c.this.j(this.f59590a);
            AdLogUtil.Log().d("CacheHandler", "*----> onLoaded(),mProgress = " + a() + ",mFlightingAdCount.get() = " + c.this.f59571l.get() + ",ad fill adSource:" + this.f59590a.getAdSource() + ", ad placementId: " + this.f59590a.getPlacementId());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ad onAdLoaded,adSource ");
            sb2.append(this.f59590a.getAdSource());
            sb2.append(",id ");
            sb2.append(this.f59590a.getPlacementId());
            MediaLogUtil.d("CacheHandler", sb2.toString());
            c.this.j0();
            AdLogUtil.Log().d("CacheHandler", "onAdLoaded requestCategory " + this.f59592c);
            int i10 = this.f59592c;
            if (i10 == 1) {
                b(true);
            } else {
                if (i10 != 5) {
                    return;
                }
                d();
            }
        }

        public final void d() {
            s sVar = c.this.f59561b;
            if (sVar != null) {
                if (sVar.k() == null && c.this.f59561b.a() == null) {
                    return;
                }
                int iJ = c.this.J();
                c.this.f();
                if (iJ == 0) {
                    c.this.K(3);
                } else {
                    c.this.h(c.v(iJ));
                }
            }
        }

        @Override
        public void onError(TAdErrorCode tAdErrorCode) {
            c.this.f59571l.decrementAndGet();
            Iad iad = this.f59590a;
            if (iad == null) {
                AdLogUtil.Log().d("CacheHandler", "mExecuter is null");
                return;
            }
            iad.setLoadStatus(3);
            AdLogUtil adLogUtilLog = AdLogUtil.Log();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("*----> request ad fail,error code: ");
            sb2.append(tAdErrorCode != null ? Integer.valueOf(tAdErrorCode.getErrorCode()) : null);
            sb2.append(",adSource:");
            sb2.append(this.f59590a.getAdSource());
            sb2.append(", ad placementId: ");
            sb2.append(this.f59590a.getPlacementId());
            sb2.append(",mFlightingAdCount.get() = ");
            sb2.append(c.this.f59571l.get());
            sb2.append(" progress ");
            sb2.append(c.this.f59573n);
            adLogUtilLog.d("CacheHandler", sb2.toString());
            c.this.j0();
            MediaLogUtil.d("CacheHandler", "ad load Error,source " + this.f59590a.getAdSource() + ",id " + this.f59590a.getPlacementId());
            int i10 = this.f59592c;
            if (i10 == 1) {
                AdLogUtil.Log().d("CacheHandler", "onError current is load");
                b(false);
            } else {
                if (i10 != 5) {
                    return;
                }
                d();
            }
        }

        @Override
        public void onLoad(List list) {
            this.f59591b = list;
            c();
        }

        @Override
        public void onNativeFeedShow(int i10, TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
            super.onNativeFeedShow(i10, tAdNativeInfo, additionalInfo);
            AdLogUtil.Log().d("CacheHandler", "*----> ad onshow() " + c.this.f59569j);
            if (c.this.Z()) {
                AdLogUtil.Log().d("CacheHandler", "currently have requesting ad,terminate preload flow.");
                return;
            }
            if (!NetStateManager.checkNetworkState(false)) {
                AdLogUtil.Log().d("CacheHandler", "network is disconnect");
                return;
            }
            if (c.this.f59583x == null) {
                c cVar = c.this;
                cVar.f59583x = new p(cVar.f59574o, cVar.f59582w);
            }
            c.this.f59583x.d(com.cloud.sdk.commonutil.util.e.a());
        }

        @Override
        public void onSkipClick() {
            s sVar = c.this.f59561b;
            if (sVar != null) {
                sVar.onSkipClick();
            }
        }

        @Override
        public void onTimeReach() {
            s sVar = c.this.f59561b;
            if (sVar != null) {
                sVar.onTimeReach();
            }
        }

        @Override
        public void onLoad() {
            this.f59591b = this.f59590a;
            c();
        }
    }
}
