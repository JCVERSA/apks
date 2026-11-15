package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.o5;
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

public abstract class o5 {
    public static final a a = new a(null);
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return o5.b(((Long) obj).longValue());
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
        public IndexDestination a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionF = pa5.f(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ParsingConvertersKt.h, o5.b);
            y45.i(expressionF, "readExpression(context, …_TO_INT, VALUE_VALIDATOR)");
            return new IndexDestination(expressionF);
        }

        @Override
        public JSONObject b(ex7 ex7Var, IndexDestination indexDestination) {
            y45.j(ex7Var, "context");
            y45.j(indexDestination, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.v(ex7Var, jSONObject, "type", "index");
            pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, indexDestination.a);
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
        public IndexDestinationTemplate c(ex7 ex7Var, IndexDestinationTemplate indexDestinationTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            tp3 tp3VarJ = ra5.j(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ex7Var.c(), indexDestinationTemplate != null ? indexDestinationTemplate.a : null, ParsingConvertersKt.h, o5.b);
            y45.i(tp3VarJ, "readFieldWithExpression(…_TO_INT, VALUE_VALIDATOR)");
            return new IndexDestinationTemplate(tp3VarJ);
        }

        @Override
        public JSONObject b(ex7 ex7Var, IndexDestinationTemplate indexDestinationTemplate) {
            y45.j(ex7Var, "context");
            y45.j(indexDestinationTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.v(ex7Var, jSONObject, "type", "index");
            ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, indexDestinationTemplate.a);
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
        public IndexDestination a(ex7 ex7Var, IndexDestinationTemplate indexDestinationTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(indexDestinationTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionI = sa5.i(ex7Var, indexDestinationTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ParsingConvertersKt.h, o5.b);
            y45.i(expressionI, "resolveExpression(contex…_TO_INT, VALUE_VALIDATOR)");
            return new IndexDestination(expressionI);
        }
    }

    public static final boolean b(long j) {
        return j >= 0;
    }
}
