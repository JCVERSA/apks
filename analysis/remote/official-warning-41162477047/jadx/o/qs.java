package o;

import com.mobiuspace.framework.launchconductor.Policy;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;

public final class qs implements uh4 {
    public static final a a = new a(null);
    public static Boolean b;

    public static final class a {
        public a() {
        }

        public a(pg1 pg1Var) {
            this();
        }

        public final Boolean a() {
            return qs.a();
        }
    }

    public static final Boolean a() {
        return b;
    }

    public final void b(int i) {
        if (i <= xi7.d) {
            t95.a.b();
        }
    }

    public final void c() {
        int iP = az7.P(PhoenixApplication.z());
        int iP0 = Config.p0();
        b = Boolean.valueOf(iP0 != -1);
        if (iP == iP0) {
            return;
        }
        if (iP0 > 0 || iP != Config.f0()) {
            b(iP0);
        }
        Config.C5(System.currentTimeMillis() / ((long) 1000));
        Config.D5(iP);
    }

    @Override
    public void run() {
        c();
    }

    @Override
    public String tag() {
        return "AppStateMonitorInitTask";
    }

    @Override
    public Policy u() {
        return uh4.a.a(this);
    }
}
