package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.d3;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hm5;
import defpackage.lga;
import defpackage.nj3;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zbb;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class d3 {
    public static final a a = new a(null);
    public static final DivRadialGradientCenter.c b;
    public static final DivRadialGradientCenter.c c;
    public static final DivRadialGradientRadius.c d;
    public static final hm5 e;
    public static final hm5 f;

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
        public DivRadialGradient a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivRadialGradientCenter divRadialGradientCenter = (DivRadialGradientCenter) tb5.n(ex7Var, jSONObject, "center_x", this.a.Z5());
            if (divRadialGradientCenter == null) {
                divRadialGradientCenter = d3.b;
            }
            DivRadialGradientCenter divRadialGradientCenter2 = divRadialGradientCenter;
            y45.i(divRadialGradientCenter2, "JsonPropertyParser.readO…?: CENTER_X_DEFAULT_VALUE");
            DivRadialGradientCenter divRadialGradientCenter3 = (DivRadialGradientCenter) tb5.n(ex7Var, jSONObject, "center_y", this.a.Z5());
            if (divRadialGradientCenter3 == null) {
                divRadialGradientCenter3 = d3.c;
            }
            DivRadialGradientCenter divRadialGradientCenter4 = divRadialGradientCenter3;
            y45.i(divRadialGradientCenter4, "JsonPropertyParser.readO…?: CENTER_Y_DEFAULT_VALUE");
            List listS = tb5.s(ex7Var, jSONObject, "color_map", this.a.c6(), d3.f);
            nj3 nj3VarN = pa5.n(ex7Var, jSONObject, "colors", acb.f, ParsingConvertersKt.b, d3.e);
            DivRadialGradientRadius divRadialGradientRadius = (DivRadialGradientRadius) tb5.n(ex7Var, jSONObject, "radius", this.a.l6());
            if (divRadialGradientRadius == null) {
                divRadialGradientRadius = d3.d;
            }
            DivRadialGradientRadius divRadialGradientRadius2 = divRadialGradientRadius;
            y45.i(divRadialGradientRadius2, "JsonPropertyParser.readO…) ?: RADIUS_DEFAULT_VALUE");
            return new DivRadialGradient(divRadialGradientCenter2, divRadialGradientCenter4, listS, nj3VarN, divRadialGradientRadius2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivRadialGradient divRadialGradient) {
            y45.j(ex7Var, "context");
            y45.j(divRadialGradient, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "center_x", divRadialGradient.a, this.a.Z5());
            tb5.x(ex7Var, jSONObject, "center_y", divRadialGradient.b, this.a.Z5());
            tb5.z(ex7Var, jSONObject, "color_map", divRadialGradient.c, this.a.c6());
            pa5.r(ex7Var, jSONObject, "colors", divRadialGradient.d, ParsingConvertersKt.a);
            tb5.x(ex7Var, jSONObject, "radius", divRadialGradient.e, this.a.l6());
            tb5.v(ex7Var, jSONObject, "type", "radial_gradient");
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
        public DivRadialGradientTemplate c(ex7 ex7Var, DivRadialGradientTemplate divRadialGradientTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "center_x", zC, divRadialGradientTemplate != null ? divRadialGradientTemplate.a : null, this.a.a6());
            y45.i(tp3VarS, "readOptionalField(contex…CenterJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "center_y", zC, divRadialGradientTemplate != null ? divRadialGradientTemplate.b : null, this.a.a6());
            y45.i(tp3VarS2, "readOptionalField(contex…CenterJsonTemplateParser)");
            tp3 tp3Var = divRadialGradientTemplate != null ? divRadialGradientTemplate.c : null;
            yi5 yi5VarD6 = this.a.d6();
            hm5 hm5Var = d3.f;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarA = ra5.A(ex7VarC, jSONObject, "color_map", zC, tp3Var, yi5VarD6, hm5Var);
            y45.i(tp3VarA, "readOptionalListField(co…LOR_MAP_VALIDATOR.cast())");
            zbb zbbVar = acb.f;
            tp3 tp3Var2 = divRadialGradientTemplate != null ? divRadialGradientTemplate.d : null;
            e74 e74Var = ParsingConvertersKt.b;
            hm5 hm5Var2 = d3.e;
            y45.h(hm5Var2, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarN = ra5.n(ex7VarC, jSONObject, "colors", zbbVar, zC, tp3Var2, e74Var, hm5Var2);
            y45.i(tp3VarN, "readOptionalExpressionLi… COLORS_VALIDATOR.cast())");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "radius", zC, divRadialGradientTemplate != null ? divRadialGradientTemplate.e : null, this.a.m6());
            y45.i(tp3VarS3, "readOptionalField(contex…RadiusJsonTemplateParser)");
            return new DivRadialGradientTemplate(tp3VarS, tp3VarS2, tp3VarA, tp3VarN, tp3VarS3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivRadialGradientTemplate divRadialGradientTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divRadialGradientTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "center_x", divRadialGradientTemplate.a, this.a.a6());
            ra5.I(ex7Var, jSONObject, "center_y", divRadialGradientTemplate.b, this.a.a6());
            ra5.K(ex7Var, jSONObject, "color_map", divRadialGradientTemplate.c, this.a.d6());
            ra5.F(ex7Var, jSONObject, "colors", divRadialGradientTemplate.d, ParsingConvertersKt.a);
            ra5.I(ex7Var, jSONObject, "radius", divRadialGradientTemplate.e, this.a.m6());
            tb5.v(ex7Var, jSONObject, "type", "radial_gradient");
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
        public DivRadialGradient a(ex7 ex7Var, DivRadialGradientTemplate divRadialGradientTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divRadialGradientTemplate, "template");
            y45.j(jSONObject, "data");
            DivRadialGradientCenter divRadialGradientCenter = (DivRadialGradientCenter) sa5.p(ex7Var, divRadialGradientTemplate.a, jSONObject, "center_x", this.a.b6(), this.a.Z5());
            if (divRadialGradientCenter == null) {
                divRadialGradientCenter = d3.b;
            }
            DivRadialGradientCenter divRadialGradientCenter2 = divRadialGradientCenter;
            y45.i(divRadialGradientCenter2, "JsonFieldResolver.resolv…?: CENTER_X_DEFAULT_VALUE");
            DivRadialGradientCenter divRadialGradientCenter3 = (DivRadialGradientCenter) sa5.p(ex7Var, divRadialGradientTemplate.b, jSONObject, "center_y", this.a.b6(), this.a.Z5());
            if (divRadialGradientCenter3 == null) {
                divRadialGradientCenter3 = d3.c;
            }
            DivRadialGradientCenter divRadialGradientCenter4 = divRadialGradientCenter3;
            y45.i(divRadialGradientCenter4, "JsonFieldResolver.resolv…?: CENTER_Y_DEFAULT_VALUE");
            List listC = sa5.C(ex7Var, divRadialGradientTemplate.c, jSONObject, "color_map", this.a.e6(), this.a.c6(), d3.f);
            nj3 nj3VarX = sa5.x(ex7Var, divRadialGradientTemplate.d, jSONObject, "colors", acb.f, ParsingConvertersKt.b, d3.e);
            DivRadialGradientRadius divRadialGradientRadius = (DivRadialGradientRadius) sa5.p(ex7Var, divRadialGradientTemplate.e, jSONObject, "radius", this.a.n6(), this.a.l6());
            if (divRadialGradientRadius == null) {
                divRadialGradientRadius = d3.d;
            }
            DivRadialGradientRadius divRadialGradientRadius2 = divRadialGradientRadius;
            y45.i(divRadialGradientRadius2, "JsonFieldResolver.resolv…) ?: RADIUS_DEFAULT_VALUE");
            return new DivRadialGradient(divRadialGradientCenter2, divRadialGradientCenter4, listC, nj3VarX, divRadialGradientRadius2);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        Double dValueOf = Double.valueOf(0.5d);
        b = new DivRadialGradientCenter.c(new DivRadialGradientRelativeCenter(aVar.a(dValueOf)));
        c = new DivRadialGradientCenter.c(new DivRadialGradientRelativeCenter(aVar.a(dValueOf)));
        d = new DivRadialGradientRadius.c(new DivRadialGradientRelativeRadius(aVar.a(DivRadialGradientRelativeRadius.Value.FARTHEST_CORNER)));
        e = new hm5() {
            @Override
            public final boolean a(List list) {
                return d3.c(list);
            }
        };
        f = new hm5() {
            @Override
            public final boolean a(List list) {
                return d3.d(list);
            }
        };
    }

    public static final boolean c(List list) {
        y45.j(list, "it");
        return list.size() >= 2;
    }

    public static final boolean d(List list) {
        y45.j(list, "it");
        return list.size() >= 2;
    }
}
