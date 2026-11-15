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

public abstract class f2 {
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
        public DivInputValidatorRegex a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = f2.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "allow_empty", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            zbb zbbVar2 = acb.c;
            Expression expressionD = pa5.d(ex7Var, jSONObject, "label_id", zbbVar2);
            y45.i(expressionD, "readExpression(context, …_id\", TYPE_HELPER_STRING)");
            Expression expressionD2 = pa5.d(ex7Var, jSONObject, "pattern", zbbVar2);
            y45.i(expressionD2, "readExpression(context, …ern\", TYPE_HELPER_STRING)");
            Object objD = tb5.d(ex7Var, jSONObject, "variable");
            y45.i(objD, "read(context, data, \"variable\")");
            return new DivInputValidatorRegex(expression, expressionD, expressionD2, (String) objD);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivInputValidatorRegex divInputValidatorRegex) {
            y45.j(ex7Var, "context");
            y45.j(divInputValidatorRegex, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "allow_empty", divInputValidatorRegex.a);
            pa5.p(ex7Var, jSONObject, "label_id", divInputValidatorRegex.b);
            pa5.p(ex7Var, jSONObject, "pattern", divInputValidatorRegex.c);
            tb5.v(ex7Var, jSONObject, "type", "regex");
            tb5.v(ex7Var, jSONObject, "variable", divInputValidatorRegex.d);
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
        public DivInputValidatorRegexTemplate c(ex7 ex7Var, DivInputValidatorRegexTemplate divInputValidatorRegexTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "allow_empty", acb.a, zC, divInputValidatorRegexTemplate != null ? divInputValidatorRegexTemplate.a : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…lowEmpty, ANY_TO_BOOLEAN)");
            zbb zbbVar = acb.c;
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "label_id", zbbVar, zC, divInputValidatorRegexTemplate != null ? divInputValidatorRegexTemplate.b : null);
            y45.i(tp3VarH, "readFieldWithExpression(…verride, parent?.labelId)");
            tp3 tp3VarH2 = ra5.h(ex7VarC, jSONObject, "pattern", zbbVar, zC, divInputValidatorRegexTemplate != null ? divInputValidatorRegexTemplate.c : null);
            y45.i(tp3VarH2, "readFieldWithExpression(…verride, parent?.pattern)");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "variable", zC, divInputValidatorRegexTemplate != null ? divInputValidatorRegexTemplate.d : null);
            y45.i(tp3VarC, "readField(context, data,…erride, parent?.variable)");
            return new DivInputValidatorRegexTemplate(tp3VarU, tp3VarH, tp3VarH2, tp3VarC);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivInputValidatorRegexTemplate divInputValidatorRegexTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divInputValidatorRegexTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "allow_empty", divInputValidatorRegexTemplate.a);
            ra5.D(ex7Var, jSONObject, "label_id", divInputValidatorRegexTemplate.b);
            ra5.D(ex7Var, jSONObject, "pattern", divInputValidatorRegexTemplate.c);
            tb5.v(ex7Var, jSONObject, "type", "regex");
            ra5.G(ex7Var, jSONObject, "variable", divInputValidatorRegexTemplate.d);
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
        public DivInputValidatorRegex a(ex7 ex7Var, DivInputValidatorRegexTemplate divInputValidatorRegexTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divInputValidatorRegexTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divInputValidatorRegexTemplate.a;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = f2.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "allow_empty", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            tp3 tp3Var2 = divInputValidatorRegexTemplate.b;
            zbb zbbVar2 = acb.c;
            Expression expressionG = sa5.g(ex7Var, tp3Var2, jSONObject, "label_id", zbbVar2);
            y45.i(expressionG, "resolveExpression(contex…_id\", TYPE_HELPER_STRING)");
            Expression expressionG2 = sa5.g(ex7Var, divInputValidatorRegexTemplate.c, jSONObject, "pattern", zbbVar2);
            y45.i(expressionG2, "resolveExpression(contex…ern\", TYPE_HELPER_STRING)");
            Object objA = sa5.a(ex7Var, divInputValidatorRegexTemplate.d, jSONObject, "variable");
            y45.i(objA, "resolve(context, templat…riable, data, \"variable\")");
            return new DivInputValidatorRegex(expression, expressionG, expressionG2, (String) objA);
        }
    }
}
