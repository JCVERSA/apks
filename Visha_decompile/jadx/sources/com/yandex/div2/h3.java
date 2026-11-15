package com.yandex.div2;

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

public abstract class h3 {
    public static final a a = new a(null);
    public static final DivFixedSize b;
    public static final DivFixedSize c;
    public static final DivFixedSize d;

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
        public DivRoundedRectangleShape a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionI = pa5.i(ex7Var, jSONObject, "background_color", acb.f, ParsingConvertersKt.b);
            DivFixedSize divFixedSize = (DivFixedSize) tb5.n(ex7Var, jSONObject, "corner_radius", this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = h3.b;
            }
            DivFixedSize divFixedSize2 = divFixedSize;
            y45.i(divFixedSize2, "JsonPropertyParser.readO…RNER_RADIUS_DEFAULT_VALUE");
            DivFixedSize divFixedSize3 = (DivFixedSize) tb5.n(ex7Var, jSONObject, "item_height", this.a.t3());
            if (divFixedSize3 == null) {
                divFixedSize3 = h3.c;
            }
            DivFixedSize divFixedSize4 = divFixedSize3;
            y45.i(divFixedSize4, "JsonPropertyParser.readO…ITEM_HEIGHT_DEFAULT_VALUE");
            DivFixedSize divFixedSize5 = (DivFixedSize) tb5.n(ex7Var, jSONObject, "item_width", this.a.t3());
            if (divFixedSize5 == null) {
                divFixedSize5 = h3.d;
            }
            DivFixedSize divFixedSize6 = divFixedSize5;
            y45.i(divFixedSize6, "JsonPropertyParser.readO… ITEM_WIDTH_DEFAULT_VALUE");
            return new DivRoundedRectangleShape(expressionI, divFixedSize2, divFixedSize4, divFixedSize6, (DivStroke) tb5.n(ex7Var, jSONObject, "stroke", this.a.w7()));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivRoundedRectangleShape divRoundedRectangleShape) {
            y45.j(ex7Var, "context");
            y45.j(divRoundedRectangleShape, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "background_color", divRoundedRectangleShape.a, ParsingConvertersKt.a);
            tb5.x(ex7Var, jSONObject, "corner_radius", divRoundedRectangleShape.b, this.a.t3());
            tb5.x(ex7Var, jSONObject, "item_height", divRoundedRectangleShape.c, this.a.t3());
            tb5.x(ex7Var, jSONObject, "item_width", divRoundedRectangleShape.d, this.a.t3());
            tb5.x(ex7Var, jSONObject, "stroke", divRoundedRectangleShape.e, this.a.w7());
            tb5.v(ex7Var, jSONObject, "type", "rounded_rectangle");
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
        public DivRoundedRectangleShapeTemplate c(ex7 ex7Var, DivRoundedRectangleShapeTemplate divRoundedRectangleShapeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "background_color", acb.f, zC, divRoundedRectangleShapeTemplate != null ? divRoundedRectangleShapeTemplate.a : null, ParsingConvertersKt.b);
            y45.i(tp3VarU, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "corner_radius", zC, divRoundedRectangleShapeTemplate != null ? divRoundedRectangleShapeTemplate.b : null, this.a.u3());
            y45.i(tp3VarS, "readOptionalField(contex…edSizeJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "item_height", zC, divRoundedRectangleShapeTemplate != null ? divRoundedRectangleShapeTemplate.c : null, this.a.u3());
            y45.i(tp3VarS2, "readOptionalField(contex…edSizeJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "item_width", zC, divRoundedRectangleShapeTemplate != null ? divRoundedRectangleShapeTemplate.d : null, this.a.u3());
            y45.i(tp3VarS3, "readOptionalField(contex…edSizeJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "stroke", zC, divRoundedRectangleShapeTemplate != null ? divRoundedRectangleShapeTemplate.e : null, this.a.x7());
            y45.i(tp3VarS4, "readOptionalField(contex…StrokeJsonTemplateParser)");
            return new DivRoundedRectangleShapeTemplate(tp3VarU, tp3VarS, tp3VarS2, tp3VarS3, tp3VarS4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivRoundedRectangleShapeTemplate divRoundedRectangleShapeTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divRoundedRectangleShapeTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "background_color", divRoundedRectangleShapeTemplate.a, ParsingConvertersKt.a);
            ra5.I(ex7Var, jSONObject, "corner_radius", divRoundedRectangleShapeTemplate.b, this.a.u3());
            ra5.I(ex7Var, jSONObject, "item_height", divRoundedRectangleShapeTemplate.c, this.a.u3());
            ra5.I(ex7Var, jSONObject, "item_width", divRoundedRectangleShapeTemplate.d, this.a.u3());
            ra5.I(ex7Var, jSONObject, "stroke", divRoundedRectangleShapeTemplate.e, this.a.x7());
            tb5.v(ex7Var, jSONObject, "type", "rounded_rectangle");
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
        public DivRoundedRectangleShape a(ex7 ex7Var, DivRoundedRectangleShapeTemplate divRoundedRectangleShapeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divRoundedRectangleShapeTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionS = sa5.s(ex7Var, divRoundedRectangleShapeTemplate.a, jSONObject, "background_color", acb.f, ParsingConvertersKt.b);
            DivFixedSize divFixedSize = (DivFixedSize) sa5.p(ex7Var, divRoundedRectangleShapeTemplate.b, jSONObject, "corner_radius", this.a.v3(), this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = h3.b;
            }
            DivFixedSize divFixedSize2 = divFixedSize;
            y45.i(divFixedSize2, "JsonFieldResolver.resolv…RNER_RADIUS_DEFAULT_VALUE");
            DivFixedSize divFixedSize3 = (DivFixedSize) sa5.p(ex7Var, divRoundedRectangleShapeTemplate.c, jSONObject, "item_height", this.a.v3(), this.a.t3());
            if (divFixedSize3 == null) {
                divFixedSize3 = h3.c;
            }
            DivFixedSize divFixedSize4 = divFixedSize3;
            y45.i(divFixedSize4, "JsonFieldResolver.resolv…ITEM_HEIGHT_DEFAULT_VALUE");
            DivFixedSize divFixedSize5 = (DivFixedSize) sa5.p(ex7Var, divRoundedRectangleShapeTemplate.d, jSONObject, "item_width", this.a.v3(), this.a.t3());
            if (divFixedSize5 == null) {
                divFixedSize5 = h3.d;
            }
            DivFixedSize divFixedSize6 = divFixedSize5;
            y45.i(divFixedSize6, "JsonFieldResolver.resolv… ITEM_WIDTH_DEFAULT_VALUE");
            return new DivRoundedRectangleShape(expressionS, divFixedSize2, divFixedSize4, divFixedSize6, (DivStroke) sa5.p(ex7Var, divRoundedRectangleShapeTemplate.e, jSONObject, "stroke", this.a.y7(), this.a.w7()));
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = new DivFixedSize(null, aVar.a(5L), 1, null);
        c = new DivFixedSize(null, aVar.a(10L), 1, null);
        d = new DivFixedSize(null, aVar.a(10L), 1, null);
    }
}
