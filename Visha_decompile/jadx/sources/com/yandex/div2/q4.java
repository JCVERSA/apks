package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.q4;
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

public abstract class q4 {
    public static final a a = new a(null);
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return q4.b(((Long) obj).longValue());
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
        public DivTextRangeBorder a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            return new DivTextRangeBorder(pa5.j(ex7Var, jSONObject, "corner_radius", acb.b, ParsingConvertersKt.h, q4.b), (DivStroke) tb5.n(ex7Var, jSONObject, "stroke", this.a.w7()));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextRangeBorder divTextRangeBorder) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeBorder, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "corner_radius", divTextRangeBorder.a);
            tb5.x(ex7Var, jSONObject, "stroke", divTextRangeBorder.b, this.a.w7());
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
        public DivTextRangeBorderTemplate c(ex7 ex7Var, DivTextRangeBorderTemplate divTextRangeBorderTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "corner_radius", acb.b, zC, divTextRangeBorderTemplate != null ? divTextRangeBorderTemplate.a : null, ParsingConvertersKt.h, q4.b);
            y45.i(tp3VarV, "readOptionalFieldWithExp… CORNER_RADIUS_VALIDATOR)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "stroke", zC, divTextRangeBorderTemplate != null ? divTextRangeBorderTemplate.b : null, this.a.x7());
            y45.i(tp3VarS, "readOptionalField(contex…StrokeJsonTemplateParser)");
            return new DivTextRangeBorderTemplate(tp3VarV, tp3VarS);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextRangeBorderTemplate divTextRangeBorderTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeBorderTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "corner_radius", divTextRangeBorderTemplate.a);
            ra5.I(ex7Var, jSONObject, "stroke", divTextRangeBorderTemplate.b, this.a.x7());
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
        public DivTextRangeBorder a(ex7 ex7Var, DivTextRangeBorderTemplate divTextRangeBorderTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeBorderTemplate, "template");
            y45.j(jSONObject, "data");
            return new DivTextRangeBorder(sa5.t(ex7Var, divTextRangeBorderTemplate.a, jSONObject, "corner_radius", acb.b, ParsingConvertersKt.h, q4.b), (DivStroke) sa5.p(ex7Var, divTextRangeBorderTemplate.b, jSONObject, "stroke", this.a.y7(), this.a.w7()));
        }
    }

    public static final boolean b(long j) {
        return j >= 0;
    }
}
