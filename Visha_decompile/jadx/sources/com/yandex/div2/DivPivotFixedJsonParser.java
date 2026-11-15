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

public abstract class DivPivotFixedJsonParser {
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
        public DivPivotFixed a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = DivPivotFixedJsonParser.c;
            e74 e74Var = DivSizeUnit.FROM_STRING;
            Expression expression = DivPivotFixedJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "unit", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            return new DivPivotFixed(expression, pa5.i(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ParsingConvertersKt.h));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivPivotFixed divPivotFixed) {
            y45.j(ex7Var, "context");
            y45.j(divPivotFixed, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.v(ex7Var, jSONObject, "type", "pivot-fixed");
            pa5.q(ex7Var, jSONObject, "unit", divPivotFixed.a, DivSizeUnit.TO_STRING);
            pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divPivotFixed.b);
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
        public DivPivotFixedTemplate c(ex7 ex7Var, DivPivotFixedTemplate divPivotFixedTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "unit", DivPivotFixedJsonParser.c, zC, divPivotFixedTemplate != null ? divPivotFixedTemplate.a : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, zC, divPivotFixedTemplate != null ? divPivotFixedTemplate.b : null, ParsingConvertersKt.h);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…nt?.value, NUMBER_TO_INT)");
            return new DivPivotFixedTemplate(tp3VarU, tp3VarU2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivPivotFixedTemplate divPivotFixedTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divPivotFixedTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.v(ex7Var, jSONObject, "type", "pivot-fixed");
            ra5.E(ex7Var, jSONObject, "unit", divPivotFixedTemplate.a, DivSizeUnit.TO_STRING);
            ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divPivotFixedTemplate.b);
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
        public DivPivotFixed a(ex7 ex7Var, DivPivotFixedTemplate divPivotFixedTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divPivotFixedTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divPivotFixedTemplate.a;
            zbb zbbVar = DivPivotFixedJsonParser.c;
            e74 e74Var = DivSizeUnit.FROM_STRING;
            Expression expression = DivPivotFixedJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "unit", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            return new DivPivotFixed(expression, sa5.s(ex7Var, divPivotFixedTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ParsingConvertersKt.h));
        }
    }
}
