package com.hisavana.mediation;

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
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.handler.DispatcherHandler;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import defpackage.sod;
import defpackage.ul4;
import defpackage.vid;
import defpackage.z5d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class b {
    public static final z5d o = new z5d();
    public Handler b;
    public boolean i;
    public Integer j;
    public CloudControlConfig.CodeSeat k;
    public String l;
    public vid m;
    public AdCache n;
    public QueryPriceListener a = null;
    public List c = null;
    public final AtomicInteger d = new AtomicInteger();
    public final List e = new ArrayList();
    public final List f = new ArrayList();
    public final List g = new ArrayList();
    public final List h = new ArrayList();

    public class a extends Handler {
        public final boolean a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Looper looper, boolean z) {
            super(looper);
            this.a = z;
        }

        @Override
        public void handleMessage(Message message) {
            if (message.what != 101) {
                return;
            }
            AdLogUtil.Log().d("QueryPriceCenter", "receive MSG_QUERY_TIME_OUT message");
            if (this.a) {
                b.this.j(true);
            } else {
                b.this.k(true, null);
            }
        }
    }

    public class C0121b implements QueryPriceListener {
        public final Network a;

        public C0121b(Network network) {
            this.a = network;
        }

        @Override
        public void onQueryPriceFailed() {
            b.this.d.decrementAndGet();
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(ComConstants.transferSourceToStr(this.a.getSource().intValue()) + " query price failed; ", RecordTestInfo.LOG_CODE9);
            }
            if (b.this.i) {
                b.this.j(false);
            } else {
                b.this.k(false, null);
            }
        }

        @Override
        public void onQueryPriceSuccess(List list) {
            Network network;
            b.this.d.decrementAndGet();
            if (list == null || list.size() <= 0 || list.get(0) == null || (network = (Network) list.get(0)) == null) {
                return;
            }
            AdLogUtil.Log().d("QueryPriceCenter", "receive query price result: " + list.toString());
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(ComConstants.transferSourceToStr(network.getSource().intValue()) + " price" + network.getPrice() + ProcessInfo.SPLIT_NEW_VERSION, RecordTestInfo.LOG_CODE9);
            }
            if (!b.o.b(network.getCodeSeatId(), network)) {
                AdLogUtil.Log().w("QueryPriceCenter", "add price to price pool failed");
                b.this.f(network, false);
            } else if (b.this.i) {
                b.this.j(false);
            } else {
                b.this.k(false, network.getCodeSeatId());
            }
        }
    }

    public b(vid vidVar, CloudControlConfig.CodeSeat codeSeat, boolean z) {
        this.i = false;
        if (codeSeat == null) {
            return;
        }
        this.k = codeSeat;
        this.j = codeSeat.getCodeSeatType();
        this.l = codeSeat.getCodeSeatId();
        this.i = z;
        this.m = vidVar;
        this.n = AdCacheManager.getCache(this.j.intValue());
        this.b = new a(Looper.getMainLooper(), z);
    }

    public final BaseQueryPrice b(Network network) {
        if (network == null) {
            return null;
        }
        IBaseAdSummary iBaseAdSummaryF = sod.b().f(network.getSource().intValue());
        BaseQueryPrice queryPrice = iBaseAdSummaryF != null ? iBaseAdSummaryF.getQueryPrice() : null;
        if (queryPrice != null && this.j.intValue() == 4) {
            queryPrice.setOrientation(this.m.F());
        }
        return queryPrice;
    }

    public final Network c(String str) {
        AdCache adCache = this.n;
        double maxPrice = adCache == null ? 0.0d : adCache.getMaxPrice(str, this.m.J());
        AdLogUtil.Log().d("QueryPriceCenter", "*----> currently max price ad in ad pool is: " + maxPrice);
        Network networkA = o.a(str);
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
        BaseQueryPrice baseQueryPriceB;
        this.a = queryPriceListener;
        if (this.e.isEmpty()) {
            AdLogUtil.Log().d("QueryPriceCenter", "Auciton failed due to query price list is empty");
            QueryPriceListener queryPriceListener2 = this.a;
            if (queryPriceListener2 != null) {
                queryPriceListener2.onQueryPriceFailed();
            }
            return null;
        }
        int i = 0;
        for (Network network : this.e) {
            if (network != null && (baseQueryPriceB = b(network)) != null) {
                baseQueryPriceB.setQueryPriceListener(new C0121b(network));
                if (i >= 5) {
                    AdLogUtil.Log().d("QueryPriceCenter", "Auciton count exceed the max thrshold: 5");
                    break;
                }
                AdLogUtil.Log().w("QueryPriceCenter", "*----> start query price,network id: " + network.getCodeSeatId());
                network.setAdt(this.j.intValue());
                baseQueryPriceB.setTrackingBundle(DispatcherHandler.a(this.m, network, this.i ? 2 : 1, this.k));
                if (this.j.intValue() == 2) {
                    baseQueryPriceB.setBannerSize(this.m.r());
                }
                RecordTestInfo.record("queryPrice,codeSeatId:" + network.getCodeSeatId());
                this.d.addAndGet(1);
                baseQueryPriceB.queryPrice(ul4.a(), network);
                if (this.c == null) {
                    this.c = new ArrayList();
                }
                this.c.add(baseQueryPriceB);
                i++;
            }
        }
        AdLogUtil.Log().d("QueryPriceCenter", "QueryPriceCenter --> startQueryPrice --> mDoingQueryCount.get() = " + this.d.get());
        this.b.removeMessages(101);
        this.b.sendEmptyMessageDelayed(101, 2000L);
        return null;
    }

    public void f(Network network, boolean z) {
        if (network == null || network.getBidInfo() == null) {
            return;
        }
        if (z) {
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
            StringBuilder sb = new StringBuilder();
            for (Network network : this.e) {
                if (network != null) {
                    sb.append(ComConstants.transferSourceToStr(network.getSource().intValue()) + "，");
                }
            }
            StringBuilder sb2 = new StringBuilder();
            for (Network network2 : this.f) {
                if (network2 != null) {
                    sb2.append(ComConstants.transferSourceToStr(network2.getSource().intValue()) + " -$ " + network2.getPrice() + "，");
                }
            }
            StringBuilder sb3 = new StringBuilder();
            for (Network network3 : this.g) {
                if (network3 != null) {
                    sb3.append(ComConstants.transferSourceToStr(network3.getSource().intValue()) + " -$ " + network3.getPrice() + "，");
                }
            }
            AdLogUtil.Log().d("QueryPriceCenter", "*----> mQueryPriceNetworkList is: " + ((Object) sb) + ",\n *----> mWaterfallNetworkList is: " + ((Object) sb2) + ",\n mHistroyPriceList is: " + ((Object) sb3));
            String str = String.format(ul4.a().getString(R.string.hisavana_log_msg2), sb2.toString(), sb.toString(), sb3.toString());
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(str, RecordTestInfo.LOG_CODE2);
            }
            StringBuilder sb4 = new StringBuilder();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Network network4 = (Network) it.next();
                if (network4 != null && AdUtil.isQueryPriceNetwork(network4) && (networkA = o.a(network4.getCodeSeatId())) != null) {
                    sb4.append(ComConstants.transferSourceToStr(network4.getSource().intValue()));
                    sb4.append(" price:");
                    sb4.append(networkA.getPrice());
                }
            }
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(sb4.toString(), RecordTestInfo.LOG_CODE3);
            }
            AdCache adCache = this.n;
            if (adCache == null) {
                caches = null;
            } else {
                String str2 = this.l;
                vid vidVar = this.m;
                caches = adCache.getCaches(str2, Integer.MAX_VALUE, false, vidVar != null && vidVar.J());
            }
            if (!LogSwitch.isDebug || caches == null || caches.isEmpty()) {
                return;
            }
            RecordTestInfo.LogMsg(RecordTestInfo.getLogMsg(caches), RecordTestInfo.LOG_CODE4);
        }
    }

    public final void j(boolean z) {
        Network networkC;
        AdLogUtil.Log().e("QueryPriceCenter", "checkToGetWinnerPreload --> 竞价超时时间内 是否还有正在竞价的任务 --> mDoingQueryCount.get() = " + this.d.get() + " ----- timeOut = " + z + "----- ispreload = " + this.i);
        if (this.a == null) {
            return;
        }
        if (z || this.d.get() <= 0) {
            ArrayList arrayList = new ArrayList();
            for (Network network : this.e) {
                if (network != null && (networkC = c(network.getCodeSeatId())) != null) {
                    AdLogUtil.Log().w("QueryPriceCenter", "*---->checkToGetWinnerPreload ----- winnerNetwork = " + networkC);
                    arrayList.add(networkC);
                }
            }
            AdLogUtil.Log().w("QueryPriceCenter", "*---->end query price,checkToGetWinnerPreload ----- winnerList.size() = " + arrayList.size());
            if (arrayList.isEmpty()) {
                this.a.onQueryPriceFailed();
            } else {
                this.a.onQueryPriceSuccess(arrayList);
            }
            this.a = null;
            this.b.removeMessages(101);
        }
    }

    public final void k(boolean z, String str) {
        AdLogUtil.Log().e("QueryPriceCenter", "checkToGetWinner --> 竞价超时时间内 是否还有正在竞价的任务 --> mDoingQueryCount.get() = " + this.d.get() + " ----- timeOut = " + z + "----- ispreload = " + this.i + "，codeSeatId：" + str);
        if (z) {
            this.a = null;
        }
        if (this.a == null || TextUtils.isEmpty(str)) {
            return;
        }
        Network networkC = c(str);
        AdLogUtil.Log().w("QueryPriceCenter", "*---->end query price,checkToGetWinner ----- winnerNetworks = " + networkC);
        if (networkC != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(networkC);
            this.a.onQueryPriceSuccess(arrayList);
        } else {
            this.a.onQueryPriceFailed();
        }
        if (this.d.get() <= 0) {
            this.b.removeMessages(101);
        }
    }

    public void l() {
        this.e.clear();
        this.f.clear();
        this.g.clear();
        this.h.clear();
        List<Network> networks = this.k.getNetworks();
        if (networks == null) {
            return;
        }
        for (Network network : networks) {
            if (network != null) {
                network.setAdt(this.j.intValue());
                int networkType = AdUtil.getNetworkType(network);
                if (networkType == 1) {
                    this.h.add(network);
                } else if (networkType == 2) {
                    this.f.add(network);
                } else if (networkType == 3) {
                    if (this.i) {
                        this.e.add(network);
                    } else {
                        Network networkC = c(network.getCodeSeatId());
                        if (networkC == null) {
                            if (network.getSource().intValue() == 9) {
                                this.n.removeCodeSeatCache(network.getCodeSeatId());
                            }
                            this.e.add(network);
                        } else {
                            this.g.add(networkC);
                        }
                    }
                }
            }
        }
        i(networks);
    }

    public void n() {
        this.a = null;
        Handler handler = this.b;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        List list = this.c;
        if (list != null && list.size() > 0) {
            for (BaseQueryPrice baseQueryPrice : this.c) {
                if (baseQueryPrice != null) {
                    baseQueryPrice.destroy();
                }
            }
        }
        this.c = null;
    }

    public List o() {
        return this.h;
    }

    public List p() {
        AdLogUtil.Log().d("QueryPriceCenter", "*----> getHistoryPriceList  " + this.g);
        return this.g;
    }

    public List q() {
        return this.e;
    }

    public List r() {
        return this.f;
    }
}
