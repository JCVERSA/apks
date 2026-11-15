package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.k5;
import defpackage.acb;
import defpackage.e74;
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
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class k5 {
    public static final a a = new a(null);
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return k5.c(((Long) obj).longValue());
        }
    };
    public static final pnb c = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return k5.d(((Long) obj).longValue());
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
        public DivVideoSource.Resolution a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            Expression expressionF = pa5.f(ex7Var, jSONObject, "height", zbbVar, e74Var, k5.b);
            y45.i(expressionF, "readExpression(context, …TO_INT, HEIGHT_VALIDATOR)");
            Expression expressionF2 = pa5.f(ex7Var, jSONObject, "width", zbbVar, e74Var, k5.c);
            y45.i(expressionF2, "readExpression(context, …_TO_INT, WIDTH_VALIDATOR)");
            return new DivVideoSource.Resolution(expressionF, expressionF2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivVideoSource.Resolution resolution) {
            y45.j(ex7Var, "context");
            y45.j(resolution, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "height", resolution.a);
            tb5.v(ex7Var, jSONObject, "type", "resolution");
            pa5.p(ex7Var, jSONObject, "width", resolution.b);
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
        public DivVideoSourceTemplate.ResolutionTemplate c(ex7 ex7Var, DivVideoSourceTemplate.ResolutionTemplate resolutionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.b;
            tp3 tp3Var = resolutionTemplate != null ? resolutionTemplate.a : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarJ = ra5.j(ex7VarC, jSONObject, "height", zbbVar, zC, tp3Var, e74Var, k5.b);
            y45.i(tp3VarJ, "readFieldWithExpression(…TO_INT, HEIGHT_VALIDATOR)");
            tp3 tp3VarJ2 = ra5.j(ex7VarC, jSONObject, "width", zbbVar, zC, resolutionTemplate != null ? resolutionTemplate.b : null, e74Var, k5.c);
            y45.i(tp3VarJ2, "readFieldWithExpression(…_TO_INT, WIDTH_VALIDATOR)");
            return new DivVideoSourceTemplate.ResolutionTemplate(tp3VarJ, tp3VarJ2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivVideoSourceTemplate.ResolutionTemplate resolutionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(resolutionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "height", resolutionTemplate.a);
            tb5.v(ex7Var, jSONObject, "type", "resolution");
            ra5.D(ex7Var, jSONObject, "width", resolutionTemplate.b);
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
        public DivVideoSource.Resolution a(ex7 ex7Var, DivVideoSourceTemplate.ResolutionTemplate resolutionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(resolutionTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = resolutionTemplate.a;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            Expression expressionI = sa5.i(ex7Var, tp3Var, jSONObject, "height", zbbVar, e74Var, k5.b);
            y45.i(expressionI, "resolveExpression(contex…TO_INT, HEIGHT_VALIDATOR)");
            Expression expressionI2 = sa5.i(ex7Var, resolutionTemplate.b, jSONObject, "width", zbbVar, e74Var, k5.c);
            y45.i(expressionI2, "resolveExpression(contex…_TO_INT, WIDTH_VALIDATOR)");
            return new DivVideoSource.Resolution(expressionI, expressionI2);
        }
    }

    public static final boolean c(long j) {
        return j > 0;
    }

    public static final boolean d(long j) {
        return j > 0;
    }
}
