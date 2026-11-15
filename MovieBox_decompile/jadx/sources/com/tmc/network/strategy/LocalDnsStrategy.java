package com.tmc.network.strategy;

import android.content.Context;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tmc.network.NetworkConfig;
import com.tmc.network.NetworkMonitor;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import okhttp3.Dns;

public final class LocalDnsStrategy implements Dns {

    public static final a f39836c = new a(null);

    private static AtomicBoolean f39837d = new AtomicBoolean(false);

    private ConcurrentHashMap f39838a = new ConcurrentHashMap();

    private AtomicBoolean f39839b = new AtomicBoolean(false);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LocalDnsStrategy a() {
            return b.f39840a.a();
        }

        private a() {
        }
    }

    private static final class b {

        public static final b f39840a = new b();

        private static final LocalDnsStrategy f39841b = new LocalDnsStrategy();

        private b() {
        }

        public final LocalDnsStrategy a() {
            return f39841b;
        }
    }

    public final class c implements NetworkMonitor.INetworkChangeListener {

        final LocalDnsStrategy f39842a;

        public c(LocalDnsStrategy this$0) {
            Intrinsics.h(this$0, "this$0");
            this.f39842a = this$0;
        }

        @Override
        public void onNetworkChanged(NetworkMonitor.NetworkStatus status) {
            Intrinsics.h(status, "status");
            this.f39842a.j();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v10, types: [T, com.tmc.network.strategy.StrategyTable, java.lang.Object] */
    private final List f(final String str) {
        try {
            String networkId = NetworkMonitor.INSTANCE.getNetworkId();
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? r10 = this.f39838a.get(networkId);
            objectRef.element = r10;
            if (r10 == 0) {
                ?? strategyTable = new StrategyTable(networkId);
                objectRef.element = strategyTable;
                this.f39838a.put(networkId, strategyTable);
            }
            List<InetAddress> listQueryStrategyList = ((StrategyTable) objectRef.element).queryStrategyList(str);
            List<InetAddress> list = listQueryStrategyList;
            if (list != null && !list.isEmpty()) {
                rf.c cVarA = rf.c.f71183c.a();
                if (cVarA != null) {
                    cVarA.a(new Runnable() {
                        @Override
                        public final void run() {
                            LocalDnsStrategy.g(objectRef, str, this);
                        }
                    });
                }
                return listQueryStrategyList;
            }
            InetAddress[] ips = InetAddress.getAllByName(str);
            if (ips != null && ips.length != 0) {
                StrategyTable strategyTable2 = (StrategyTable) objectRef.element;
                Intrinsics.g(ips, "ips");
                strategyTable2.addStrategyList(str, ArraysKt.J0(ips));
                l();
                return ArraysKt.G0(ips);
            }
            return null;
        } catch (Throwable th2) {
            rf.b.f71178a.e(th2);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void g(Ref.ObjectRef table, String host, LocalDnsStrategy this$0) {
        Intrinsics.h(table, "$table");
        Intrinsics.h(host, "$host");
        Intrinsics.h(this$0, "this$0");
        try {
            if (((StrategyTable) table.element).checkIsExpire(host)) {
                ((StrategyTable) table.element).removeStrategy(host);
                InetAddress[] ips = InetAddress.getAllByName(host);
                if (ips != null && ips.length != 0) {
                    StrategyTable strategyTable = (StrategyTable) table.element;
                    Intrinsics.g(ips, "ips");
                    strategyTable.addStrategyList(host, ArraysKt.J0(ips));
                    this$0.l();
                }
            }
        } catch (Throwable th2) {
            rf.b.f71178a.e(th2);
        }
    }

    public final void j() {
        final String networkId = NetworkMonitor.INSTANCE.getNetworkId();
        if (this.f39838a.get(networkId) != null) {
            rf.b.f71178a.c("map already has this strategy.");
            return;
        }
        rf.c cVarA = rf.c.f71183c.a();
        if (cVarA == null) {
            return;
        }
        cVarA.b(new Runnable() {
            @Override
            public final void run() {
                LocalDnsStrategy.k(networkId, this);
            }
        });
    }

    public static final void k(String netId, LocalDnsStrategy this$0) {
        Intrinsics.h(netId, "$netId");
        Intrinsics.h(this$0, "this$0");
        if (Intrinsics.c(netId, TmcConstants.ROUTE_UNKNOWN)) {
            rf.b.f71178a.c("network is invalid.");
            return;
        }
        qf.b bVar = qf.b.f69628a;
        StrategyTable strategyTable = (StrategyTable) bVar.l(netId);
        if (strategyTable == null) {
            return;
        }
        strategyTable.removeExpired();
        StrategyTable strategyTable2 = (StrategyTable) this$0.f39838a.get(netId);
        if (strategyTable2 != null) {
            strategyTable.convertTable(strategyTable2);
        }
        this$0.f39838a.put(netId, strategyTable);
        rf.b.f71178a.c(Intrinsics.q("restore file ", strategyTable));
        bVar.j();
    }

    private final void l() {
        rf.c cVarA;
        if (!f39837d.compareAndSet(false, true) || (cVarA = rf.c.f71183c.a()) == null) {
            return;
        }
        cVarA.d(new Runnable() {
            @Override
            public void run() {
                try {
                    LocalDnsStrategy.f39837d.set(false);
                    String networkId = NetworkMonitor.INSTANCE.getNetworkId();
                    StrategyTable strategyTable = (StrategyTable) this.this$0.f39838a.get(networkId);
                    if (strategyTable == null) {
                        return;
                    }
                    rf.b.f71178a.c(Intrinsics.q("updateLocalDnsStrategy  table = ", strategyTable));
                    qf.b.f69628a.i(strategyTable, networkId);
                } catch (Throwable th2) {
                    rf.b.f71178a.e(th2);
                }
            }
        }, 2000L, TimeUnit.MILLISECONDS);
    }

    public final void h(Context context) {
        Intrinsics.h(context, "context");
        try {
            if (this.f39839b.compareAndSet(false, true)) {
                j();
                NetworkMonitor.INSTANCE.registerListener(new c(this));
            }
        } catch (Throwable th2) {
            rf.b.f71178a.e(th2);
        }
    }

    public final void i(String host, InetAddress address) {
        Intrinsics.h(host, "host");
        Intrinsics.h(address, "address");
        try {
            StrategyTable strategyTable = (StrategyTable) this.f39838a.get(NetworkMonitor.INSTANCE.getNetworkId());
            if (strategyTable == null) {
                return;
            }
            strategyTable.removeStrategy(host, address);
            l();
        } catch (Throwable th2) {
            rf.b.f71178a.e(th2);
        }
    }

    @Override
    public List lookup(String hostname) throws UnknownHostException {
        Intrinsics.h(hostname, "hostname");
        if (this.f39839b.get() && NetworkConfig.INSTANCE.isNetworkImproveEnable()) {
            List listF = f(hostname);
            if (listF != null) {
                return listF;
            }
            throw new UnknownHostException(hostname);
        }
        try {
            return Dns.SYSTEM.lookup(hostname);
        } catch (Throwable th2) {
            rf.b.f71178a.d("LocalDnsStrategy", th2.getMessage());
            throw new UnknownHostException(hostname);
        }
    }
}
