package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.WorkerThread;
import defpackage.y71;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.LinkedHashMap;
import java.util.List;

public final class C2445bi implements Za {
    public final Context a;
    public final C2791pf b;
    public final C2744ni c;
    public final Handler d;
    public final C2822ql e;
    public final C3012yc f;
    public final LinkedHashMap g;
    public final C2450bn h;
    public final List i;
    public C2738nc j;

    public C2445bi(Context context, C2791pf c2791pf, C2744ni c2744ni, Handler handler, C2822ql c2822ql) {
        this.a = context;
        this.b = c2791pf;
        this.c = c2744ni;
        this.d = handler;
        this.e = c2822ql;
        this.f = new C3012yc(context, c2791pf, c2744ni, c2822ql);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.g = linkedHashMap;
        this.h = new C2450bn(new C2495di(linkedHashMap));
        this.i = y71.n("20799a27-fa80-4b36-b2db-0f8141f24180", "0e5e9c33-f8c3-4568-86c5-2e4f57523f72");
    }

    @Override
    public final Za a() {
        return this;
    }

    public final C2445bi b() {
        return this;
    }

    @Override
    public final synchronized C2738nc a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, boolean z) {
        C2738nc c2738nc;
        try {
            c2738nc = this.j;
            if (c2738nc == null) {
                this.h.a(appMetricaConfig.apiKey);
                this.f.a(appMetricaConfig, publicLogger);
                c2738nc = new C2738nc(this.f);
                c2738nc.i = new C2886tb(this.d, c2738nc);
                C2822ql c2822ql = this.e;
                C2992xh c2992xh = c2738nc.b;
                if (c2822ql != null) {
                    c2992xh.b.setUuid(c2822ql.g());
                } else {
                    c2992xh.getClass();
                }
                c2738nc.a(appMetricaConfig, z);
                c2738nc.k();
                this.c.f.c = new C2420ai(c2738nc);
                this.g.put(appMetricaConfig.apiKey, c2738nc);
                this.j = c2738nc;
            }
        } catch (Throwable th) {
            throw th;
        }
        return c2738nc;
    }

    @Override
    @WorkerThread
    public final synchronized C2738nc b(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, boolean z) {
        C2738nc c2738nc;
        try {
            c2738nc = this.j;
            if (c2738nc != null) {
                this.f.a(appMetricaConfig, publicLogger);
                c2738nc.a(appMetricaConfig, z);
                C2879t4.i().getClass();
                this.g.put(appMetricaConfig.apiKey, c2738nc);
            } else {
                this.h.a(appMetricaConfig.apiKey);
                this.f.a(appMetricaConfig, publicLogger);
                c2738nc = new C2738nc(this.f);
                c2738nc.i = new C2886tb(this.d, c2738nc);
                C2822ql c2822ql = this.e;
                C2992xh c2992xh = c2738nc.b;
                if (c2822ql != null) {
                    c2992xh.b.setUuid(c2822ql.g());
                } else {
                    c2992xh.getClass();
                }
                c2738nc.a(appMetricaConfig, z);
                c2738nc.k();
                this.c.f.c = new C2420ai(c2738nc);
                this.g.put(appMetricaConfig.apiKey, c2738nc);
                C2879t4.i().getClass();
                this.j = c2738nc;
            }
        } catch (Throwable th) {
            throw th;
        }
        return c2738nc;
    }

    @Override
    public final synchronized void a(ReporterConfig reporterConfig) {
        try {
            if (this.g.containsKey(reporterConfig.apiKey)) {
                LoggerStorage.getOrCreatePublicLogger(reporterConfig.apiKey).warning("Reporter with apiKey=%s already exists.", ApiKeyUtils.createPartialApiKey(reporterConfig.apiKey));
            } else {
                b(reporterConfig);
                ImportantLogger.INSTANCE.info("AppMetrica", "Activate reporter with APIKey " + ApiKeyUtils.createPartialApiKey(reporterConfig.apiKey), new Object[0]);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized Ya b(ReporterConfig reporterConfig) {
        Ya ya;
        try {
            ya = (Ya) this.g.get(reporterConfig.apiKey);
            if (ya == null) {
                if (!this.i.contains(reporterConfig.apiKey)) {
                    this.e.i();
                }
                Context context = this.a;
                Ec ec = new Ec(context, this.b, reporterConfig, this.c, new T9(context));
                ec.i = new C2886tb(this.d, ec);
                C2822ql c2822ql = this.e;
                C2992xh c2992xh = ec.b;
                if (c2822ql != null) {
                    c2992xh.b.setUuid(c2822ql.g());
                } else {
                    c2992xh.getClass();
                }
                ec.k();
                this.g.put(reporterConfig.apiKey, ec);
                ya = ec;
            }
        } catch (Throwable th) {
            throw th;
        }
        return ya;
    }

    @Override
    public final synchronized InterfaceC2438bb b(AppMetricaConfig appMetricaConfig) {
        T2 c2931v6;
        try {
            c2931v6 = this.j;
            if (c2931v6 == null) {
                Context context = this.a;
                c2931v6 = new C2931v6(context, this.b, appMetricaConfig, this.c, new T9(context));
                c2931v6.i = new C2886tb(this.d, c2931v6);
                C2822ql c2822ql = this.e;
                C2992xh c2992xh = c2931v6.b;
                if (c2822ql != null) {
                    c2992xh.b.setUuid(c2822ql.g());
                } else {
                    c2992xh.getClass();
                }
                c2931v6.b(appMetricaConfig.errorEnvironment);
                c2931v6.k();
            }
        } catch (Throwable th) {
            throw th;
        }
        return c2931v6;
    }
}
