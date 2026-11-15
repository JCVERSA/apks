package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.f0;
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
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class f0 {
    public static final a a = new a(null);
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return f0.b(((Long) obj).longValue());
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
        public DivBlur a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionF = pa5.f(ex7Var, jSONObject, "radius", acb.b, ParsingConvertersKt.h, f0.b);
            y45.i(expressionF, "readExpression(context, …TO_INT, RADIUS_VALIDATOR)");
            return new DivBlur(expressionF);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivBlur divBlur) {
            y45.j(ex7Var, "context");
            y45.j(divBlur, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "radius", divBlur.a);
            tb5.v(ex7Var, jSONObject, "type", "blur");
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
        public DivBlurTemplate c(ex7 ex7Var, DivBlurTemplate divBlurTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            tp3 tp3VarJ = ra5.j(fx7.c(ex7Var), jSONObject, "radius", acb.b, ex7Var.c(), divBlurTemplate != null ? divBlurTemplate.a : null, ParsingConvertersKt.h, f0.b);
            y45.i(tp3VarJ, "readFieldWithExpression(…TO_INT, RADIUS_VALIDATOR)");
            return new DivBlurTemplate(tp3VarJ);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivBlurTemplate divBlurTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divBlurTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "radius", divBlurTemplate.a);
            tb5.v(ex7Var, jSONObject, "type", "blur");
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
        public DivBlur a(ex7 ex7Var, DivBlurTemplate divBlurTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divBlurTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionI = sa5.i(ex7Var, divBlurTemplate.a, jSONObject, "radius", acb.b, ParsingConvertersKt.h, f0.b);
            y45.i(expressionI, "resolveExpression(contex…TO_INT, RADIUS_VALIDATOR)");
            return new DivBlur(expressionI);
        }
    }

    public static final boolean b(long j) {
        return j >= 0;
    }
}
