package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAnimationJsonParser;
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
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivAnimationJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final DivCount.c d;
    public static final Expression e;
    public static final zbb f;
    public static final zbb g;
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
        public DivAnimation a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivAnimationJsonParser.h;
            Expression expression = DivAnimationJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            zbb zbbVar2 = acb.d;
            e74 e74Var2 = ParsingConvertersKt.g;
            Expression expressionI = pa5.i(ex7Var, jSONObject, "end_value", zbbVar2, e74Var2);
            zbb zbbVar3 = DivAnimationJsonParser.f;
            e74 e74Var3 = DivAnimationInterpolator.FROM_STRING;
            Expression expression2 = DivAnimationJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "interpolator", zbbVar3, e74Var3, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            List listR = tb5.r(ex7Var, jSONObject, "items", this.a.n1());
            Expression expressionE = pa5.e(ex7Var, jSONObject, "name", DivAnimationJsonParser.g, DivAnimation.Name.FROM_STRING);
            y45.i(expressionE, "readExpression(context, …imation.Name.FROM_STRING)");
            DivCount divCount = (DivCount) tb5.n(ex7Var, jSONObject, "repeat", this.a.s2());
            if (divCount == null) {
                divCount = DivAnimationJsonParser.d;
            }
            DivCount divCount2 = divCount;
            y45.i(divCount2, "JsonPropertyParser.readO…) ?: REPEAT_DEFAULT_VALUE");
            pnb pnbVar2 = DivAnimationJsonParser.i;
            Expression expression3 = DivAnimationJsonParser.e;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "start_delay", zbbVar, e74Var, pnbVar2, expression3);
            if (expressionK2 == null) {
                expressionK2 = expression3;
            }
            return new DivAnimation(expression, expressionI, expression2, listR, expressionE, divCount2, expressionK2, pa5.i(ex7Var, jSONObject, "start_value", zbbVar2, e74Var2));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivAnimation divAnimation) {
            y45.j(ex7Var, "context");
            y45.j(divAnimation, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "duration", divAnimation.a);
            pa5.p(ex7Var, jSONObject, "end_value", divAnimation.b);
            pa5.q(ex7Var, jSONObject, "interpolator", divAnimation.c, DivAnimationInterpolator.TO_STRING);
            tb5.z(ex7Var, jSONObject, "items", divAnimation.d, this.a.n1());
            pa5.q(ex7Var, jSONObject, "name", divAnimation.e, DivAnimation.Name.TO_STRING);
            tb5.x(ex7Var, jSONObject, "repeat", divAnimation.f, this.a.s2());
            pa5.p(ex7Var, jSONObject, "start_delay", divAnimation.g);
            pa5.p(ex7Var, jSONObject, "start_value", divAnimation.h);
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
        public DivAnimationTemplate c(ex7 ex7Var, DivAnimationTemplate divAnimationTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.b;
            tp3 tp3Var = divAnimationTemplate != null ? divAnimationTemplate.a : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "duration", zbbVar, zC, tp3Var, e74Var, DivAnimationJsonParser.h);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_INT, DURATION_VALIDATOR)");
            zbb zbbVar2 = acb.d;
            tp3 tp3Var2 = divAnimationTemplate != null ? divAnimationTemplate.b : null;
            e74 e74Var2 = ParsingConvertersKt.g;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "end_value", zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarU, "readOptionalFieldWithExp…dValue, NUMBER_TO_DOUBLE)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "interpolator", DivAnimationJsonParser.f, zC, divAnimationTemplate != null ? divAnimationTemplate.c : null, DivAnimationInterpolator.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…Interpolator.FROM_STRING)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "items", zC, divAnimationTemplate != null ? divAnimationTemplate.d : null, this.a.o1());
            y45.i(tp3VarZ, "readOptionalListField(co…mationJsonTemplateParser)");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "name", DivAnimationJsonParser.g, zC, divAnimationTemplate != null ? divAnimationTemplate.e : null, DivAnimation.Name.FROM_STRING);
            y45.i(tp3VarI, "readFieldWithExpression(…imation.Name.FROM_STRING)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "repeat", zC, divAnimationTemplate != null ? divAnimationTemplate.f : null, this.a.t2());
            y45.i(tp3VarS, "readOptionalField(contex…vCountJsonTemplateParser)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "start_delay", zbbVar, zC, divAnimationTemplate != null ? divAnimationTemplate.g : null, e74Var, DivAnimationJsonParser.i);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, START_DELAY_VALIDATOR)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "start_value", zbbVar2, zC, divAnimationTemplate != null ? divAnimationTemplate.h : null, e74Var2);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…tValue, NUMBER_TO_DOUBLE)");
            return new DivAnimationTemplate(tp3VarV, tp3VarU, tp3VarU2, tp3VarZ, tp3VarI, tp3VarS, tp3VarV2, tp3VarU3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivAnimationTemplate divAnimationTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divAnimationTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "duration", divAnimationTemplate.a);
            ra5.D(ex7Var, jSONObject, "end_value", divAnimationTemplate.b);
            ra5.E(ex7Var, jSONObject, "interpolator", divAnimationTemplate.c, DivAnimationInterpolator.TO_STRING);
            ra5.K(ex7Var, jSONObject, "items", divAnimationTemplate.d, this.a.o1());
            ra5.E(ex7Var, jSONObject, "name", divAnimationTemplate.e, DivAnimation.Name.TO_STRING);
            ra5.I(ex7Var, jSONObject, "repeat", divAnimationTemplate.f, this.a.t2());
            ra5.D(ex7Var, jSONObject, "start_delay", divAnimationTemplate.g);
            ra5.D(ex7Var, jSONObject, "start_value", divAnimationTemplate.h);
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
        public DivAnimation a(ex7 ex7Var, DivAnimationTemplate divAnimationTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divAnimationTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divAnimationTemplate.a;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivAnimationJsonParser.h;
            Expression expression = DivAnimationJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            tp3 tp3Var2 = divAnimationTemplate.b;
            zbb zbbVar2 = acb.d;
            e74 e74Var2 = ParsingConvertersKt.g;
            Expression expressionS = sa5.s(ex7Var, tp3Var2, jSONObject, "end_value", zbbVar2, e74Var2);
            tp3 tp3Var3 = divAnimationTemplate.c;
            zbb zbbVar3 = DivAnimationJsonParser.f;
            e74 e74Var3 = DivAnimationInterpolator.FROM_STRING;
            Expression expression2 = DivAnimationJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var3, jSONObject, "interpolator", zbbVar3, e74Var3, expression2);
            Expression expression3 = expressionV == null ? expression2 : expressionV;
            List listB = sa5.B(ex7Var, divAnimationTemplate.d, jSONObject, "items", this.a.p1(), this.a.n1());
            Expression expressionH = sa5.h(ex7Var, divAnimationTemplate.e, jSONObject, "name", DivAnimationJsonParser.g, DivAnimation.Name.FROM_STRING);
            y45.i(expressionH, "resolveExpression(contex…imation.Name.FROM_STRING)");
            DivCount divCount = (DivCount) sa5.p(ex7Var, divAnimationTemplate.f, jSONObject, "repeat", this.a.u2(), this.a.s2());
            if (divCount == null) {
                divCount = DivAnimationJsonParser.d;
            }
            y45.i(divCount, "JsonFieldResolver.resolv…) ?: REPEAT_DEFAULT_VALUE");
            tp3 tp3Var4 = divAnimationTemplate.g;
            pnb pnbVar2 = DivAnimationJsonParser.i;
            Expression expression4 = DivAnimationJsonParser.e;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var4, jSONObject, "start_delay", zbbVar, e74Var, pnbVar2, expression4);
            return new DivAnimation(expression, expressionS, expression3, listB, expressionH, divCount, expressionU2 == null ? expression4 : expressionU2, sa5.s(ex7Var, divAnimationTemplate.h, jSONObject, "start_value", zbbVar2, e74Var2));
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(300L);
        c = aVar.a(DivAnimationInterpolator.SPRING);
        d = new DivCount.c(new DivInfinityCount());
        e = aVar.a(0L);
        zbb.a aVar2 = zbb.a;
        f = aVar2.a(hi.W(DivAnimationInterpolator.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimationInterpolator);
            }
        });
        g = aVar2.a(hi.W(DivAnimation.Name.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimation.Name);
            }
        });
        h = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivAnimationJsonParser.c(((Long) obj).longValue());
            }
        };
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivAnimationJsonParser.d(((Long) obj).longValue());
            }
        };
    }

    public static final boolean c(long j) {
        return j >= 0;
    }

    public static final boolean d(long j) {
        return j >= 0;
    }
}
