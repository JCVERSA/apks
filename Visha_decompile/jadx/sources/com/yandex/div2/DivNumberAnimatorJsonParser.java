package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivNumberAnimatorJsonParser;
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

public abstract class DivNumberAnimatorJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final DivCount.b d;
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
        public DivNumberAnimator a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            List listR = tb5.r(ex7Var, jSONObject, "cancel_actions", this.a.u0());
            zbb zbbVar = DivNumberAnimatorJsonParser.f;
            e74 e74Var = DivAnimationDirection.FROM_STRING;
            Expression expression = DivNumberAnimatorJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionF = pa5.f(ex7Var, jSONObject, "duration", zbbVar2, e74Var2, DivNumberAnimatorJsonParser.h);
            y45.i(expressionF, "readExpression(context, …_INT, DURATION_VALIDATOR)");
            List listR2 = tb5.r(ex7Var, jSONObject, "end_actions", this.a.u0());
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            Expression expressionE = pa5.e(ex7Var, jSONObject, "end_value", zbbVar3, e74Var3);
            y45.i(expressionE, "readExpression(context, …DOUBLE, NUMBER_TO_DOUBLE)");
            Object objD = tb5.d(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            y45.i(objD, "read(context, data, \"id\")");
            String str = (String) objD;
            zbb zbbVar4 = DivNumberAnimatorJsonParser.g;
            e74 e74Var4 = DivAnimationInterpolator.FROM_STRING;
            Expression expression2 = DivNumberAnimatorJsonParser.c;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "interpolator", zbbVar4, e74Var4, expression2);
            if (expressionL2 != null) {
                expression2 = expressionL2;
            }
            DivCount divCount = (DivCount) tb5.n(ex7Var, jSONObject, "repeat_count", this.a.s2());
            if (divCount == null) {
                divCount = DivNumberAnimatorJsonParser.d;
            }
            DivCount divCount2 = divCount;
            y45.i(divCount2, "JsonPropertyParser.readO…EPEAT_COUNT_DEFAULT_VALUE");
            pnb pnbVar = DivNumberAnimatorJsonParser.i;
            Expression expression3 = DivNumberAnimatorJsonParser.e;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "start_delay", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionK == null) {
                expressionK = expression3;
            }
            Expression expressionI = pa5.i(ex7Var, jSONObject, "start_value", zbbVar3, e74Var3);
            Object objD2 = tb5.d(ex7Var, jSONObject, "variable_name");
            y45.i(objD2, "read(context, data, \"variable_name\")");
            return new DivNumberAnimator(listR, expression, expressionF, listR2, expressionE, str, expression2, divCount2, expressionK, expressionI, (String) objD2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivNumberAnimator divNumberAnimator) {
            y45.j(ex7Var, "context");
            y45.j(divNumberAnimator, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.z(ex7Var, jSONObject, "cancel_actions", divNumberAnimator.b(), this.a.u0());
            pa5.q(ex7Var, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, divNumberAnimator.a(), DivAnimationDirection.TO_STRING);
            pa5.p(ex7Var, jSONObject, "duration", divNumberAnimator.getDuration());
            tb5.z(ex7Var, jSONObject, "end_actions", divNumberAnimator.e(), this.a.u0());
            pa5.p(ex7Var, jSONObject, "end_value", divNumberAnimator.e);
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divNumberAnimator.getId());
            pa5.q(ex7Var, jSONObject, "interpolator", divNumberAnimator.d(), DivAnimationInterpolator.TO_STRING);
            tb5.x(ex7Var, jSONObject, "repeat_count", divNumberAnimator.c(), this.a.s2());
            pa5.p(ex7Var, jSONObject, "start_delay", divNumberAnimator.f());
            pa5.p(ex7Var, jSONObject, "start_value", divNumberAnimator.j);
            tb5.v(ex7Var, jSONObject, "type", "number_animator");
            tb5.v(ex7Var, jSONObject, "variable_name", divNumberAnimator.h());
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
        public DivNumberAnimatorTemplate c(ex7 ex7Var, DivNumberAnimatorTemplate divNumberAnimatorTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "cancel_actions", zC, divNumberAnimatorTemplate != null ? divNumberAnimatorTemplate.a : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, DivNumberAnimatorJsonParser.f, zC, divNumberAnimatorTemplate != null ? divNumberAnimatorTemplate.b : null, DivAnimationDirection.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ionDirection.FROM_STRING)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divNumberAnimatorTemplate != null ? divNumberAnimatorTemplate.c : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarJ = ra5.j(ex7VarC, jSONObject, "duration", zbbVar, zC, tp3Var, e74Var, DivNumberAnimatorJsonParser.h);
            y45.i(tp3VarJ, "readFieldWithExpression(…_INT, DURATION_VALIDATOR)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "end_actions", zC, divNumberAnimatorTemplate != null ? divNumberAnimatorTemplate.d : null, this.a.v0());
            y45.i(tp3VarZ2, "readOptionalListField(co…ActionJsonTemplateParser)");
            zbb zbbVar2 = acb.d;
            tp3 tp3Var2 = divNumberAnimatorTemplate != null ? divNumberAnimatorTemplate.e : null;
            e74 e74Var2 = ParsingConvertersKt.g;
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "end_value", zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarI, "readFieldWithExpression(…dValue, NUMBER_TO_DOUBLE)");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divNumberAnimatorTemplate != null ? divNumberAnimatorTemplate.f : null);
            y45.i(tp3VarC, "readField(context, data,…llowOverride, parent?.id)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "interpolator", DivNumberAnimatorJsonParser.g, zC, divNumberAnimatorTemplate != null ? divNumberAnimatorTemplate.g : null, DivAnimationInterpolator.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…Interpolator.FROM_STRING)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "repeat_count", zC, divNumberAnimatorTemplate != null ? divNumberAnimatorTemplate.h : null, this.a.t2());
            y45.i(tp3VarS, "readOptionalField(contex…vCountJsonTemplateParser)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "start_delay", zbbVar, zC, divNumberAnimatorTemplate != null ? divNumberAnimatorTemplate.i : null, e74Var, DivNumberAnimatorJsonParser.i);
            y45.i(tp3VarV, "readOptionalFieldWithExp…T, START_DELAY_VALIDATOR)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "start_value", zbbVar2, zC, divNumberAnimatorTemplate != null ? divNumberAnimatorTemplate.j : null, e74Var2);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…tValue, NUMBER_TO_DOUBLE)");
            tp3 tp3VarC2 = ra5.c(ex7VarC, jSONObject, "variable_name", zC, divNumberAnimatorTemplate != null ? divNumberAnimatorTemplate.k : null);
            y45.i(tp3VarC2, "readField(context, data,…de, parent?.variableName)");
            return new DivNumberAnimatorTemplate(tp3VarZ, tp3VarU, tp3VarJ, tp3VarZ2, tp3VarI, tp3VarC, tp3VarU2, tp3VarS, tp3VarV, tp3VarU3, tp3VarC2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivNumberAnimatorTemplate divNumberAnimatorTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divNumberAnimatorTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.K(ex7Var, jSONObject, "cancel_actions", divNumberAnimatorTemplate.a, this.a.v0());
            ra5.E(ex7Var, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, divNumberAnimatorTemplate.b, DivAnimationDirection.TO_STRING);
            ra5.D(ex7Var, jSONObject, "duration", divNumberAnimatorTemplate.c);
            ra5.K(ex7Var, jSONObject, "end_actions", divNumberAnimatorTemplate.d, this.a.v0());
            ra5.D(ex7Var, jSONObject, "end_value", divNumberAnimatorTemplate.e);
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divNumberAnimatorTemplate.f);
            ra5.E(ex7Var, jSONObject, "interpolator", divNumberAnimatorTemplate.g, DivAnimationInterpolator.TO_STRING);
            ra5.I(ex7Var, jSONObject, "repeat_count", divNumberAnimatorTemplate.h, this.a.t2());
            ra5.D(ex7Var, jSONObject, "start_delay", divNumberAnimatorTemplate.i);
            ra5.D(ex7Var, jSONObject, "start_value", divNumberAnimatorTemplate.j);
            tb5.v(ex7Var, jSONObject, "type", "number_animator");
            ra5.G(ex7Var, jSONObject, "variable_name", divNumberAnimatorTemplate.k);
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
        public DivNumberAnimator a(ex7 ex7Var, DivNumberAnimatorTemplate divNumberAnimatorTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divNumberAnimatorTemplate, "template");
            y45.j(jSONObject, "data");
            List listB = sa5.B(ex7Var, divNumberAnimatorTemplate.a, jSONObject, "cancel_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var = divNumberAnimatorTemplate.b;
            zbb zbbVar = DivNumberAnimatorJsonParser.f;
            e74 e74Var = DivAnimationDirection.FROM_STRING;
            Expression expression = DivNumberAnimatorJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            tp3 tp3Var2 = divNumberAnimatorTemplate.c;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionI = sa5.i(ex7Var, tp3Var2, jSONObject, "duration", zbbVar2, e74Var2, DivNumberAnimatorJsonParser.h);
            y45.i(expressionI, "resolveExpression(contex…_INT, DURATION_VALIDATOR)");
            List listB2 = sa5.B(ex7Var, divNumberAnimatorTemplate.d, jSONObject, "end_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var3 = divNumberAnimatorTemplate.e;
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            Expression expressionH = sa5.h(ex7Var, tp3Var3, jSONObject, "end_value", zbbVar3, e74Var3);
            y45.i(expressionH, "resolveExpression(contex…DOUBLE, NUMBER_TO_DOUBLE)");
            Object objA = sa5.a(ex7Var, divNumberAnimatorTemplate.f, jSONObject, TtmlNode.ATTR_ID);
            y45.i(objA, "resolve(context, template.id, data, \"id\")");
            String str = (String) objA;
            tp3 tp3Var4 = divNumberAnimatorTemplate.g;
            zbb zbbVar4 = DivNumberAnimatorJsonParser.g;
            e74 e74Var4 = DivAnimationInterpolator.FROM_STRING;
            Expression expression2 = DivNumberAnimatorJsonParser.c;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var4, jSONObject, "interpolator", zbbVar4, e74Var4, expression2);
            if (expressionV2 != null) {
                expression2 = expressionV2;
            }
            DivCount divCount = (DivCount) sa5.p(ex7Var, divNumberAnimatorTemplate.h, jSONObject, "repeat_count", this.a.u2(), this.a.s2());
            if (divCount == null) {
                divCount = DivNumberAnimatorJsonParser.d;
            }
            DivCount divCount2 = divCount;
            y45.i(divCount2, "JsonFieldResolver.resolv…EPEAT_COUNT_DEFAULT_VALUE");
            tp3 tp3Var5 = divNumberAnimatorTemplate.i;
            pnb pnbVar = DivNumberAnimatorJsonParser.i;
            Expression expression3 = DivNumberAnimatorJsonParser.e;
            Expression expressionU = sa5.u(ex7Var, tp3Var5, jSONObject, "start_delay", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionU != null) {
                expression3 = expressionU;
            }
            Expression expressionS = sa5.s(ex7Var, divNumberAnimatorTemplate.j, jSONObject, "start_value", zbbVar3, e74Var3);
            Object objA2 = sa5.a(ex7Var, divNumberAnimatorTemplate.k, jSONObject, "variable_name");
            y45.i(objA2, "resolve(context, templat…e, data, \"variable_name\")");
            return new DivNumberAnimator(listB, expression, expressionI, listB2, expressionH, str, expression2, divCount2, expression3, expressionS, (String) objA2);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(DivAnimationDirection.NORMAL);
        c = aVar.a(DivAnimationInterpolator.LINEAR);
        d = new DivCount.b(new DivFixedCount(aVar.a(1L)));
        e = aVar.a(0L);
        zbb.a aVar2 = zbb.a;
        f = aVar2.a(hi.W(DivAnimationDirection.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimationDirection);
            }
        });
        g = aVar2.a(hi.W(DivAnimationInterpolator.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimationInterpolator);
            }
        });
        h = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivNumberAnimatorJsonParser.c(((Long) obj).longValue());
            }
        };
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivNumberAnimatorJsonParser.d(((Long) obj).longValue());
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
