package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivTooltipJsonParser;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hb0;
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

public abstract class DivTooltipJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final DivTooltipMode.b d;
    public static final zbb e;
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
        public DivTooltip a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAnimation divAnimation = (DivAnimation) tb5.n(ex7Var, jSONObject, "animation_in", this.a.n1());
            DivAnimation divAnimation2 = (DivAnimation) tb5.n(ex7Var, jSONObject, "animation_out", this.a.n1());
            Expression expressionH = pa5.h(ex7Var, jSONObject, "background_accessibility_description", acb.c);
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = DivTooltipJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "close_by_tap_outside", zbbVar, e74Var, expression);
            Expression expression2 = expressionL == null ? expression : expressionL;
            Object objG = tb5.g(ex7Var, jSONObject, TtmlNode.TAG_DIV, this.a.J4());
            y45.i(objG, "read(context, data, \"div…nent.divJsonEntityParser)");
            Div div = (Div) objG;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            pnb pnbVar = DivTooltipJsonParser.f;
            Expression expression3 = DivTooltipJsonParser.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "duration", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionK != null) {
                expression3 = expressionK;
            }
            Object objD = tb5.d(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            y45.i(objD, "read(context, data, \"id\")");
            String str = (String) objD;
            DivTooltipMode divTooltipMode = (DivTooltipMode) tb5.n(ex7Var, jSONObject, hb0.KEY_NAME_MODE, this.a.M8());
            if (divTooltipMode == null) {
                divTooltipMode = DivTooltipJsonParser.d;
            }
            DivTooltipMode divTooltipMode2 = divTooltipMode;
            y45.i(divTooltipMode2, "JsonPropertyParser.readO…er) ?: MODE_DEFAULT_VALUE");
            DivPoint divPoint = (DivPoint) tb5.n(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, this.a.W5());
            Expression expressionE = pa5.e(ex7Var, jSONObject, "position", DivTooltipJsonParser.e, DivTooltip.Position.FROM_STRING);
            y45.i(expressionE, "readExpression(context, …tip.Position.FROM_STRING)");
            return new DivTooltip(divAnimation, divAnimation2, expressionH, expression2, div, expression3, str, divTooltipMode2, divPoint, expressionE, tb5.r(ex7Var, jSONObject, "tap_outside_actions", this.a.u0()));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTooltip divTooltip) {
            y45.j(ex7Var, "context");
            y45.j(divTooltip, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "animation_in", divTooltip.a, this.a.n1());
            tb5.x(ex7Var, jSONObject, "animation_out", divTooltip.b, this.a.n1());
            pa5.p(ex7Var, jSONObject, "background_accessibility_description", divTooltip.c);
            pa5.p(ex7Var, jSONObject, "close_by_tap_outside", divTooltip.d);
            tb5.x(ex7Var, jSONObject, TtmlNode.TAG_DIV, divTooltip.e, this.a.J4());
            pa5.p(ex7Var, jSONObject, "duration", divTooltip.f);
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divTooltip.g);
            tb5.x(ex7Var, jSONObject, hb0.KEY_NAME_MODE, divTooltip.h, this.a.M8());
            tb5.x(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, divTooltip.i, this.a.W5());
            pa5.q(ex7Var, jSONObject, "position", divTooltip.j, DivTooltip.Position.TO_STRING);
            tb5.z(ex7Var, jSONObject, "tap_outside_actions", divTooltip.k, this.a.u0());
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
        public DivTooltipTemplate c(ex7 ex7Var, DivTooltipTemplate divTooltipTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "animation_in", zC, divTooltipTemplate != null ? divTooltipTemplate.a : null, this.a.o1());
            y45.i(tp3VarS, "readOptionalField(contex…mationJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "animation_out", zC, divTooltipTemplate != null ? divTooltipTemplate.b : null, this.a.o1());
            y45.i(tp3VarS2, "readOptionalField(contex…mationJsonTemplateParser)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "background_accessibility_description", acb.c, zC, divTooltipTemplate != null ? divTooltipTemplate.c : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…AccessibilityDescription)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "close_by_tap_outside", acb.a, zC, divTooltipTemplate != null ? divTooltipTemplate.d : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…pOutside, ANY_TO_BOOLEAN)");
            tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, TtmlNode.TAG_DIV, zC, divTooltipTemplate != null ? divTooltipTemplate.e : null, this.a.K4());
            y45.i(tp3VarF, "readField(context, data,…nt.divJsonTemplateParser)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "duration", acb.b, zC, divTooltipTemplate != null ? divTooltipTemplate.f : null, ParsingConvertersKt.h, DivTooltipJsonParser.f);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_INT, DURATION_VALIDATOR)");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divTooltipTemplate != null ? divTooltipTemplate.g : null);
            y45.i(tp3VarC, "readField(context, data,…llowOverride, parent?.id)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, hb0.KEY_NAME_MODE, zC, divTooltipTemplate != null ? divTooltipTemplate.h : null, this.a.N8());
            y45.i(tp3VarS3, "readOptionalField(contex…ipModeJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, zC, divTooltipTemplate != null ? divTooltipTemplate.i : null, this.a.X5());
            y45.i(tp3VarS4, "readOptionalField(contex…vPointJsonTemplateParser)");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "position", DivTooltipJsonParser.e, zC, divTooltipTemplate != null ? divTooltipTemplate.j : null, DivTooltip.Position.FROM_STRING);
            y45.i(tp3VarI, "readFieldWithExpression(…tip.Position.FROM_STRING)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "tap_outside_actions", zC, divTooltipTemplate != null ? divTooltipTemplate.k : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            return new DivTooltipTemplate(tp3VarS, tp3VarS2, tp3VarT, tp3VarU, tp3VarF, tp3VarV, tp3VarC, tp3VarS3, tp3VarS4, tp3VarI, tp3VarZ);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTooltipTemplate divTooltipTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divTooltipTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "animation_in", divTooltipTemplate.a, this.a.o1());
            ra5.I(ex7Var, jSONObject, "animation_out", divTooltipTemplate.b, this.a.o1());
            ra5.D(ex7Var, jSONObject, "background_accessibility_description", divTooltipTemplate.c);
            ra5.D(ex7Var, jSONObject, "close_by_tap_outside", divTooltipTemplate.d);
            ra5.I(ex7Var, jSONObject, TtmlNode.TAG_DIV, divTooltipTemplate.e, this.a.K4());
            ra5.D(ex7Var, jSONObject, "duration", divTooltipTemplate.f);
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divTooltipTemplate.g);
            ra5.I(ex7Var, jSONObject, hb0.KEY_NAME_MODE, divTooltipTemplate.h, this.a.N8());
            ra5.I(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, divTooltipTemplate.i, this.a.X5());
            ra5.E(ex7Var, jSONObject, "position", divTooltipTemplate.j, DivTooltip.Position.TO_STRING);
            ra5.K(ex7Var, jSONObject, "tap_outside_actions", divTooltipTemplate.k, this.a.v0());
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
        public DivTooltip a(ex7 ex7Var, DivTooltipTemplate divTooltipTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divTooltipTemplate, "template");
            y45.j(jSONObject, "data");
            DivAnimation divAnimation = (DivAnimation) sa5.p(ex7Var, divTooltipTemplate.a, jSONObject, "animation_in", this.a.p1(), this.a.n1());
            DivAnimation divAnimation2 = (DivAnimation) sa5.p(ex7Var, divTooltipTemplate.b, jSONObject, "animation_out", this.a.p1(), this.a.n1());
            Expression expressionR = sa5.r(ex7Var, divTooltipTemplate.c, jSONObject, "background_accessibility_description", acb.c);
            tp3 tp3Var = divTooltipTemplate.d;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = DivTooltipJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "close_by_tap_outside", zbbVar, e74Var, expression);
            Expression expression2 = expressionV == null ? expression : expressionV;
            Object objD = sa5.d(ex7Var, divTooltipTemplate.e, jSONObject, TtmlNode.TAG_DIV, this.a.L4(), this.a.J4());
            y45.i(objD, "resolve(context, templat…nent.divJsonEntityParser)");
            Div div = (Div) objD;
            tp3 tp3Var2 = divTooltipTemplate.f;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            pnb pnbVar = DivTooltipJsonParser.f;
            Expression expression3 = DivTooltipJsonParser.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var2, jSONObject, "duration", zbbVar2, e74Var2, pnbVar, expression3);
            Expression expression4 = expressionU == null ? expression3 : expressionU;
            Object objA = sa5.a(ex7Var, divTooltipTemplate.g, jSONObject, TtmlNode.ATTR_ID);
            y45.i(objA, "resolve(context, template.id, data, \"id\")");
            String str = (String) objA;
            DivTooltipMode divTooltipMode = (DivTooltipMode) sa5.p(ex7Var, divTooltipTemplate.h, jSONObject, hb0.KEY_NAME_MODE, this.a.O8(), this.a.M8());
            if (divTooltipMode == null) {
                divTooltipMode = DivTooltipJsonParser.d;
            }
            DivTooltipMode divTooltipMode2 = divTooltipMode;
            y45.i(divTooltipMode2, "JsonFieldResolver.resolv…er) ?: MODE_DEFAULT_VALUE");
            DivPoint divPoint = (DivPoint) sa5.p(ex7Var, divTooltipTemplate.i, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, this.a.Y5(), this.a.W5());
            Expression expressionH = sa5.h(ex7Var, divTooltipTemplate.j, jSONObject, "position", DivTooltipJsonParser.e, DivTooltip.Position.FROM_STRING);
            y45.i(expressionH, "resolveExpression(contex…tip.Position.FROM_STRING)");
            return new DivTooltip(divAnimation, divAnimation2, expressionR, expression2, div, expression4, str, divTooltipMode2, divPoint, expressionH, sa5.B(ex7Var, divTooltipTemplate.k, jSONObject, "tap_outside_actions", this.a.w0(), this.a.u0()));
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Boolean.TRUE);
        c = aVar.a(5000L);
        d = new DivTooltipMode.b(new DivTooltipModeModal());
        e = zbb.a.a(hi.W(DivTooltip.Position.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivTooltip.Position);
            }
        });
        f = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTooltipJsonParser.b(((Long) obj).longValue());
            }
        };
    }

    public static final boolean b(long j) {
        return j >= 0;
    }
}
