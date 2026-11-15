package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hi;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
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

public abstract class DivRadialGradientFixedCenterJsonParser {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(DivSizeUnit.DP);
    public static final zbb c = zbb.a.a(hi.W(DivSizeUnit.values()), new e74() {
        @Override
        public final Boolean invoke(Object obj) {
            y45.j(obj, "it");
            return Boolean.valueOf(obj instanceof DivSizeUnit);
        }
    });

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
        public DivRadialGradientFixedCenter a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = DivRadialGradientFixedCenterJsonParser.c;
            e74 e74Var = DivSizeUnit.FROM_STRING;
            Expression expression = DivRadialGradientFixedCenterJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "unit", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            Expression expressionE = pa5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ParsingConvertersKt.h);
            y45.i(expressionE, "readExpression(context, …ELPER_INT, NUMBER_TO_INT)");
            return new DivRadialGradientFixedCenter(expression, expressionE);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivRadialGradientFixedCenter divRadialGradientFixedCenter) {
            y45.j(ex7Var, "context");
            y45.j(divRadialGradientFixedCenter, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.v(ex7Var, jSONObject, "type", "fixed");
            pa5.q(ex7Var, jSONObject, "unit", divRadialGradientFixedCenter.a, DivSizeUnit.TO_STRING);
            pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divRadialGradientFixedCenter.b);
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
        public DivRadialGradientFixedCenterTemplate c(ex7 ex7Var, DivRadialGradientFixedCenterTemplate divRadialGradientFixedCenterTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "unit", DivRadialGradientFixedCenterJsonParser.c, zC, divRadialGradientFixedCenterTemplate != null ? divRadialGradientFixedCenterTemplate.a : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, zC, divRadialGradientFixedCenterTemplate != null ? divRadialGradientFixedCenterTemplate.b : null, ParsingConvertersKt.h);
            y45.i(tp3VarI, "readFieldWithExpression(…nt?.value, NUMBER_TO_INT)");
            return new DivRadialGradientFixedCenterTemplate(tp3VarU, tp3VarI);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivRadialGradientFixedCenterTemplate divRadialGradientFixedCenterTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divRadialGradientFixedCenterTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.v(ex7Var, jSONObject, "type", "fixed");
            ra5.E(ex7Var, jSONObject, "unit", divRadialGradientFixedCenterTemplate.a, DivSizeUnit.TO_STRING);
            ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divRadialGradientFixedCenterTemplate.b);
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
        public DivRadialGradientFixedCenter a(ex7 ex7Var, DivRadialGradientFixedCenterTemplate divRadialGradientFixedCenterTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divRadialGradientFixedCenterTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divRadialGradientFixedCenterTemplate.a;
            zbb zbbVar = DivRadialGradientFixedCenterJsonParser.c;
            e74 e74Var = DivSizeUnit.FROM_STRING;
            Expression expression = DivRadialGradientFixedCenterJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "unit", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            Expression expressionH = sa5.h(ex7Var, divRadialGradientFixedCenterTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ParsingConvertersKt.h);
            y45.i(expressionH, "resolveExpression(contex…ELPER_INT, NUMBER_TO_INT)");
            return new DivRadialGradientFixedCenter(expression, expressionH);
        }
    }
}
