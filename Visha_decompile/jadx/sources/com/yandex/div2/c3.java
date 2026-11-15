package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.c3;
import defpackage.acb;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.pnb;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class c3 {
    public static final a a = new a(null);
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return c3.b(((Double) obj).doubleValue());
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
        public DivRadialGradient.ColorPoint a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionE = pa5.e(ex7Var, jSONObject, "color", acb.f, ParsingConvertersKt.b);
            y45.i(expressionE, "readExpression(context, …LOR, STRING_TO_COLOR_INT)");
            Expression expressionF = pa5.f(ex7Var, jSONObject, "position", acb.d, ParsingConvertersKt.g, c3.b);
            y45.i(expressionF, "readExpression(context, …UBLE, POSITION_VALIDATOR)");
            return new DivRadialGradient.ColorPoint(expressionE, expressionF);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivRadialGradient.ColorPoint colorPoint) {
            y45.j(ex7Var, "context");
            y45.j(colorPoint, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "color", colorPoint.a, ParsingConvertersKt.a);
            pa5.p(ex7Var, jSONObject, "position", colorPoint.b);
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
        public DivRadialGradientTemplate.ColorPointTemplate c(ex7 ex7Var, DivRadialGradientTemplate.ColorPointTemplate colorPointTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "color", acb.f, zC, colorPointTemplate != null ? colorPointTemplate.a : null, ParsingConvertersKt.b);
            y45.i(tp3VarI, "readFieldWithExpression(…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarJ = ra5.j(ex7VarC, jSONObject, "position", acb.d, zC, colorPointTemplate != null ? colorPointTemplate.b : null, ParsingConvertersKt.g, c3.b);
            y45.i(tp3VarJ, "readFieldWithExpression(…UBLE, POSITION_VALIDATOR)");
            return new DivRadialGradientTemplate.ColorPointTemplate(tp3VarI, tp3VarJ);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivRadialGradientTemplate.ColorPointTemplate colorPointTemplate) {
            y45.j(ex7Var, "context");
            y45.j(colorPointTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "color", colorPointTemplate.a, ParsingConvertersKt.a);
            ra5.D(ex7Var, jSONObject, "position", colorPointTemplate.b);
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
        public DivRadialGradient.ColorPoint a(ex7 ex7Var, DivRadialGradientTemplate.ColorPointTemplate colorPointTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(colorPointTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionH = sa5.h(ex7Var, colorPointTemplate.a, jSONObject, "color", acb.f, ParsingConvertersKt.b);
            y45.i(expressionH, "resolveExpression(contex…LOR, STRING_TO_COLOR_INT)");
            Expression expressionI = sa5.i(ex7Var, colorPointTemplate.b, jSONObject, "position", acb.d, ParsingConvertersKt.g, c3.b);
            y45.i(expressionI, "resolveExpression(contex…UBLE, POSITION_VALIDATOR)");
            return new DivRadialGradient.ColorPoint(expressionH, expressionI);
        }
    }

    public static final boolean b(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }
}
