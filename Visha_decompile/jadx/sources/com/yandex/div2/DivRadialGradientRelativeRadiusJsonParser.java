package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
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

public abstract class DivRadialGradientRelativeRadiusJsonParser {
    public static final a a = new a(null);
    public static final zbb b = zbb.a.a(hi.W(DivRadialGradientRelativeRadius.Value.values()), new e74() {
        @Override
        public final Boolean invoke(Object obj) {
            y45.j(obj, "it");
            return Boolean.valueOf(obj instanceof DivRadialGradientRelativeRadius.Value);
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
        public DivRadialGradientRelativeRadius a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionE = pa5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, DivRadialGradientRelativeRadiusJsonParser.b, DivRadialGradientRelativeRadius.Value.FROM_STRING);
            y45.i(expressionE, "readExpression(context, …Radius.Value.FROM_STRING)");
            return new DivRadialGradientRelativeRadius(expressionE);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivRadialGradientRelativeRadius divRadialGradientRelativeRadius) {
            y45.j(ex7Var, "context");
            y45.j(divRadialGradientRelativeRadius, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.v(ex7Var, jSONObject, "type", "relative");
            pa5.q(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divRadialGradientRelativeRadius.a, DivRadialGradientRelativeRadius.Value.TO_STRING);
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
        public DivRadialGradientRelativeRadiusTemplate c(ex7 ex7Var, DivRadialGradientRelativeRadiusTemplate divRadialGradientRelativeRadiusTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            tp3 tp3VarI = ra5.i(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, DivRadialGradientRelativeRadiusJsonParser.b, ex7Var.c(), divRadialGradientRelativeRadiusTemplate != null ? divRadialGradientRelativeRadiusTemplate.a : null, DivRadialGradientRelativeRadius.Value.FROM_STRING);
            y45.i(tp3VarI, "readFieldWithExpression(…Radius.Value.FROM_STRING)");
            return new DivRadialGradientRelativeRadiusTemplate(tp3VarI);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivRadialGradientRelativeRadiusTemplate divRadialGradientRelativeRadiusTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divRadialGradientRelativeRadiusTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.v(ex7Var, jSONObject, "type", "relative");
            ra5.E(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divRadialGradientRelativeRadiusTemplate.a, DivRadialGradientRelativeRadius.Value.TO_STRING);
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
        public DivRadialGradientRelativeRadius a(ex7 ex7Var, DivRadialGradientRelativeRadiusTemplate divRadialGradientRelativeRadiusTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divRadialGradientRelativeRadiusTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionH = sa5.h(ex7Var, divRadialGradientRelativeRadiusTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, DivRadialGradientRelativeRadiusJsonParser.b, DivRadialGradientRelativeRadius.Value.FROM_STRING);
            y45.i(expressionH, "resolveExpression(contex…Radius.Value.FROM_STRING)");
            return new DivRadialGradientRelativeRadius(expressionH);
        }
    }
}
