package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivPageTransformationOverlapJsonParser;
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

public abstract class DivPageTransformationOverlapJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final Expression f;
    public static final Expression g;
    public static final zbb h;
    public static final pnb i;
    public static final pnb j;
    public static final pnb k;
    public static final pnb l;

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
        public DivPageTransformationOverlap a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = DivPageTransformationOverlapJsonParser.h;
            e74 e74Var = DivAnimationInterpolator.FROM_STRING;
            Expression expression = DivPageTransformationOverlapJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "interpolator", zbbVar, e74Var, expression);
            Expression expression2 = expressionL == null ? expression : expressionL;
            zbb zbbVar2 = acb.d;
            e74 e74Var2 = ParsingConvertersKt.g;
            pnb pnbVar = DivPageTransformationOverlapJsonParser.i;
            Expression expression3 = DivPageTransformationOverlapJsonParser.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "next_page_alpha", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionK != null) {
                expression3 = expressionK;
            }
            pnb pnbVar2 = DivPageTransformationOverlapJsonParser.j;
            Expression expression4 = DivPageTransformationOverlapJsonParser.d;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "next_page_scale", zbbVar2, e74Var2, pnbVar2, expression4);
            if (expressionK2 != null) {
                expression4 = expressionK2;
            }
            pnb pnbVar3 = DivPageTransformationOverlapJsonParser.k;
            Expression expression5 = DivPageTransformationOverlapJsonParser.e;
            Expression expressionK3 = pa5.k(ex7Var, jSONObject, "previous_page_alpha", zbbVar2, e74Var2, pnbVar3, expression5);
            if (expressionK3 != null) {
                expression5 = expressionK3;
            }
            pnb pnbVar4 = DivPageTransformationOverlapJsonParser.l;
            Expression expression6 = DivPageTransformationOverlapJsonParser.f;
            Expression expressionK4 = pa5.k(ex7Var, jSONObject, "previous_page_scale", zbbVar2, e74Var2, pnbVar4, expression6);
            if (expressionK4 != null) {
                expression6 = expressionK4;
            }
            zbb zbbVar3 = acb.a;
            e74 e74Var3 = ParsingConvertersKt.f;
            Expression expression7 = DivPageTransformationOverlapJsonParser.g;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "reversed_stacking_order", zbbVar3, e74Var3, expression7);
            if (expressionL2 != null) {
                expression7 = expressionL2;
            }
            return new DivPageTransformationOverlap(expression2, expression3, expression4, expression5, expression6, expression7);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivPageTransformationOverlap divPageTransformationOverlap) {
            y45.j(ex7Var, "context");
            y45.j(divPageTransformationOverlap, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "interpolator", divPageTransformationOverlap.a, DivAnimationInterpolator.TO_STRING);
            pa5.p(ex7Var, jSONObject, "next_page_alpha", divPageTransformationOverlap.b);
            pa5.p(ex7Var, jSONObject, "next_page_scale", divPageTransformationOverlap.c);
            pa5.p(ex7Var, jSONObject, "previous_page_alpha", divPageTransformationOverlap.d);
            pa5.p(ex7Var, jSONObject, "previous_page_scale", divPageTransformationOverlap.e);
            pa5.p(ex7Var, jSONObject, "reversed_stacking_order", divPageTransformationOverlap.f);
            tb5.v(ex7Var, jSONObject, "type", "overlap");
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
        public DivPageTransformationOverlapTemplate c(ex7 ex7Var, DivPageTransformationOverlapTemplate divPageTransformationOverlapTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "interpolator", DivPageTransformationOverlapJsonParser.h, zC, divPageTransformationOverlapTemplate != null ? divPageTransformationOverlapTemplate.a : null, DivAnimationInterpolator.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…Interpolator.FROM_STRING)");
            zbb zbbVar = acb.d;
            tp3 tp3Var = divPageTransformationOverlapTemplate != null ? divPageTransformationOverlapTemplate.b : null;
            e74 e74Var = ParsingConvertersKt.g;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "next_page_alpha", zbbVar, zC, tp3Var, e74Var, DivPageTransformationOverlapJsonParser.i);
            y45.i(tp3VarV, "readOptionalFieldWithExp…EXT_PAGE_ALPHA_VALIDATOR)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "next_page_scale", zbbVar, zC, divPageTransformationOverlapTemplate != null ? divPageTransformationOverlapTemplate.c : null, e74Var, DivPageTransformationOverlapJsonParser.j);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…EXT_PAGE_SCALE_VALIDATOR)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "previous_page_alpha", zbbVar, zC, divPageTransformationOverlapTemplate != null ? divPageTransformationOverlapTemplate.d : null, e74Var, DivPageTransformationOverlapJsonParser.k);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…OUS_PAGE_ALPHA_VALIDATOR)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "previous_page_scale", zbbVar, zC, divPageTransformationOverlapTemplate != null ? divPageTransformationOverlapTemplate.e : null, e74Var, DivPageTransformationOverlapJsonParser.l);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…OUS_PAGE_SCALE_VALIDATOR)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "reversed_stacking_order", acb.a, zC, divPageTransformationOverlapTemplate != null ? divPageTransformationOverlapTemplate.f : null, ParsingConvertersKt.f);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…ingOrder, ANY_TO_BOOLEAN)");
            return new DivPageTransformationOverlapTemplate(tp3VarU, tp3VarV, tp3VarV2, tp3VarV3, tp3VarV4, tp3VarU2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivPageTransformationOverlapTemplate divPageTransformationOverlapTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divPageTransformationOverlapTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "interpolator", divPageTransformationOverlapTemplate.a, DivAnimationInterpolator.TO_STRING);
            ra5.D(ex7Var, jSONObject, "next_page_alpha", divPageTransformationOverlapTemplate.b);
            ra5.D(ex7Var, jSONObject, "next_page_scale", divPageTransformationOverlapTemplate.c);
            ra5.D(ex7Var, jSONObject, "previous_page_alpha", divPageTransformationOverlapTemplate.d);
            ra5.D(ex7Var, jSONObject, "previous_page_scale", divPageTransformationOverlapTemplate.e);
            ra5.D(ex7Var, jSONObject, "reversed_stacking_order", divPageTransformationOverlapTemplate.f);
            tb5.v(ex7Var, jSONObject, "type", "overlap");
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
        public DivPageTransformationOverlap a(ex7 ex7Var, DivPageTransformationOverlapTemplate divPageTransformationOverlapTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divPageTransformationOverlapTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divPageTransformationOverlapTemplate.a;
            zbb zbbVar = DivPageTransformationOverlapJsonParser.h;
            e74 e74Var = DivAnimationInterpolator.FROM_STRING;
            Expression expression = DivPageTransformationOverlapJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "interpolator", zbbVar, e74Var, expression);
            Expression expression2 = expressionV == null ? expression : expressionV;
            tp3 tp3Var2 = divPageTransformationOverlapTemplate.b;
            zbb zbbVar2 = acb.d;
            e74 e74Var2 = ParsingConvertersKt.g;
            pnb pnbVar = DivPageTransformationOverlapJsonParser.i;
            Expression expression3 = DivPageTransformationOverlapJsonParser.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var2, jSONObject, "next_page_alpha", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionU != null) {
                expression3 = expressionU;
            }
            tp3 tp3Var3 = divPageTransformationOverlapTemplate.c;
            pnb pnbVar2 = DivPageTransformationOverlapJsonParser.j;
            Expression expression4 = DivPageTransformationOverlapJsonParser.d;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var3, jSONObject, "next_page_scale", zbbVar2, e74Var2, pnbVar2, expression4);
            if (expressionU2 != null) {
                expression4 = expressionU2;
            }
            tp3 tp3Var4 = divPageTransformationOverlapTemplate.d;
            pnb pnbVar3 = DivPageTransformationOverlapJsonParser.k;
            Expression expression5 = DivPageTransformationOverlapJsonParser.e;
            Expression expressionU3 = sa5.u(ex7Var, tp3Var4, jSONObject, "previous_page_alpha", zbbVar2, e74Var2, pnbVar3, expression5);
            if (expressionU3 != null) {
                expression5 = expressionU3;
            }
            tp3 tp3Var5 = divPageTransformationOverlapTemplate.e;
            pnb pnbVar4 = DivPageTransformationOverlapJsonParser.l;
            Expression expression6 = DivPageTransformationOverlapJsonParser.f;
            Expression expressionU4 = sa5.u(ex7Var, tp3Var5, jSONObject, "previous_page_scale", zbbVar2, e74Var2, pnbVar4, expression6);
            if (expressionU4 != null) {
                expression6 = expressionU4;
            }
            tp3 tp3Var6 = divPageTransformationOverlapTemplate.f;
            zbb zbbVar3 = acb.a;
            e74 e74Var3 = ParsingConvertersKt.f;
            Expression expression7 = DivPageTransformationOverlapJsonParser.g;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var6, jSONObject, "reversed_stacking_order", zbbVar3, e74Var3, expression7);
            return new DivPageTransformationOverlap(expression2, expression3, expression4, expression5, expression6, expressionV2 == null ? expression7 : expressionV2);
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
        g = aVar.a(Boolean.FALSE);
        h = zbb.a.a(hi.W(DivAnimationInterpolator.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimationInterpolator);
            }
        });
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivPageTransformationOverlapJsonParser.e(((Double) obj).doubleValue());
            }
        };
        j = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivPageTransformationOverlapJsonParser.f(((Double) obj).doubleValue());
            }
        };
        k = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivPageTransformationOverlapJsonParser.g(((Double) obj).doubleValue());
            }
        };
        l = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivPageTransformationOverlapJsonParser.h(((Double) obj).doubleValue());
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
