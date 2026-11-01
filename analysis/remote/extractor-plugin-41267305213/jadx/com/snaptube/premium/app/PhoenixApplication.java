package com.snaptube.premium.app;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.appcompat.app.AppCompatDelegate;
import com.mbridge.msdk.MBridgeConstans;
import com.snaptube.base.BaseApplication;
import com.snaptube.media.MediaFileScanner;
import com.snaptube.premium.ConfigurationObservable;
import com.snaptube.premium.app.task.AbTestUpdateExposureTask;
import com.snaptube.premium.app.task.AppOptimizeKitTask;
import com.snaptube.premium.app.task.ErrorHandleTask;
import com.snaptube.premium.app.task.FeedbackFetchTask;
import com.snaptube.premium.app.task.SensorInitTask;
import com.snaptube.premium.home.decoration.HomeDecorationHelper;
import com.snaptube.premium.log.LaunchLogger;
import com.snaptube.premium.log.network.DnsDetector;
import com.snaptube.taskManager.TaskMessageCenter;
import com.snaptube.titan.TitanConsts;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.base.utils.ThreadPool;
import dagger.Lazy;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import me.weishu.reflection.Reflection;
import o.a58;
import o.ai4;
import o.ak1;
import o.ao;
import o.av;
import o.az7;
import o.b99;
import o.ba3;
import o.bc;
import o.bg5;
import o.bj7;
import o.bl8;
import o.c35;
import o.cd0;
import o.ce6;
import o.ce7;
import o.cg3;
import o.cj0;
import o.cj7;
import o.cq0;
import o.cr5;
import o.dr5;
import o.dv8;
import o.e29;
import o.eg2;
import o.em;
import o.er5;
import o.fc1;
import o.fm2;
import o.fp3;
import o.g71;
import o.ge;
import o.gi3;
import o.gl7;
import o.gq6;
import o.ha4;
import o.hl7;
import o.hs;
import o.i02;
import o.k04;
import o.k17;
import o.k6;
import o.l06;
import o.le;
import o.lq2;
import o.m57;
import o.mi9;
import o.n23;
import o.nw5;
import o.o56;
import o.oe8;
import o.oh8;
import o.p23;
import o.pb1;
import o.pf6;
import o.pi2;
import o.pz;
import o.qb1;
import o.qm4;
import o.qq1;
import o.qs;
import o.r18;
import o.r24;
import o.r56;
import o.rj5;
import o.rl5;
import o.s5;
import o.ti3;
import o.u81;
import o.ug5;
import o.uh;
import o.ui4;
import o.uj8;
import o.up;
import o.uz3;
import o.v39;
import o.vc;
import o.vq6;
import o.w11;
import o.wh8;
import o.wj7;
import o.x39;
import o.x84;
import o.xh6;
import o.xi7;
import o.xq1;
import o.xq6;
import o.xw6;
import o.y08;
import o.y09;
import o.y39;
import o.y48;
import o.y63;
import o.y84;
import o.yi2;
import o.yk6;
import o.yz1;
import o.z54;
import o.z84;
import o.z96;
import o.zd3;
import o.zh4;
import o.zq0;

public class PhoenixApplication extends BaseApplication implements com.snaptube.premium.app.d.b, z84, androidx.work.a.c {
    public static Handler A;
    public static cj7 B;
    public static MediaFileScanner C;
    public static volatile com.snaptube.plugin.a D;
    public static final LaunchLogger E;
    public static final List F;
    public static boolean G;
    public static final String z;
    public rj5 g;
    public uj8 h;
    public com.snaptube.premium.ads.a i;
    public volatile Lazy k;
    public rx.subjects.a l;
    public r18 m;
    public volatile com.snaptube.premium.app.d s;
    public volatile String t;
    public volatile String u;
    public boolean x;
    public Object j = new Object();

    @Inject
    Lazy<ti3> n = xq1.a(new a());

    @Inject
    @Named(MBridgeConstans.DYNAMIC_VIEW_WX_APP)
    Lazy<bg5> f410o = xq1.a(new b());

    @Inject
    Lazy<zd3> p = xq1.a(new c());

    @Inject
    @Named("YouTubePlayer")
    Lazy<cg3> q = xq1.a(new d());
    public Object r = new Object();
    public k04 v = k04.a;
    public av w = new av();
    public gi3 y = new ce7(new h(), "initUserComponent");

    public class AnonymousClass1 extends ArrayList<String> {
        public AnonymousClass1() {
            add("com.mbridge.msdk.reward.player.MBRewardVideoActivity");
            add("com.mbridge.msdk.activity.MBCommonActivity");
            add("com.mbridge.msdk.out.LoadingActivity");
        }
    }

    public class a implements z96 {
        public a() {
        }

        public ti3 a() {
            PhoenixApplication.k(PhoenixApplication.this);
            PhoenixApplication.i(PhoenixApplication.this).get();
            return (ti3) PhoenixApplication.this.n.get();
        }

        @Override
        public Object get() {
            return a();
        }
    }

    public class b implements z96 {
        public b() {
        }

        public bg5 a() {
            PhoenixApplication.k(PhoenixApplication.this);
            PhoenixApplication.i(PhoenixApplication.this).get();
            return (bg5) PhoenixApplication.this.f410o.get();
        }

        @Override
        public Object get() {
            return a();
        }
    }

    public class c implements z96 {
        public c() {
        }

        public zd3 a() {
            PhoenixApplication.k(PhoenixApplication.this);
            PhoenixApplication.i(PhoenixApplication.this).get();
            return (zd3) PhoenixApplication.this.p.get();
        }

        @Override
        public Object get() {
            return a();
        }
    }

    public class d implements z96 {
        public d() {
        }

        public cg3 a() {
            PhoenixApplication.k(PhoenixApplication.this);
            PhoenixApplication.i(PhoenixApplication.this).get();
            return (cg3) PhoenixApplication.this.q.get();
        }

        @Override
        public Object get() {
            return a();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            PhoenixApplication.j(PhoenixApplication.this).f();
        }
    }

    public class f implements z96 {
        public final PhoenixApplication a;

        public f(PhoenixApplication phoenixApplication) {
            this.a = phoenixApplication;
        }

        public com.snaptube.premium.app.a a() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.snaptube.premium.app.a aVarE = com.snaptube.premium.app.b.a().d(new bj7(this.a)).b(new em(this.a)).c(new up(this.a)).a(new le(this.a)).f(new k17(this.a)).e();
            aVarE.G0(this.a);
            if (ProductionEnv.isLoggable()) {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                ProductionEnv.d(PhoenixApplication.m(), "get AppComponent: " + (jCurrentTimeMillis2 - jCurrentTimeMillis) + ", is UI thread:" + a58.b());
            }
            return aVarE;
        }

        @Override
        public Object get() {
            return a();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override
        public void run() {
            RxBus.d().f(1075);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override
        public void run() {
            PhoenixApplication.l(PhoenixApplication.this);
            Context contextZ = PhoenixApplication.z();
            new ce6();
            RxBus.d();
            try {
                com.bumptech.glide.a.c(contextZ);
            } catch (Exception unused) {
            }
        }
    }

    static {
        AppCompatDelegate.J(true);
        z = PhoenixApplication.class.getSimpleName();
        A = new Handler(Looper.getMainLooper());
        E = new LaunchLogger();
        F = new AnonymousClass1();
        G = false;
    }

    public static synchronized cj7 B() {
        String str;
        try {
            if (B == null) {
                if (yi2.a().a()) {
                    File fileX = az7.x();
                    if (fileX != null) {
                        str = fileX.getAbsolutePath() + "/DataCache";
                    } else {
                        str = BaseApplication.f.getCacheDir() + "/DataCache";
                    }
                } else {
                    str = BaseApplication.f.getCacheDir() + "/DataCache";
                }
                B = new cj7(str);
            }
        } catch (Throwable th) {
            throw th;
        }
        return B;
    }

    public static PhoenixApplication C() {
        return (PhoenixApplication) BaseApplication.f;
    }

    public static MediaFileScanner E() {
        if (C == null) {
            C = new MediaFileScanner(BaseApplication.f, C().D());
        }
        return C;
    }

    public static com.snaptube.plugin.a I() {
        com.snaptube.plugin.a aVar = D;
        if (aVar == null) {
            synchronized (PhoenixApplication.class) {
                aVar = new com.snaptube.plugin.a();
                D = aVar;
            }
        }
        return aVar;
    }

    public static TaskMessageCenter K() {
        return ((com.snaptube.premium.app.a) fc1.a(z())).W();
    }

    public static Handler M() {
        return A;
    }

    public static dv8 O() {
        return ((com.snaptube.premium.app.a) fc1.a(z())).E();
    }

    public static List P() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(((com.snaptube.premium.app.d.b) z()).b().h());
        arrayList.add(((com.snaptube.premium.app.d.b) z()).b().k());
        return arrayList;
    }

    public static boolean T(Context context) {
        return PhoenixApplication.class == context.getApplicationContext().getClass();
    }

    public static boolean U() {
        return G;
    }

    public static void W() {
        DnsDetector.j(yk6.e(1)).l();
    }

    public static void Y(Throwable th) {
        ProductionEnv.throwExceptForDebugging(new IllegalStateException(th));
    }

    public static void d0(boolean z2) {
        G = z2;
    }

    public static void f(Throwable th) {
        Y(th);
    }

    public static void g() {
        W();
    }

    public static void h(PhoenixApplication phoenixApplication, RxBus.d dVar) {
        phoenixApplication.X(dVar);
    }

    public static Lazy i(PhoenixApplication phoenixApplication) {
        return phoenixApplication.k;
    }

    public static av j(PhoenixApplication phoenixApplication) {
        return phoenixApplication.w;
    }

    public static void k(PhoenixApplication phoenixApplication) {
        phoenixApplication.o();
    }

    public static void l(PhoenixApplication phoenixApplication) {
        phoenixApplication.S();
    }

    public static String m() {
        return z;
    }

    public static Context z() {
        return BaseApplication.f;
    }

    public String A() {
        return this.t;
    }

    public zd3 D() {
        Lazy<zd3> lazy = this.p;
        if (lazy != null) {
            return (zd3) lazy.get();
        }
        return null;
    }

    public bg5 F() {
        return (bg5) this.f410o.get();
    }

    public rj5 G() {
        if (this.g == null) {
            synchronized (this) {
                try {
                    if (this.g == null) {
                        rj5 rj5Var = new rj5(this);
                        rj5Var.m();
                        this.g = rj5Var;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.g;
    }

    public synchronized rx.subjects.a H() {
        try {
            if (this.l == null) {
                this.l = rx.subjects.a.Y0();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.l;
    }

    public av J() {
        return this.w;
    }

    public r18 L() {
        if (this.m == null) {
            this.m = new r18(BaseApplication.f);
        }
        return this.m;
    }

    public synchronized uj8 N() {
        try {
            if (this.h == null) {
                this.h = new uj8();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.h;
    }

    public boolean Q() {
        return cj0.k(BaseApplication.f).h(TitanConsts.Component.PAID_LICENSE);
    }

    public final void R() {
        this.k = xq1.a(new f(this));
    }

    public final void S() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.s == null) {
            synchronized (this.r) {
                try {
                    if (this.s == null) {
                        e0();
                        a0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (ProductionEnv.isLoggable()) {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            String str = z;
            StringBuilder sb = new StringBuilder();
            sb.append("initUserComponent: ");
            long j = jCurrentTimeMillis2 - jCurrentTimeMillis;
            sb.append(j);
            sb.append(", is UI thread:");
            sb.append(a58.b());
            ProductionEnv.d(str, sb.toString());
            if (j <= 2 || !a58.b()) {
                return;
            }
            ProductionEnv.errorLog(str, "initUserComponent in ui thread", new RuntimeException());
        }
    }

    public final boolean V(Intent intent) {
        if (intent == null || intent.getComponent() == null) {
            return false;
        }
        return F.contains(intent.getComponent().getClassName());
    }

    public final void X(RxBus.d dVar) {
        int i = dVar.a;
        if (i == 6 || i == 7) {
            e0();
            Object obj = dVar.d;
            Z(obj instanceof Intent ? (Intent) obj : null);
        } else if (i != 1050) {
            if (i != 1183) {
                return;
            }
            s();
            HomeDecorationHelper.a.o();
            return;
        }
        q(this.s, ((ti3) this.n.get()).c());
        Object obj2 = dVar.d;
        Z(obj2 instanceof Intent ? (Intent) obj2 : null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Z(Intent intent) {
        ArrayList arrayList = new ArrayList(s5.b());
        for (int i = 0; i < arrayList.size(); i++) {
            Activity activity = (Activity) arrayList.get(i);
            if (!activity.isFinishing() && (activity instanceof ug5)) {
                ((ug5) activity).O(((ti3) this.n.get()).b(), intent);
            }
        }
    }

    @Override
    public androidx.work.a a() {
        androidx.work.a.b bVarB = new androidx.work.a.b().b(4);
        bVarB.c(b99.a());
        return bVarB.a();
    }

    public final void a0() {
        RxBus.d().c(6, 7, 1050, 1161, 1183).g(RxBus.f).u0(new cr5(this), new dr5());
    }

    @Override
    public void attachBaseContext(Context context) {
        LaunchLogger launchLogger = E;
        launchLogger.I("app_attach_base_context");
        super.attachBaseContext(context);
        BaseApplication.f = this;
        x();
        vq6.z(BaseApplication.f);
        Reflection.c(context);
        gl7.a().f(this);
        i02.h().m(BaseApplication.f);
        launchLogger.j("app_attach_base_context");
    }

    @Override
    public com.snaptube.premium.app.d b() {
        S();
        return this.s;
    }

    public void b0() {
        LaunchLogger launchLogger = E;
        launchLogger.r(this);
        bc.a.f(launchLogger);
        v();
        u();
        y63.a();
    }

    public final void c0(boolean z2) {
        if (z2) {
            o();
        }
        this.v.a(new ErrorHandleTask()).a(new hl7()).a(new w11(z2));
        if (uh.a()) {
            this.v.a(new x39(z2));
        }
        this.v.a(new fm2()).a(new xq6(this, z2));
        if (!uh.a()) {
            this.v.a(new y39(z2));
        }
        this.v.a(new v39(z2)).a(new ai4()).a(new qb1()).a(new eg2(z2));
    }

    public final void e0() {
        ti3.b bVarC = ((ti3) this.n.get()).c();
        com.snaptube.premium.app.d dVar = this.s;
        if (dVar != null) {
            if (bVarC == null && TextUtils.isEmpty(this.t) && TextUtils.isEmpty(this.u)) {
                return;
            }
            if (bVarC != null && TextUtils.equals(this.t, bVarC.getUserId()) && TextUtils.equals(this.u, bVarC.a().a())) {
                return;
            }
        }
        q(dVar, bVarC);
    }

    @Override
    public x84 get() {
        return new y84();
    }

    @Override
    public Object getSystemService(String str) {
        if (fc1.a.equals(str)) {
            o();
            return this.k.get();
        }
        if ("user_scope_injector_service".equals(str)) {
            return b();
        }
        try {
            return super.getSystemService(str);
        } catch (NullPointerException unused) {
            ProductionEnv.throwExceptForDebugging(new NullPointerException("Missing service: " + str));
            return null;
        }
    }

    public boolean n() {
        return ((ba3) zh4.b("IAdsManager")).h();
    }

    public final void o() {
        if (this.k == null) {
            synchronized (this.j) {
                try {
                    if (this.k == null) {
                        R();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ConfigurationObservable.c(configuration);
    }

    @Override
    public void onCreate() {
        super.onCreate();
        if (w()) {
            return;
        }
        E.j("app_onCreateMainProcess");
    }

    public final void p(com.snaptube.premium.app.d dVar) {
        if (dVar == null) {
            return;
        }
        if (dVar.h() != null) {
            dVar.h().d();
        }
        if (dVar.k() != null) {
            dVar.k().d();
        }
    }

    public void q(com.snaptube.premium.app.d dVar, ti3.b bVar) {
        p(dVar);
        if (bVar == null) {
            r("", "");
        } else {
            r(bVar.getUserId(), bVar.a().a());
        }
    }

    public void r(String str, String str2) {
        this.t = str;
        this.u = str2;
        this.s = ((com.snaptube.premium.app.a) this.k.get()).c0().b(new wj7(this, str)).a(new bl8(this)).build();
        y48.n(new g());
    }

    @Keep
    public void registerLocalReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        z54.b(this).c(broadcastReceiver, intentFilter);
    }

    public final void s() {
        ThreadPool.a(new er5());
    }

    @Override
    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    @Override
    public void startActivity(Intent intent, Bundle bundle) {
        Activity activityC;
        if (!V(intent) || (activityC = k6.c()) == null) {
            super.startActivity(intent, bundle);
        } else {
            intent.setFlags(intent.getFlags() ^ 268435456);
            activityC.startActivity(intent, bundle);
        }
    }

    public void t() {
        if (this.x) {
            return;
        }
        this.v.a(new c35()).a(new ha4()).a(new wh8()).a(new o56()).a(new fp3()).a(new m57()).a(new y09()).a(new AbTestUpdateExposureTask());
        this.x = true;
    }

    public final void u() {
        ak1.a.c(new rl5()).c(new lq2()).c(new zq0()).c(new qm4()).c(new pz()).c(new nw5()).c(new SensorInitTask()).c(new cq0()).c(new pb1()).c(new r56()).c(new oe8()).c(new xh6()).c(new e29()).c(new ui4()).c(new p23()).c(new ao()).c(new FeedbackFetchTask()).c(new g71()).c(new AppOptimizeKitTask()).d();
    }

    @Keep
    public void unregisterLocalReceiver(BroadcastReceiver broadcastReceiver) {
        z54.b(this).e(broadcastReceiver);
    }

    public final void v() {
        this.v.a(new qq1()).a(new ge()).a(new r24()).a(new gq6()).a(new xw6()).a(new pf6()).a(new y08()).a(new vc()).a(new l06()).a(new cd0()).a(new hs()).a(new qs()).a(new pi2()).a(new uz3()).a(new oh8()).a(new n23()).a(new yz1()).a(new mi9());
        A.postDelayed(new e(), TimeUnit.SECONDS.toMillis(15L));
    }

    public final boolean w() {
        String strA = xi7.a(BaseApplication.f);
        if (strA.contains(":loader")) {
            return true;
        }
        E.I("app_onCreateMainProcess");
        boolean z2 = strA.equals(getPackageName()) && !strA.contains(":");
        c0(z2);
        if (!z2) {
            u81.f("processName", strA);
            return true;
        }
        try {
            b0();
        } catch (Throwable th) {
            u81.c("init_main_process_crash", th);
        }
        return false;
    }

    public final void x() {
        if (Build.BRAND.equalsIgnoreCase("motorola") && Build.VERSION.SDK_INT == 28) {
            try {
                Class<?> cls = Class.forName("java.lang.Daemons$FinalizerWatchdogDaemon");
                Method declaredMethod = cls.getSuperclass().getDeclaredMethod("stop", null);
                declaredMethod.setAccessible(true);
                Field declaredField = cls.getDeclaredField("INSTANCE");
                declaredField.setAccessible(true);
                declaredMethod.invoke(declaredField.get(null), null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public com.snaptube.premium.ads.a y() {
        if (this.i == null) {
            synchronized (PhoenixApplication.class) {
                try {
                    if (this.i == null) {
                        com.snaptube.premium.ads.a aVar = new com.snaptube.premium.ads.a(this);
                        this.i = aVar;
                        aVar.q0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.i;
    }
}
