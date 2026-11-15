package defpackage;

import com.yandex.div.evaluable.EvaluableException;
import java.util.ArrayList;
import java.util.List;

public final class bx7 {
    public static final bx7 a = new bx7();

    public static final class a {
        public final List a;
        public final String b;
        public int c;

        public a(List list, String str) {
            y45.j(list, "tokens");
            y45.j(str, "rawExpr");
            this.a = list;
            this.b = str;
        }

        public final gpa a() {
            return (gpa) this.a.get(this.c);
        }

        public final int b() {
            int i = this.c;
            this.c = i + 1;
            return i;
        }

        public final String c() {
            return this.b;
        }

        public final boolean d() {
            return this.c >= this.a.size();
        }

        public final boolean e() {
            return !d();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b);
        }

        public final gpa f() {
            return (gpa) this.a.get(b());
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "ParsingState(tokens=" + this.a + ", rawExpr=" + this.b + ')';
        }
    }

    public static com.yandex.div.evaluable.a c(bx7 bx7Var, a aVar, com.yandex.div.evaluable.a aVar2, int i, Object obj) {
        if ((i & 2) != 0) {
            aVar2 = null;
        }
        return bx7Var.b(aVar, aVar2);
    }

    public final com.yandex.div.evaluable.a a(a aVar) {
        com.yandex.div.evaluable.a aVarE = e(aVar);
        while (aVar.e() && (aVar.a() instanceof gpa.c.a.d.C0361a)) {
            aVar.b();
            aVarE = new com.yandex.div.evaluable.a.C0296a(gpa.c.a.d.C0361a.a, aVarE, e(aVar), aVar.c());
        }
        return aVarE;
    }

    public final com.yandex.div.evaluable.a b(a aVar, com.yandex.div.evaluable.a aVar2) {
        if (aVar.d()) {
            throw new EvaluableException("Expression expected", null, 2, null);
        }
        gpa gpaVarF = aVar.f();
        if (aVar2 != null && !(gpaVarF instanceof gpa.a)) {
            throw new EvaluableException("Method expected after .", null, 2, null);
        }
        if (gpaVarF instanceof gpa.b.a) {
            return new com.yandex.div.evaluable.a.j((gpa.b.a) gpaVarF, aVar.c());
        }
        if (gpaVarF instanceof gpa.b.C0352b) {
            return new com.yandex.div.evaluable.a.k(((gpa.b.C0352b) gpaVarF).g(), aVar.c(), null);
        }
        if (gpaVarF instanceof gpa.a) {
            return l((gpa.a) gpaVarF, aVar, aVar2);
        }
        if (gpaVarF instanceof zoa) {
            com.yandex.div.evaluable.a aVarG = g(aVar);
            if (aVar.f() instanceof apa) {
                return aVarG;
            }
            throw new EvaluableException("')' expected after expression", null, 2, null);
        }
        if (!(gpaVarF instanceof dpa)) {
            throw new EvaluableException("Expression expected", null, 2, null);
        }
        ArrayList arrayList = new ArrayList();
        while (aVar.e() && !(aVar.a() instanceof bpa)) {
            if ((aVar.a() instanceof epa) || (aVar.a() instanceof cpa)) {
                aVar.b();
            } else {
                arrayList.add(g(aVar));
            }
        }
        if (aVar.f() instanceof bpa) {
            return new com.yandex.div.evaluable.a.f(arrayList, aVar.c());
        }
        throw new EvaluableException("expected ''' at end of a string template", null, 2, null);
    }

    public final com.yandex.div.evaluable.a d(a aVar) {
        com.yandex.div.evaluable.a aVarM = m(aVar);
        while (aVar.e() && (aVar.a() instanceof gpa.c.a.InterfaceC0353a)) {
            gpa gpaVarF = aVar.f();
            com.yandex.div.evaluable.a aVarM2 = m(aVar);
            y45.h(gpaVarF, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator.Binary");
            aVarM = new com.yandex.div.evaluable.a.C0296a((gpa.c.a) gpaVarF, aVarM, aVarM2, aVar.c());
        }
        return aVarM;
    }

    public final com.yandex.div.evaluable.a e(a aVar) {
        com.yandex.div.evaluable.a aVarD = d(aVar);
        while (aVar.e() && (aVar.a() instanceof gpa.c.a.b)) {
            gpa gpaVarF = aVar.f();
            com.yandex.div.evaluable.a aVarD2 = d(aVar);
            y45.h(gpaVarF, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator.Binary");
            aVarD = new com.yandex.div.evaluable.a.C0296a((gpa.c.a) gpaVarF, aVarD, aVarD2, aVar.c());
        }
        return aVarD;
    }

    public final com.yandex.div.evaluable.a f(a aVar) {
        com.yandex.div.evaluable.a aVarI = i(aVar);
        if (!aVar.e() || !(aVar.a() instanceof gpa.c.a.e)) {
            return aVarI;
        }
        aVar.b();
        return new com.yandex.div.evaluable.a.C0296a(gpa.c.a.e.a, aVarI, o(aVar), aVar.c());
    }

    public final com.yandex.div.evaluable.a g(a aVar) {
        com.yandex.div.evaluable.a aVarN = n(aVar);
        if (!aVar.e() || !(aVar.a() instanceof gpa.c.d)) {
            return aVarN;
        }
        aVar.b();
        com.yandex.div.evaluable.a aVarG = g(aVar);
        if (aVar.d() || !(aVar.a() instanceof gpa.c.C0363c)) {
            throw new EvaluableException("':' expected in ternary-if-else expression", null, 2, null);
        }
        aVar.b();
        return new com.yandex.div.evaluable.a.g(gpa.c.e.a, aVarN, aVarG, g(aVar), aVar.c());
    }

    public final com.yandex.div.evaluable.a h(a aVar) {
        com.yandex.div.evaluable.a aVarO = o(aVar);
        while (aVar.e() && (aVar.a() instanceof gpa.c.a.InterfaceC0358c)) {
            gpa gpaVarF = aVar.f();
            y45.h(gpaVarF, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator.Binary");
            aVarO = new com.yandex.div.evaluable.a.C0296a((gpa.c.a) gpaVarF, aVarO, o(aVar), aVar.c());
        }
        return aVarO;
    }

    public final com.yandex.div.evaluable.a i(a aVar) {
        com.yandex.div.evaluable.a aVarC = c(this, aVar, null, 2, null);
        while (aVar.e() && (aVar.a() instanceof gpa.c.b)) {
            aVar.b();
            aVarC = b(aVar, aVarC);
        }
        return aVarC;
    }

    public final com.yandex.div.evaluable.a j(a aVar) {
        com.yandex.div.evaluable.a aVarA = a(aVar);
        while (aVar.e() && (aVar.a() instanceof gpa.c.a.d.b)) {
            aVar.b();
            aVarA = new com.yandex.div.evaluable.a.C0296a(gpa.c.a.d.b.a, aVarA, a(aVar), aVar.c());
        }
        return aVarA;
    }

    public final com.yandex.div.evaluable.a k(List list, String str) {
        y45.j(list, "tokens");
        y45.j(str, "rawExpression");
        if (list.isEmpty()) {
            throw new EvaluableException("Expression expected", null, 2, null);
        }
        a aVar = new a(list, str);
        com.yandex.div.evaluable.a aVarG = g(aVar);
        if (aVar.e()) {
            throw new EvaluableException("Expression expected", null, 2, null);
        }
        return aVarG;
    }

    public final com.yandex.div.evaluable.a l(gpa.a aVar, a aVar2, com.yandex.div.evaluable.a aVar3) {
        if (!(aVar2.f() instanceof zoa)) {
            throw new EvaluableException("'(' expected after function call", null, 2, null);
        }
        ArrayList arrayList = new ArrayList();
        if (aVar3 != null) {
            arrayList.add(aVar3);
        }
        while (!(aVar2.a() instanceof apa)) {
            arrayList.add(g(aVar2));
            if (aVar2.a() instanceof gpa.a.C0349a) {
                aVar2.b();
            }
        }
        if (aVar2.f() instanceof apa) {
            return aVar3 == null ? new com.yandex.div.evaluable.a.c(aVar, arrayList, aVar2.c()) : new com.yandex.div.evaluable.a.e(aVar, arrayList, aVar2.c());
        }
        throw new EvaluableException("expected ')' after a function call", null, 2, null);
    }

    public final com.yandex.div.evaluable.a m(a aVar) {
        com.yandex.div.evaluable.a aVarH = h(aVar);
        while (aVar.e() && (aVar.a() instanceof gpa.c.a.f)) {
            gpa gpaVarF = aVar.f();
            y45.h(gpaVarF, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator.Binary");
            aVarH = new com.yandex.div.evaluable.a.C0296a((gpa.c.a) gpaVarF, aVarH, h(aVar), aVar.c());
        }
        return aVarH;
    }

    public final com.yandex.div.evaluable.a n(a aVar) {
        com.yandex.div.evaluable.a aVarJ = j(aVar);
        if (!aVar.e() || !(aVar.a() instanceof gpa.c.f)) {
            return aVarJ;
        }
        gpa gpaVarF = aVar.f();
        com.yandex.div.evaluable.a aVarG = g(aVar);
        y45.h(gpaVarF, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator.Try");
        return new com.yandex.div.evaluable.a.h((gpa.c.f) gpaVarF, aVarJ, aVarG, aVar.c());
    }

    public final com.yandex.div.evaluable.a o(a aVar) {
        if (!aVar.e() || !(aVar.a() instanceof gpa.c.g)) {
            return f(aVar);
        }
        gpa gpaVarF = aVar.f();
        y45.h(gpaVarF, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator");
        return new com.yandex.div.evaluable.a.i((gpa.c) gpaVarF, o(aVar), aVar.c());
    }
}
