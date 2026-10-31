package o;

import android.app.Activity;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;

public class m01 extends d1 {
    public static final String m = "m01";
    public static long n;
    public final i35 j;
    public final tl3 k;
    public final d1.b l;

    public class a implements d1.b {
        public a() {
        }

        @Override
        public void a(boolean z) {
            ProductionEnv.d(m01.h(), "onAdClosed() called with: didAdImpression = [" + z + "]");
            if (z) {
                m01.g(m01.this);
            }
            m01.this.a();
            d1.b bVar = m01.this.g;
            if (bVar != null) {
                bVar.a(z);
                m01 m01Var = m01.this;
                m01Var.e = null;
                m01Var.g = null;
            }
        }

        @Override
        public void b() {
            d1.b bVar = m01.this.g;
            if (bVar != null) {
                bVar.b();
            }
        }

        @Override
        public void i() {
        }

        @Override
        public void j() {
        }

        @Override
        public void k() {
            m01.this.a();
        }

        @Override
        public void u() {
            ProductionEnv.d(m01.h(), "native splash Ad onLoadError() called");
            m01.this.a();
            d1.b bVar = m01.this.g;
            if (bVar != null) {
                bVar.a(false);
                m01 m01Var = m01.this;
                m01Var.e = null;
                m01Var.g = null;
            }
        }
    }

    public class b implements d1.b {
        public final un7 a;

        public b(un7 un7Var) {
            this.a = un7Var;
        }

        @Override
        public void a(boolean z) {
            this.a.a(z);
        }

        @Override
        public void b() {
            this.a.b();
        }

        @Override
        public void i() {
        }

        @Override
        public void j() {
        }

        @Override
        public void k() {
            e1.a(this);
        }

        @Override
        public void u() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m01(Activity activity, long j) {
        super(activity);
        this.l = new a();
        tl3 tl3Var = new tl3("CompositeDelegate");
        this.k = tl3Var;
        if (activity instanceof rl3) {
            tl3Var.g(((rl3) activity).g());
        }
        this.j = new i35(activity, j);
    }

    public static void g(m01 m01Var) {
        m01Var.i();
    }

    public static String h() {
        return m;
    }

    @Override
    public void c(boolean z) {
        super.c(z);
        this.j.c(z);
    }

    @Override
    public boolean d(String str, d1.b bVar) {
        if (super.d(str, bVar)) {
            boolean zD = this.j.d(str, this.l);
            d1.i = false;
            return zD;
        }
        d1.i = false;
        a();
        bVar.a(false);
        return false;
    }

    @Override
    public boolean f(String str) {
        if (!((ba3) zh4.b("IAdsManager")).h()) {
            this.k.f("adsEnabled");
            return false;
        }
        iq7.b bVarB = b(str);
        if (bVarB != null && this.j.f(str)) {
            boolean z = this.d || hc.h(bVarB, d1.i, n, GlobalConfig.getAppMoveBackTimestamp());
            this.k.f("valid=" + z);
            return z;
        }
        this.k.f("loadStrategy fail");
        return false;
    }

    public final void i() {
        ProductionEnv.d(m, "markImpressionEvent() called");
        n = System.currentTimeMillis();
    }

    public void j() {
        i35 i35Var = this.j;
        if (i35Var != null) {
            i35Var.h();
        }
    }

    public boolean k(String str, un7 un7Var) {
        this.k.f("showAd");
        return d(str, new b(un7Var));
    }
}
