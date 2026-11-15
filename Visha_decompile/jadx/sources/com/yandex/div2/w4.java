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

public abstract class w4 {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(Boolean.TRUE);

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
        public DivTextRangeMaskSolid a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionE = pa5.e(ex7Var, jSONObject, "color", acb.f, ParsingConvertersKt.b);
            y45.i(expressionE, "readExpression(context, …LOR, STRING_TO_COLOR_INT)");
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = w4.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "is_enabled", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            return new DivTextRangeMaskSolid(expressionE, expression);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextRangeMaskSolid divTextRangeMaskSolid) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeMaskSolid, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "color", divTextRangeMaskSolid.a, ParsingConvertersKt.a);
            pa5.p(ex7Var, jSONObject, "is_enabled", divTextRangeMaskSolid.b);
            tb5.v(ex7Var, jSONObject, "type", "solid");
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
        public DivTextRangeMaskSolidTemplate c(ex7 ex7Var, DivTextRangeMaskSolidTemplate divTextRangeMaskSolidTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "color", acb.f, zC, divTextRangeMaskSolidTemplate != null ? divTextRangeMaskSolidTemplate.a : null, ParsingConvertersKt.b);
            y45.i(tp3VarI, "readFieldWithExpression(…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "is_enabled", acb.a, zC, divTextRangeMaskSolidTemplate != null ? divTextRangeMaskSolidTemplate.b : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…sEnabled, ANY_TO_BOOLEAN)");
            return new DivTextRangeMaskSolidTemplate(tp3VarI, tp3VarU);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextRangeMaskSolidTemplate divTextRangeMaskSolidTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeMaskSolidTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "color", divTextRangeMaskSolidTemplate.a, ParsingConvertersKt.a);
            ra5.D(ex7Var, jSONObject, "is_enabled", divTextRangeMaskSolidTemplate.b);
            tb5.v(ex7Var, jSONObject, "type", "solid");
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
        public DivTextRangeMaskSolid a(ex7 ex7Var, DivTextRangeMaskSolidTemplate divTextRangeMaskSolidTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeMaskSolidTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionH = sa5.h(ex7Var, divTextRangeMaskSolidTemplate.a, jSONObject, "color", acb.f, ParsingConvertersKt.b);
            y45.i(expressionH, "resolveExpression(contex…LOR, STRING_TO_COLOR_INT)");
            tp3 tp3Var = divTextRangeMaskSolidTemplate.b;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = w4.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "is_enabled", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            return new DivTextRangeMaskSolid(expressionH, expression);
        }
    }
}
