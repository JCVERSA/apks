package defpackage;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.CommonOkHttpClient;
import com.cloud.hisavana.sdk.C0520g0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.database.HisavanaContentProvider;
import com.cloud.hisavana.sdk.k0;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.hisavana.sdk.n;
import com.cloud.hisavana.sdk.y;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.concurrent.atomic.AtomicLong;

public abstract class r6 {
    public static a a = null;
    public static String b = null;
    public static boolean c = true;
    public static AtomicLong d = new AtomicLong(0);
    public static int e = -1;
    public static int f = 10;
    public static boolean g = true;
    public static boolean h = false;
    public static boolean i = true;
    public static int j = 0;

    public static final class a {
        public boolean a;
        public boolean b;
        public boolean c;
        public int d;
        public boolean e;

        public a(b bVar) {
            this.c = false;
            this.e = false;
            this.a = bVar.a;
            this.b = bVar.b;
            this.c = bVar.c;
            this.d = bVar.d;
            this.e = bVar.e;
            HSScopeHelper.b = bVar.f;
        }
    }

    public static final class b {
        public boolean c;
        public boolean a = false;
        public boolean b = false;
        public int d = 200;
        public boolean e = false;
        public boolean f = false;

        public a c() {
            return new a(this);
        }

        public b h(String str) {
            r6.b = str;
            return this;
        }

        public b i(boolean z) {
            this.a = z;
            this.b = z;
            ul4.l(z);
            ikd.b().setLogSwitch(this.a);
            ja1.NET_LOG.m().q(this.a);
            return this;
        }

        public b j(int i) {
            this.d = i;
            return this;
        }

        public b k(boolean z) {
            boolean unused = r6.i = z;
            return this;
        }

        public b l(boolean z) {
            boolean unused = r6.h = z;
            return this;
        }

        public b m(long j) {
            r6.d.set(j);
            return this;
        }

        public b n(boolean z) {
            boolean unused = r6.g = z;
            return this;
        }

        public b o(boolean z) {
            this.e = z;
            return this;
        }

        public b p(boolean z) {
            this.c = z;
            return this;
        }
    }

    public static void d(a aVar) {
        if (a != null || aVar == null) {
            return;
        }
        if (!aVar.a) {
            ja1.NET_LOG.m().q(Log.isLoggable("AD_NET_LOG", 3));
        }
        tga.b(aVar.b);
        if (!aVar.a) {
            aVar.a = Log.isLoggable("TA_SDK", 3) || Log.isLoggable("ADSDK", 3);
        }
        a = aVar;
        k0.a.c(a.d);
        DeviceUtil.f();
        AthenaTracker.p(a.a, ul4.a());
        NetStateManager.registerMonitorBroadcast();
        ikd.b().setLogSwitch(a.a);
        AthenaTracker.W();
        f();
        cgc.n().p(1);
        HSScopeHelper hSScopeHelper = HSScopeHelper.a;
        hSScopeHelper.n(new Runnable() {
            @Override
            public final void run() {
                r6.h();
            }
        });
        hSScopeHelper.l(new Runnable() {
            @Override
            public final void run() {
                r6.m();
            }
        });
        n.b(ul4.a());
        C0520g0.a.k(d.get());
        y.a.O();
        q1d.a.d();
    }

    public static void f() {
        try {
            if (ul4.a().getApplicationContext() instanceof Application) {
                uz6.c((Application) ul4.a().getApplicationContext(), false);
                CommonOkHttpClient.a = p();
            }
        } catch (Exception unused) {
            ikd.b().e("init NetworkMonitor failure!");
        }
    }

    public static void h() {
        in8.n();
        rd.s0();
    }

    public static boolean j() {
        return g;
    }

    public static boolean k() {
        return i;
    }

    public static boolean l() {
        return h;
    }

    public static void m() {
        cy9.e(ul4.a());
    }

    public static int n() {
        return e;
    }

    public static void o(Context context, a aVar) {
        if (TextUtils.isEmpty(b)) {
            ikd.b().e("AdManager", "AppId is empty, please check your config.");
            return;
        }
        zk5.j((Application) context.getApplicationContext());
        ul4.g(context);
        HisavanaContentProvider.h();
        d(aVar);
    }

    public static boolean p() {
        a aVar = a;
        if (aVar != null) {
            return aVar.a;
        }
        return false;
    }

    public static boolean q() {
        int i2 = j;
        if (i2 != 0) {
            if (i2 == 1) {
                return true;
            }
            if (i2 == 2) {
                return false;
            }
        }
        a aVar = a;
        if (aVar != null) {
            return aVar.c;
        }
        return false;
    }

    public static boolean r() {
        return c;
    }

    public static void s(Context context, String str, boolean z) {
        b = str;
        ul4.g(context);
        HisavanaContentProvider.h();
        DeviceUtil.f();
        AthenaTracker.p(z, ul4.a());
        NetStateManager.registerMonitorBroadcast();
    }

    public static void t(int i2) {
        if (i2 < 1 || i2 > 100) {
            return;
        }
        f = i2;
    }

    public static void u(boolean z) {
        c = z;
    }

    public static boolean v() {
        a aVar = a;
        if (aVar != null) {
            return aVar.e;
        }
        return false;
    }
}
