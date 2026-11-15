package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivPageTransformationSlideJsonParser;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hi;
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

public abstract class DivPageTransformationSlideJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final Expression f;
    public static final zbb g;
    public static final pnb h;
    public static final pnb i;
    public static final pnb j;
    public static final pnb k;

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
        public DivPageTransformationSlide a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = DivPageTransformationSlideJsonParser.g;
            e74 e74Var = DivAnimationInterpolator.FROM_STRING;
            Expression expression = DivPageTransformationSlideJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "interpolator", zbbVar, e74Var, expression);
            Expression expression2 = expressionL == null ? expression : expressionL;
            zbb zbbVar2 = acb.d;
            e74 e74Var2 = ParsingConvertersKt.g;
            pnb pnbVar = DivPageTransformationSlideJsonParser.h;
            Expression expression3 = DivPageTransformationSlideJsonParser.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "next_page_alpha", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionK != null) {
                expression3 = expressionK;
            }
            pnb pnbVar2 = DivPageTransformationSlideJsonParser.i;
            Expression expression4 = DivPageTransformationSlideJsonParser.d;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "next_page_scale", zbbVar2, e74Var2, pnbVar2, expression4);
            if (expressionK2 != null) {
                expression4 = expressionK2;
            }
            pnb pnbVar3 = DivPageTransformationSlideJsonParser.j;
            Expression expression5 = DivPageTransformationSlideJsonParser.e;
            Expression expressionK3 = pa5.k(ex7Var, jSONObject, "previous_page_alpha", zbbVar2, e74Var2, pnbVar3, expression5);
            if (expressionK3 != null) {
                expression5 = expressionK3;
            }
            pnb pnbVar4 = DivPageTransformationSlideJsonParser.k;
            Expression expression6 = DivPageTransformationSlideJsonParser.f;
            Expression expressionK4 = pa5.k(ex7Var, jSONObject, "previous_page_scale", zbbVar2, e74Var2, pnbVar4, expression6);
            return new DivPageTransformationSlide(expression2, expression3, expression4, expression5, expressionK4 == null ? expression6 : expressionK4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivPageTransformationSlide divPageTransformationSlide) {
            y45.j(ex7Var, "context");
            y45.j(divPageTransformationSlide, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "interpolator", divPageTransformationSlide.a, DivAnimationInterpolator.TO_STRING);
            pa5.p(ex7Var, jSONObject, "next_page_alpha", divPageTransformationSlide.b);
            pa5.p(ex7Var, jSONObject, "next_page_scale", divPageTransformationSlide.c);
            pa5.p(ex7Var, jSONObject, "previous_page_alpha", divPageTransformationSlide.d);
            pa5.p(ex7Var, jSONObject, "previous_page_scale", divPageTransformationSlide.e);
            tb5.v(ex7Var, jSONObject, "type", "slide");
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
        public DivPageTransformationSlideTemplate c(ex7 ex7Var, DivPageTransformationSlideTemplate divPageTransformationSlideTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "interpolator", DivPageTransformationSlideJsonParser.g, zC, divPageTransformationSlideTemplate != null ? divPageTransformationSlideTemplate.a : null, DivAnimationInterpolator.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…Interpolator.FROM_STRING)");
            zbb zbbVar = acb.d;
            tp3 tp3Var = divPageTransformationSlideTemplate != null ? divPageTransformationSlideTemplate.b : null;
            e74 e74Var = ParsingConvertersKt.g;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "next_page_alpha", zbbVar, zC, tp3Var, e74Var, DivPageTransformationSlideJsonParser.h);
            y45.i(tp3VarV, "readOptionalFieldWithExp…EXT_PAGE_ALPHA_VALIDATOR)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "next_page_scale", zbbVar, zC, divPageTransformationSlideTemplate != null ? divPageTransformationSlideTemplate.c : null, e74Var, DivPageTransformationSlideJsonParser.i);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…EXT_PAGE_SCALE_VALIDATOR)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "previous_page_alpha", zbbVar, zC, divPageTransformationSlideTemplate != null ? divPageTransformationSlideTemplate.d : null, e74Var, DivPageTransformationSlideJsonParser.j);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…OUS_PAGE_ALPHA_VALIDATOR)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "previous_page_scale", zbbVar, zC, divPageTransformationSlideTemplate != null ? divPageTransformationSlideTemplate.e : null, e74Var, DivPageTransformationSlideJsonParser.k);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…OUS_PAGE_SCALE_VALIDATOR)");
            return new DivPageTransformationSlideTemplate(tp3VarU, tp3VarV, tp3VarV2, tp3VarV3, tp3VarV4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivPageTransformationSlideTemplate divPageTransformationSlideTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divPageTransformationSlideTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "interpolator", divPageTransformationSlideTemplate.a, DivAnimationInterpolator.TO_STRING);
            ra5.D(ex7Var, jSONObject, "next_page_alpha", divPageTransformationSlideTemplate.b);
            ra5.D(ex7Var, jSONObject, "next_page_scale", divPageTransformationSlideTemplate.c);
            ra5.D(ex7Var, jSONObject, "previous_page_alpha", divPageTransformationSlideTemplate.d);
            ra5.D(ex7Var, jSONObject, "previous_page_scale", divPageTransformationSlideTemplate.e);
            tb5.v(ex7Var, jSONObject, "type", "slide");
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
        public DivPageTransformationSlide a(ex7 ex7Var, DivPageTransformationSlideTemplate divPageTransformationSlideTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divPageTransformationSlideTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divPageTransformationSlideTemplate.a;
            zbb zbbVar = DivPageTransformationSlideJsonParser.g;
            e74 e74Var = DivAnimationInterpolator.FROM_STRING;
            Expression expression = DivPageTransformationSlideJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "interpolator", zbbVar, e74Var, expression);
            Expression expression2 = expressionV == null ? expression : expressionV;
            tp3 tp3Var2 = divPageTransformationSlideTemplate.b;
            zbb zbbVar2 = acb.d;
            e74 e74Var2 = ParsingConvertersKt.g;
            pnb pnbVar = DivPageTransformationSlideJsonParser.h;
            Expression expression3 = DivPageTransformationSlideJsonParser.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var2, jSONObject, "next_page_alpha", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionU != null) {
                expression3 = expressionU;
            }
            tp3 tp3Var3 = divPageTransformationSlideTemplate.c;
            pnb pnbVar2 = DivPageTransformationSlideJsonParser.i;
            Expression expression4 = DivPageTransformationSlideJsonParser.d;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var3, jSONObject, "next_page_scale", zbbVar2, e74Var2, pnbVar2, expression4);
            if (expressionU2 != null) {
                expression4 = expressionU2;
            }
            tp3 tp3Var4 = divPageTransformationSlideTemplate.d;
            pnb pnbVar3 = DivPageTransformationSlideJsonParser.j;
            Expression expression5 = DivPageTransformationSlideJsonParser.e;
            Expression expressionU3 = sa5.u(ex7Var, tp3Var4, jSONObject, "previous_page_alpha", zbbVar2, e74Var2, pnbVar3, expression5);
            if (expressionU3 != null) {
                expression5 = expressionU3;
            }
            tp3 tp3Var5 = divPageTransformationSlideTemplate.e;
            pnb pnbVar4 = DivPageTransformationSlideJsonParser.k;
            Expression expression6 = DivPageTransformationSlideJsonParser.f;
            Expression expressionU4 = sa5.u(ex7Var, tp3Var5, jSONObject, "previous_page_scale", zbbVar2, e74Var2, pnbVar4, expression6);
            return new DivPageTransformationSlide(expression2, expression3, expression4, expression5, expressionU4 == null ? expression6 : expressionU4);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(DivAnimationInterpolator.EASE_IN_OUT);
        Double dValueOf = Double.valueOf(1.0d);
        c = aVar.a(dValueOf);
        d = aVar.a(dValueOf);
        e = aVar.a(dValueOf);
        f = aVar.a(dValueOf);
        g = zbb.a.a(hi.W(DivAnimationInterpolator.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimationInterpolator);
            }
        });
        h = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivPageTransformationSlideJsonParser.e(((Double) obj).doubleValue());
            }
        };
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivPageTransformationSlideJsonParser.f(((Double) obj).doubleValue());
            }
        };
        j = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivPageTransformationSlideJsonParser.g(((Double) obj).doubleValue());
            }
        };
        k = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivPageTransformationSlideJsonParser.h(((Double) obj).doubleValue());
            }
        };
    }

    public static final boolean e(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean f(double d2) {
        return d2 >= 0.0d;
    }

    public static final boolean g(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean h(double d2) {
        return d2 >= 0.0d;
    }
}
