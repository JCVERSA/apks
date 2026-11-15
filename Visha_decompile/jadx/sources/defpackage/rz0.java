package defpackage;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import com.transsion.cloud_drive.base.network.RetrofitInstance;
import com.transsion.clouddrive.sdk.DefaultAppInfoProvider;
import java.util.List;

public final class rz0 {
    public final String a;
    public final qe b;
    public final jpa c;
    public final yfb d;
    public qhb e;
    public s03 f;
    public final mq3 g;
    public final eu9 h;

    public rz0(oz0 oz0Var) {
        y45.j(oz0Var, "builder");
        this.a = oz0Var.j();
        this.b = oz0Var.e();
        jpa jpaVarB = oz0Var.b();
        if (jpaVarB == null) {
            throw new IllegalArgumentException("AccessTokenFetcher must not be null");
        }
        this.c = jpaVarB;
        yfb yfbVarK = oz0Var.K();
        if (yfbVarK == null) {
            throw new IllegalArgumentException("UniqueIdFetcher must not be null");
        }
        this.d = yfbVarK;
        rp5 rp5Var = new rp5();
        rp5Var.g(oz0Var.w());
        rp5Var.e(oz0Var.t());
        rp5Var.h(oz0Var.v());
        rp5Var.f(oz0Var.u());
        oq5.a.i(rp5Var);
        f(oz0Var);
        this.g = b05.a();
        this.h = b05.b();
        h(oz0Var);
    }

    public static final void g(int i, String str, String str2) {
        y45.j(str, Progress.TAG);
        y45.j(str2, "message");
        oq5.a.e(i, str, new String[]{str2});
    }

    public final s03 b() {
        s03 s03Var = this.f;
        if (s03Var != null) {
            return s03Var;
        }
        y45.B("downloadManager");
        return null;
    }

    public final mq3 c() {
        return this.g;
    }

    public final eu9 d() {
        return this.h;
    }

    public final qhb e() {
        qhb qhbVar = this.e;
        if (qhbVar != null) {
            return qhbVar;
        }
        y45.B("uploadManager");
        return null;
    }

    public final void f(final oz0 oz0Var) {
        qe qeVarE = oz0Var.e();
        if (qeVarE == null) {
            qeVarE = new DefaultAppInfoProvider(oz0Var.g(), oz0Var.d());
        }
        qe qeVar = qeVarE;
        pr8 pr8Var = pr8.a;
        Context applicationContext = oz0Var.g().getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        pr8Var.c(applicationContext, new lr8(new lpa() {
        }, oz0Var.J(), new vp5() {
            @Override
            public final void a(int i, String str, String str2) {
                rz0.g(i, str, str2);
            }
        }));
        int iF = oz0Var.f();
        int I = oz0Var.I();
        int iP = oz0Var.P();
        boolean zH = oz0Var.H();
        String strR = oz0Var.r();
        int iS = oz0Var.s();
        boolean zN = oz0Var.n();
        int iA = oz0Var.A();
        long jG = oz0Var.G();
        jpa jpaVar = this.c;
        npa npaVarC = oz0Var.c();
        yfb yfbVar = this.d;
        List listH = oz0Var.h();
        oz0Var.i();
        RetrofitInstance.a.i(this.a, new qz6(qeVar, iF, I, iP, zH, strR, iS, zN, iA, jG, jpaVar, npaVarC, yfbVar, listH, null, oz0Var.J(), oz0Var.O(), oz0Var.o(), oz0Var.q()));
    }

    public final void h(oz0 oz0Var) {
        this.e = a05.b(new jhb(oz0Var.F(), oz0Var.C(), oz0Var.E(), oz0Var.D(), oz0Var.p(), oz0Var.L(), oz0Var.M(), oz0Var.N()));
        this.f = a05.a(new ny2(oz0Var.z(), oz0Var.B(), oz0Var.y(), oz0Var.x(), oz0Var.k(), oz0Var.l(), oz0Var.m()));
    }
}
