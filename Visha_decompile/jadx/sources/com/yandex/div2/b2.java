package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
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

public abstract class b2 {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(Boolean.FALSE);

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
        public DivInputValidatorExpression a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = b2.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "allow_empty", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            Expression expressionE = pa5.e(ex7Var, jSONObject, "condition", zbbVar, e74Var);
            y45.i(expressionE, "readExpression(context, …_BOOLEAN, ANY_TO_BOOLEAN)");
            Expression expressionD = pa5.d(ex7Var, jSONObject, "label_id", acb.c);
            y45.i(expressionD, "readExpression(context, …_id\", TYPE_HELPER_STRING)");
            Object objD = tb5.d(ex7Var, jSONObject, "variable");
            y45.i(objD, "read(context, data, \"variable\")");
            return new DivInputValidatorExpression(expression, expressionE, expressionD, (String) objD);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivInputValidatorExpression divInputValidatorExpression) {
            y45.j(ex7Var, "context");
            y45.j(divInputValidatorExpression, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "allow_empty", divInputValidatorExpression.a);
            pa5.p(ex7Var, jSONObject, "condition", divInputValidatorExpression.b);
            pa5.p(ex7Var, jSONObject, "label_id", divInputValidatorExpression.c);
            tb5.v(ex7Var, jSONObject, "type", "expression");
            tb5.v(ex7Var, jSONObject, "variable", divInputValidatorExpression.d);
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
        public DivInputValidatorExpressionTemplate c(ex7 ex7Var, DivInputValidatorExpressionTemplate divInputValidatorExpressionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.a;
            tp3 tp3Var = divInputValidatorExpressionTemplate != null ? divInputValidatorExpressionTemplate.a : null;
            e74 e74Var = ParsingConvertersKt.f;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "allow_empty", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU, "readOptionalFieldWithExp…lowEmpty, ANY_TO_BOOLEAN)");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "condition", zbbVar, zC, divInputValidatorExpressionTemplate != null ? divInputValidatorExpressionTemplate.b : null, e74Var);
            y45.i(tp3VarI, "readFieldWithExpression(…ondition, ANY_TO_BOOLEAN)");
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "label_id", acb.c, zC, divInputValidatorExpressionTemplate != null ? divInputValidatorExpressionTemplate.c : null);
            y45.i(tp3VarH, "readFieldWithExpression(…verride, parent?.labelId)");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "variable", zC, divInputValidatorExpressionTemplate != null ? divInputValidatorExpressionTemplate.d : null);
            y45.i(tp3VarC, "readField(context, data,…erride, parent?.variable)");
            return new DivInputValidatorExpressionTemplate(tp3VarU, tp3VarI, tp3VarH, tp3VarC);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivInputValidatorExpressionTemplate divInputValidatorExpressionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divInputValidatorExpressionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "allow_empty", divInputValidatorExpressionTemplate.a);
            ra5.D(ex7Var, jSONObject, "condition", divInputValidatorExpressionTemplate.b);
            ra5.D(ex7Var, jSONObject, "label_id", divInputValidatorExpressionTemplate.c);
            tb5.v(ex7Var, jSONObject, "type", "expression");
            ra5.G(ex7Var, jSONObject, "variable", divInputValidatorExpressionTemplate.d);
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
        public DivInputValidatorExpression a(ex7 ex7Var, DivInputValidatorExpressionTemplate divInputValidatorExpressionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divInputValidatorExpressionTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divInputValidatorExpressionTemplate.a;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = b2.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "allow_empty", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            Expression expressionH = sa5.h(ex7Var, divInputValidatorExpressionTemplate.b, jSONObject, "condition", zbbVar, e74Var);
            y45.i(expressionH, "resolveExpression(contex…_BOOLEAN, ANY_TO_BOOLEAN)");
            Expression expressionG = sa5.g(ex7Var, divInputValidatorExpressionTemplate.c, jSONObject, "label_id", acb.c);
            y45.i(expressionG, "resolveExpression(contex…_id\", TYPE_HELPER_STRING)");
            Object objA = sa5.a(ex7Var, divInputValidatorExpressionTemplate.d, jSONObject, "variable");
            y45.i(objA, "resolve(context, templat…riable, data, \"variable\")");
            return new DivInputValidatorExpression(expression, expressionH, expressionG, (String) objA);
        }
    }
}
