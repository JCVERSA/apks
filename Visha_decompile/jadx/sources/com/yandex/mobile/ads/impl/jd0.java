package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.impl.zd0;
import defpackage.y45;

public abstract class jd0<T extends zd0<T>> extends pg0 {
    private final sg0 A;
    private final ed0 B;
    private cd0<T> C;
    private cd0<T> D;
    private T E;
    private final kd0<T> y;
    private final td0<T> z;

    public jd0(Context context, o3 o3Var, bv1 bv1Var, kd0 kd0Var, g5 g5Var, td0 td0Var, sg0 sg0Var) {
        this(context, o3Var, bv1Var, kd0Var, g5Var, td0Var, sg0Var, new ed0(bv1Var));
    }

    public abstract cd0<T> a(dd0 dd0Var);

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        this.y.a(w3Var);
    }

    @Override
    public final void e() {
        if (oa.a((ro) this)) {
            return;
        }
        Context contextL = l();
        cd0[] cd0VarArr = {this.D, this.C};
        for (int i = 0; i < 2; i++) {
            cd0 cd0Var = cd0VarArr[i];
            if (cd0Var != null) {
                cd0Var.a(contextL);
            }
        }
        super.e();
    }

    @Override
    public final void r() {
        w3 w3VarQ = w7.q();
        y45.j(w3VarQ, "error");
        this.y.a(w3VarQ);
    }

    @Override
    public final void s() {
        T t = this.E;
        if (t != null) {
            this.y.a(t);
        } else {
            this.y.a(w7.m());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jd0(Context context, o3 o3Var, bv1 bv1Var, kd0<T> kd0Var, g5 g5Var, td0<T> td0Var, sg0 sg0Var, ed0 ed0Var) {
        super(context, o3Var, g5Var);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(kd0Var, "fullScreenLoadEventListener");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(td0Var, "fullscreenAdContentFactory");
        y45.j(sg0Var, "htmlAdResponseReportManager");
        y45.j(ed0Var, "adResponseControllerFactoryCreator");
        this.y = kd0Var;
        this.z = td0Var;
        this.A = sg0Var;
        this.B = ed0Var;
        a(i9.a.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(o8<String> o8Var) {
        y45.j(o8Var, "adResponse");
        super.a((o8<T>) o8Var);
        this.A.a(o8Var);
        this.A.a(f());
        cd0<T> cd0VarA = a(this.B.a(o8Var));
        this.D = this.C;
        this.C = cd0VarA;
        this.E = (T) this.z.a(o8Var, f(), cd0VarA);
        Context contextA = p0.a();
        if (contextA != null) {
            sp0.a(new Object[0]);
        }
        if (contextA == null) {
            contextA = l();
        }
        cd0VarA.a(contextA, o8Var);
    }
}
