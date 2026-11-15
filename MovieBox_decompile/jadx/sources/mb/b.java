package mb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdy;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

public class b implements mb.a {

    private static volatile mb.a f66365c;

    private final AppMeasurementSdk f66366a;

    final Map f66367b;

    class a implements mb.a.InterfaceC0812a {

        private final String f66368a;

        private final b f66369b;

        a(b bVar, String str) {
            this.f66368a = str;
            this.f66369b = bVar;
        }
    }

    private b(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.checkNotNull(appMeasurementSdk);
        this.f66366a = appMeasurementSdk;
        this.f66367b = new ConcurrentHashMap();
    }

    public static mb.a h(f fVar, Context context, hc.d dVar) {
        Preconditions.checkNotNull(fVar);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(dVar);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (f66365c == null) {
            synchronized (b.class) {
                try {
                    if (f66365c == null) {
                        Bundle bundle = new Bundle(1);
                        if (fVar.u()) {
                            dVar.b(com.google.firebase.b.class, new Executor() {
                                @Override
                                public final void execute(Runnable runnable) {
                                    runnable.run();
                                }
                            }, new hc.b() {
                                @Override
                                public final void a(hc.a aVar) {
                                    b.i(aVar);
                                }
                            });
                            bundle.putBoolean("dataCollectionDefaultEnabled", fVar.t());
                        }
                        f66365c = new b(zzdy.zza(context, (String) null, (String) null, (String) null, bundle).zzb());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f66365c;
    }

    static void i(hc.a aVar) {
        throw null;
    }

    private final boolean j(String str) {
        return (str.isEmpty() || !this.f66367b.containsKey(str) || this.f66367b.get(str) == null) ? false : true;
    }

    @Override
    public void a(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (com.google.firebase.analytics.connector.internal.a.j(str) && com.google.firebase.analytics.connector.internal.a.e(str2, bundle) && com.google.firebase.analytics.connector.internal.a.g(str, str2, bundle)) {
            com.google.firebase.analytics.connector.internal.a.d(str, str2, bundle);
            this.f66366a.logEvent(str, str2, bundle);
        }
    }

    @Override
    public void b(String str, String str2, Object obj) {
        if (com.google.firebase.analytics.connector.internal.a.j(str) && com.google.firebase.analytics.connector.internal.a.f(str, str2)) {
            this.f66366a.setUserProperty(str, str2, obj);
        }
    }

    @Override
    public Map c(boolean z10) {
        return this.f66366a.getUserProperties(null, null, z10);
    }

    @Override
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (str2 == null || com.google.firebase.analytics.connector.internal.a.e(str2, bundle)) {
            this.f66366a.clearConditionalUserProperty(str, str2, bundle);
        }
    }

    @Override
    public mb.a.InterfaceC0812a d(String str, mb.a.b bVar) {
        Object fVar;
        Preconditions.checkNotNull(bVar);
        if (!com.google.firebase.analytics.connector.internal.a.j(str) || j(str)) {
            return null;
        }
        AppMeasurementSdk appMeasurementSdk = this.f66366a;
        if (AppMeasurement.FIAM_ORIGIN.equals(str)) {
            fVar = new com.google.firebase.analytics.connector.internal.d(appMeasurementSdk, bVar);
        } else {
            fVar = "clx".equals(str) ? new com.google.firebase.analytics.connector.internal.f(appMeasurementSdk, bVar) : null;
        }
        if (fVar == null) {
            return null;
        }
        this.f66367b.put(str, fVar);
        return new a(this, str);
    }

    @Override
    public void e(mb.a.c cVar) {
        if (com.google.firebase.analytics.connector.internal.a.h(cVar)) {
            this.f66366a.setConditionalUserProperty(com.google.firebase.analytics.connector.internal.a.a(cVar));
        }
    }

    @Override
    public int f(String str) {
        return this.f66366a.getMaxUserProperties(str);
    }

    @Override
    public List g(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Iterator<Bundle> it = this.f66366a.getConditionalUserProperties(str, str2).iterator();
        while (it.hasNext()) {
            arrayList.add(com.google.firebase.analytics.connector.internal.a.c(it.next()));
        }
        return arrayList;
    }
}
