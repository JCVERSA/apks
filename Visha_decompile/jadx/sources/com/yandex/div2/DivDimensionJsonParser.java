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
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivDimensionJsonParser {
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
        public DivDimension a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = DivDimensionJsonParser.c;
            e74 e74Var = DivSizeUnit.FROM_STRING;
            Expression expression = DivDimensionJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "unit", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            Expression expressionE = pa5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.d, ParsingConvertersKt.g);
            y45.i(expressionE, "readExpression(context, …DOUBLE, NUMBER_TO_DOUBLE)");
            return new DivDimension(expression, expressionE);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivDimension divDimension) {
            y45.j(ex7Var, "context");
            y45.j(divDimension, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "unit", divDimension.a, DivSizeUnit.TO_STRING);
            pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divDimension.b);
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
        public DivDimensionTemplate c(ex7 ex7Var, DivDimensionTemplate divDimensionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "unit", DivDimensionJsonParser.c, zC, divDimensionTemplate != null ? divDimensionTemplate.a : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.d, zC, divDimensionTemplate != null ? divDimensionTemplate.b : null, ParsingConvertersKt.g);
            y45.i(tp3VarI, "readFieldWithExpression(….value, NUMBER_TO_DOUBLE)");
            return new DivDimensionTemplate(tp3VarU, tp3VarI);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivDimensionTemplate divDimensionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divDimensionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "unit", divDimensionTemplate.a, DivSizeUnit.TO_STRING);
            ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divDimensionTemplate.b);
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
        public DivDimension a(ex7 ex7Var, DivDimensionTemplate divDimensionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divDimensionTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divDimensionTemplate.a;
            zbb zbbVar = DivDimensionJsonParser.c;
            e74 e74Var = DivSizeUnit.FROM_STRING;
            Expression expression = DivDimensionJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "unit", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            Expression expressionH = sa5.h(ex7Var, divDimensionTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.d, ParsingConvertersKt.g);
            y45.i(expressionH, "resolveExpression(contex…DOUBLE, NUMBER_TO_DOUBLE)");
            return new DivDimension(expression, expressionH);
        }
    }
}
