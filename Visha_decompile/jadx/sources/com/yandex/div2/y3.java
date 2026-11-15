package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.y3;
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

public abstract class y3 {
    public static final a a = new a(null);
    public static final DivFixedSize b;
    public static final Expression c;
    public static final pnb d;

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
        public DivStretchIndicatorItemPlacement a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivFixedSize divFixedSize = (DivFixedSize) tb5.n(ex7Var, jSONObject, "item_spacing", this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = y3.b;
            }
            y45.i(divFixedSize, "JsonPropertyParser.readO…TEM_SPACING_DEFAULT_VALUE");
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = y3.d;
            Expression expression = y3.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "max_visible_items", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            return new DivStretchIndicatorItemPlacement(divFixedSize, expression);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivStretchIndicatorItemPlacement divStretchIndicatorItemPlacement) {
            y45.j(ex7Var, "context");
            y45.j(divStretchIndicatorItemPlacement, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "item_spacing", divStretchIndicatorItemPlacement.a, this.a.t3());
            pa5.p(ex7Var, jSONObject, "max_visible_items", divStretchIndicatorItemPlacement.b);
            tb5.v(ex7Var, jSONObject, "type", "stretch");
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
        public DivStretchIndicatorItemPlacementTemplate c(ex7 ex7Var, DivStretchIndicatorItemPlacementTemplate divStretchIndicatorItemPlacementTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "item_spacing", zC, divStretchIndicatorItemPlacementTemplate != null ? divStretchIndicatorItemPlacementTemplate.a : null, this.a.u3());
            y45.i(tp3VarS, "readOptionalField(contex…edSizeJsonTemplateParser)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "max_visible_items", acb.b, zC, divStretchIndicatorItemPlacementTemplate != null ? divStretchIndicatorItemPlacementTemplate.b : null, ParsingConvertersKt.h, y3.d);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_VISIBLE_ITEMS_VALIDATOR)");
            return new DivStretchIndicatorItemPlacementTemplate(tp3VarS, tp3VarV);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivStretchIndicatorItemPlacementTemplate divStretchIndicatorItemPlacementTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divStretchIndicatorItemPlacementTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "item_spacing", divStretchIndicatorItemPlacementTemplate.a, this.a.u3());
            ra5.D(ex7Var, jSONObject, "max_visible_items", divStretchIndicatorItemPlacementTemplate.b);
            tb5.v(ex7Var, jSONObject, "type", "stretch");
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
        public DivStretchIndicatorItemPlacement a(ex7 ex7Var, DivStretchIndicatorItemPlacementTemplate divStretchIndicatorItemPlacementTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divStretchIndicatorItemPlacementTemplate, "template");
            y45.j(jSONObject, "data");
            DivFixedSize divFixedSize = (DivFixedSize) sa5.p(ex7Var, divStretchIndicatorItemPlacementTemplate.a, jSONObject, "item_spacing", this.a.v3(), this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = y3.b;
            }
            y45.i(divFixedSize, "JsonFieldResolver.resolv…TEM_SPACING_DEFAULT_VALUE");
            tp3 tp3Var = divStretchIndicatorItemPlacementTemplate.b;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = y3.d;
            Expression expression = y3.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "max_visible_items", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            return new DivStretchIndicatorItemPlacement(divFixedSize, expression);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = new DivFixedSize(null, aVar.a(5L), 1, null);
        c = aVar.a(10L);
        d = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return y3.b(((Long) obj).longValue());
            }
        };
    }

    public static final boolean b(long j) {
        return j > 0;
    }
}
