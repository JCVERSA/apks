package com.snaptube.premium.track;

import com.snaptube.premium.selfupgrade.incremental_upgrade.UpgradeConfig;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import o.wk6;
import o.x83;

public class DurationTracker {
    public static DurationTracker c;
    public final Map a = new ConcurrentHashMap();
    public final wk6 b = new x83();

    public enum Action {
        APPLICATION_INIT("application_init"),
        HOME_PAGE_INIT("home_page_init"),
        HOME_PAGE_DATA_LOADING("home_page_data_loading"),
        DOWNLOAD(NativeAdPresenter.DOWNLOAD),
        SEARCH("search");

        private final String action;

        Action(String str) {
            this.action = str;
        }

        public String getName() {
            return this.action;
        }
    }

    public enum Phase {
        PENDING(UpgradeConfig.STATUS_PENDING),
        DOWNLOADING("downloading"),
        TOTAL("total");

        private final String phase;

        Phase(String str) {
            this.phase = str;
        }

        public String getName() {
            return this.phase;
        }
    }

    public static class a {
        public final String a;
        public final Action b;

        public a(String str, Action action) {
            this.a = str;
            this.b = action;
        }

        public static a a(String str, Action action) {
            return new a(str, action);
        }

        public Action b() {
            return this.b;
        }

        public String c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (aVar.b != this.b) {
                return false;
            }
            String str = this.a;
            return (str == null && aVar.a == null) || (str != null && str.equals(aVar.a));
        }

        public int hashCode() {
            String str = this.a;
            return str == null ? this.b.hashCode() : str.hashCode() + this.b.hashCode();
        }
    }

    public static synchronized DurationTracker d() {
        try {
            if (c == null) {
                c = new DurationTracker();
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public synchronized void a(a aVar) {
        this.a.remove(aVar);
    }

    public synchronized void b(a aVar, Map map, Phase... phaseArr) {
        Ticker ticker = (Ticker) this.a.get(aVar);
        if (ticker == null) {
            return;
        }
        boolean z = false;
        for (Phase phase : phaseArr) {
            if (phase == Phase.TOTAL) {
                z = true;
            }
            try {
                ticker.e(phase.getName());
            } catch (Ticker.TickerException unused) {
                this.a.remove(aVar);
                return;
            }
        }
        ticker.c(map);
        if (z) {
            this.a.remove(aVar);
            this.b.a(ticker);
        }
    }

    public void c(a aVar, Phase... phaseArr) {
        b(aVar, null, phaseArr);
    }

    public synchronized void e(a aVar, Map map, Phase... phaseArr) {
        try {
            Ticker ticker = (Ticker) this.a.get(aVar);
            if (ticker == null) {
                for (Phase phase : phaseArr) {
                    if (phase == Phase.TOTAL) {
                        ticker = new Ticker(aVar.c(), aVar.b().getName());
                        ticker.c(map);
                        this.a.put(aVar, ticker);
                        break;
                    }
                }
            }
            if (ticker != null) {
                for (Phase phase2 : phaseArr) {
                    ticker.d(phase2.getName());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
