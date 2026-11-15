package com.yandex.div.json.expressions;

import com.yandex.div.evaluable.EvaluableException;
import com.yandex.div.json.ParsingException;
import defpackage.c74;
import defpackage.e74;
import defpackage.j1a;
import defpackage.lx7;
import defpackage.mx7;
import defpackage.oj3;
import defpackage.pnb;
import defpackage.qc2;
import defpackage.rm5;
import defpackage.y45;
import defpackage.zbb;
import defpackage.zfb;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

public abstract class Expression {
    public static final a a = new a(null);

    public static final class MutableExpression extends Expression {
        public final String b;
        public final String c;
        public final e74 d;
        public final pnb e;
        public final lx7 f;
        public final zbb g;
        public final Expression h;
        public final String i;
        public com.yandex.div.evaluable.a j;
        public Object k;

        public MutableExpression(String str, String str2, e74 e74Var, pnb pnbVar, lx7 lx7Var, zbb zbbVar, Expression expression) {
            y45.j(str, "expressionKey");
            y45.j(str2, "rawExpression");
            y45.j(pnbVar, "validator");
            y45.j(lx7Var, "logger");
            y45.j(zbbVar, "typeHelper");
            this.b = str;
            this.c = str2;
            this.d = e74Var;
            this.e = pnbVar;
            this.f = lx7Var;
            this.g = zbbVar;
            this.h = expression;
            this.i = str2;
        }

        @Override
        public Object b(oj3 oj3Var) {
            y45.j(oj3Var, "resolver");
            return l(oj3Var);
        }

        @Override
        public qc2 e(final oj3 oj3Var, final e74 e74Var) {
            y45.j(oj3Var, "resolver");
            y45.j(e74Var, "callback");
            try {
                List listI = i();
                return listI.isEmpty() ? qc2.A1 : oj3Var.a(this.c, listI, new c74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m268invoke();
                        return zfb.a;
                    }

                    public final void m268invoke() {
                        e74Var.invoke(this.b(oj3Var));
                    }
                });
            } catch (Exception e) {
                j(mx7.q(this.b, this.c, e), oj3Var);
                return qc2.A1;
            }
        }

        public final com.yandex.div.evaluable.a g() {
            com.yandex.div.evaluable.a aVar = this.j;
            if (aVar != null) {
                return aVar;
            }
            try {
                com.yandex.div.evaluable.a aVarA = com.yandex.div.evaluable.a.d.a(this.c);
                this.j = aVarA;
                return aVarA;
            } catch (EvaluableException e) {
                throw mx7.q(this.b, this.c, e);
            }
        }

        @Override
        public String c() {
            return this.i;
        }

        public final List i() {
            return g().f();
        }

        public final void j(ParsingException parsingException, oj3 oj3Var) {
            this.f.c(parsingException);
            oj3Var.c(parsingException);
        }

        public final Object k(oj3 oj3Var) {
            Object objB = oj3Var.b(this.b, this.c, g(), this.d, this.e, this.g, this.f);
            if (objB == null) {
                throw mx7.r(this.b, this.c, null, 4, null);
            }
            if (this.g.b(objB)) {
                return objB;
            }
            throw mx7.y(this.b, this.c, objB, null, 8, null);
        }

        public final Object l(oj3 oj3Var) {
            Object objB;
            try {
                Object objK = k(oj3Var);
                this.k = objK;
                return objK;
            } catch (ParsingException e) {
                String message = e.getMessage();
                if (message != null && message.length() != 0) {
                    j(e, oj3Var);
                }
                Object obj = this.k;
                if (obj != null) {
                    return obj;
                }
                try {
                    Expression expression = this.h;
                    if (expression == null || (objB = expression.b(oj3Var)) == null) {
                        return this.g.a();
                    }
                    this.k = objB;
                    return objB;
                } catch (ParsingException e2) {
                    j(e2, oj3Var);
                    throw e2;
                }
            }
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Expression a(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            if (!(obj instanceof String)) {
                return new b(obj);
            }
            return new c((String) obj, null, null, 6, null);
        }

        public final boolean b(Object obj) {
            return (obj instanceof String) && j1a.X((CharSequence) obj, "@{", false, 2, null);
        }

        public a() {
        }
    }

    public static class b extends Expression {
        public final Object b;

        public b(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            this.b = obj;
        }

        @Override
        public Object b(oj3 oj3Var) {
            y45.j(oj3Var, "resolver");
            return this.b;
        }

        @Override
        public Object c() {
            Object obj = this.b;
            y45.h(obj, "null cannot be cast to non-null type kotlin.Any");
            return obj;
        }

        @Override
        public qc2 e(oj3 oj3Var, e74 e74Var) {
            y45.j(oj3Var, "resolver");
            y45.j(e74Var, "callback");
            return qc2.A1;
        }

        @Override
        public qc2 f(oj3 oj3Var, e74 e74Var) {
            y45.j(oj3Var, "resolver");
            y45.j(e74Var, "callback");
            e74Var.invoke(this.b);
            return qc2.A1;
        }
    }

    public static final Expression a(Object obj) {
        return a.a(obj);
    }

    public static final boolean d(Object obj) {
        return a.b(obj);
    }

    public abstract Object b(oj3 oj3Var);

    public abstract Object c();

    public abstract qc2 e(oj3 oj3Var, e74 e74Var);

    public boolean equals(Object obj) {
        if (obj instanceof Expression) {
            return y45.e(c(), ((Expression) obj).c());
        }
        return false;
    }

    public qc2 f(oj3 oj3Var, e74 e74Var) {
        Object objB;
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        try {
            objB = b(oj3Var);
        } catch (ParsingException unused) {
            objB = null;
        }
        if (objB != null) {
            e74Var.invoke(objB);
        }
        return e(oj3Var, e74Var);
    }

    public int hashCode() {
        return c().hashCode() * 16;
    }

    public static final class c extends b {
        public final String c;
        public final String d;
        public final lx7 e;
        public String f;

        /* JADX WARN: Illegal instructions before constructor call */
        public c(String str, String str2, lx7 lx7Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
            str2 = (i & 2) != 0 ? "" : str2;
            if ((i & 4) != 0) {
                lx7Var = lx7.a;
                y45.i(lx7Var, "LOG");
            }
            this(str, str2, lx7Var);
        }

        @Override
        public String b(oj3 oj3Var) {
            y45.j(oj3Var, "resolver");
            String str = this.f;
            if (str != null) {
                return str;
            }
            try {
                String strE = rm5.e(rm5.a, this.c, null, 2, null);
                this.f = strE;
                return strE;
            } catch (EvaluableException e) {
                this.e.c(e);
                String str2 = this.d;
                this.f = str2;
                return str2;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, String str2, lx7 lx7Var) {
            super(str);
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            y45.j(str2, "defaultValue");
            y45.j(lx7Var, "logger");
            this.c = str;
            this.d = str2;
            this.e = lx7Var;
        }
    }
}
