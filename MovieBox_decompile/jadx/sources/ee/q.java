package ee;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.Network;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.IBaseAdSummary;
import com.hisavana.common.interfacz.QueryPriceListener;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.mediation.R$string;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.handler.DispatcherHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class q {

    public static final ee.b f59639o = new ee.b();

    public Handler f59641b;

    public boolean f59648i;

    public Integer f59649j;

    public CloudControlConfig.CodeSeat f59650k;

    public String f59651l;

    public i f59652m;

    public AdCache f59653n;

    public QueryPriceListener f59640a = null;

    public List f59642c = null;

    public final AtomicInteger f59643d = new AtomicInteger();

    public final List f59644e = new ArrayList();

    public final List f59645f = new ArrayList();

    public final List f59646g = new ArrayList();

    public final List f59647h = new ArrayList();

    public class a extends Handler {

        public final boolean f59654a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Looper looper, boolean z10) {
            super(looper);
            this.f59654a = z10;
        }

        @Override
        public void handleMessage(Message message) {
            if (message.what != 101) {
                return;
            }
            AdLogUtil.Log().d("QueryPriceCenter", "receive MSG_QUERY_TIME_OUT message");
            if (this.f59654a) {
                q.this.j(true);
            } else {
                q.this.k(true, null);
            }
        }
    }

    public class b implements QueryPriceListener {

        public final Network f59656a;

        public b(Network network) {
            this.f59656a = network;
        }

        @Override
        public void onQueryPriceFailed() {
            q.this.f59643d.decrementAndGet();
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(ComConstants.transferSourceToStr(this.f59656a.getSource().intValue()) + " query price failed; ", RecordTestInfo.LOG_CODE9);
            }
            if (q.this.f59648i) {
                q.this.j(false);
            } else {
                q.this.k(false, null);
            }
        }

        @Override
        public void onQueryPriceSuccess(List list) {
            Network network;
            q.this.f59643d.decrementAndGet();
            if (list == null || list.size() <= 0 || list.get(0) == null || (network = (Network) list.get(0)) == null) {
                return;
            }
            AdLogUtil.Log().d("QueryPriceCenter", "receive query price result: " + list.toString());
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(ComConstants.transferSourceToStr(network.getSource().intValue()) + " price" + network.getPrice() + ";", RecordTestInfo.LOG_CODE9);
            }
            if (!q.f59639o.b(network.getCodeSeatId(), network)) {
                AdLogUtil.Log().w("QueryPriceCenter", "add price to price pool failed");
                q.this.f(network, false);
            } else if (q.this.f59648i) {
                q.this.j(false);
            } else {
                q.this.k(false, network.getCodeSeatId());
            }
        }
    }

    public q(i iVar, CloudControlConfig.CodeSeat codeSeat, boolean z10) {
        this.f59648i = false;
        if (codeSeat == null) {
            return;
        }
        this.f59650k = codeSeat;
        this.f59649j = codeSeat.getCodeSeatType();
        this.f59651l = codeSeat.getCodeSeatId();
        this.f59648i = z10;
        this.f59652m = iVar;
        this.f59653n = AdCacheManager.getCache(this.f59649j.intValue());
        this.f59641b = new a(Looper.getMainLooper(), z10);
    }

    public final BaseQueryPrice a(Network network) {
        if (network == null) {
            return null;
        }
        IBaseAdSummary iBaseAdSummaryF = o.a().f(network.getSource().intValue());
        BaseQueryPrice queryPrice = iBaseAdSummaryF != null ? iBaseAdSummaryF.getQueryPrice() : null;
        if (queryPrice != null && this.f59649j.intValue() == 4) {
            queryPrice.setOrientation(this.f59652m.F());
        }
        return queryPrice;
    }

    public final Network b(String str) {
        AdCache adCache = this.f59653n;
        double maxPrice = adCache == null ? 0.0d : adCache.getMaxPrice(str, this.f59652m.J());
        AdLogUtil.Log().d("QueryPriceCenter", "*----> currently max price ad in ad pool is: " + maxPrice);
        Network networkA = f59639o.a(str);
        if (networkA == null) {
            return null;
        }
        AdLogUtil.Log().d("QueryPriceCenter", "*----> get cached, code seat id: +" + networkA.getCodeSeatId() + " price: " + networkA.getPrice());
        if (networkA.getPrice().doubleValue() < maxPrice) {
            return null;
        }
        AdLogUtil.Log().d("QueryPriceCenter", "*----> getQueryPriceWinner --> winner network is: " + networkA);
        return networkA;
    }

    public List d(QueryPriceListener queryPriceListener) {
        BaseQueryPrice baseQueryPriceA;
        this.f59640a = queryPriceListener;
        if (this.f59644e.isEmpty()) {
            AdLogUtil.Log().d("QueryPriceCenter", "Auciton failed due to query price list is empty");
            QueryPriceListener queryPriceListener2 = this.f59640a;
            if (queryPriceListener2 != null) {
                queryPriceListener2.onQueryPriceFailed();
            }
            return null;
        }
        int i10 = 0;
        for (Network network : this.f59644e) {
            if (network != null && (baseQueryPriceA = a(network)) != null) {
                baseQueryPriceA.setQueryPriceListener(new b(network));
                if (i10 >= 5) {
                    AdLogUtil.Log().d("QueryPriceCenter", "Auciton count exceed the max thrshold: 5");
                    break;
                }
                AdLogUtil.Log().w("QueryPriceCenter", "*----> start query price,network id: " + network.getCodeSeatId());
                network.setAdt(this.f59649j.intValue());
                baseQueryPriceA.setTrackingBundle(DispatcherHandler.a(this.f59652m, network, this.f59648i ? 2 : 1, this.f59650k));
                if (this.f59649j.intValue() == 2) {
                    baseQueryPriceA.setBannerSize(this.f59652m.r());
                }
                RecordTestInfo.record("queryPrice,codeSeatId:" + network.getCodeSeatId());
                this.f59643d.addAndGet(1);
                baseQueryPriceA.queryPrice(com.cloud.sdk.commonutil.util.e.a(), network);
                if (this.f59642c == null) {
                    this.f59642c = new ArrayList();
                }
                this.f59642c.add(baseQueryPriceA);
                i10++;
            }
        }
        AdLogUtil.Log().d("QueryPriceCenter", "QueryPriceCenter --> startQueryPrice --> mDoingQueryCount.get() = " + this.f59643d.get());
        this.f59641b.removeMessages(101);
        this.f59641b.sendEmptyMessageDelayed(101, 2000L);
        return null;
    }

    public void f(Network network, boolean z10) {
        if (network == null || network.getBidInfo() == null) {
            return;
        }
        if (z10) {
            AdLogUtil.Log().d("QueryPriceCenter", "send auction success to network server!");
            network.getBidInfo().notifyWin();
        } else {
            AdLogUtil.Log().d("QueryPriceCenter", "send auction failed to network server!");
            network.getBidInfo().notifyLoss();
        }
    }

    public final void i(List list) {
        ArrayList caches;
        Network networkA;
        if (LogSwitch.isDebug) {
            StringBuilder sb2 = new StringBuilder();
            for (Network network : this.f59644e) {
                if (network != null) {
                    sb2.append(ComConstants.transferSourceToStr(network.getSource().intValue()) + "，");
                }
            }
            StringBuilder sb3 = new StringBuilder();
            for (Network network2 : this.f59645f) {
                if (network2 != null) {
                    sb3.append(ComConstants.transferSourceToStr(network2.getSource().intValue()) + " -$ " + network2.getPrice() + "，");
                }
            }
            StringBuilder sb4 = new StringBuilder();
            for (Network network3 : this.f59646g) {
                if (network3 != null) {
                    sb4.append(ComConstants.transferSourceToStr(network3.getSource().intValue()) + " -$ " + network3.getPrice() + "，");
                }
            }
            AdLogUtil.Log().d("QueryPriceCenter", "*----> mQueryPriceNetworkList is: " + ((Object) sb2) + ",\n *----> mWaterfallNetworkList is: " + ((Object) sb3) + ",\n mHistroyPriceList is: " + ((Object) sb4));
            String str = String.format(com.cloud.sdk.commonutil.util.e.a().getString(R$string.hisavana_log_msg2), sb3.toString(), sb2.toString(), sb4.toString());
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(str, RecordTestInfo.LOG_CODE2);
            }
            StringBuilder sb5 = new StringBuilder();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Network network4 = (Network) it.next();
                if (network4 != null && AdUtil.isQueryPriceNetwork(network4) && (networkA = f59639o.a(network4.getCodeSeatId())) != null) {
                    sb5.append(ComConstants.transferSourceToStr(network4.getSource().intValue()));
                    sb5.append(" price:");
                    sb5.append(networkA.getPrice());
                }
            }
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(sb5.toString(), RecordTestInfo.LOG_CODE3);
            }
            AdCache adCache = this.f59653n;
            if (adCache == null) {
                caches = null;
            } else {
                String str2 = this.f59651l;
                i iVar = this.f59652m;
                caches = adCache.getCaches(str2, Integer.MAX_VALUE, false, iVar != null && iVar.J());
            }
            if (!LogSwitch.isDebug || caches == null || caches.isEmpty()) {
                return;
            }
            RecordTestInfo.LogMsg(RecordTestInfo.getLogMsg(caches), RecordTestInfo.LOG_CODE4);
        }
    }

    public final void j(boolean z10) {
        Network networkB;
        AdLogUtil.Log().e("QueryPriceCenter", "checkToGetWinnerPreload --> 竞价超时时间内 是否还有正在竞价的任务 --> mDoingQueryCount.get() = " + this.f59643d.get() + " ----- timeOut = " + z10 + "----- ispreload = " + this.f59648i);
        if (this.f59640a == null) {
            return;
        }
        if (z10 || this.f59643d.get() <= 0) {
            ArrayList arrayList = new ArrayList();
            for (Network network : this.f59644e) {
                if (network != null && (networkB = b(network.getCodeSeatId())) != null) {
                    AdLogUtil.Log().w("QueryPriceCenter", "*---->checkToGetWinnerPreload ----- winnerNetwork = " + networkB);
                    arrayList.add(networkB);
                }
            }
            AdLogUtil.Log().w("QueryPriceCenter", "*---->end query price,checkToGetWinnerPreload ----- winnerList.size() = " + arrayList.size());
            if (arrayList.isEmpty()) {
                this.f59640a.onQueryPriceFailed();
            } else {
                this.f59640a.onQueryPriceSuccess(arrayList);
            }
            this.f59640a = null;
            this.f59641b.removeMessages(101);
        }
    }

    public final void k(boolean z10, String str) {
        AdLogUtil.Log().e("QueryPriceCenter", "checkToGetWinner --> 竞价超时时间内 是否还有正在竞价的任务 --> mDoingQueryCount.get() = " + this.f59643d.get() + " ----- timeOut = " + z10 + "----- ispreload = " + this.f59648i + "，codeSeatId：" + str);
        if (z10) {
            this.f59640a = null;
        }
        if (this.f59640a == null || TextUtils.isEmpty(str)) {
            return;
        }
        Network networkB = b(str);
        AdLogUtil.Log().w("QueryPriceCenter", "*---->end query price,checkToGetWinner ----- winnerNetworks = " + networkB);
        if (networkB != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(networkB);
            this.f59640a.onQueryPriceSuccess(arrayList);
        } else {
            this.f59640a.onQueryPriceFailed();
        }
        if (this.f59643d.get() <= 0) {
            this.f59641b.removeMessages(101);
        }
    }

    public void l() {
        this.f59644e.clear();
        this.f59645f.clear();
        this.f59646g.clear();
        this.f59647h.clear();
        List<Network> networks = this.f59650k.getNetworks();
        if (networks == null) {
            return;
        }
        for (Network network : networks) {
            if (network != null) {
                network.setAdt(this.f59649j.intValue());
                int networkType = AdUtil.getNetworkType(network);
                if (networkType == 1) {
                    this.f59647h.add(network);
                } else if (networkType == 2) {
                    this.f59645f.add(network);
                } else if (networkType == 3) {
                    if (this.f59648i) {
                        this.f59644e.add(network);
                    } else {
                        Network networkB = b(network.getCodeSeatId());
                        if (networkB == null) {
                            if (network.getSource().intValue() == 9) {
                                this.f59653n.removeCodeSeatCache(network.getCodeSeatId());
                            }
                            this.f59644e.add(network);
                        } else {
                            this.f59646g.add(networkB);
                        }
                    }
                }
            }
        }
        i(networks);
    }

    public void n() {
        this.f59640a = null;
        List list = this.f59642c;
        if (list != null && list.size() > 0) {
            for (BaseQueryPrice baseQueryPrice : this.f59642c) {
                if (baseQueryPrice != null) {
                    baseQueryPrice.destroy();
                }
            }
        }
        this.f59642c = null;
    }

    public List o() {
        return this.f59647h;
    }

    public List p() {
        AdLogUtil.Log().d("QueryPriceCenter", "*----> getHistoryPriceList  " + this.f59646g);
        return this.f59646g;
    }

    public List q() {
        return this.f59644e;
    }

    public List r() {
        return this.f59645f;
    }
}
