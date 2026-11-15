package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivStateJsonParser;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hi;
import defpackage.hm5;
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
import defpackage.yi5;
import defpackage.zbb;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivStateJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final DivSize.d d;
    public static final Expression e;
    public static final Expression f;
    public static final DivSize.c g;
    public static final zbb h;
    public static final zbb i;
    public static final zbb j;
    public static final zbb k;
    public static final pnb l;
    public static final pnb m;
    public static final pnb n;
    public static final hm5 o;
    public static final hm5 p;

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
        public DivState a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivStateJsonParser.h, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivStateJsonParser.i, DivAlignmentVertical.FROM_STRING);
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivStateJsonParser.l;
            Expression expression = DivStateJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            List listR2 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = DivStateJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "clip_to_bounds", zbbVar2, e74Var2, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            zbb zbbVar3 = acb.b;
            e74 e74Var3 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar3, e74Var3, DivStateJsonParser.m);
            zbb zbbVar4 = acb.c;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "default_state_id", zbbVar4);
            List listR3 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            String str = (String) tb5.k(ex7Var, jSONObject, "div_id");
            List listR4 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR5 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivStateJsonParser.d;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            String str2 = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            Expression expressionH2 = pa5.h(ex7Var, jSONObject, "reuse_id", zbbVar4);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar3, e74Var3, DivStateJsonParser.n);
            List listR6 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            String str3 = (String) tb5.k(ex7Var, jSONObject, "state_id_variable");
            List listJ = tb5.j(ex7Var, jSONObject, "states", this.a.q7(), DivStateJsonParser.o);
            y45.i(listJ, "readList(context, data, …Parser, STATES_VALIDATOR)");
            List listR7 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            zbb zbbVar5 = DivStateJsonParser.j;
            e74 e74Var4 = DivTransitionSelector.FROM_STRING;
            Expression expression3 = DivStateJsonParser.e;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "transition_animation_selector", zbbVar5, e74Var4, expression3);
            Expression expression4 = expressionL2 == null ? expression3 : expressionL2;
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivStateJsonParser.p);
            List listR8 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR9 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar6 = DivStateJsonParser.k;
            e74 e74Var5 = DivVisibility.FROM_STRING;
            Expression expression5 = DivStateJsonParser.f;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar6, e74Var5, expression5);
            if (expressionL3 == null) {
                expressionL3 = expression5;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR10 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivStateJsonParser.g;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivState(divAccessibility, expressionI, expressionI2, expression, listR, listR2, divBorder, expression2, expressionJ, expressionH, listR3, str, listR4, divFocus, listR5, divSize2, str2, divLayoutProvider, divEdgeInsets, divEdgeInsets2, expressionH2, expressionJ2, listR6, str3, listJ, listR7, divTransform, expression4, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR8, listR9, expressionL3, divVisibilityAction, listR10, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivState divState) {
            y45.j(ex7Var, "context");
            y45.j(divState, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divState.r(), this.a.H());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divState.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divState.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divState.p());
            tb5.z(ex7Var, jSONObject, "animators", divState.A(), this.a.q1());
            tb5.z(ex7Var, jSONObject, "background", divState.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divState.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "clip_to_bounds", divState.h);
            pa5.p(ex7Var, jSONObject, "column_span", divState.b());
            pa5.p(ex7Var, jSONObject, "default_state_id", divState.j);
            tb5.z(ex7Var, jSONObject, "disappear_actions", divState.k(), this.a.M2());
            tb5.v(ex7Var, jSONObject, "div_id", divState.l);
            tb5.z(ex7Var, jSONObject, "extensions", divState.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divState.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divState.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divState.getHeight(), this.a.V6());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divState.getId());
            tb5.x(ex7Var, jSONObject, "layout_provider", divState.v(), this.a.M4());
            tb5.x(ex7Var, jSONObject, "margins", divState.d(), this.a.V2());
            tb5.x(ex7Var, jSONObject, "paddings", divState.t(), this.a.V2());
            pa5.p(ex7Var, jSONObject, "reuse_id", divState.f());
            pa5.p(ex7Var, jSONObject, "row_span", divState.e());
            tb5.z(ex7Var, jSONObject, "selected_actions", divState.u(), this.a.u0());
            tb5.v(ex7Var, jSONObject, "state_id_variable", divState.x);
            tb5.z(ex7Var, jSONObject, "states", divState.y, this.a.q7());
            tb5.z(ex7Var, jSONObject, "tooltips", divState.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divState.m(), this.a.V8());
            pa5.q(ex7Var, jSONObject, "transition_animation_selector", divState.B, DivTransitionSelector.TO_STRING);
            tb5.x(ex7Var, jSONObject, "transition_change", divState.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divState.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divState.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divState.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", ICode.CALL.CALL_KEY_STATE);
            tb5.z(ex7Var, jSONObject, "variable_triggers", divState.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divState.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divState.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divState.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divState.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divState.getWidth(), this.a.V6());
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
        public DivStateTemplate c(ex7 ex7Var, DivStateTemplate divStateTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divStateTemplate != null ? divStateTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivStateJsonParser.h, zC, divStateTemplate != null ? divStateTemplate.b : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivStateJsonParser.i, zC, divStateTemplate != null ? divStateTemplate.c : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divStateTemplate != null ? divStateTemplate.d : null, ParsingConvertersKt.g, DivStateJsonParser.l);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "animators", zC, divStateTemplate != null ? divStateTemplate.e : null, this.a.r1());
            y45.i(tp3VarZ, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "background", zC, divStateTemplate != null ? divStateTemplate.f : null, this.a.D1());
            y45.i(tp3VarZ2, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "border", zC, divStateTemplate != null ? divStateTemplate.g : null, this.a.J1());
            y45.i(tp3VarS2, "readOptionalField(contex…BorderJsonTemplateParser)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "clip_to_bounds", acb.a, zC, divStateTemplate != null ? divStateTemplate.h : null, ParsingConvertersKt.f);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…ToBounds, ANY_TO_BOOLEAN)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divStateTemplate != null ? divStateTemplate.i : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar, zC, tp3Var, e74Var, DivStateJsonParser.m);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            zbb zbbVar2 = acb.c;
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "default_state_id", zbbVar2, zC, divStateTemplate != null ? divStateTemplate.j : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…, parent?.defaultStateId)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divStateTemplate != null ? divStateTemplate.k : null, this.a.N2());
            y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, "div_id", zC, divStateTemplate != null ? divStateTemplate.l : null);
            y45.i(tp3VarP, "readOptionalField(contex…wOverride, parent?.divId)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divStateTemplate != null ? divStateTemplate.m : null, this.a.Z2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "focus", zC, divStateTemplate != null ? divStateTemplate.n : null, this.a.x3());
            y45.i(tp3VarS3, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "functions", zC, divStateTemplate != null ? divStateTemplate.o : null, this.a.G3());
            y45.i(tp3VarZ5, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "height", zC, divStateTemplate != null ? divStateTemplate.p : null, this.a.W6());
            y45.i(tp3VarS4, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarP2 = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divStateTemplate != null ? divStateTemplate.q : null);
            y45.i(tp3VarP2, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divStateTemplate != null ? divStateTemplate.r : null, this.a.N4());
            y45.i(tp3VarS5, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "margins", zC, divStateTemplate != null ? divStateTemplate.s : null, this.a.W2());
            y45.i(tp3VarS6, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divStateTemplate != null ? divStateTemplate.t : null, this.a.W2());
            y45.i(tp3VarS7, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, "reuse_id", zbbVar2, zC, divStateTemplate != null ? divStateTemplate.u : null);
            y45.i(tp3VarT2, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar, zC, divStateTemplate != null ? divStateTemplate.v : null, e74Var, DivStateJsonParser.n);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divStateTemplate != null ? divStateTemplate.w : null, this.a.v0());
            y45.i(tp3VarZ6, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarP3 = ra5.p(ex7VarC, jSONObject, "state_id_variable", zC, divStateTemplate != null ? divStateTemplate.x : null);
            y45.i(tp3VarP3, "readOptionalField(contex… parent?.stateIdVariable)");
            tp3 tp3Var2 = divStateTemplate != null ? divStateTemplate.y : null;
            yi5 yi5VarR7 = this.a.r7();
            hm5 hm5Var = DivStateJsonParser.o;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarM = ra5.m(ex7VarC, jSONObject, "states", zC, tp3Var2, yi5VarR7, hm5Var);
            y45.i(tp3VarM, "readListField(context, d… STATES_VALIDATOR.cast())");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divStateTemplate != null ? divStateTemplate.z : null, this.a.K8());
            y45.i(tp3VarZ7, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "transform", zC, divStateTemplate != null ? divStateTemplate.A : null, this.a.W8());
            y45.i(tp3VarS8, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "transition_animation_selector", DivStateJsonParser.j, zC, divStateTemplate != null ? divStateTemplate.B : null, DivTransitionSelector.FROM_STRING);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…tionSelector.FROM_STRING)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divStateTemplate != null ? divStateTemplate.C : null, this.a.S1());
            y45.i(tp3VarS9, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divStateTemplate != null ? divStateTemplate.D : null, this.a.x1());
            y45.i(tp3VarS10, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divStateTemplate != null ? divStateTemplate.E : null, this.a.x1());
            y45.i(tp3VarS11, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var3 = divStateTemplate != null ? divStateTemplate.F : null;
            e74 e74Var2 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var2 = DivStateJsonParser.p;
            y45.h(hm5Var2, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var3, e74Var2, hm5Var2);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divStateTemplate != null ? divStateTemplate.G : null, this.a.Z8());
            y45.i(tp3VarZ8, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "variables", zC, divStateTemplate != null ? divStateTemplate.H : null, this.a.f9());
            y45.i(tp3VarZ9, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "visibility", DivStateJsonParser.k, zC, divStateTemplate != null ? divStateTemplate.I : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divStateTemplate != null ? divStateTemplate.J : null, this.a.r9());
            y45.i(tp3VarS12, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divStateTemplate != null ? divStateTemplate.K : null, this.a.r9());
            y45.i(tp3VarZ10, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "width", zC, divStateTemplate != null ? divStateTemplate.L : null, this.a.W6());
            y45.i(tp3VarS13, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivStateTemplate(tp3VarS, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ, tp3VarZ2, tp3VarS2, tp3VarU3, tp3VarV2, tp3VarT, tp3VarZ3, tp3VarP, tp3VarZ4, tp3VarS3, tp3VarZ5, tp3VarS4, tp3VarP2, tp3VarS5, tp3VarS6, tp3VarS7, tp3VarT2, tp3VarV3, tp3VarZ6, tp3VarP3, tp3VarM, tp3VarZ7, tp3VarS8, tp3VarU4, tp3VarS9, tp3VarS10, tp3VarS11, tp3VarX, tp3VarZ8, tp3VarZ9, tp3VarU5, tp3VarS12, tp3VarZ10, tp3VarS13);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivStateTemplate divStateTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divStateTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divStateTemplate.a, this.a.I());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divStateTemplate.b, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divStateTemplate.c, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divStateTemplate.d);
            ra5.K(ex7Var, jSONObject, "animators", divStateTemplate.e, this.a.r1());
            ra5.K(ex7Var, jSONObject, "background", divStateTemplate.f, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divStateTemplate.g, this.a.J1());
            ra5.D(ex7Var, jSONObject, "clip_to_bounds", divStateTemplate.h);
            ra5.D(ex7Var, jSONObject, "column_span", divStateTemplate.i);
            ra5.D(ex7Var, jSONObject, "default_state_id", divStateTemplate.j);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divStateTemplate.k, this.a.N2());
            ra5.G(ex7Var, jSONObject, "div_id", divStateTemplate.l);
            ra5.K(ex7Var, jSONObject, "extensions", divStateTemplate.m, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divStateTemplate.n, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divStateTemplate.o, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divStateTemplate.p, this.a.W6());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divStateTemplate.q);
            ra5.I(ex7Var, jSONObject, "layout_provider", divStateTemplate.r, this.a.N4());
            ra5.I(ex7Var, jSONObject, "margins", divStateTemplate.s, this.a.W2());
            ra5.I(ex7Var, jSONObject, "paddings", divStateTemplate.t, this.a.W2());
            ra5.D(ex7Var, jSONObject, "reuse_id", divStateTemplate.u);
            ra5.D(ex7Var, jSONObject, "row_span", divStateTemplate.v);
            ra5.K(ex7Var, jSONObject, "selected_actions", divStateTemplate.w, this.a.v0());
            ra5.G(ex7Var, jSONObject, "state_id_variable", divStateTemplate.x);
            ra5.K(ex7Var, jSONObject, "states", divStateTemplate.y, this.a.r7());
            ra5.K(ex7Var, jSONObject, "tooltips", divStateTemplate.z, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divStateTemplate.A, this.a.W8());
            ra5.E(ex7Var, jSONObject, "transition_animation_selector", divStateTemplate.B, DivTransitionSelector.TO_STRING);
            ra5.I(ex7Var, jSONObject, "transition_change", divStateTemplate.C, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divStateTemplate.D, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divStateTemplate.E, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divStateTemplate.F, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", ICode.CALL.CALL_KEY_STATE);
            ra5.K(ex7Var, jSONObject, "variable_triggers", divStateTemplate.G, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divStateTemplate.H, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divStateTemplate.I, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divStateTemplate.J, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divStateTemplate.K, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divStateTemplate.L, this.a.W6());
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
        public DivState a(ex7 ex7Var, DivStateTemplate divStateTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divStateTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divStateTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            Expression expressionS = sa5.s(ex7Var, divStateTemplate.b, jSONObject, "alignment_horizontal", DivStateJsonParser.h, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divStateTemplate.c, jSONObject, "alignment_vertical", DivStateJsonParser.i, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var = divStateTemplate.d;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivStateJsonParser.l;
            Expression expression = DivStateJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB = sa5.B(ex7Var, divStateTemplate.e, jSONObject, "animators", this.a.s1(), this.a.q1());
            List listB2 = sa5.B(ex7Var, divStateTemplate.f, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divStateTemplate.g, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var2 = divStateTemplate.h;
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = DivStateJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var2, jSONObject, "clip_to_bounds", zbbVar2, e74Var2, expression2);
            if (expressionV != null) {
                expression2 = expressionV;
            }
            tp3 tp3Var3 = divStateTemplate.i;
            zbb zbbVar3 = acb.b;
            e74 e74Var3 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var3, jSONObject, "column_span", zbbVar3, e74Var3, DivStateJsonParser.m);
            tp3 tp3Var4 = divStateTemplate.j;
            zbb zbbVar4 = acb.c;
            Expression expressionR = sa5.r(ex7Var, tp3Var4, jSONObject, "default_state_id", zbbVar4);
            List listB3 = sa5.B(ex7Var, divStateTemplate.k, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            String str = (String) sa5.m(ex7Var, divStateTemplate.l, jSONObject, "div_id");
            List listB4 = sa5.B(ex7Var, divStateTemplate.m, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divStateTemplate.n, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB5 = sa5.B(ex7Var, divStateTemplate.o, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divStateTemplate.p, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivStateJsonParser.d;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            String str2 = (String) sa5.m(ex7Var, divStateTemplate.q, jSONObject, TtmlNode.ATTR_ID);
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divStateTemplate.r, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divStateTemplate.s, jSONObject, "margins", this.a.X2(), this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divStateTemplate.t, jSONObject, "paddings", this.a.X2(), this.a.V2());
            Expression expressionR2 = sa5.r(ex7Var, divStateTemplate.u, jSONObject, "reuse_id", zbbVar4);
            Expression expressionT2 = sa5.t(ex7Var, divStateTemplate.v, jSONObject, "row_span", zbbVar3, e74Var3, DivStateJsonParser.n);
            List listB6 = sa5.B(ex7Var, divStateTemplate.w, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            String str3 = (String) sa5.m(ex7Var, divStateTemplate.x, jSONObject, "state_id_variable");
            List listL = sa5.l(ex7Var, divStateTemplate.y, jSONObject, "states", this.a.s7(), this.a.q7(), DivStateJsonParser.o);
            y45.i(listL, "resolveList(context, tem…Parser, STATES_VALIDATOR)");
            List listB7 = sa5.B(ex7Var, divStateTemplate.z, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divStateTemplate.A, jSONObject, "transform", this.a.X8(), this.a.V8());
            tp3 tp3Var5 = divStateTemplate.B;
            zbb zbbVar5 = DivStateJsonParser.j;
            e74 e74Var4 = DivTransitionSelector.FROM_STRING;
            Expression expression3 = DivStateJsonParser.e;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var5, jSONObject, "transition_animation_selector", zbbVar5, e74Var4, expression3);
            Expression expression4 = expressionV2 == null ? expression3 : expressionV2;
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divStateTemplate.C, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divStateTemplate.D, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divStateTemplate.E, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divStateTemplate.F, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivStateJsonParser.p);
            List listB8 = sa5.B(ex7Var, divStateTemplate.G, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB9 = sa5.B(ex7Var, divStateTemplate.H, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var6 = divStateTemplate.I;
            zbb zbbVar6 = DivStateJsonParser.k;
            e74 e74Var5 = DivVisibility.FROM_STRING;
            Expression expression5 = DivStateJsonParser.f;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var6, jSONObject, "visibility", zbbVar6, e74Var5, expression5);
            Expression expression6 = expressionV3 == null ? expression5 : expressionV3;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divStateTemplate.J, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB10 = sa5.B(ex7Var, divStateTemplate.K, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divStateTemplate.L, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivStateJsonParser.g;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivState(divAccessibility, expressionS, expressionS2, expression, listB, listB2, divBorder, expression2, expressionT, expressionR, listB3, str, listB4, divFocus, listB5, divSize2, str2, divLayoutProvider, divEdgeInsets, divEdgeInsets2, expressionR2, expressionT2, listB6, str3, listL, listB7, divTransform, expression4, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB8, listB9, expression6, divVisibilityAction, listB10, divSize3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(1.0d));
        c = aVar.a(Boolean.TRUE);
        d = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        e = aVar.a(DivTransitionSelector.STATE_CHANGE);
        f = aVar.a(DivVisibility.VISIBLE);
        g = new DivSize.c(new DivMatchParentSize(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0));
        zbb.a aVar2 = zbb.a;
        h = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        i = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        j = aVar2.a(hi.W(DivTransitionSelector.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivTransitionSelector);
            }
        });
        k = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        l = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivStateJsonParser.f(((Double) obj).doubleValue());
            }
        };
        m = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivStateJsonParser.g(((Long) obj).longValue());
            }
        };
        n = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivStateJsonParser.h(((Long) obj).longValue());
            }
        };
        o = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivStateJsonParser.i(list);
            }
        };
        p = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivStateJsonParser.j(list);
            }
        };
    }

    public static final boolean f(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean g(long j2) {
        return j2 >= 0;
    }

    public static final boolean h(long j2) {
        return j2 >= 0;
    }

    public static final boolean i(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }

    public static final boolean j(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
