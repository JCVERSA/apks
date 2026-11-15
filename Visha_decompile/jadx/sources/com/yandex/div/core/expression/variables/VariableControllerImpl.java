package com.yandex.div.core.expression.variables;

import com.yandex.div.core.expression.variables.VariableControllerImpl;
import com.yandex.div.data.VariableDeclarationException;
import defpackage.dob;
import defpackage.e74;
import defpackage.fu1;
import defpackage.i81;
import defpackage.mx7;
import defpackage.oj3;
import defpackage.qc2;
import defpackage.qd7;
import defpackage.qnb;
import defpackage.snb;
import defpackage.wc3;
import defpackage.wnb;
import defpackage.xi;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class VariableControllerImpl implements snb {
    public final snb a;
    public final Map b;
    public final List c;
    public final Map d;
    public final Map e;
    public final Map f;
    public final e74 g;
    public final a h;

    public static final class a implements fu1 {
        public a() {
        }
    }

    public VariableControllerImpl(snb snbVar) {
        this.a = snbVar;
        this.b = new LinkedHashMap();
        this.c = new ArrayList();
        this.d = new LinkedHashMap();
        this.e = new LinkedHashMap();
        this.f = new LinkedHashMap();
        this.g = new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((qnb) obj);
                return zfb.a;
            }

            public final void invoke(qnb qnbVar) {
                y45.j(qnbVar, "v");
                this.this$0.r(qnbVar);
            }
        };
        this.h = new a();
    }

    public static final void u(VariableControllerImpl variableControllerImpl, String str, e74 e74Var) {
        y45.j(variableControllerImpl, "this$0");
        y45.j(str, "$name");
        y45.j(e74Var, "$observer");
        variableControllerImpl.t(str, e74Var);
    }

    public static final void w(List list, List list2, VariableControllerImpl variableControllerImpl, e74 e74Var) {
        y45.j(list, "$names");
        y45.j(list2, "$disposables");
        y45.j(variableControllerImpl, "this$0");
        y45.j(e74Var, "$observer");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            variableControllerImpl.t((String) it.next(), e74Var);
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            ((qc2) it2.next()).close();
        }
    }

    public static final void x(List list, VariableControllerImpl variableControllerImpl, e74 e74Var) {
        y45.j(list, "$names");
        y45.j(variableControllerImpl, "this$0");
        y45.j(e74Var, "$observer");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            qd7 qd7Var = (qd7) variableControllerImpl.e.get((String) it.next());
            if (qd7Var != null) {
                qd7Var.p(e74Var);
            }
        }
    }

    @Override
    public qnb a(String str) {
        qnb qnbVarA;
        y45.j(str, "name");
        qnb qnbVar = (qnb) this.b.get(str);
        if (qnbVar != null) {
            return qnbVar;
        }
        snb snbVar = this.a;
        if (snbVar != null && (qnbVarA = snbVar.a(str)) != null) {
            return qnbVarA;
        }
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            qnb qnbVarA2 = ((dob) it.next()).a(str);
            if (qnbVarA2 != null) {
                return qnbVarA2;
            }
        }
        return null;
    }

    @Override
    public List b() {
        return i81.b1(this.b.values());
    }

    @Override
    public qc2 c(final List list, boolean z, final e74 e74Var) {
        y45.j(list, "names");
        y45.j(e74Var, "observer");
        final ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!this.b.containsKey(str)) {
                snb snbVar = this.a;
                if ((snbVar != null ? snbVar.a(str) : null) != null) {
                    arrayList.add(this.a.h(str, null, z, e74Var));
                }
            }
            v(str, null, z, e74Var);
        }
        return new qc2() {
            @Override
            public final void close() {
                VariableControllerImpl.w(list, arrayList, this, e74Var);
            }
        };
    }

    @Override
    public void d() {
        for (dob dobVar : this.c) {
            dobVar.f(this.g);
            dobVar.d(this.h);
        }
        this.f.clear();
    }

    @Override
    public void e() {
        for (dob dobVar : this.c) {
            dobVar.e(this.g);
            dobVar.c(this.g);
            dobVar.b(this.h);
        }
    }

    @Override
    public qc2 g(final List list, final e74 e74Var) {
        y45.j(list, "names");
        y45.j(e74Var, "observer");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Map map = this.e;
            Object qd7Var = map.get(str);
            if (qd7Var == null) {
                qd7Var = new qd7();
                map.put(str, qd7Var);
            }
            ((qd7) qd7Var).j(e74Var);
        }
        return new qc2() {
            @Override
            public final void close() {
                VariableControllerImpl.x(list, this, e74Var);
            }
        };
    }

    @Override
    public Object get(String str) {
        y45.j(str, "name");
        qnb qnbVarA = a(str);
        Object objA = wnb.a(qnbVarA != null ? qnbVarA.c() : null);
        if (objA != null) {
            return objA;
        }
        snb snbVar = this.a;
        if (snbVar != null) {
            return snbVar.get(str);
        }
        return null;
    }

    @Override
    public qc2 h(final String str, wc3 wc3Var, boolean z, final e74 e74Var) {
        y45.j(str, "name");
        y45.j(e74Var, "observer");
        if (!this.b.containsKey(str)) {
            snb snbVar = this.a;
            if ((snbVar != null ? snbVar.a(str) : null) != null) {
                return this.a.h(str, wc3Var, z, e74Var);
            }
        }
        v(str, wc3Var, z, e74Var);
        return new qc2() {
            @Override
            public final void close() {
                VariableControllerImpl.u(this.b, str, e74Var);
            }
        };
    }

    @Override
    public void i(qnb qnbVar) {
        y45.j(qnbVar, "variable");
        qnb qnbVar2 = (qnb) this.b.put(qnbVar.b(), qnbVar);
        if (qnbVar2 == null) {
            s(qnbVar);
            return;
        }
        this.b.put(qnbVar.b(), qnbVar2);
        throw new VariableDeclarationException("Variable '" + qnbVar.b() + "' already declared!", null, 2, null);
    }

    @Override
    public void j(oj3 oj3Var, final e74 e74Var) {
        y45.j(oj3Var, "owner");
        y45.j(e74Var, "callback");
        this.f.put(oj3Var, e74Var);
        snb snbVar = this.a;
        if (snbVar != null) {
            snbVar.j(oj3Var, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((qnb) obj);
                    return zfb.a;
                }

                public final void invoke(qnb qnbVar) {
                    y45.j(qnbVar, "it");
                    if (this.this$0.b.get(qnbVar.b()) == null) {
                        e74Var.invoke(qnbVar);
                    }
                }
            });
        }
    }

    public final void p(String str, e74 e74Var) {
        Map map = this.d;
        Object qd7Var = map.get(str);
        if (qd7Var == null) {
            qd7Var = new qd7();
            map.put(str, qd7Var);
        }
        ((qd7) qd7Var).j(e74Var);
    }

    public void q(dob dobVar) {
        y45.j(dobVar, "source");
        dobVar.e(this.g);
        dobVar.b(this.h);
        this.c.add(dobVar);
    }

    public final void r(qnb qnbVar) {
        xi.c();
        Iterator it = i81.b1(this.f.values()).iterator();
        while (it.hasNext()) {
            ((e74) it.next()).invoke(qnbVar);
        }
        qd7 qd7Var = (qd7) this.d.get(qnbVar.b());
        if (qd7Var != null) {
            Iterator it2 = qd7Var.iterator();
            while (it2.hasNext()) {
                ((e74) it2.next()).invoke(qnbVar);
            }
        }
    }

    public final void s(qnb qnbVar) {
        qnbVar.a(this.g);
        r(qnbVar);
    }

    public final void t(String str, e74 e74Var) {
        qd7 qd7Var = (qd7) this.d.get(str);
        if (qd7Var != null) {
            qd7Var.p(e74Var);
        }
    }

    public final void v(String str, wc3 wc3Var, boolean z, e74 e74Var) {
        qnb qnbVarA = a(str);
        if (qnbVarA == null) {
            if (wc3Var != null) {
                wc3Var.e(mx7.p(str, null, 2, null));
            }
            p(str, e74Var);
        } else {
            if (z) {
                xi.c();
                e74Var.invoke(qnbVarA);
            }
            p(str, e74Var);
        }
    }

    public VariableControllerImpl(snb snbVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : snbVar);
    }
}
