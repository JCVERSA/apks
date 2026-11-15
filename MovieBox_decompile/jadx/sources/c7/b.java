package c7;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.CommonOkHttpClient;
import com.cloud.hisavana.sdk.Y;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.c0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.util.j0;
import com.cloud.hisavana.sdk.database.HisavanaContentProvider;
import com.cloud.hisavana.sdk.g0;
import com.cloud.hisavana.sdk.g1;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.hisavana.sdk.s1;
import com.cloud.hisavana.sdk.x;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.m;
import com.cloud.sdk.commonutil.util.o;
import com.cloud.tmc.miniapp.ad.AdManager;
import java.util.concurrent.atomic.AtomicLong;
import mh.k;

public final class b {

    private static a f16687a = null;

    public static String f16688b = null;

    private static boolean f16689c = true;

    private static AtomicLong f16690d = new AtomicLong(0);

    private static int f16691e = -1;

    private static int f16692f = 10;

    private static boolean f16693g = true;

    private static boolean f16694h = false;

    public static final class a {

        private boolean f16695a;

        private boolean f16696b;

        private boolean f16697c;

        private int f16698d;

        private boolean f16699e;

        public a(C0148b c0148b) {
            this.f16697c = false;
            this.f16699e = false;
            this.f16695a = c0148b.f16700a;
            this.f16696b = c0148b.f16701b;
            this.f16697c = c0148b.f16702c;
            this.f16698d = c0148b.f16703d;
            this.f16699e = c0148b.f16704e;
            HSScopeHelper.f22504b = c0148b.f16705f;
        }
    }

    public static final class C0148b {

        private boolean f16702c;

        private boolean f16700a = false;

        private boolean f16701b = false;

        private int f16703d = 200;

        private boolean f16704e = false;

        private boolean f16705f = false;

        public a c() {
            return new a(this);
        }

        public C0148b h(String str) {
            b.f16688b = str;
            return this;
        }

        public C0148b i(boolean z10) {
            this.f16700a = z10;
            this.f16701b = z10;
            e.j(z10);
            b4.b().setLogSwitch(this.f16700a);
            com.cloud.sdk.commonutil.util.c.NET_LOG.m().q(this.f16700a);
            return this;
        }

        public C0148b j(int i10) {
            this.f16703d = i10;
            return this;
        }

        public C0148b k(boolean z10) {
            boolean unused = b.f16694h = z10;
            return this;
        }

        public C0148b l(long j10) {
            b.f16690d.set(j10);
            return this;
        }

        public C0148b m(boolean z10) {
            boolean unused = b.f16693g = z10;
            return this;
        }

        public C0148b n(boolean z10) {
            this.f16704e = z10;
            return this;
        }

        public C0148b o(boolean z10) {
            this.f16702c = z10;
            return this;
        }
    }

    private static void c(a aVar) {
        if (f16687a != null || aVar == null) {
            return;
        }
        if (!aVar.f16695a) {
            com.cloud.sdk.commonutil.util.c.NET_LOG.m().q(Log.isLoggable("AD_NET_LOG", 3));
        }
        j0.b(aVar.f16696b);
        if (!aVar.f16695a) {
            aVar.f16695a = Log.isLoggable("TA_SDK", 3) || Log.isLoggable("ADSDK", 3);
        }
        f16687a = aVar;
        c0.f21112a.c(f16687a.f16698d);
        DeviceUtil.e();
        AthenaTracker.o(f16687a.f16695a, e.a());
        NetStateManager.registerMonitorBroadcast();
        b4.b().setLogSwitch(f16687a.f16695a);
        AthenaTracker.R();
        e();
        n7.c.e();
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                b.g();
            }
        });
        g0.b(e.a());
        Y.f20925a.k(f16690d.get());
        x.f22413a.O();
        s1.f22253a.d();
    }

    private static void e() {
        try {
            if (e.a().getApplicationContext() instanceof Application) {
                k.c((Application) e.a().getApplicationContext(), false);
                CommonOkHttpClient.f20702a = l();
            }
        } catch (Exception unused) {
            b4.b().e("init NetworkMonitor failure!");
        }
    }

    public static void g() {
        g1.o().n(1);
        o.n();
        k7.a.s0();
    }

    public static boolean h() {
        return f16693g;
    }

    public static boolean i() {
        return f16694h;
    }

    public static int j() {
        return f16691e;
    }

    public static void k(Context context, a aVar) {
        if (TextUtils.isEmpty(f16688b)) {
            b4.b().e(AdManager.TAG, "AppId is empty, please check your config.");
            return;
        }
        m.j((Application) context.getApplicationContext());
        e.g(context);
        HisavanaContentProvider.h();
        c(aVar);
    }

    public static boolean l() {
        a aVar = f16687a;
        if (aVar != null) {
            return aVar.f16695a;
        }
        return false;
    }

    public static boolean m() {
        a aVar = f16687a;
        if (aVar != null) {
            return aVar.f16697c;
        }
        return false;
    }

    public static boolean n() {
        return f16689c;
    }

    public static void o(Context context, String str, boolean z10) {
        f16688b = str;
        e.g(context);
        HisavanaContentProvider.h();
        DeviceUtil.e();
        AthenaTracker.o(z10, e.a());
        NetStateManager.registerMonitorBroadcast();
        n7.c.e();
    }

    public static void p(int i10) {
        if (i10 < 1 || i10 > 100) {
            return;
        }
        f16692f = i10;
    }

    public static void q(boolean z10) {
        f16689c = z10;
    }

    public static boolean r() {
        a aVar = f16687a;
        if (aVar != null) {
            return aVar.f16699e;
        }
        return false;
    }
}
