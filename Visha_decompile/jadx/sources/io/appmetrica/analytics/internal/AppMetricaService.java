package io.appmetrica.analytics.internal;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.IBinder;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.impl.A1;
import io.appmetrica.analytics.impl.B1;
import io.appmetrica.analytics.impl.BinderC2851s1;
import io.appmetrica.analytics.impl.C2471cj;
import io.appmetrica.analytics.impl.C2496dj;
import io.appmetrica.analytics.impl.C2826r1;
import io.appmetrica.analytics.impl.C2855s5;
import io.appmetrica.analytics.impl.C2910ua;
import io.appmetrica.analytics.impl.C2926v1;
import io.appmetrica.analytics.impl.C2976x1;
import io.appmetrica.analytics.impl.C3001y1;
import io.appmetrica.analytics.impl.C3026z1;
import io.appmetrica.analytics.impl.F1;
import io.appmetrica.analytics.impl.I1;
import io.appmetrica.analytics.impl.L1;
import io.appmetrica.analytics.impl.Pj;
import io.appmetrica.analytics.logger.common.BaseReleaseLogger;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

public class AppMetricaService extends Service {
    private static F1 c;
    private final C2826r1 a = new C2826r1(this);
    private final a b = new a();

    @Override
    public IBinder onBind(Intent intent) {
        String action = intent.getAction();
        IBinder binderC2851s1 = (action == null || !action.startsWith("io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK")) ? this.b : new BinderC2851s1();
        F1 f1 = c;
        f1.a.execute(new C3026z1(f1, intent));
        return binderC2851s1;
    }

    @Override
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        F1 f1 = c;
        f1.a.execute(new C2926v1(f1, configuration));
    }

    @Override
    public void onCreate() {
        super.onCreate();
        C2910ua.a(getApplicationContext());
        BaseReleaseLogger.init(getApplicationContext());
        F1 f1 = c;
        if (f1 == null) {
            Context applicationContext = getApplicationContext();
            I1 i1 = new I1(applicationContext, this.a, new C2855s5(applicationContext));
            Pj pj = C2910ua.E.v;
            L1 l1 = new L1(i1);
            LinkedHashMap linkedHashMap = pj.a;
            Object arrayList = linkedHashMap.get(1);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(1, arrayList);
            }
            ((List) arrayList).add(l1);
            c = new F1(C2910ua.E.d.b(), i1);
        } else {
            f1.b.a(this.a);
        }
        C2910ua c2910ua = C2910ua.E;
        C2496dj c2496dj = new C2496dj(c);
        synchronized (c2910ua) {
            c2910ua.f = new C2471cj(c2910ua.a, c2496dj);
        }
        c.onCreate();
    }

    @Override
    public void onDestroy() {
        c.onDestroy();
        super.onDestroy();
    }

    @Override
    public void onRebind(Intent intent) {
        super.onRebind(intent);
        F1 f1 = c;
        f1.a.execute(new A1(f1, intent));
    }

    @Override
    public void onStart(Intent intent, int i) {
        F1 f1 = c;
        f1.a.execute(new C2976x1(f1, intent, i));
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        F1 f1 = c;
        f1.a.execute(new C3001y1(f1, intent, i, i2));
        return 2;
    }

    @Override
    public boolean onUnbind(Intent intent) {
        F1 f1 = c;
        f1.a.execute(new B1(f1, intent));
        String action = intent.getAction();
        return (action == null || !action.startsWith("io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK")) && intent.getData() != null;
    }
}
