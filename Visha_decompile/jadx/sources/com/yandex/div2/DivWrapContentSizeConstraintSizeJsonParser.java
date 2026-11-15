package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivWrapContentSizeConstraintSizeJsonParser;
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
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivWrapContentSizeConstraintSizeJsonParser {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(DivSizeUnit.DP);
    public static final zbb c = zbb.a.a(hi.W(DivSizeUnit.values()), new e74() {
        @Override
        public final Boolean invoke(Object obj) {
            y45.j(obj, "it");
            return Boolean.valueOf(obj instanceof DivSizeUnit);
        }
    });
    public static final pnb d = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return DivWrapContentSizeConstraintSizeJsonParser.b(((Long) obj).longValue());
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
        public DivWrapContentSize.ConstraintSize a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = DivWrapContentSizeConstraintSizeJsonParser.c;
            e74 e74Var = DivSizeUnit.FROM_STRING;
            Expression expression = DivWrapContentSizeConstraintSizeJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "unit", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            Expression expressionF = pa5.f(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ParsingConvertersKt.h, DivWrapContentSizeConstraintSizeJsonParser.d);
            y45.i(expressionF, "readExpression(context, …_TO_INT, VALUE_VALIDATOR)");
            return new DivWrapContentSize.ConstraintSize(expression, expressionF);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivWrapContentSize.ConstraintSize constraintSize) {
            y45.j(ex7Var, "context");
            y45.j(constraintSize, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "unit", constraintSize.a, DivSizeUnit.TO_STRING);
            pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, constraintSize.b);
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
        public DivWrapContentSizeTemplate.ConstraintSizeTemplate c(ex7 ex7Var, DivWrapContentSizeTemplate.ConstraintSizeTemplate constraintSizeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "unit", DivWrapContentSizeConstraintSizeJsonParser.c, zC, constraintSizeTemplate != null ? constraintSizeTemplate.a : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            tp3 tp3VarJ = ra5.j(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, zC, constraintSizeTemplate != null ? constraintSizeTemplate.b : null, ParsingConvertersKt.h, DivWrapContentSizeConstraintSizeJsonParser.d);
            y45.i(tp3VarJ, "readFieldWithExpression(…_TO_INT, VALUE_VALIDATOR)");
            return new DivWrapContentSizeTemplate.ConstraintSizeTemplate(tp3VarU, tp3VarJ);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivWrapContentSizeTemplate.ConstraintSizeTemplate constraintSizeTemplate) {
            y45.j(ex7Var, "context");
            y45.j(constraintSizeTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "unit", constraintSizeTemplate.a, DivSizeUnit.TO_STRING);
            ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, constraintSizeTemplate.b);
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
        public DivWrapContentSize.ConstraintSize a(ex7 ex7Var, DivWrapContentSizeTemplate.ConstraintSizeTemplate constraintSizeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(constraintSizeTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = constraintSizeTemplate.a;
            zbb zbbVar = DivWrapContentSizeConstraintSizeJsonParser.c;
            e74 e74Var = DivSizeUnit.FROM_STRING;
            Expression expression = DivWrapContentSizeConstraintSizeJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "unit", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            Expression expressionI = sa5.i(ex7Var, constraintSizeTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ParsingConvertersKt.h, DivWrapContentSizeConstraintSizeJsonParser.d);
            y45.i(expressionI, "resolveExpression(contex…_TO_INT, VALUE_VALIDATOR)");
            return new DivWrapContentSize.ConstraintSize(expression, expressionI);
        }
    }

    public static final boolean b(long j) {
        return j >= 0;
    }
}
