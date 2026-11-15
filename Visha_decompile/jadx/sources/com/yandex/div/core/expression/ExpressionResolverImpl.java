package com.yandex.div.core.expression;

import com.yandex.div.core.expression.ExpressionResolverImpl;
import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.evaluable.EvaluableException;
import com.yandex.div.evaluable.Evaluator;
import com.yandex.div.evaluable.MissingVariableException;
import com.yandex.div.json.ParsingException;
import com.yandex.div.json.ParsingExceptionReason;
import defpackage.c74;
import defpackage.e74;
import defpackage.i81;
import defpackage.l84;
import defpackage.lx7;
import defpackage.m84;
import defpackage.mx7;
import defpackage.oj3;
import defpackage.pd3;
import defpackage.pnb;
import defpackage.qc2;
import defpackage.qd7;
import defpackage.qnb;
import defpackage.rnb;
import defpackage.snb;
import defpackage.vf1;
import defpackage.wc3;
import defpackage.y45;
import defpackage.zbb;
import defpackage.zfb;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.io.IOUtils;
import org.json.JSONObject;

public final class ExpressionResolverImpl implements oj3 {
    public final String c;
    public final RuntimeStore d;
    public final snb e;
    public final Evaluator f;
    public final wc3 g;
    public final a h;
    public final Map i;
    public final Map j;
    public final Map k;
    public boolean l;

    public interface a {
        void a(ExpressionResolverImpl expressionResolverImpl, snb snbVar, m84 m84Var);
    }

    public ExpressionResolverImpl(String str, RuntimeStore runtimeStore, snb snbVar, Evaluator evaluator, wc3 wc3Var, a aVar) {
        y45.j(str, "path");
        y45.j(runtimeStore, "runtimeStore");
        y45.j(snbVar, "variableController");
        y45.j(evaluator, "evaluator");
        y45.j(wc3Var, "errorCollector");
        y45.j(aVar, "onCreateCallback");
        this.c = str;
        this.d = runtimeStore;
        this.e = snbVar;
        this.f = evaluator;
        this.g = wc3Var;
        this.h = aVar;
        this.i = new LinkedHashMap();
        this.j = new LinkedHashMap();
        this.k = new LinkedHashMap();
        l84 l84VarA = evaluator.r().a();
        y45.h(l84VarA, "null cannot be cast to non-null type com.yandex.div.core.expression.FunctionProviderDecorator");
        aVar.a(this, snbVar, (m84) l84VarA);
    }

    public static final boolean l(zbb zbbVar, Object obj) {
        return (obj == null || !(zbbVar.a() instanceof String) || zbbVar.b(obj)) ? false : true;
    }

    public static final void p(ExpressionResolverImpl expressionResolverImpl, String str, c74 c74Var) {
        y45.j(expressionResolverImpl, "this$0");
        y45.j(str, "$rawExpression");
        y45.j(c74Var, "$callback");
        qd7 qd7Var = (qd7) expressionResolverImpl.k.get(str);
        if (qd7Var != null) {
            qd7Var.p(c74Var);
        }
    }

    @Override
    public qc2 a(final String str, List list, final c74 c74Var) {
        y45.j(str, "rawExpression");
        y45.j(list, "variableNames");
        y45.j(c74Var, "callback");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            Map map = this.j;
            Object linkedHashSet = map.get(str2);
            if (linkedHashSet == null) {
                linkedHashSet = new LinkedHashSet();
                map.put(str2, linkedHashSet);
            }
            ((Set) linkedHashSet).add(str);
        }
        Map map2 = this.k;
        Object qd7Var = map2.get(str);
        if (qd7Var == null) {
            qd7Var = new qd7();
            map2.put(str, qd7Var);
        }
        ((qd7) qd7Var).j(c74Var);
        return new qc2() {
            @Override
            public final void close() {
                ExpressionResolverImpl.p(this.b, str, c74Var);
            }
        };
    }

    @Override
    public Object b(String str, String str2, com.yandex.div.evaluable.a aVar, e74 e74Var, pnb pnbVar, zbb zbbVar, lx7 lx7Var) {
        y45.j(str, "expressionKey");
        y45.j(str2, "rawExpression");
        y45.j(aVar, "evaluable");
        y45.j(pnbVar, "validator");
        y45.j(zbbVar, "fieldType");
        y45.j(lx7Var, "logger");
        try {
            return r(str, str2, aVar, e74Var, pnbVar, zbbVar);
        } catch (ParsingException e) {
            if (e.getReason() == ParsingExceptionReason.MISSING_VARIABLE) {
                if (this.l) {
                    throw mx7.d();
                }
                throw e;
            }
            lx7Var.c(e);
            this.g.e(e);
            return r(str, str2, aVar, e74Var, pnbVar, zbbVar);
        }
    }

    @Override
    public void c(ParsingException parsingException) {
        y45.j(parsingException, "e");
        this.g.e(parsingException);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExpressionResolverImpl)) {
            return false;
        }
        ExpressionResolverImpl expressionResolverImpl = (ExpressionResolverImpl) obj;
        if (this.d != expressionResolverImpl.d) {
            return false;
        }
        return y45.e(this.c, expressionResolverImpl.c);
    }

    public final Object h(String str, com.yandex.div.evaluable.a aVar) {
        Object objD = this.i.get(str);
        if (objD == null) {
            objD = this.f.d(aVar);
            if (aVar.b()) {
                for (String str2 : aVar.f()) {
                    Map map = this.j;
                    Object linkedHashSet = map.get(str2);
                    if (linkedHashSet == null) {
                        linkedHashSet = new LinkedHashSet();
                        map.put(str2, linkedHashSet);
                    }
                    ((Set) linkedHashSet).add(str);
                }
                this.i.put(str, objD);
            }
        }
        return objD;
    }

    public int hashCode() {
        return (this.c.hashCode() * 31) + this.d.hashCode();
    }

    public final String i() {
        return this.c;
    }

    public final RuntimeStore j() {
        return this.d;
    }

    public final Object k(String str, String str2, e74 e74Var, Object obj, zbb zbbVar) {
        if (e74Var != null) {
            try {
                obj = e74Var.invoke(obj);
            } catch (ClassCastException e) {
                throw mx7.v(str, str2, obj, e);
            } catch (Exception e2) {
                throw mx7.g(str, str2, obj, e2);
            }
        } else if (obj == null) {
            obj = null;
        }
        return l(zbbVar, obj) ? String.valueOf(obj) : obj;
    }

    public final void m(String str, String str2, pnb pnbVar, Object obj) {
        try {
            if (pnbVar.a(obj)) {
            } else {
                throw mx7.e(str2, obj);
            }
        } catch (ClassCastException e) {
            throw mx7.v(str, str2, obj, e);
        }
    }

    public final void n(boolean z) {
        this.l = z;
    }

    public final void o() {
        this.e.j(this, new e74() {
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
                Set set = (Set) this.this$0.j.get(qnbVar.b());
                List<String> listB1 = set != null ? i81.b1(set) : null;
                if (listB1 != null) {
                    ExpressionResolverImpl expressionResolverImpl = this.this$0;
                    for (String str : listB1) {
                        expressionResolverImpl.i.remove(str);
                        qd7 qd7Var = (qd7) expressionResolverImpl.k.get(str);
                        if (qd7Var != null) {
                            Iterator it = qd7Var.iterator();
                            while (it.hasNext()) {
                                ((c74) it.next()).invoke();
                            }
                        }
                    }
                }
            }
        });
    }

    public final String q(EvaluableException evaluableException) {
        if (evaluableException instanceof MissingVariableException) {
            return ((MissingVariableException) evaluableException).getVariableName();
        }
        return null;
    }

    public final Object r(String str, String str2, com.yandex.div.evaluable.a aVar, e74 e74Var, pnb pnbVar, zbb zbbVar) {
        try {
            Object objH = h(str2, aVar);
            if (zbbVar.b(objH)) {
                y45.h(objH, "null cannot be cast to non-null type T of com.yandex.div.core.expression.ExpressionResolverImpl.tryResolve");
            } else {
                Object objK = k(str, str2, e74Var, objH, zbbVar);
                if (objK == null) {
                    throw mx7.f(str, str2, objH);
                }
                objH = objK;
            }
            m(str, str2, pnbVar, objH);
            return objH;
        } catch (EvaluableException e) {
            String strQ = q(e);
            if (strQ != null) {
                throw mx7.n(str, str2, strQ, e);
            }
            throw mx7.q(str, str2, e);
        }
    }

    public final JSONObject s(Object obj, int i) {
        y45.j(obj, "element");
        JSONObject jSONObject = obj instanceof JSONObject ? (JSONObject) obj : null;
        if (jSONObject != null) {
            return jSONObject;
        }
        this.g.e(mx7.u(i, obj));
        return null;
    }

    public final ExpressionResolverImpl t(String str, vf1 vf1Var) {
        y45.j(str, "pathSegment");
        y45.j(vf1Var, "constants");
        rnb rnbVar = new rnb(this.e, vf1Var);
        return new ExpressionResolverImpl(this.c + IOUtils.DIR_SEPARATOR_UNIX + str, this.d, rnbVar, new Evaluator(new pd3(rnbVar, this.f.r().b(), this.f.r().a(), this.f.r().d())), this.g, this.h);
    }
}
