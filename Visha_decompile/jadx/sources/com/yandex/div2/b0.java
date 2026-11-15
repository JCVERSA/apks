package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.b0;
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

public abstract class b0 {
    public static final a a = new a(null);
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return b0.b(((Double) obj).doubleValue());
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
        public DivAspect a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionF = pa5.f(ex7Var, jSONObject, "ratio", acb.d, ParsingConvertersKt.g, b0.b);
            y45.i(expressionF, "readExpression(context, …_DOUBLE, RATIO_VALIDATOR)");
            return new DivAspect(expressionF);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivAspect divAspect) {
            y45.j(ex7Var, "context");
            y45.j(divAspect, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "ratio", divAspect.a);
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
        public DivAspectTemplate c(ex7 ex7Var, DivAspectTemplate divAspectTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            tp3 tp3VarJ = ra5.j(fx7.c(ex7Var), jSONObject, "ratio", acb.d, ex7Var.c(), divAspectTemplate != null ? divAspectTemplate.a : null, ParsingConvertersKt.g, b0.b);
            y45.i(tp3VarJ, "readFieldWithExpression(…_DOUBLE, RATIO_VALIDATOR)");
            return new DivAspectTemplate(tp3VarJ);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivAspectTemplate divAspectTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divAspectTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "ratio", divAspectTemplate.a);
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
        public DivAspect a(ex7 ex7Var, DivAspectTemplate divAspectTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divAspectTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionI = sa5.i(ex7Var, divAspectTemplate.a, jSONObject, "ratio", acb.d, ParsingConvertersKt.g, b0.b);
            y45.i(expressionI, "resolveExpression(contex…_DOUBLE, RATIO_VALIDATOR)");
            return new DivAspect(expressionI);
        }
    }

    public static final boolean b(double d2) {
        return d2 > 0.0d;
    }
}
