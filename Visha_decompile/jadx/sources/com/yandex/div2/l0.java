package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class l0 {
    public static final a a = new a(null);
    public static final DivFixedSize b = new DivFixedSize(null, Expression.a.a(10L), 1, null);

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
        public DivCircleShape a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionI = pa5.i(ex7Var, jSONObject, "background_color", acb.f, ParsingConvertersKt.b);
            DivFixedSize divFixedSize = (DivFixedSize) tb5.n(ex7Var, jSONObject, "radius", this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = l0.b;
            }
            y45.i(divFixedSize, "JsonPropertyParser.readO…) ?: RADIUS_DEFAULT_VALUE");
            return new DivCircleShape(expressionI, divFixedSize, (DivStroke) tb5.n(ex7Var, jSONObject, "stroke", this.a.w7()));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCircleShape divCircleShape) {
            y45.j(ex7Var, "context");
            y45.j(divCircleShape, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "background_color", divCircleShape.a, ParsingConvertersKt.a);
            tb5.x(ex7Var, jSONObject, "radius", divCircleShape.b, this.a.t3());
            tb5.x(ex7Var, jSONObject, "stroke", divCircleShape.c, this.a.w7());
            tb5.v(ex7Var, jSONObject, "type", TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
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
        public DivCircleShapeTemplate c(ex7 ex7Var, DivCircleShapeTemplate divCircleShapeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "background_color", acb.f, zC, divCircleShapeTemplate != null ? divCircleShapeTemplate.a : null, ParsingConvertersKt.b);
            y45.i(tp3VarU, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "radius", zC, divCircleShapeTemplate != null ? divCircleShapeTemplate.b : null, this.a.u3());
            y45.i(tp3VarS, "readOptionalField(contex…edSizeJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "stroke", zC, divCircleShapeTemplate != null ? divCircleShapeTemplate.c : null, this.a.x7());
            y45.i(tp3VarS2, "readOptionalField(contex…StrokeJsonTemplateParser)");
            return new DivCircleShapeTemplate(tp3VarU, tp3VarS, tp3VarS2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCircleShapeTemplate divCircleShapeTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divCircleShapeTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "background_color", divCircleShapeTemplate.a, ParsingConvertersKt.a);
            ra5.I(ex7Var, jSONObject, "radius", divCircleShapeTemplate.b, this.a.u3());
            ra5.I(ex7Var, jSONObject, "stroke", divCircleShapeTemplate.c, this.a.x7());
            tb5.v(ex7Var, jSONObject, "type", TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
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
        public DivCircleShape a(ex7 ex7Var, DivCircleShapeTemplate divCircleShapeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divCircleShapeTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionS = sa5.s(ex7Var, divCircleShapeTemplate.a, jSONObject, "background_color", acb.f, ParsingConvertersKt.b);
            DivFixedSize divFixedSize = (DivFixedSize) sa5.p(ex7Var, divCircleShapeTemplate.b, jSONObject, "radius", this.a.v3(), this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = l0.b;
            }
            y45.i(divFixedSize, "JsonFieldResolver.resolv…) ?: RADIUS_DEFAULT_VALUE");
            return new DivCircleShape(expressionS, divFixedSize, (DivStroke) sa5.p(ex7Var, divCircleShapeTemplate.c, jSONObject, "stroke", this.a.y7(), this.a.w7()));
        }
    }
}
