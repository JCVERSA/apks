package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.k2;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hm5;
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
import defpackage.yi5;
import defpackage.zbb;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class k2 {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(0L);
    public static final pnb c = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return k2.d(((Long) obj).longValue());
        }
    };
    public static final hm5 d = new hm5() {
        @Override
        public final boolean a(List list) {
            return k2.e(list);
        }
    };
    public static final hm5 e = new hm5() {
        @Override
        public final boolean a(List list) {
            return k2.f(list);
        }
    };

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
        public DivLinearGradient a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = k2.c;
            Expression expression = k2.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "angle", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            return new DivLinearGradient(expression, tb5.s(ex7Var, jSONObject, "color_map", this.a.P4(), k2.e), pa5.n(ex7Var, jSONObject, "colors", acb.f, ParsingConvertersKt.b, k2.d));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivLinearGradient divLinearGradient) {
            y45.j(ex7Var, "context");
            y45.j(divLinearGradient, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "angle", divLinearGradient.a);
            tb5.z(ex7Var, jSONObject, "color_map", divLinearGradient.b, this.a.P4());
            pa5.r(ex7Var, jSONObject, "colors", divLinearGradient.c, ParsingConvertersKt.a);
            tb5.v(ex7Var, jSONObject, "type", "gradient");
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
        public DivLinearGradientTemplate c(ex7 ex7Var, DivLinearGradientTemplate divLinearGradientTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "angle", acb.b, zC, divLinearGradientTemplate != null ? divLinearGradientTemplate.a : null, ParsingConvertersKt.h, k2.c);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_TO_INT, ANGLE_VALIDATOR)");
            tp3 tp3Var = divLinearGradientTemplate != null ? divLinearGradientTemplate.b : null;
            yi5 yi5VarQ4 = this.a.Q4();
            hm5 hm5Var = k2.e;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarA = ra5.A(ex7VarC, jSONObject, "color_map", zC, tp3Var, yi5VarQ4, hm5Var);
            y45.i(tp3VarA, "readOptionalListField(co…LOR_MAP_VALIDATOR.cast())");
            zbb zbbVar = acb.f;
            tp3 tp3Var2 = divLinearGradientTemplate != null ? divLinearGradientTemplate.c : null;
            e74 e74Var = ParsingConvertersKt.b;
            hm5 hm5Var2 = k2.d;
            y45.h(hm5Var2, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarN = ra5.n(ex7VarC, jSONObject, "colors", zbbVar, zC, tp3Var2, e74Var, hm5Var2);
            y45.i(tp3VarN, "readOptionalExpressionLi… COLORS_VALIDATOR.cast())");
            return new DivLinearGradientTemplate(tp3VarV, tp3VarA, tp3VarN);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivLinearGradientTemplate divLinearGradientTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divLinearGradientTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "angle", divLinearGradientTemplate.a);
            ra5.K(ex7Var, jSONObject, "color_map", divLinearGradientTemplate.b, this.a.Q4());
            ra5.F(ex7Var, jSONObject, "colors", divLinearGradientTemplate.c, ParsingConvertersKt.a);
            tb5.v(ex7Var, jSONObject, "type", "gradient");
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
        public DivLinearGradient a(ex7 ex7Var, DivLinearGradientTemplate divLinearGradientTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divLinearGradientTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divLinearGradientTemplate.a;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = k2.c;
            Expression expression = k2.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "angle", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            return new DivLinearGradient(expression, sa5.C(ex7Var, divLinearGradientTemplate.b, jSONObject, "color_map", this.a.R4(), this.a.P4(), k2.e), sa5.x(ex7Var, divLinearGradientTemplate.c, jSONObject, "colors", acb.f, ParsingConvertersKt.b, k2.d));
        }
    }

    public static final boolean d(long j) {
        return j >= 0 && j <= 360;
    }

    public static final boolean e(List list) {
        y45.j(list, "it");
        return list.size() >= 2;
    }

    public static final boolean f(List list) {
        y45.j(list, "it");
        return list.size() >= 2;
    }
}
