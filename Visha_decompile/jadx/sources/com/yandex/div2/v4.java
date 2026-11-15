package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.v4;
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

public abstract class v4 {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final DivFixedSize e;
    public static final pnb f;

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
        public DivTextRangeMaskParticles a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionE = pa5.e(ex7Var, jSONObject, "color", acb.f, ParsingConvertersKt.b);
            y45.i(expressionE, "readExpression(context, …LOR, STRING_TO_COLOR_INT)");
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = v4.f;
            Expression expression = v4.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "density", zbbVar, e74Var, pnbVar, expression);
            if (expressionK == null) {
                expressionK = expression;
            }
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = v4.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "is_animated", zbbVar2, e74Var2, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            Expression expression3 = v4.d;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "is_enabled", zbbVar2, e74Var2, expression3);
            Expression expression4 = expressionL2 == null ? expression3 : expressionL2;
            DivFixedSize divFixedSize = (DivFixedSize) tb5.n(ex7Var, jSONObject, "particle_size", this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = v4.e;
            }
            DivFixedSize divFixedSize2 = divFixedSize;
            y45.i(divFixedSize2, "JsonPropertyParser.readO…RTICLE_SIZE_DEFAULT_VALUE");
            return new DivTextRangeMaskParticles(expressionE, expressionK, expression2, expression4, divFixedSize2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextRangeMaskParticles divTextRangeMaskParticles) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeMaskParticles, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "color", divTextRangeMaskParticles.a, ParsingConvertersKt.a);
            pa5.p(ex7Var, jSONObject, "density", divTextRangeMaskParticles.b);
            pa5.p(ex7Var, jSONObject, "is_animated", divTextRangeMaskParticles.c);
            pa5.p(ex7Var, jSONObject, "is_enabled", divTextRangeMaskParticles.d);
            tb5.x(ex7Var, jSONObject, "particle_size", divTextRangeMaskParticles.e, this.a.t3());
            tb5.v(ex7Var, jSONObject, "type", "particles");
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
        public DivTextRangeMaskParticlesTemplate c(ex7 ex7Var, DivTextRangeMaskParticlesTemplate divTextRangeMaskParticlesTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "color", acb.f, zC, divTextRangeMaskParticlesTemplate != null ? divTextRangeMaskParticlesTemplate.a : null, ParsingConvertersKt.b);
            y45.i(tp3VarI, "readFieldWithExpression(…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "density", acb.d, zC, divTextRangeMaskParticlesTemplate != null ? divTextRangeMaskParticlesTemplate.b : null, ParsingConvertersKt.g, v4.f);
            y45.i(tp3VarV, "readOptionalFieldWithExp…OUBLE, DENSITY_VALIDATOR)");
            zbb zbbVar = acb.a;
            tp3 tp3Var = divTextRangeMaskParticlesTemplate != null ? divTextRangeMaskParticlesTemplate.c : null;
            e74 e74Var = ParsingConvertersKt.f;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "is_animated", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU, "readOptionalFieldWithExp…Animated, ANY_TO_BOOLEAN)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "is_enabled", zbbVar, zC, divTextRangeMaskParticlesTemplate != null ? divTextRangeMaskParticlesTemplate.d : null, e74Var);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…sEnabled, ANY_TO_BOOLEAN)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "particle_size", zC, divTextRangeMaskParticlesTemplate != null ? divTextRangeMaskParticlesTemplate.e : null, this.a.u3());
            y45.i(tp3VarS, "readOptionalField(contex…edSizeJsonTemplateParser)");
            return new DivTextRangeMaskParticlesTemplate(tp3VarI, tp3VarV, tp3VarU, tp3VarU2, tp3VarS);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextRangeMaskParticlesTemplate divTextRangeMaskParticlesTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeMaskParticlesTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "color", divTextRangeMaskParticlesTemplate.a, ParsingConvertersKt.a);
            ra5.D(ex7Var, jSONObject, "density", divTextRangeMaskParticlesTemplate.b);
            ra5.D(ex7Var, jSONObject, "is_animated", divTextRangeMaskParticlesTemplate.c);
            ra5.D(ex7Var, jSONObject, "is_enabled", divTextRangeMaskParticlesTemplate.d);
            ra5.I(ex7Var, jSONObject, "particle_size", divTextRangeMaskParticlesTemplate.e, this.a.u3());
            tb5.v(ex7Var, jSONObject, "type", "particles");
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
        public DivTextRangeMaskParticles a(ex7 ex7Var, DivTextRangeMaskParticlesTemplate divTextRangeMaskParticlesTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeMaskParticlesTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionH = sa5.h(ex7Var, divTextRangeMaskParticlesTemplate.a, jSONObject, "color", acb.f, ParsingConvertersKt.b);
            y45.i(expressionH, "resolveExpression(contex…LOR, STRING_TO_COLOR_INT)");
            tp3 tp3Var = divTextRangeMaskParticlesTemplate.b;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = v4.f;
            Expression expression = v4.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "density", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            tp3 tp3Var2 = divTextRangeMaskParticlesTemplate.c;
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = v4.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var2, jSONObject, "is_animated", zbbVar2, e74Var2, expression2);
            if (expressionV != null) {
                expression2 = expressionV;
            }
            tp3 tp3Var3 = divTextRangeMaskParticlesTemplate.d;
            Expression expression3 = v4.d;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var3, jSONObject, "is_enabled", zbbVar2, e74Var2, expression3);
            if (expressionV2 != null) {
                expression3 = expressionV2;
            }
            DivFixedSize divFixedSize = (DivFixedSize) sa5.p(ex7Var, divTextRangeMaskParticlesTemplate.e, jSONObject, "particle_size", this.a.v3(), this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = v4.e;
            }
            DivFixedSize divFixedSize2 = divFixedSize;
            y45.i(divFixedSize2, "JsonFieldResolver.resolv…RTICLE_SIZE_DEFAULT_VALUE");
            return new DivTextRangeMaskParticles(expressionH, expression, expression2, expression3, divFixedSize2);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(0.8d));
        c = aVar.a(Boolean.FALSE);
        d = aVar.a(Boolean.TRUE);
        e = new DivFixedSize(null, aVar.a(1L), 1, null);
        f = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return v4.b(((Double) obj).doubleValue());
            }
        };
    }

    public static final boolean b(double d2) {
        return d2 > 0.0d && d2 <= 1.0d;
    }
}
