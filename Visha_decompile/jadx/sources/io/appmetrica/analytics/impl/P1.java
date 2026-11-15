package io.appmetrica.analytics.impl;

import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.text.TextUtils;
import defpackage.y45;
import io.appmetrica.analytics.impl.P1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public final class P1 {
    public final C2960wa a = new C2960wa();
    public final LinkedHashMap b = new LinkedHashMap();
    public final LinkedHashMap c = new LinkedHashMap();

    public final void a() {
    }

    public final void b() {
    }

    public final void c(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.a.a(action, Integer.valueOf(a(intent)));
            }
            for (Map.Entry entry : this.b.entrySet()) {
                O1 o1 = (O1) entry.getKey();
                if (((N1) entry.getValue()).a(intent)) {
                    o1.a(intent);
                }
            }
        }
    }

    public final void d(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                C2960wa c2960wa = this.a;
                Integer numValueOf = Integer.valueOf(a(intent));
                Collection collection = (Collection) c2960wa.a.get(action);
                if (collection != null && collection.remove(numValueOf)) {
                    if (collection.isEmpty() && c2960wa.b) {
                        c2960wa.a.remove(action);
                    }
                    new ArrayList(collection);
                }
            }
            for (Map.Entry entry : this.c.entrySet()) {
                O1 o1 = (O1) entry.getKey();
                if (((N1) entry.getValue()).a(intent)) {
                    o1.a(intent);
                }
            }
        }
    }

    public final void a(Intent intent, int i) {
    }

    public final void b(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.a.a(action, Integer.valueOf(a(intent)));
            }
            for (Map.Entry entry : this.b.entrySet()) {
                O1 o1 = (O1) entry.getKey();
                if (((N1) entry.getValue()).a(intent)) {
                    o1.a(intent);
                }
            }
        }
    }

    public final void a(Intent intent, int i, int i2) {
    }

    public final void a(Configuration configuration) {
    }

    public final void a(O1 o1) {
        this.c.put(o1, new N1() {
            @Override
            public final boolean a(Intent intent) {
                return P1.a(this.a, intent);
            }
        });
    }

    public static final boolean a(P1 p1, Intent intent) {
        Collection collection;
        p1.getClass();
        return y45.e("io.appmetrica.analytics.IAppMetricaService", intent.getAction()) && ((collection = (Collection) p1.a.a.get("io.appmetrica.analytics.IAppMetricaService")) == null || collection.size() == 0);
    }

    public final void c(O1 o1) {
        this.b.put(o1, new N1() {
            @Override
            public final boolean a(Intent intent) {
                return P1.c(this.a, intent);
            }
        });
    }

    public static final boolean c(P1 p1, Intent intent) {
        p1.getClass();
        return y45.e("io.appmetrica.analytics.IAppMetricaService", intent.getAction());
    }

    public final void b(O1 o1) {
        this.b.put(o1, new N1() {
            @Override
            public final boolean a(Intent intent) {
                return P1.b(this.a, intent);
            }
        });
    }

    public static final boolean b(P1 p1, Intent intent) {
        Collection collection;
        p1.getClass();
        return y45.e("io.appmetrica.analytics.IAppMetricaService", intent.getAction()) && (collection = (Collection) p1.a.a.get("io.appmetrica.analytics.IAppMetricaService")) != null && collection.size() == 1;
    }

    public static int a(Intent intent) {
        Uri data = intent.getData();
        if (data != null && y45.e(data.getPath(), "/client")) {
            try {
                String queryParameter = data.getQueryParameter("pid");
                y45.g(queryParameter);
                return Integer.parseInt(queryParameter);
            } catch (Throwable unused) {
            }
        }
        return -1;
    }
}
