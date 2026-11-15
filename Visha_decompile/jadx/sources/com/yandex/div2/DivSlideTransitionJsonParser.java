package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSlideTransitionJsonParser;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hi;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.pnb;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivSlideTransitionJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final zbb f;
    public static final zbb g;
    public static final pnb h;
    public static final pnb i;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b implements pd9, w92 {
        public final JsonParserComponent a;

        public b(JsonParserComponent jsonParserComponent) {
            y45.j(jsonParserComponent, "component");
            this.a = jsonParserComponent;
        }

        @Override
        public DivSlideTransition a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivDimension divDimension = (DivDimension) tb5.n(ex7Var, jSONObject, "distance", this.a.J2());
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivSlideTransitionJsonParser.h;
            Expression expression = DivSlideTransitionJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            zbb zbbVar2 = DivSlideTransitionJsonParser.f;
            e74 e74Var2 = DivSlideTransition.Edge.FROM_STRING;
            Expression expression2 = DivSlideTransitionJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "edge", zbbVar2, e74Var2, expression2);
            Expression expression3 = expressionL == null ? expression2 : expressionL;
            zbb zbbVar3 = DivSlideTransitionJsonParser.g;
            e74 e74Var3 = DivAnimationInterpolator.FROM_STRING;
            Expression expression4 = DivSlideTransitionJsonParser.d;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "interpolator", zbbVar3, e74Var3, expression4);
            Expression expression5 = expressionL2 == null ? expression4 : expressionL2;
            pnb pnbVar2 = DivSlideTransitionJsonParser.i;
            Expression expression6 = DivSlideTransitionJsonParser.e;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "start_delay", zbbVar, e74Var, pnbVar2, expression6);
            return new DivSlideTransition(divDimension, expression, expression3, expression5, expressionK2 == null ? expression6 : expressionK2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSlideTransition divSlideTransition) {
            y45.j(ex7Var, "context");
            y45.j(divSlideTransition, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "distance", divSlideTransition.a, this.a.J2());
            pa5.p(ex7Var, jSONObject, "duration", divSlideTransition.b());
            pa5.q(ex7Var, jSONObject, "edge", divSlideTransition.c, DivSlideTransition.Edge.TO_STRING);
            pa5.q(ex7Var, jSONObject, "interpolator", divSlideTransition.c(), DivAnimationInterpolator.TO_STRING);
            pa5.p(ex7Var, jSONObject, "start_delay", divSlideTransition.d());
            tb5.v(ex7Var, jSONObject, "type", "slide");
            return jSONObject;
        }
    }

    public static final class c implements pd9, gfa {
        public final JsonParserComponent a;

        public c(JsonParserComponent jsonParserComponent) {
            y45.j(jsonParserComponent, "component");
            this.a = jsonParserComponent;
        }

        @Override
        public DivSlideTransitionTemplate c(ex7 ex7Var, DivSlideTransitionTemplate divSlideTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "distance", zC, divSlideTransitionTemplate != null ? divSlideTransitionTemplate.a : null, this.a.K2());
            y45.i(tp3VarS, "readOptionalField(contex…ensionJsonTemplateParser)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divSlideTransitionTemplate != null ? divSlideTransitionTemplate.b : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "duration", zbbVar, zC, tp3Var, e74Var, DivSlideTransitionJsonParser.h);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_INT, DURATION_VALIDATOR)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "edge", DivSlideTransitionJsonParser.f, zC, divSlideTransitionTemplate != null ? divSlideTransitionTemplate.c : null, DivSlideTransition.Edge.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…nsition.Edge.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "interpolator", DivSlideTransitionJsonParser.g, zC, divSlideTransitionTemplate != null ? divSlideTransitionTemplate.d : null, DivAnimationInterpolator.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…Interpolator.FROM_STRING)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "start_delay", zbbVar, zC, divSlideTransitionTemplate != null ? divSlideTransitionTemplate.e : null, e74Var, DivSlideTransitionJsonParser.i);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, START_DELAY_VALIDATOR)");
            return new DivSlideTransitionTemplate(tp3VarS, tp3VarV, tp3VarU, tp3VarU2, tp3VarV2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSlideTransitionTemplate divSlideTransitionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divSlideTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "distance", divSlideTransitionTemplate.a, this.a.K2());
            ra5.D(ex7Var, jSONObject, "duration", divSlideTransitionTemplate.b);
            ra5.E(ex7Var, jSONObject, "edge", divSlideTransitionTemplate.c, DivSlideTransition.Edge.TO_STRING);
            ra5.E(ex7Var, jSONObject, "interpolator", divSlideTransitionTemplate.d, DivAnimationInterpolator.TO_STRING);
            ra5.D(ex7Var, jSONObject, "start_delay", divSlideTransitionTemplate.e);
            tb5.v(ex7Var, jSONObject, "type", "slide");
            return jSONObject;
        }
    }

    public static final class d implements lga {
        public final JsonParserComponent a;

        public d(JsonParserComponent jsonParserComponent) {
            y45.j(jsonParserComponent, "component");
            this.a = jsonParserComponent;
        }

        @Override
        public DivSlideTransition a(ex7 ex7Var, DivSlideTransitionTemplate divSlideTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divSlideTransitionTemplate, "template");
            y45.j(jSONObject, "data");
            DivDimension divDimension = (DivDimension) sa5.p(ex7Var, divSlideTransitionTemplate.a, jSONObject, "distance", this.a.L2(), this.a.J2());
            tp3 tp3Var = divSlideTransitionTemplate.b;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivSlideTransitionJsonParser.h;
            Expression expression = DivSlideTransitionJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            tp3 tp3Var2 = divSlideTransitionTemplate.c;
            zbb zbbVar2 = DivSlideTransitionJsonParser.f;
            e74 e74Var2 = DivSlideTransition.Edge.FROM_STRING;
            Expression expression2 = DivSlideTransitionJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var2, jSONObject, "edge", zbbVar2, e74Var2, expression2);
            Expression expression3 = expressionV == null ? expression2 : expressionV;
            tp3 tp3Var3 = divSlideTransitionTemplate.d;
            zbb zbbVar3 = DivSlideTransitionJsonParser.g;
            e74 e74Var3 = DivAnimationInterpolator.FROM_STRING;
            Expression expression4 = DivSlideTransitionJsonParser.d;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var3, jSONObject, "interpolator", zbbVar3, e74Var3, expression4);
            Expression expression5 = expressionV2 == null ? expression4 : expressionV2;
            tp3 tp3Var4 = divSlideTransitionTemplate.e;
            pnb pnbVar2 = DivSlideTransitionJsonParser.i;
            Expression expression6 = DivSlideTransitionJsonParser.e;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var4, jSONObject, "start_delay", zbbVar, e74Var, pnbVar2, expression6);
            return new DivSlideTransition(divDimension, expression, expression3, expression5, expressionU2 == null ? expression6 : expressionU2);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(200L);
        c = aVar.a(DivSlideTransition.Edge.BOTTOM);
        d = aVar.a(DivAnimationInterpolator.EASE_IN_OUT);
        e = aVar.a(0L);
        zbb.a aVar2 = zbb.a;
        f = aVar2.a(hi.W(DivSlideTransition.Edge.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivSlideTransition.Edge);
            }
        });
        g = aVar2.a(hi.W(DivAnimationInterpolator.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimationInterpolator);
            }
        });
        h = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSlideTransitionJsonParser.c(((Long) obj).longValue());
            }
        };
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSlideTransitionJsonParser.d(((Long) obj).longValue());
            }
        };
    }

    public static final boolean c(long j) {
        return j >= 0;
    }

    public static final boolean d(long j) {
        return j >= 0;
    }
}
