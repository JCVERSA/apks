package o;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class ig {
    public final uj1 a;
    public volatile jg b;
    public volatile ad0 c;
    public final List d;

    public ig(uj1 uj1Var) {
        this(uj1Var, new io1(), new dg8());
    }

    public ig(uj1 uj1Var, ad0 ad0Var, jg jgVar) {
        this.a = uj1Var;
        this.c = ad0Var;
        this.d = new ArrayList();
        this.b = jgVar;
        f();
    }

    public static void a(ig igVar, aa6 aa6Var) {
        igVar.i(aa6Var);
    }

    public static void b(ig igVar, String str, Bundle bundle) {
        igVar.g(str, bundle);
    }

    public static void c(ig igVar, zc0 zc0Var) {
        igVar.h(zc0Var);
    }

    public static dg.a j(dg dgVar, i71 i71Var) {
        dg.a aVarE = dgVar.e("clx", i71Var);
        if (aVarE == null) {
            nb4.f().b("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            aVarE = dgVar.e(AppMeasurement.CRASH_ORIGIN, i71Var);
            if (aVarE != null) {
                nb4.f().k("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
            }
        }
        return aVarE;
    }

    public jg d() {
        return new gg(this);
    }

    public ad0 e() {
        return new fg(this);
    }

    public final void f() {
        this.a.a(new hg(this));
    }

    public final void g(String str, Bundle bundle) {
        this.b.a(str, bundle);
    }

    public final void h(zc0 zc0Var) {
        synchronized (this) {
            try {
                if (this.c instanceof io1) {
                    this.d.add(zc0Var);
                }
                this.c.a(zc0Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i(aa6 aa6Var) {
        nb4.f().b("AnalyticsConnector now available.");
        dg dgVar = (dg) aa6Var.get();
        y71 y71Var = new y71(dgVar);
        i71 i71Var = new i71();
        if (j(dgVar, i71Var) == null) {
            nb4.f().k("Could not register Firebase Analytics listener; a listener is already registered.");
            return;
        }
        nb4.f().b("Registered Firebase Analytics listener.");
        yc0 yc0Var = new yc0();
        mb0 mb0Var = new mb0(y71Var, 500, TimeUnit.MILLISECONDS);
        synchronized (this) {
            try {
                Iterator it2 = this.d.iterator();
                while (it2.hasNext()) {
                    yc0Var.a((zc0) it2.next());
                }
                i71Var.d(yc0Var);
                i71Var.e(mb0Var);
                this.c = yc0Var;
                this.b = mb0Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
