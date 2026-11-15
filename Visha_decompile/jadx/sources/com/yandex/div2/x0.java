package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.lga;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.greenrobot.greendao.generator.Schema;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class x0 {
    public static final a a = new a(null);
    public static final DivFixedSize b = new DivFixedSize(null, Expression.a.a(15L), 1, null);

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
        public DivDefaultIndicatorItemPlacement a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivFixedSize divFixedSize = (DivFixedSize) tb5.n(ex7Var, jSONObject, "space_between_centers", this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = x0.b;
            }
            y45.i(divFixedSize, "JsonPropertyParser.readO…EEN_CENTERS_DEFAULT_VALUE");
            return new DivDefaultIndicatorItemPlacement(divFixedSize);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivDefaultIndicatorItemPlacement divDefaultIndicatorItemPlacement) {
            y45.j(ex7Var, "context");
            y45.j(divDefaultIndicatorItemPlacement, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "space_between_centers", divDefaultIndicatorItemPlacement.a, this.a.t3());
            tb5.v(ex7Var, jSONObject, "type", Schema.DEFAULT_NAME);
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
        public DivDefaultIndicatorItemPlacementTemplate c(ex7 ex7Var, DivDefaultIndicatorItemPlacementTemplate divDefaultIndicatorItemPlacementTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            tp3 tp3VarS = ra5.s(fx7.c(ex7Var), jSONObject, "space_between_centers", ex7Var.c(), divDefaultIndicatorItemPlacementTemplate != null ? divDefaultIndicatorItemPlacementTemplate.a : null, this.a.u3());
            y45.i(tp3VarS, "readOptionalField(contex…edSizeJsonTemplateParser)");
            return new DivDefaultIndicatorItemPlacementTemplate(tp3VarS);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivDefaultIndicatorItemPlacementTemplate divDefaultIndicatorItemPlacementTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divDefaultIndicatorItemPlacementTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "space_between_centers", divDefaultIndicatorItemPlacementTemplate.a, this.a.u3());
            tb5.v(ex7Var, jSONObject, "type", Schema.DEFAULT_NAME);
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
        public DivDefaultIndicatorItemPlacement a(ex7 ex7Var, DivDefaultIndicatorItemPlacementTemplate divDefaultIndicatorItemPlacementTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divDefaultIndicatorItemPlacementTemplate, "template");
            y45.j(jSONObject, "data");
            DivFixedSize divFixedSize = (DivFixedSize) sa5.p(ex7Var, divDefaultIndicatorItemPlacementTemplate.a, jSONObject, "space_between_centers", this.a.v3(), this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = x0.b;
            }
            y45.i(divFixedSize, "JsonFieldResolver.resolv…EEN_CENTERS_DEFAULT_VALUE");
            return new DivDefaultIndicatorItemPlacement(divFixedSize);
        }
    }
}
