package pb;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class d {

    private final kc.a f69119a;

    private volatile rb.a f69120b;

    private volatile sb.b f69121c;

    private final List f69122d;

    public d(kc.a aVar) {
        this(aVar, new sb.c(), new rb.f());
    }

    private void f() {
        this.f69119a.a(new kc.a.InterfaceC0789a() {
            @Override
            public final void a(kc.b bVar) {
                this.f69118a.i(bVar);
            }
        });
    }

    public void g(String str, Bundle bundle) {
        this.f69120b.a(str, bundle);
    }

    public void h(sb.a aVar) {
        synchronized (this) {
            try {
                if (this.f69121c instanceof sb.c) {
                    this.f69122d.add(aVar);
                }
                this.f69121c.a(aVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void i(kc.b bVar) {
        qb.g.f().b("AnalyticsConnector now available.");
        mb.a aVar = (mb.a) bVar.get();
        rb.e eVar = new rb.e(aVar);
        e eVar2 = new e();
        if (j(aVar, eVar2) == null) {
            qb.g.f().k("Could not register Firebase Analytics listener; a listener is already registered.");
            return;
        }
        qb.g.f().b("Registered Firebase Analytics listener.");
        rb.d dVar = new rb.d();
        rb.c cVar = new rb.c(eVar, 500, TimeUnit.MILLISECONDS);
        synchronized (this) {
            try {
                Iterator it = this.f69122d.iterator();
                while (it.hasNext()) {
                    dVar.a((sb.a) it.next());
                }
                eVar2.d(dVar);
                eVar2.e(cVar);
                this.f69121c = dVar;
                this.f69120b = cVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static mb.a.InterfaceC0812a j(mb.a aVar, e eVar) {
        mb.a.InterfaceC0812a interfaceC0812aD = aVar.d("clx", eVar);
        if (interfaceC0812aD == null) {
            qb.g.f().b("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            interfaceC0812aD = aVar.d(AppMeasurement.CRASH_ORIGIN, eVar);
            if (interfaceC0812aD != null) {
                qb.g.f().k("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
            }
        }
        return interfaceC0812aD;
    }

    public rb.a d() {
        return new rb.a() {
            @Override
            public final void a(String str, Bundle bundle) {
                this.f69117a.g(str, bundle);
            }
        };
    }

    public sb.b e() {
        return new sb.b() {
            @Override
            public final void a(sb.a aVar) {
                this.f69116a.h(aVar);
            }
        };
    }

    public d(kc.a aVar, sb.b bVar, rb.a aVar2) {
        this.f69119a = aVar;
        this.f69121c = bVar;
        this.f69122d = new ArrayList();
        this.f69120b = aVar2;
        f();
    }
}
