package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.l2;
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

public abstract class l2 {
    public static final a a = new a(null);
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return l2.b(((Double) obj).doubleValue());
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
        public DivMatchParentSize a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            return new DivMatchParentSize(pa5.j(ex7Var, jSONObject, "weight", acb.d, ParsingConvertersKt.g, l2.b));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivMatchParentSize divMatchParentSize) {
            y45.j(ex7Var, "context");
            y45.j(divMatchParentSize, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.v(ex7Var, jSONObject, "type", "match_parent");
            pa5.p(ex7Var, jSONObject, "weight", divMatchParentSize.a);
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
        public DivMatchParentSizeTemplate c(ex7 ex7Var, DivMatchParentSizeTemplate divMatchParentSizeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            tp3 tp3VarV = ra5.v(fx7.c(ex7Var), jSONObject, "weight", acb.d, ex7Var.c(), divMatchParentSizeTemplate != null ? divMatchParentSizeTemplate.a : null, ParsingConvertersKt.g, l2.b);
            y45.i(tp3VarV, "readOptionalFieldWithExp…DOUBLE, WEIGHT_VALIDATOR)");
            return new DivMatchParentSizeTemplate(tp3VarV);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivMatchParentSizeTemplate divMatchParentSizeTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divMatchParentSizeTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.v(ex7Var, jSONObject, "type", "match_parent");
            ra5.D(ex7Var, jSONObject, "weight", divMatchParentSizeTemplate.a);
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
        public DivMatchParentSize a(ex7 ex7Var, DivMatchParentSizeTemplate divMatchParentSizeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divMatchParentSizeTemplate, "template");
            y45.j(jSONObject, "data");
            return new DivMatchParentSize(sa5.t(ex7Var, divMatchParentSizeTemplate.a, jSONObject, "weight", acb.d, ParsingConvertersKt.g, l2.b));
        }
    }

    public static final boolean b(double d2) {
        return d2 > 0.0d;
    }
}
