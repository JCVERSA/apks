package com.yandex.div2;

import com.transsion.tools.fragments.SettingFragment;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivFadeTransitionJsonParser;
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

public abstract class DivFadeTransitionJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final zbb f;
    public static final pnb g;
    public static final pnb h;
    public static final pnb i;

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
        public DivFadeTransition a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivFadeTransitionJsonParser.g;
            Expression expression = DivFadeTransitionJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            pnb pnbVar2 = DivFadeTransitionJsonParser.h;
            Expression expression2 = DivFadeTransitionJsonParser.c;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "duration", zbbVar2, e74Var2, pnbVar2, expression2);
            if (expressionK2 != null) {
                expression2 = expressionK2;
            }
            zbb zbbVar3 = DivFadeTransitionJsonParser.f;
            e74 e74Var3 = DivAnimationInterpolator.FROM_STRING;
            Expression expression3 = DivFadeTransitionJsonParser.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "interpolator", zbbVar3, e74Var3, expression3);
            Expression expression4 = expressionL == null ? expression3 : expressionL;
            pnb pnbVar3 = DivFadeTransitionJsonParser.i;
            Expression expression5 = DivFadeTransitionJsonParser.e;
            Expression expressionK3 = pa5.k(ex7Var, jSONObject, "start_delay", zbbVar2, e74Var2, pnbVar3, expression5);
            if (expressionK3 != null) {
                expression5 = expressionK3;
            }
            return new DivFadeTransition(expression, expression2, expression4, expression5);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivFadeTransition divFadeTransition) {
            y45.j(ex7Var, "context");
            y45.j(divFadeTransition, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "alpha", divFadeTransition.a);
            pa5.p(ex7Var, jSONObject, "duration", divFadeTransition.b());
            pa5.q(ex7Var, jSONObject, "interpolator", divFadeTransition.c(), DivAnimationInterpolator.TO_STRING);
            pa5.p(ex7Var, jSONObject, "start_delay", divFadeTransition.d());
            tb5.v(ex7Var, jSONObject, "type", SettingFragment.SHAKE_ITEM_MUSIC_FADE);
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
        public DivFadeTransitionTemplate c(ex7 ex7Var, DivFadeTransitionTemplate divFadeTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divFadeTransitionTemplate != null ? divFadeTransitionTemplate.a : null, ParsingConvertersKt.g, DivFadeTransitionJsonParser.g);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divFadeTransitionTemplate != null ? divFadeTransitionTemplate.b : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "duration", zbbVar, zC, tp3Var, e74Var, DivFadeTransitionJsonParser.h);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…_INT, DURATION_VALIDATOR)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "interpolator", DivFadeTransitionJsonParser.f, zC, divFadeTransitionTemplate != null ? divFadeTransitionTemplate.c : null, DivAnimationInterpolator.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…Interpolator.FROM_STRING)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "start_delay", zbbVar, zC, divFadeTransitionTemplate != null ? divFadeTransitionTemplate.d : null, e74Var, DivFadeTransitionJsonParser.i);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…T, START_DELAY_VALIDATOR)");
            return new DivFadeTransitionTemplate(tp3VarV, tp3VarV2, tp3VarU, tp3VarV3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivFadeTransitionTemplate divFadeTransitionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divFadeTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "alpha", divFadeTransitionTemplate.a);
            ra5.D(ex7Var, jSONObject, "duration", divFadeTransitionTemplate.b);
            ra5.E(ex7Var, jSONObject, "interpolator", divFadeTransitionTemplate.c, DivAnimationInterpolator.TO_STRING);
            ra5.D(ex7Var, jSONObject, "start_delay", divFadeTransitionTemplate.d);
            tb5.v(ex7Var, jSONObject, "type", SettingFragment.SHAKE_ITEM_MUSIC_FADE);
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
        public DivFadeTransition a(ex7 ex7Var, DivFadeTransitionTemplate divFadeTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divFadeTransitionTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divFadeTransitionTemplate.a;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivFadeTransitionJsonParser.g;
            Expression expression = DivFadeTransitionJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            tp3 tp3Var2 = divFadeTransitionTemplate.b;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            pnb pnbVar2 = DivFadeTransitionJsonParser.h;
            Expression expression2 = DivFadeTransitionJsonParser.c;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var2, jSONObject, "duration", zbbVar2, e74Var2, pnbVar2, expression2);
            if (expressionU2 != null) {
                expression2 = expressionU2;
            }
            tp3 tp3Var3 = divFadeTransitionTemplate.c;
            zbb zbbVar3 = DivFadeTransitionJsonParser.f;
            e74 e74Var3 = DivAnimationInterpolator.FROM_STRING;
            Expression expression3 = DivFadeTransitionJsonParser.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var3, jSONObject, "interpolator", zbbVar3, e74Var3, expression3);
            if (expressionV != null) {
                expression3 = expressionV;
            }
            tp3 tp3Var4 = divFadeTransitionTemplate.d;
            pnb pnbVar3 = DivFadeTransitionJsonParser.i;
            Expression expression4 = DivFadeTransitionJsonParser.e;
            Expression expression5 = expression3;
            Expression expressionU3 = sa5.u(ex7Var, tp3Var4, jSONObject, "start_delay", zbbVar2, e74Var2, pnbVar3, expression4);
            if (expressionU3 != null) {
                expression4 = expressionU3;
            }
            return new DivFadeTransition(expression, expression2, expression5, expression4);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(0.0d));
        c = aVar.a(200L);
        d = aVar.a(DivAnimationInterpolator.EASE_IN_OUT);
        e = aVar.a(0L);
        f = zbb.a.a(hi.W(DivAnimationInterpolator.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimationInterpolator);
            }
        });
        g = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivFadeTransitionJsonParser.d(((Double) obj).doubleValue());
            }
        };
        h = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivFadeTransitionJsonParser.e(((Long) obj).longValue());
            }
        };
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivFadeTransitionJsonParser.f(((Long) obj).longValue());
            }
        };
    }

    public static final boolean d(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean e(long j) {
        return j >= 0;
    }

    public static final boolean f(long j) {
        return j >= 0;
    }
}
