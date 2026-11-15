package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivChangeBoundsTransitionJsonParser;
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

public abstract class DivChangeBoundsTransitionJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final zbb e;
    public static final pnb f;
    public static final pnb g;

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
        public DivChangeBoundsTransition a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivChangeBoundsTransitionJsonParser.f;
            Expression expression = DivChangeBoundsTransitionJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            zbb zbbVar2 = DivChangeBoundsTransitionJsonParser.e;
            e74 e74Var2 = DivAnimationInterpolator.FROM_STRING;
            Expression expression2 = DivChangeBoundsTransitionJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "interpolator", zbbVar2, e74Var2, expression2);
            Expression expression3 = expressionL == null ? expression2 : expressionL;
            pnb pnbVar2 = DivChangeBoundsTransitionJsonParser.g;
            Expression expression4 = DivChangeBoundsTransitionJsonParser.d;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "start_delay", zbbVar, e74Var, pnbVar2, expression4);
            if (expressionK2 != null) {
                expression4 = expressionK2;
            }
            return new DivChangeBoundsTransition(expression, expression3, expression4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivChangeBoundsTransition divChangeBoundsTransition) {
            y45.j(ex7Var, "context");
            y45.j(divChangeBoundsTransition, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "duration", divChangeBoundsTransition.b());
            pa5.q(ex7Var, jSONObject, "interpolator", divChangeBoundsTransition.c(), DivAnimationInterpolator.TO_STRING);
            pa5.p(ex7Var, jSONObject, "start_delay", divChangeBoundsTransition.d());
            tb5.v(ex7Var, jSONObject, "type", "change_bounds");
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
        public DivChangeBoundsTransitionTemplate c(ex7 ex7Var, DivChangeBoundsTransitionTemplate divChangeBoundsTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.b;
            tp3 tp3Var = divChangeBoundsTransitionTemplate != null ? divChangeBoundsTransitionTemplate.a : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "duration", zbbVar, zC, tp3Var, e74Var, DivChangeBoundsTransitionJsonParser.f);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_INT, DURATION_VALIDATOR)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "interpolator", DivChangeBoundsTransitionJsonParser.e, zC, divChangeBoundsTransitionTemplate != null ? divChangeBoundsTransitionTemplate.b : null, DivAnimationInterpolator.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…Interpolator.FROM_STRING)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "start_delay", zbbVar, zC, divChangeBoundsTransitionTemplate != null ? divChangeBoundsTransitionTemplate.c : null, e74Var, DivChangeBoundsTransitionJsonParser.g);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, START_DELAY_VALIDATOR)");
            return new DivChangeBoundsTransitionTemplate(tp3VarV, tp3VarU, tp3VarV2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivChangeBoundsTransitionTemplate divChangeBoundsTransitionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divChangeBoundsTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "duration", divChangeBoundsTransitionTemplate.a);
            ra5.E(ex7Var, jSONObject, "interpolator", divChangeBoundsTransitionTemplate.b, DivAnimationInterpolator.TO_STRING);
            ra5.D(ex7Var, jSONObject, "start_delay", divChangeBoundsTransitionTemplate.c);
            tb5.v(ex7Var, jSONObject, "type", "change_bounds");
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
        public DivChangeBoundsTransition a(ex7 ex7Var, DivChangeBoundsTransitionTemplate divChangeBoundsTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divChangeBoundsTransitionTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divChangeBoundsTransitionTemplate.a;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivChangeBoundsTransitionJsonParser.f;
            Expression expression = DivChangeBoundsTransitionJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            tp3 tp3Var2 = divChangeBoundsTransitionTemplate.b;
            zbb zbbVar2 = DivChangeBoundsTransitionJsonParser.e;
            e74 e74Var2 = DivAnimationInterpolator.FROM_STRING;
            Expression expression2 = DivChangeBoundsTransitionJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var2, jSONObject, "interpolator", zbbVar2, e74Var2, expression2);
            if (expressionV == null) {
                expressionV = expression2;
            }
            tp3 tp3Var3 = divChangeBoundsTransitionTemplate.c;
            pnb pnbVar2 = DivChangeBoundsTransitionJsonParser.g;
            Expression expression3 = DivChangeBoundsTransitionJsonParser.d;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var3, jSONObject, "start_delay", zbbVar, e74Var, pnbVar2, expression3);
            if (expressionU2 != null) {
                expression3 = expressionU2;
            }
            return new DivChangeBoundsTransition(expression, expressionV, expression3);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(200L);
        c = aVar.a(DivAnimationInterpolator.EASE_IN_OUT);
        d = aVar.a(0L);
        e = zbb.a.a(hi.W(DivAnimationInterpolator.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimationInterpolator);
            }
        });
        f = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivChangeBoundsTransitionJsonParser.c(((Long) obj).longValue());
            }
        };
        g = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivChangeBoundsTransitionJsonParser.d(((Long) obj).longValue());
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
