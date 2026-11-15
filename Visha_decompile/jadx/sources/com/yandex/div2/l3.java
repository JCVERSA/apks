package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.l3;
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

public abstract class l3 {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final pnb e;
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
        public DivShadow a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = l3.e;
            Expression expression = l3.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            pnb pnbVar2 = l3.f;
            Expression expression2 = l3.c;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "blur", zbbVar2, e74Var2, pnbVar2, expression2);
            if (expressionK2 != null) {
                expression2 = expressionK2;
            }
            zbb zbbVar3 = acb.f;
            e74 e74Var3 = ParsingConvertersKt.b;
            Expression expression3 = l3.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "color", zbbVar3, e74Var3, expression3);
            if (expressionL != null) {
                expression3 = expressionL;
            }
            Object objG = tb5.g(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, this.a.W5());
            y45.i(objG, "read(context, data, \"off…divPointJsonEntityParser)");
            return new DivShadow(expression, expression2, expression3, (DivPoint) objG);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivShadow divShadow) {
            y45.j(ex7Var, "context");
            y45.j(divShadow, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "alpha", divShadow.a);
            pa5.p(ex7Var, jSONObject, "blur", divShadow.b);
            pa5.q(ex7Var, jSONObject, "color", divShadow.c, ParsingConvertersKt.a);
            tb5.x(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, divShadow.d, this.a.W5());
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
        public DivShadowTemplate c(ex7 ex7Var, DivShadowTemplate divShadowTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divShadowTemplate != null ? divShadowTemplate.a : null, ParsingConvertersKt.g, l3.e);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "blur", acb.b, zC, divShadowTemplate != null ? divShadowTemplate.b : null, ParsingConvertersKt.h, l3.f);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…R_TO_INT, BLUR_VALIDATOR)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "color", acb.f, zC, divShadowTemplate != null ? divShadowTemplate.c : null, ParsingConvertersKt.b);
            y45.i(tp3VarU, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, zC, divShadowTemplate != null ? divShadowTemplate.d : null, this.a.X5());
            y45.i(tp3VarF, "readField(context, data,…vPointJsonTemplateParser)");
            return new DivShadowTemplate(tp3VarV, tp3VarV2, tp3VarU, tp3VarF);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivShadowTemplate divShadowTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divShadowTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "alpha", divShadowTemplate.a);
            ra5.D(ex7Var, jSONObject, "blur", divShadowTemplate.b);
            ra5.E(ex7Var, jSONObject, "color", divShadowTemplate.c, ParsingConvertersKt.a);
            ra5.I(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, divShadowTemplate.d, this.a.X5());
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
        public DivShadow a(ex7 ex7Var, DivShadowTemplate divShadowTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divShadowTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divShadowTemplate.a;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = l3.e;
            Expression expression = l3.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            tp3 tp3Var2 = divShadowTemplate.b;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            pnb pnbVar2 = l3.f;
            Expression expression2 = l3.c;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var2, jSONObject, "blur", zbbVar2, e74Var2, pnbVar2, expression2);
            if (expressionU2 != null) {
                expression2 = expressionU2;
            }
            tp3 tp3Var3 = divShadowTemplate.c;
            zbb zbbVar3 = acb.f;
            e74 e74Var3 = ParsingConvertersKt.b;
            Expression expression3 = l3.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var3, jSONObject, "color", zbbVar3, e74Var3, expression3);
            if (expressionV != null) {
                expression3 = expressionV;
            }
            Object objD = sa5.d(ex7Var, divShadowTemplate.d, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, this.a.Y5(), this.a.W5());
            y45.i(objD, "resolve(context, templat…divPointJsonEntityParser)");
            return new DivShadow(expression, expression2, expression3, (DivPoint) objD);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(0.19d));
        c = aVar.a(2L);
        d = aVar.a(0);
        e = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return l3.c(((Double) obj).doubleValue());
            }
        };
        f = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return l3.d(((Long) obj).longValue());
            }
        };
    }

    public static final boolean c(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean d(long j) {
        return j >= 0;
    }
}
