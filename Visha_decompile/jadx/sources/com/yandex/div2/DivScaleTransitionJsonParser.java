package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivScaleTransitionJsonParser;
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

public abstract class DivScaleTransitionJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final Expression f;
    public static final Expression g;
    public static final zbb h;
    public static final pnb i;
    public static final pnb j;
    public static final pnb k;
    public static final pnb l;
    public static final pnb m;

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
        public DivScaleTransition a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivScaleTransitionJsonParser.i;
            Expression expression = DivScaleTransitionJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            zbb zbbVar2 = DivScaleTransitionJsonParser.h;
            e74 e74Var2 = DivAnimationInterpolator.FROM_STRING;
            Expression expression2 = DivScaleTransitionJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "interpolator", zbbVar2, e74Var2, expression2);
            Expression expression3 = expressionL == null ? expression2 : expressionL;
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar2 = DivScaleTransitionJsonParser.j;
            Expression expression4 = DivScaleTransitionJsonParser.d;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "pivot_x", zbbVar3, e74Var3, pnbVar2, expression4);
            if (expressionK2 != null) {
                expression4 = expressionK2;
            }
            pnb pnbVar3 = DivScaleTransitionJsonParser.k;
            Expression expression5 = DivScaleTransitionJsonParser.e;
            Expression expressionK3 = pa5.k(ex7Var, jSONObject, "pivot_y", zbbVar3, e74Var3, pnbVar3, expression5);
            if (expressionK3 != null) {
                expression5 = expressionK3;
            }
            pnb pnbVar4 = DivScaleTransitionJsonParser.l;
            Expression expression6 = DivScaleTransitionJsonParser.f;
            Expression expressionK4 = pa5.k(ex7Var, jSONObject, "scale", zbbVar3, e74Var3, pnbVar4, expression6);
            if (expressionK4 != null) {
                expression6 = expressionK4;
            }
            pnb pnbVar5 = DivScaleTransitionJsonParser.m;
            Expression expression7 = DivScaleTransitionJsonParser.g;
            Expression expressionK5 = pa5.k(ex7Var, jSONObject, "start_delay", zbbVar, e74Var, pnbVar5, expression7);
            return new DivScaleTransition(expression, expression3, expression4, expression5, expression6, expressionK5 == null ? expression7 : expressionK5);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivScaleTransition divScaleTransition) {
            y45.j(ex7Var, "context");
            y45.j(divScaleTransition, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "duration", divScaleTransition.b());
            pa5.q(ex7Var, jSONObject, "interpolator", divScaleTransition.c(), DivAnimationInterpolator.TO_STRING);
            pa5.p(ex7Var, jSONObject, "pivot_x", divScaleTransition.c);
            pa5.p(ex7Var, jSONObject, "pivot_y", divScaleTransition.d);
            pa5.p(ex7Var, jSONObject, "scale", divScaleTransition.e);
            pa5.p(ex7Var, jSONObject, "start_delay", divScaleTransition.d());
            tb5.v(ex7Var, jSONObject, "type", "scale");
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
        public DivScaleTransitionTemplate c(ex7 ex7Var, DivScaleTransitionTemplate divScaleTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.b;
            tp3 tp3Var = divScaleTransitionTemplate != null ? divScaleTransitionTemplate.a : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "duration", zbbVar, zC, tp3Var, e74Var, DivScaleTransitionJsonParser.i);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_INT, DURATION_VALIDATOR)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "interpolator", DivScaleTransitionJsonParser.h, zC, divScaleTransitionTemplate != null ? divScaleTransitionTemplate.b : null, DivAnimationInterpolator.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…Interpolator.FROM_STRING)");
            zbb zbbVar2 = acb.d;
            tp3 tp3Var2 = divScaleTransitionTemplate != null ? divScaleTransitionTemplate.c : null;
            e74 e74Var2 = ParsingConvertersKt.g;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "pivot_x", zbbVar2, zC, tp3Var2, e74Var2, DivScaleTransitionJsonParser.j);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…OUBLE, PIVOT_X_VALIDATOR)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "pivot_y", zbbVar2, zC, divScaleTransitionTemplate != null ? divScaleTransitionTemplate.d : null, e74Var2, DivScaleTransitionJsonParser.k);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…OUBLE, PIVOT_Y_VALIDATOR)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "scale", zbbVar2, zC, divScaleTransitionTemplate != null ? divScaleTransitionTemplate.e : null, e74Var2, DivScaleTransitionJsonParser.l);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…_DOUBLE, SCALE_VALIDATOR)");
            tp3 tp3VarV5 = ra5.v(ex7VarC, jSONObject, "start_delay", zbbVar, zC, divScaleTransitionTemplate != null ? divScaleTransitionTemplate.f : null, e74Var, DivScaleTransitionJsonParser.m);
            y45.i(tp3VarV5, "readOptionalFieldWithExp…T, START_DELAY_VALIDATOR)");
            return new DivScaleTransitionTemplate(tp3VarV, tp3VarU, tp3VarV2, tp3VarV3, tp3VarV4, tp3VarV5);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivScaleTransitionTemplate divScaleTransitionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divScaleTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "duration", divScaleTransitionTemplate.a);
            ra5.E(ex7Var, jSONObject, "interpolator", divScaleTransitionTemplate.b, DivAnimationInterpolator.TO_STRING);
            ra5.D(ex7Var, jSONObject, "pivot_x", divScaleTransitionTemplate.c);
            ra5.D(ex7Var, jSONObject, "pivot_y", divScaleTransitionTemplate.d);
            ra5.D(ex7Var, jSONObject, "scale", divScaleTransitionTemplate.e);
            ra5.D(ex7Var, jSONObject, "start_delay", divScaleTransitionTemplate.f);
            tb5.v(ex7Var, jSONObject, "type", "scale");
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
        public DivScaleTransition a(ex7 ex7Var, DivScaleTransitionTemplate divScaleTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divScaleTransitionTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divScaleTransitionTemplate.a;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivScaleTransitionJsonParser.i;
            Expression expression = DivScaleTransitionJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            tp3 tp3Var2 = divScaleTransitionTemplate.b;
            zbb zbbVar2 = DivScaleTransitionJsonParser.h;
            e74 e74Var2 = DivAnimationInterpolator.FROM_STRING;
            Expression expression2 = DivScaleTransitionJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var2, jSONObject, "interpolator", zbbVar2, e74Var2, expression2);
            Expression expression3 = expressionV == null ? expression2 : expressionV;
            tp3 tp3Var3 = divScaleTransitionTemplate.c;
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar2 = DivScaleTransitionJsonParser.j;
            Expression expression4 = DivScaleTransitionJsonParser.d;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var3, jSONObject, "pivot_x", zbbVar3, e74Var3, pnbVar2, expression4);
            if (expressionU2 != null) {
                expression4 = expressionU2;
            }
            tp3 tp3Var4 = divScaleTransitionTemplate.d;
            pnb pnbVar3 = DivScaleTransitionJsonParser.k;
            Expression expression5 = DivScaleTransitionJsonParser.e;
            Expression expressionU3 = sa5.u(ex7Var, tp3Var4, jSONObject, "pivot_y", zbbVar3, e74Var3, pnbVar3, expression5);
            if (expressionU3 != null) {
                expression5 = expressionU3;
            }
            tp3 tp3Var5 = divScaleTransitionTemplate.e;
            pnb pnbVar4 = DivScaleTransitionJsonParser.l;
            Expression expression6 = DivScaleTransitionJsonParser.f;
            Expression expressionU4 = sa5.u(ex7Var, tp3Var5, jSONObject, "scale", zbbVar3, e74Var3, pnbVar4, expression6);
            if (expressionU4 != null) {
                expression6 = expressionU4;
            }
            tp3 tp3Var6 = divScaleTransitionTemplate.f;
            pnb pnbVar5 = DivScaleTransitionJsonParser.m;
            Expression expression7 = DivScaleTransitionJsonParser.g;
            Expression expressionU5 = sa5.u(ex7Var, tp3Var6, jSONObject, "start_delay", zbbVar, e74Var, pnbVar5, expression7);
            return new DivScaleTransition(expression, expression3, expression4, expression5, expression6, expressionU5 == null ? expression7 : expressionU5);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(200L);
        c = aVar.a(DivAnimationInterpolator.EASE_IN_OUT);
        Double dValueOf = Double.valueOf(0.5d);
        d = aVar.a(dValueOf);
        e = aVar.a(dValueOf);
        f = aVar.a(Double.valueOf(0.0d));
        g = aVar.a(0L);
        h = zbb.a.a(hi.W(DivAnimationInterpolator.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimationInterpolator);
            }
        });
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivScaleTransitionJsonParser.f(((Long) obj).longValue());
            }
        };
        j = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivScaleTransitionJsonParser.g(((Double) obj).doubleValue());
            }
        };
        k = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivScaleTransitionJsonParser.h(((Double) obj).doubleValue());
            }
        };
        l = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivScaleTransitionJsonParser.i(((Double) obj).doubleValue());
            }
        };
        m = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivScaleTransitionJsonParser.j(((Long) obj).longValue());
            }
        };
    }

    public static final boolean f(long j2) {
        return j2 >= 0;
    }

    public static final boolean g(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean h(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean i(double d2) {
        return d2 >= 0.0d;
    }

    public static final boolean j(long j2) {
        return j2 >= 0;
    }
}
