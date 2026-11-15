package com.yandex.div.json.expressions;

import com.yandex.div.json.ParsingException;
import defpackage.e74;
import defpackage.hd1;
import defpackage.hm5;
import defpackage.i81;
import defpackage.lx7;
import defpackage.mx7;
import defpackage.nj3;
import defpackage.oj3;
import defpackage.qc2;
import defpackage.y45;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class MutableExpressionList implements nj3 {
    public final String a;
    public final List b;
    public final hm5 c;
    public final lx7 d;
    public List e;

    public MutableExpressionList(String str, List list, hm5 hm5Var, lx7 lx7Var) {
        y45.j(str, "key");
        y45.j(list, "expressions");
        y45.j(hm5Var, "listValidator");
        y45.j(lx7Var, "logger");
        this.a = str;
        this.b = list;
        this.c = hm5Var;
        this.d = lx7Var;
    }

    @Override
    public List a(oj3 oj3Var) {
        y45.j(oj3Var, "resolver");
        try {
            List listD = d(oj3Var);
            this.e = listD;
            return listD;
        } catch (ParsingException e) {
            this.d.c(e);
            List list = this.e;
            if (list != null) {
                return list;
            }
            throw e;
        }
    }

    @Override
    public qc2 b(final oj3 oj3Var, final e74 e74Var) {
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        e74 e74Var2 = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m269invoke(obj);
                return zfb.a;
            }

            public final void m269invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                e74Var.invoke(this.a(oj3Var));
            }
        };
        if (this.b.size() == 1) {
            return ((Expression) i81.o0(this.b)).e(oj3Var, e74Var2);
        }
        hd1 hd1Var = new hd1();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            hd1Var.a(((Expression) it.next()).e(oj3Var, e74Var2));
        }
        return hd1Var;
    }

    public final List c() {
        return this.b;
    }

    public final List d(oj3 oj3Var) {
        List list = this.b;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Expression) it.next()).b(oj3Var));
        }
        if (this.c.a(arrayList)) {
            return arrayList;
        }
        throw mx7.e(this.a, arrayList);
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableExpressionList) && y45.e(this.b, ((MutableExpressionList) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode() * 16;
    }
}
