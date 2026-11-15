package com.yandex.div.core.expression.variables;

import android.os.Handler;
import android.os.Looper;
import defpackage.e74;
import defpackage.fu1;
import defpackage.i81;
import defpackage.qnb;
import defpackage.rs6;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class DivVariableController {
    public final DivVariableController a;
    public final Handler b;
    public final ConcurrentHashMap c;
    public final ConcurrentLinkedQueue d;
    public final Map e;
    public final Set f;
    public final Set g;
    public final ConcurrentLinkedQueue h;
    public final e74 i;
    public final rs6 j;

    /* JADX WARN: Multi-variable type inference failed */
    public DivVariableController() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final void b(fu1 fu1Var) {
        y45.j(fu1Var, "observer");
        this.d.add(fu1Var);
        DivVariableController divVariableController = this.a;
        if (divVariableController != null) {
            divVariableController.b(fu1Var);
        }
    }

    public final void c(e74 e74Var) {
        y45.j(e74Var, "observer");
        Collection collectionValues = this.c.values();
        y45.i(collectionValues, "variables.values");
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            ((qnb) it.next()).a(e74Var);
        }
        DivVariableController divVariableController = this.a;
        if (divVariableController != null) {
            divVariableController.c(e74Var);
        }
    }

    public final List d() {
        List listK;
        Collection collectionValues = this.c.values();
        y45.i(collectionValues, "variables.values");
        DivVariableController divVariableController = this.a;
        if (divVariableController == null || (listK = divVariableController.d()) == null) {
            listK = y71.k();
        }
        return i81.J0(collectionValues, listK);
    }

    public final qnb e(String str) {
        y45.j(str, "variableName");
        if (g(str)) {
            return (qnb) this.c.get(str);
        }
        DivVariableController divVariableController = this.a;
        if (divVariableController != null) {
            return divVariableController.e(str);
        }
        return null;
    }

    public final rs6 f() {
        return this.j;
    }

    public final boolean g(String str) {
        boolean zContains;
        synchronized (this.f) {
            zContains = this.f.contains(str);
        }
        return zContains;
    }

    public final void h(e74 e74Var) {
        y45.j(e74Var, "observer");
        Collection<qnb> collectionValues = this.c.values();
        y45.i(collectionValues, "variables.values");
        for (qnb qnbVar : collectionValues) {
            y45.i(qnbVar, "it");
            e74Var.invoke(qnbVar);
        }
        DivVariableController divVariableController = this.a;
        if (divVariableController != null) {
            divVariableController.h(e74Var);
        }
    }

    public final void i(fu1 fu1Var) {
        y45.j(fu1Var, "observer");
        this.d.remove(fu1Var);
        DivVariableController divVariableController = this.a;
        if (divVariableController != null) {
            divVariableController.i(fu1Var);
        }
    }

    public final void j(e74 e74Var) {
        y45.j(e74Var, "observer");
        Collection collectionValues = this.c.values();
        y45.i(collectionValues, "variables.values");
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            ((qnb) it.next()).m(e74Var);
        }
        DivVariableController divVariableController = this.a;
        if (divVariableController != null) {
            divVariableController.j(e74Var);
        }
    }

    public DivVariableController(DivVariableController divVariableController) {
        this.a = divVariableController;
        this.b = new Handler(Looper.getMainLooper());
        this.c = new ConcurrentHashMap();
        this.d = new ConcurrentLinkedQueue();
        this.e = new LinkedHashMap();
        this.f = new LinkedHashSet();
        this.g = new LinkedHashSet();
        this.h = new ConcurrentLinkedQueue();
        e74 e74Var = new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((String) obj);
                return zfb.a;
            }

            public final void invoke(String str) {
                y45.j(str, "variableName");
                Iterator it = this.this$0.h.iterator();
                while (it.hasNext()) {
                    ((e74) it.next()).invoke(str);
                }
            }
        };
        this.i = e74Var;
        this.j = new rs6(this, e74Var);
    }

    public DivVariableController(DivVariableController divVariableController, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : divVariableController);
    }
}
