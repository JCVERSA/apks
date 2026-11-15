package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.m0;
import defpackage.acb;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hb0;
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

public abstract class m0 {
    public static final a a = new a(null);
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return m0.b(((Long) obj).longValue());
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
        public DivCloudBackground a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionE = pa5.e(ex7Var, jSONObject, "color", acb.f, ParsingConvertersKt.b);
            y45.i(expressionE, "readExpression(context, …LOR, STRING_TO_COLOR_INT)");
            Expression expressionF = pa5.f(ex7Var, jSONObject, "corner_radius", acb.b, ParsingConvertersKt.h, m0.b);
            y45.i(expressionF, "readExpression(context, … CORNER_RADIUS_VALIDATOR)");
            return new DivCloudBackground(expressionE, expressionF, (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2()));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCloudBackground divCloudBackground) {
            y45.j(ex7Var, "context");
            y45.j(divCloudBackground, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "color", divCloudBackground.a, ParsingConvertersKt.a);
            pa5.p(ex7Var, jSONObject, "corner_radius", divCloudBackground.b);
            tb5.x(ex7Var, jSONObject, "paddings", divCloudBackground.c, this.a.V2());
            tb5.v(ex7Var, jSONObject, "type", hb0.CLOUD);
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
        public DivCloudBackgroundTemplate c(ex7 ex7Var, DivCloudBackgroundTemplate divCloudBackgroundTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "color", acb.f, zC, divCloudBackgroundTemplate != null ? divCloudBackgroundTemplate.a : null, ParsingConvertersKt.b);
            y45.i(tp3VarI, "readFieldWithExpression(…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarJ = ra5.j(ex7VarC, jSONObject, "corner_radius", acb.b, zC, divCloudBackgroundTemplate != null ? divCloudBackgroundTemplate.b : null, ParsingConvertersKt.h, m0.b);
            y45.i(tp3VarJ, "readFieldWithExpression(… CORNER_RADIUS_VALIDATOR)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "paddings", zC, divCloudBackgroundTemplate != null ? divCloudBackgroundTemplate.c : null, this.a.W2());
            y45.i(tp3VarS, "readOptionalField(contex…InsetsJsonTemplateParser)");
            return new DivCloudBackgroundTemplate(tp3VarI, tp3VarJ, tp3VarS);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCloudBackgroundTemplate divCloudBackgroundTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divCloudBackgroundTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "color", divCloudBackgroundTemplate.a, ParsingConvertersKt.a);
            ra5.D(ex7Var, jSONObject, "corner_radius", divCloudBackgroundTemplate.b);
            ra5.I(ex7Var, jSONObject, "paddings", divCloudBackgroundTemplate.c, this.a.W2());
            tb5.v(ex7Var, jSONObject, "type", hb0.CLOUD);
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
        public DivCloudBackground a(ex7 ex7Var, DivCloudBackgroundTemplate divCloudBackgroundTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divCloudBackgroundTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionH = sa5.h(ex7Var, divCloudBackgroundTemplate.a, jSONObject, "color", acb.f, ParsingConvertersKt.b);
            y45.i(expressionH, "resolveExpression(contex…LOR, STRING_TO_COLOR_INT)");
            Expression expressionI = sa5.i(ex7Var, divCloudBackgroundTemplate.b, jSONObject, "corner_radius", acb.b, ParsingConvertersKt.h, m0.b);
            y45.i(expressionI, "resolveExpression(contex… CORNER_RADIUS_VALIDATOR)");
            return new DivCloudBackground(expressionH, expressionI, (DivEdgeInsets) sa5.p(ex7Var, divCloudBackgroundTemplate.c, jSONObject, "paddings", this.a.X2(), this.a.V2()));
        }
    }

    public static final boolean b(long j) {
        return j >= 0;
    }
}
