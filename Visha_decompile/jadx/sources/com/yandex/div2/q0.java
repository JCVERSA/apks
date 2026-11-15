package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.q0;
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
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class q0 {
    public static final a a = new a(null);
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return q0.e(((Long) obj).longValue());
        }
    };
    public static final pnb c = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return q0.f(((Long) obj).longValue());
        }
    };
    public static final pnb d = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return q0.g(((Long) obj).longValue());
        }
    };
    public static final pnb e = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return q0.h(((Long) obj).longValue());
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
        public DivCornersRadius a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            return new DivCornersRadius(pa5.j(ex7Var, jSONObject, "bottom-left", zbbVar, e74Var, q0.b), pa5.j(ex7Var, jSONObject, "bottom-right", zbbVar, e74Var, q0.c), pa5.j(ex7Var, jSONObject, "top-left", zbbVar, e74Var, q0.d), pa5.j(ex7Var, jSONObject, "top-right", zbbVar, e74Var, q0.e));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCornersRadius divCornersRadius) {
            y45.j(ex7Var, "context");
            y45.j(divCornersRadius, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "bottom-left", divCornersRadius.a);
            pa5.p(ex7Var, jSONObject, "bottom-right", divCornersRadius.b);
            pa5.p(ex7Var, jSONObject, "top-left", divCornersRadius.c);
            pa5.p(ex7Var, jSONObject, "top-right", divCornersRadius.d);
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
        public DivCornersRadiusTemplate c(ex7 ex7Var, DivCornersRadiusTemplate divCornersRadiusTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.b;
            tp3 tp3Var = divCornersRadiusTemplate != null ? divCornersRadiusTemplate.a : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "bottom-left", zbbVar, zC, tp3Var, e74Var, q0.b);
            y45.i(tp3VarV, "readOptionalFieldWithExp…T, BOTTOM_LEFT_VALIDATOR)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "bottom-right", zbbVar, zC, divCornersRadiusTemplate != null ? divCornersRadiusTemplate.b : null, e74Var, q0.c);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…, BOTTOM_RIGHT_VALIDATOR)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "top-left", zbbVar, zC, divCornersRadiusTemplate != null ? divCornersRadiusTemplate.c : null, e74Var, q0.d);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, TOP_LEFT_VALIDATOR)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "top-right", zbbVar, zC, divCornersRadiusTemplate != null ? divCornersRadiusTemplate.d : null, e74Var, q0.e);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…INT, TOP_RIGHT_VALIDATOR)");
            return new DivCornersRadiusTemplate(tp3VarV, tp3VarV2, tp3VarV3, tp3VarV4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCornersRadiusTemplate divCornersRadiusTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divCornersRadiusTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "bottom-left", divCornersRadiusTemplate.a);
            ra5.D(ex7Var, jSONObject, "bottom-right", divCornersRadiusTemplate.b);
            ra5.D(ex7Var, jSONObject, "top-left", divCornersRadiusTemplate.c);
            ra5.D(ex7Var, jSONObject, "top-right", divCornersRadiusTemplate.d);
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
        public DivCornersRadius a(ex7 ex7Var, DivCornersRadiusTemplate divCornersRadiusTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divCornersRadiusTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divCornersRadiusTemplate.a;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            return new DivCornersRadius(sa5.t(ex7Var, tp3Var, jSONObject, "bottom-left", zbbVar, e74Var, q0.b), sa5.t(ex7Var, divCornersRadiusTemplate.b, jSONObject, "bottom-right", zbbVar, e74Var, q0.c), sa5.t(ex7Var, divCornersRadiusTemplate.c, jSONObject, "top-left", zbbVar, e74Var, q0.d), sa5.t(ex7Var, divCornersRadiusTemplate.d, jSONObject, "top-right", zbbVar, e74Var, q0.e));
        }
    }

    public static final boolean e(long j) {
        return j >= 0;
    }

    public static final boolean f(long j) {
        return j >= 0;
    }

    public static final boolean g(long j) {
        return j >= 0;
    }

    public static final boolean h(long j) {
        return j >= 0;
    }
}
