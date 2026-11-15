package defpackage;

import com.yandex.div.core.expression.variables.DivVariableController;

public class rs6 implements dob {
    public final DivVariableController a;
    public final e74 b;

    public rs6(DivVariableController divVariableController, e74 e74Var) {
        y45.j(divVariableController, "variableController");
        y45.j(e74Var, "variableRequestObserver");
        this.a = divVariableController;
        this.b = e74Var;
    }

    @Override
    public qnb a(String str) {
        y45.j(str, "name");
        this.b.invoke(str);
        return this.a.e(str);
    }

    @Override
    public void b(fu1 fu1Var) {
        y45.j(fu1Var, "observer");
        this.a.b(fu1Var);
    }

    @Override
    public void c(e74 e74Var) {
        y45.j(e74Var, "observer");
        this.a.h(e74Var);
    }

    @Override
    public void d(fu1 fu1Var) {
        y45.j(fu1Var, "observer");
        this.a.i(fu1Var);
    }

    @Override
    public void e(e74 e74Var) {
        y45.j(e74Var, "observer");
        this.a.c(e74Var);
    }

    @Override
    public void f(e74 e74Var) {
        y45.j(e74Var, "observer");
        this.a.j(e74Var);
    }
}
