package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivColorAnimatorJsonParser;
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

public abstract class DivColorAnimatorJsonParser {
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
        public DivColorAnimator a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            List listR = tb5.r(ex7Var, jSONObject, "cancel_actions", this.a.u0());
            zbb zbbVar = DivColorAnimatorJsonParser.f;
            e74 e74Var = DivAnimationDirection.FROM_STRING;
            Expression expression = DivColorAnimatorJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionF = pa5.f(ex7Var, jSONObject, "duration", zbbVar2, e74Var2, DivColorAnimatorJsonParser.h);
            y45.i(expressionF, "readExpression(context, …_INT, DURATION_VALIDATOR)");
            List listR2 = tb5.r(ex7Var, jSONObject, "end_actions", this.a.u0());
            zbb zbbVar3 = acb.f;
            e74 e74Var3 = ParsingConvertersKt.b;
            Expression expressionE = pa5.e(ex7Var, jSONObject, "end_value", zbbVar3, e74Var3);
            y45.i(expressionE, "readExpression(context, …LOR, STRING_TO_COLOR_INT)");
            Object objD = tb5.d(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            y45.i(objD, "read(context, data, \"id\")");
            String str = (String) objD;
            zbb zbbVar4 = DivColorAnimatorJsonParser.g;
            e74 e74Var4 = DivAnimationInterpolator.FROM_STRING;
            Expression expression2 = DivColorAnimatorJsonParser.c;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "interpolator", zbbVar4, e74Var4, expression2);
            if (expressionL2 != null) {
                expression2 = expressionL2;
            }
            DivCount divCount = (DivCount) tb5.n(ex7Var, jSONObject, "repeat_count", this.a.s2());
            if (divCount == null) {
                divCount = DivColorAnimatorJsonParser.d;
            }
            DivCount divCount2 = divCount;
            y45.i(divCount2, "JsonPropertyParser.readO…EPEAT_COUNT_DEFAULT_VALUE");
            pnb pnbVar = DivColorAnimatorJsonParser.i;
            Expression expression3 = DivColorAnimatorJsonParser.e;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "start_delay", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionK == null) {
                expressionK = expression3;
            }
            Expression expressionI = pa5.i(ex7Var, jSONObject, "start_value", zbbVar3, e74Var3);
            Object objD2 = tb5.d(ex7Var, jSONObject, "variable_name");
            y45.i(objD2, "read(context, data, \"variable_name\")");
            return new DivColorAnimator(listR, expression, expressionF, listR2, expressionE, str, expression2, divCount2, expressionK, expressionI, (String) objD2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivColorAnimator divColorAnimator) {
            y45.j(ex7Var, "context");
            y45.j(divColorAnimator, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.z(ex7Var, jSONObject, "cancel_actions", divColorAnimator.b(), this.a.u0());
            pa5.q(ex7Var, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, divColorAnimator.a(), DivAnimationDirection.TO_STRING);
            pa5.p(ex7Var, jSONObject, "duration", divColorAnimator.getDuration());
            tb5.z(ex7Var, jSONObject, "end_actions", divColorAnimator.e(), this.a.u0());
            Expression expression = divColorAnimator.e;
            e74 e74Var = ParsingConvertersKt.a;
            pa5.q(ex7Var, jSONObject, "end_value", expression, e74Var);
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divColorAnimator.getId());
            pa5.q(ex7Var, jSONObject, "interpolator", divColorAnimator.d(), DivAnimationInterpolator.TO_STRING);
            tb5.x(ex7Var, jSONObject, "repeat_count", divColorAnimator.c(), this.a.s2());
            pa5.p(ex7Var, jSONObject, "start_delay", divColorAnimator.f());
            pa5.q(ex7Var, jSONObject, "start_value", divColorAnimator.j, e74Var);
            tb5.v(ex7Var, jSONObject, "type", "color_animator");
            tb5.v(ex7Var, jSONObject, "variable_name", divColorAnimator.h());
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
        public DivColorAnimatorTemplate c(ex7 ex7Var, DivColorAnimatorTemplate divColorAnimatorTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "cancel_actions", zC, divColorAnimatorTemplate != null ? divColorAnimatorTemplate.a : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, DivColorAnimatorJsonParser.f, zC, divColorAnimatorTemplate != null ? divColorAnimatorTemplate.b : null, DivAnimationDirection.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ionDirection.FROM_STRING)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divColorAnimatorTemplate != null ? divColorAnimatorTemplate.c : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarJ = ra5.j(ex7VarC, jSONObject, "duration", zbbVar, zC, tp3Var, e74Var, DivColorAnimatorJsonParser.h);
            y45.i(tp3VarJ, "readFieldWithExpression(…_INT, DURATION_VALIDATOR)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "end_actions", zC, divColorAnimatorTemplate != null ? divColorAnimatorTemplate.d : null, this.a.v0());
            y45.i(tp3VarZ2, "readOptionalListField(co…ActionJsonTemplateParser)");
            zbb zbbVar2 = acb.f;
            tp3 tp3Var2 = divColorAnimatorTemplate != null ? divColorAnimatorTemplate.e : null;
            e74 e74Var2 = ParsingConvertersKt.b;
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "end_value", zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarI, "readFieldWithExpression(…lue, STRING_TO_COLOR_INT)");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divColorAnimatorTemplate != null ? divColorAnimatorTemplate.f : null);
            y45.i(tp3VarC, "readField(context, data,…llowOverride, parent?.id)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "interpolator", DivColorAnimatorJsonParser.g, zC, divColorAnimatorTemplate != null ? divColorAnimatorTemplate.g : null, DivAnimationInterpolator.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…Interpolator.FROM_STRING)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "repeat_count", zC, divColorAnimatorTemplate != null ? divColorAnimatorTemplate.h : null, this.a.t2());
            y45.i(tp3VarS, "readOptionalField(contex…vCountJsonTemplateParser)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "start_delay", zbbVar, zC, divColorAnimatorTemplate != null ? divColorAnimatorTemplate.i : null, e74Var, DivColorAnimatorJsonParser.i);
            y45.i(tp3VarV, "readOptionalFieldWithExp…T, START_DELAY_VALIDATOR)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "start_value", zbbVar2, zC, divColorAnimatorTemplate != null ? divColorAnimatorTemplate.j : null, e74Var2);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…lue, STRING_TO_COLOR_INT)");
            tp3 tp3VarC2 = ra5.c(ex7VarC, jSONObject, "variable_name", zC, divColorAnimatorTemplate != null ? divColorAnimatorTemplate.k : null);
            y45.i(tp3VarC2, "readField(context, data,…de, parent?.variableName)");
            return new DivColorAnimatorTemplate(tp3VarZ, tp3VarU, tp3VarJ, tp3VarZ2, tp3VarI, tp3VarC, tp3VarU2, tp3VarS, tp3VarV, tp3VarU3, tp3VarC2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivColorAnimatorTemplate divColorAnimatorTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divColorAnimatorTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.K(ex7Var, jSONObject, "cancel_actions", divColorAnimatorTemplate.a, this.a.v0());
            ra5.E(ex7Var, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, divColorAnimatorTemplate.b, DivAnimationDirection.TO_STRING);
            ra5.D(ex7Var, jSONObject, "duration", divColorAnimatorTemplate.c);
            ra5.K(ex7Var, jSONObject, "end_actions", divColorAnimatorTemplate.d, this.a.v0());
            tp3 tp3Var = divColorAnimatorTemplate.e;
            e74 e74Var = ParsingConvertersKt.a;
            ra5.E(ex7Var, jSONObject, "end_value", tp3Var, e74Var);
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divColorAnimatorTemplate.f);
            ra5.E(ex7Var, jSONObject, "interpolator", divColorAnimatorTemplate.g, DivAnimationInterpolator.TO_STRING);
            ra5.I(ex7Var, jSONObject, "repeat_count", divColorAnimatorTemplate.h, this.a.t2());
            ra5.D(ex7Var, jSONObject, "start_delay", divColorAnimatorTemplate.i);
            ra5.E(ex7Var, jSONObject, "start_value", divColorAnimatorTemplate.j, e74Var);
            tb5.v(ex7Var, jSONObject, "type", "color_animator");
            ra5.G(ex7Var, jSONObject, "variable_name", divColorAnimatorTemplate.k);
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
        public DivColorAnimator a(ex7 ex7Var, DivColorAnimatorTemplate divColorAnimatorTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divColorAnimatorTemplate, "template");
            y45.j(jSONObject, "data");
            List listB = sa5.B(ex7Var, divColorAnimatorTemplate.a, jSONObject, "cancel_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var = divColorAnimatorTemplate.b;
            zbb zbbVar = DivColorAnimatorJsonParser.f;
            e74 e74Var = DivAnimationDirection.FROM_STRING;
            Expression expression = DivColorAnimatorJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            tp3 tp3Var2 = divColorAnimatorTemplate.c;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionI = sa5.i(ex7Var, tp3Var2, jSONObject, "duration", zbbVar2, e74Var2, DivColorAnimatorJsonParser.h);
            y45.i(expressionI, "resolveExpression(contex…_INT, DURATION_VALIDATOR)");
            List listB2 = sa5.B(ex7Var, divColorAnimatorTemplate.d, jSONObject, "end_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var3 = divColorAnimatorTemplate.e;
            zbb zbbVar3 = acb.f;
            e74 e74Var3 = ParsingConvertersKt.b;
            Expression expressionH = sa5.h(ex7Var, tp3Var3, jSONObject, "end_value", zbbVar3, e74Var3);
            y45.i(expressionH, "resolveExpression(contex…LOR, STRING_TO_COLOR_INT)");
            Object objA = sa5.a(ex7Var, divColorAnimatorTemplate.f, jSONObject, TtmlNode.ATTR_ID);
            y45.i(objA, "resolve(context, template.id, data, \"id\")");
            String str = (String) objA;
            tp3 tp3Var4 = divColorAnimatorTemplate.g;
            zbb zbbVar4 = DivColorAnimatorJsonParser.g;
            e74 e74Var4 = DivAnimationInterpolator.FROM_STRING;
            Expression expression2 = DivColorAnimatorJsonParser.c;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var4, jSONObject, "interpolator", zbbVar4, e74Var4, expression2);
            if (expressionV2 != null) {
                expression2 = expressionV2;
            }
            DivCount divCount = (DivCount) sa5.p(ex7Var, divColorAnimatorTemplate.h, jSONObject, "repeat_count", this.a.u2(), this.a.s2());
            if (divCount == null) {
                divCount = DivColorAnimatorJsonParser.d;
            }
            DivCount divCount2 = divCount;
            y45.i(divCount2, "JsonFieldResolver.resolv…EPEAT_COUNT_DEFAULT_VALUE");
            tp3 tp3Var5 = divColorAnimatorTemplate.i;
            pnb pnbVar = DivColorAnimatorJsonParser.i;
            Expression expression3 = DivColorAnimatorJsonParser.e;
            Expression expressionU = sa5.u(ex7Var, tp3Var5, jSONObject, "start_delay", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionU != null) {
                expression3 = expressionU;
            }
            Expression expressionS = sa5.s(ex7Var, divColorAnimatorTemplate.j, jSONObject, "start_value", zbbVar3, e74Var3);
            Object objA2 = sa5.a(ex7Var, divColorAnimatorTemplate.k, jSONObject, "variable_name");
            y45.i(objA2, "resolve(context, templat…e, data, \"variable_name\")");
            return new DivColorAnimator(listB, expression, expressionI, listB2, expressionH, str, expression2, divCount2, expression3, expressionS, (String) objA2);
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
                return DivColorAnimatorJsonParser.c(((Long) obj).longValue());
            }
        };
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivColorAnimatorJsonParser.d(((Long) obj).longValue());
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
