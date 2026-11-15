package xc;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Constants$CounterNames;
import com.google.firebase.perf.v1.ApplicationProcessState;
import com.google.firebase.perf.v1.NetworkRequestMetric;
import java.lang.ref.WeakReference;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

public class k implements com.google.firebase.perf.application.a.b {

    private static final uc.a f75295r = uc.a.e();

    private static final k f75296s = new k();

    private final Map f75297a;

    private com.google.firebase.f f75300d;

    private rc.e f75301e;

    private lc.e f75302f;

    private kc.b f75303g;

    private b f75304h;

    private Context f75306j;

    private com.google.firebase.perf.config.a f75307k;

    private d f75308l;

    private com.google.firebase.perf.application.a f75309m;

    private com.google.firebase.perf.v1.c.b f75310n;

    private String f75311o;

    private String f75312p;

    private final ConcurrentLinkedQueue f75298b = new ConcurrentLinkedQueue();

    private final AtomicBoolean f75299c = new AtomicBoolean(false);

    private boolean f75313q = false;

    private ExecutorService f75305i = new ThreadPoolExecutor(0, 1, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());

    private k() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f75297a = concurrentHashMap;
        concurrentHashMap.put("KEY_AVAILABLE_TRACES_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", 50);
    }

    private com.google.firebase.perf.v1.g D(com.google.firebase.perf.v1.g.b bVar, ApplicationProcessState applicationProcessState) {
        G();
        com.google.firebase.perf.v1.c.b bVarN = this.f75310n.n(applicationProcessState);
        if (bVar.e() || bVar.b()) {
            bVarN = ((com.google.firebase.perf.v1.c.b) bVarN.mo293clone()).k(j());
        }
        return (com.google.firebase.perf.v1.g) bVar.d(bVarN).build();
    }

    public void E() {
        Context contextK = this.f75300d.k();
        this.f75306j = contextK;
        this.f75311o = contextK.getPackageName();
        this.f75307k = com.google.firebase.perf.config.a.g();
        this.f75308l = new d(this.f75306j, new com.google.firebase.perf.util.g(100L, 1L, TimeUnit.MINUTES), 500L);
        this.f75309m = com.google.firebase.perf.application.a.b();
        this.f75304h = new b(this.f75303g, this.f75307k.a());
        h();
    }

    private void F(com.google.firebase.perf.v1.g.b bVar, ApplicationProcessState applicationProcessState) {
        if (!u()) {
            if (s(bVar)) {
                f75295r.b("Transport is not initialized yet, %s will be queued for to be dispatched later", o(bVar));
                this.f75298b.add(new c(bVar, applicationProcessState));
                return;
            }
            return;
        }
        com.google.firebase.perf.v1.g gVarD = D(bVar, applicationProcessState);
        if (t(gVarD)) {
            g(gVarD);
            SessionManager.getInstance().stopGaugeCollectionIfSessionRunningTooLong();
        }
    }

    private void G() {
        String str;
        if (this.f75307k.K()) {
            if (!this.f75310n.j() || this.f75313q) {
                try {
                    str = (String) Tasks.await(this.f75302f.getId(), 60000L, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e10) {
                    f75295r.d("Task to retrieve Installation Id is interrupted: %s", e10.getMessage());
                    str = null;
                } catch (ExecutionException e11) {
                    f75295r.d("Unable to retrieve Installation Id: %s", e11.getMessage());
                    str = null;
                } catch (TimeoutException e12) {
                    f75295r.d("Task to retrieve Installation Id is timed out: %s", e12.getMessage());
                    str = null;
                }
                if (TextUtils.isEmpty(str)) {
                    f75295r.j("Firebase Installation Id is empty, contact Firebase Support for debugging.");
                } else {
                    this.f75310n.m(str);
                }
            }
        }
    }

    private void H() {
        if (this.f75301e == null && u()) {
            this.f75301e = rc.e.c();
        }
    }

    private void g(com.google.firebase.perf.v1.g gVar) {
        if (gVar.e()) {
            f75295r.g("Logging %s. In a minute, visit the Firebase console to view your data: %s", o(gVar), i(gVar.g()));
        } else {
            f75295r.g("Logging %s", o(gVar));
        }
        this.f75304h.b(gVar);
    }

    private void h() {
        this.f75309m.k(new WeakReference(f75296s));
        com.google.firebase.perf.v1.c.b bVarU = com.google.firebase.perf.v1.c.u();
        this.f75310n = bVarU;
        bVarU.o(this.f75300d.n().c()).l(com.google.firebase.perf.v1.a.n().d(this.f75311o).h(rc.a.f70944b).j(p(this.f75306j)));
        this.f75299c.set(true);
        while (!this.f75298b.isEmpty()) {
            final c cVar = (c) this.f75298b.poll();
            if (cVar != null) {
                this.f75305i.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.f75293a.v(cVar);
                    }
                });
            }
        }
    }

    private String i(com.google.firebase.perf.v1.i iVar) {
        String strE = iVar.E();
        return strE.startsWith("_st_") ? uc.b.c(this.f75312p, this.f75311o, strE) : uc.b.a(this.f75312p, this.f75311o, strE);
    }

    private Map j() {
        H();
        rc.e eVar = this.f75301e;
        return eVar != null ? eVar.b() : Collections.emptyMap();
    }

    public static k k() {
        return f75296s;
    }

    private static String l(com.google.firebase.perf.v1.f fVar) {
        return String.format(Locale.ENGLISH, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)", Boolean.valueOf(fVar.t()), Integer.valueOf(fVar.q()), Integer.valueOf(fVar.p()));
    }

    private static String m(NetworkRequestMetric networkRequestMetric) {
        return String.format(Locale.ENGLISH, "network request trace: %s (responseCode: %s, responseTime: %sms)", networkRequestMetric.I(), networkRequestMetric.L() ? String.valueOf(networkRequestMetric.A()) : NetworkUtil.NETWORK_TYPE_UNKNOWN, new DecimalFormat("#.####").format((networkRequestMetric.P() ? networkRequestMetric.G() : 0L) / 1000.0d));
    }

    private static String n(com.google.firebase.perf.v1.i iVar) {
        return String.format(Locale.ENGLISH, "trace metric: %s (duration: %sms)", iVar.E(), new DecimalFormat("#.####").format(iVar.B() / 1000.0d));
    }

    private static String o(yc.a aVar) {
        if (aVar.e()) {
            return n(aVar.g());
        }
        if (aVar.b()) {
            return m(aVar.c());
        }
        return aVar.a() ? l(aVar.i()) : "log";
    }

    private static String p(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            return str == null ? "" : str;
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    private void q(com.google.firebase.perf.v1.g gVar) {
        if (gVar.e()) {
            this.f75309m.d(Constants$CounterNames.TRACE_EVENT_RATE_LIMITED.toString(), 1L);
        } else if (gVar.b()) {
            this.f75309m.d(Constants$CounterNames.NETWORK_TRACE_EVENT_RATE_LIMITED.toString(), 1L);
        }
    }

    private boolean s(yc.a aVar) {
        Integer num = (Integer) this.f75297a.get("KEY_AVAILABLE_TRACES_FOR_CACHING");
        int iIntValue = num.intValue();
        Integer num2 = (Integer) this.f75297a.get("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING");
        int iIntValue2 = num2.intValue();
        Integer num3 = (Integer) this.f75297a.get("KEY_AVAILABLE_GAUGES_FOR_CACHING");
        int iIntValue3 = num3.intValue();
        if (aVar.e() && iIntValue > 0) {
            this.f75297a.put("KEY_AVAILABLE_TRACES_FOR_CACHING", Integer.valueOf(iIntValue - 1));
            return true;
        }
        if (aVar.b() && iIntValue2 > 0) {
            this.f75297a.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", Integer.valueOf(iIntValue2 - 1));
            return true;
        }
        if (!aVar.a() || iIntValue3 <= 0) {
            f75295r.b("%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d).", o(aVar), num, num2, num3);
            return false;
        }
        this.f75297a.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", Integer.valueOf(iIntValue3 - 1));
        return true;
    }

    private boolean t(com.google.firebase.perf.v1.g gVar) {
        if (!this.f75307k.K()) {
            f75295r.g("Performance collection is not enabled, dropping %s", o(gVar));
            return false;
        }
        if (!gVar.l().q()) {
            f75295r.k("App Instance ID is null or empty, dropping %s", o(gVar));
            return false;
        }
        if (!vc.e.b(gVar, this.f75306j)) {
            f75295r.k("Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values.", o(gVar));
            return false;
        }
        if (!this.f75308l.h(gVar)) {
            q(gVar);
            f75295r.g("Event dropped due to device sampling - %s", o(gVar));
            return false;
        }
        if (!this.f75308l.g(gVar)) {
            return true;
        }
        q(gVar);
        f75295r.g("Rate limited (per device) - %s", o(gVar));
        return false;
    }

    public void v(c cVar) {
        F(cVar.f75262a, cVar.f75263b);
    }

    public void w(com.google.firebase.perf.v1.i iVar, ApplicationProcessState applicationProcessState) {
        F(com.google.firebase.perf.v1.g.n().k(iVar), applicationProcessState);
    }

    public void x(NetworkRequestMetric networkRequestMetric, ApplicationProcessState applicationProcessState) {
        F(com.google.firebase.perf.v1.g.n().j(networkRequestMetric), applicationProcessState);
    }

    public void y(com.google.firebase.perf.v1.f fVar, ApplicationProcessState applicationProcessState) {
        F(com.google.firebase.perf.v1.g.n().h(fVar), applicationProcessState);
    }

    public void z() {
        this.f75308l.a(this.f75313q);
    }

    public void A(final com.google.firebase.perf.v1.f fVar, final ApplicationProcessState applicationProcessState) {
        this.f75305i.execute(new Runnable() {
            @Override
            public final void run() {
                this.f75283a.y(fVar, applicationProcessState);
            }
        });
    }

    public void B(final NetworkRequestMetric networkRequestMetric, final ApplicationProcessState applicationProcessState) {
        this.f75305i.execute(new Runnable() {
            @Override
            public final void run() {
                this.f75289a.x(networkRequestMetric, applicationProcessState);
            }
        });
    }

    public void C(final com.google.firebase.perf.v1.i iVar, final ApplicationProcessState applicationProcessState) {
        this.f75305i.execute(new Runnable() {
            @Override
            public final void run() {
                this.f75286a.w(iVar, applicationProcessState);
            }
        });
    }

    @Override
    public void onUpdateAppState(ApplicationProcessState applicationProcessState) {
        this.f75313q = applicationProcessState == ApplicationProcessState.FOREGROUND;
        if (u()) {
            this.f75305i.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f75282a.z();
                }
            });
        }
    }

    public void r(com.google.firebase.f fVar, lc.e eVar, kc.b bVar) {
        this.f75300d = fVar;
        this.f75312p = fVar.n().e();
        this.f75302f = eVar;
        this.f75303g = bVar;
        this.f75305i.execute(new Runnable() {
            @Override
            public final void run() {
                this.f75292a.E();
            }
        });
    }

    public boolean u() {
        return this.f75299c.get();
    }
}
