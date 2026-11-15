package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.g0;
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

public abstract class g0 {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(Boolean.FALSE);
    public static final pnb c = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return g0.b(((Long) obj).longValue());
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
        public DivBorder a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "corner_radius", acb.b, ParsingConvertersKt.h, g0.c);
            DivCornersRadius divCornersRadius = (DivCornersRadius) tb5.n(ex7Var, jSONObject, "corners_radius", this.a.p2());
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = g0.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "has_shadow", zbbVar, e74Var, expression);
            if (expressionL == null) {
                expressionL = expression;
            }
            return new DivBorder(expressionJ, divCornersRadius, expressionL, (DivShadow) tb5.n(ex7Var, jSONObject, "shadow", this.a.M6()), (DivStroke) tb5.n(ex7Var, jSONObject, "stroke", this.a.w7()));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivBorder divBorder) {
            y45.j(ex7Var, "context");
            y45.j(divBorder, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "corner_radius", divBorder.a);
            tb5.x(ex7Var, jSONObject, "corners_radius", divBorder.b, this.a.p2());
            pa5.p(ex7Var, jSONObject, "has_shadow", divBorder.c);
            tb5.x(ex7Var, jSONObject, "shadow", divBorder.d, this.a.M6());
            tb5.x(ex7Var, jSONObject, "stroke", divBorder.e, this.a.w7());
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
        public DivBorderTemplate c(ex7 ex7Var, DivBorderTemplate divBorderTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "corner_radius", acb.b, zC, divBorderTemplate != null ? divBorderTemplate.a : null, ParsingConvertersKt.h, g0.c);
            y45.i(tp3VarV, "readOptionalFieldWithExp… CORNER_RADIUS_VALIDATOR)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "corners_radius", zC, divBorderTemplate != null ? divBorderTemplate.b : null, this.a.q2());
            y45.i(tp3VarS, "readOptionalField(contex…RadiusJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "has_shadow", acb.a, zC, divBorderTemplate != null ? divBorderTemplate.c : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…asShadow, ANY_TO_BOOLEAN)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "shadow", zC, divBorderTemplate != null ? divBorderTemplate.d : null, this.a.N6());
            y45.i(tp3VarS2, "readOptionalField(contex…ShadowJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "stroke", zC, divBorderTemplate != null ? divBorderTemplate.e : null, this.a.x7());
            y45.i(tp3VarS3, "readOptionalField(contex…StrokeJsonTemplateParser)");
            return new DivBorderTemplate(tp3VarV, tp3VarS, tp3VarU, tp3VarS2, tp3VarS3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivBorderTemplate divBorderTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divBorderTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "corner_radius", divBorderTemplate.a);
            ra5.I(ex7Var, jSONObject, "corners_radius", divBorderTemplate.b, this.a.q2());
            ra5.D(ex7Var, jSONObject, "has_shadow", divBorderTemplate.c);
            ra5.I(ex7Var, jSONObject, "shadow", divBorderTemplate.d, this.a.N6());
            ra5.I(ex7Var, jSONObject, "stroke", divBorderTemplate.e, this.a.x7());
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
        public DivBorder a(ex7 ex7Var, DivBorderTemplate divBorderTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divBorderTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionT = sa5.t(ex7Var, divBorderTemplate.a, jSONObject, "corner_radius", acb.b, ParsingConvertersKt.h, g0.c);
            DivCornersRadius divCornersRadius = (DivCornersRadius) sa5.p(ex7Var, divBorderTemplate.b, jSONObject, "corners_radius", this.a.r2(), this.a.p2());
            tp3 tp3Var = divBorderTemplate.c;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = g0.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "has_shadow", zbbVar, e74Var, expression);
            if (expressionV == null) {
                expressionV = expression;
            }
            return new DivBorder(expressionT, divCornersRadius, expressionV, (DivShadow) sa5.p(ex7Var, divBorderTemplate.d, jSONObject, "shadow", this.a.O6(), this.a.M6()), (DivStroke) sa5.p(ex7Var, divBorderTemplate.e, jSONObject, "stroke", this.a.y7(), this.a.w7()));
        }
    }

    public static final boolean b(long j) {
        return j >= 0;
    }
}
