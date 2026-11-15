package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSeparatorJsonParser;
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
import defpackage.zbb;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivSeparatorJsonParser {
    public static final a a = new a(null);
    public static final DivAnimation b;
    public static final Expression c;
    public static final Expression d;
    public static final DivSize.d e;
    public static final Expression f;
    public static final DivSize.c g;
    public static final zbb h;
    public static final zbb i;
    public static final zbb j;
    public static final pnb k;
    public static final pnb l;
    public static final pnb m;
    public static final hm5 n;

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
        public DivSeparator a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            DivAction divAction = (DivAction) tb5.n(ex7Var, jSONObject, "action", this.a.u0());
            DivAnimation divAnimation = (DivAnimation) tb5.n(ex7Var, jSONObject, "action_animation", this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivSeparatorJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonPropertyParser.readO…N_ANIMATION_DEFAULT_VALUE");
            List listR = tb5.r(ex7Var, jSONObject, "actions", this.a.u0());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivSeparatorJsonParser.h, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivSeparatorJsonParser.i, DivAlignmentVertical.FROM_STRING);
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivSeparatorJsonParser.k;
            Expression expression = DivSeparatorJsonParser.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR2 = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            List listR3 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = DivSeparatorJsonParser.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "capture_focus_on_action", zbbVar2, e74Var2, expression2);
            Expression expression3 = expressionL == null ? expression2 : expressionL;
            zbb zbbVar3 = acb.b;
            e74 e74Var3 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar3, e74Var3, DivSeparatorJsonParser.l);
            DivSeparator.DelimiterStyle delimiterStyle = (DivSeparator.DelimiterStyle) tb5.n(ex7Var, jSONObject, "delimiter_style", this.a.G6());
            List listR4 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR5 = tb5.r(ex7Var, jSONObject, "doubletap_actions", this.a.u0());
            List listR6 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR7 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivSeparatorJsonParser.e;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            List listR8 = tb5.r(ex7Var, jSONObject, "hover_end_actions", this.a.u0());
            List listR9 = tb5.r(ex7Var, jSONObject, "hover_start_actions", this.a.u0());
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            List listR10 = tb5.r(ex7Var, jSONObject, "longtap_actions", this.a.u0());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            List listR11 = tb5.r(ex7Var, jSONObject, "press_end_actions", this.a.u0());
            List listR12 = tb5.r(ex7Var, jSONObject, "press_start_actions", this.a.u0());
            Expression expressionH = pa5.h(ex7Var, jSONObject, "reuse_id", acb.c);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar3, e74Var3, DivSeparatorJsonParser.m);
            List listR13 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            List listR14 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivSeparatorJsonParser.n);
            List listR15 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR16 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar4 = DivSeparatorJsonParser.j;
            e74 e74Var4 = DivVisibility.FROM_STRING;
            Expression expression4 = DivSeparatorJsonParser.f;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar4, e74Var4, expression4);
            if (expressionL2 == null) {
                expressionL2 = expression4;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR17 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivSeparatorJsonParser.g;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivSeparator(divAccessibility, divAction, divAnimation2, listR, expressionI, expressionI2, expression, listR2, listR3, divBorder, expression3, expressionJ, delimiterStyle, listR4, listR5, listR6, divFocus, listR7, divSize2, listR8, listR9, str, divLayoutProvider, listR10, divEdgeInsets, divEdgeInsets2, listR11, listR12, expressionH, expressionJ2, listR13, listR14, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR15, listR16, expressionL2, divVisibilityAction, listR17, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSeparator divSeparator) {
            y45.j(ex7Var, "context");
            y45.j(divSeparator, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divSeparator.r(), this.a.H());
            tb5.x(ex7Var, jSONObject, "action", divSeparator.b, this.a.u0());
            tb5.x(ex7Var, jSONObject, "action_animation", divSeparator.c, this.a.n1());
            tb5.z(ex7Var, jSONObject, "actions", divSeparator.d, this.a.u0());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divSeparator.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divSeparator.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divSeparator.p());
            tb5.z(ex7Var, jSONObject, "animators", divSeparator.A(), this.a.q1());
            tb5.z(ex7Var, jSONObject, "background", divSeparator.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divSeparator.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "capture_focus_on_action", divSeparator.k);
            pa5.p(ex7Var, jSONObject, "column_span", divSeparator.b());
            tb5.x(ex7Var, jSONObject, "delimiter_style", divSeparator.m, this.a.G6());
            tb5.z(ex7Var, jSONObject, "disappear_actions", divSeparator.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "doubletap_actions", divSeparator.o, this.a.u0());
            tb5.z(ex7Var, jSONObject, "extensions", divSeparator.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divSeparator.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divSeparator.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divSeparator.getHeight(), this.a.V6());
            tb5.z(ex7Var, jSONObject, "hover_end_actions", divSeparator.t, this.a.u0());
            tb5.z(ex7Var, jSONObject, "hover_start_actions", divSeparator.u, this.a.u0());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divSeparator.getId());
            tb5.x(ex7Var, jSONObject, "layout_provider", divSeparator.v(), this.a.M4());
            tb5.z(ex7Var, jSONObject, "longtap_actions", divSeparator.x, this.a.u0());
            tb5.x(ex7Var, jSONObject, "margins", divSeparator.d(), this.a.V2());
            tb5.x(ex7Var, jSONObject, "paddings", divSeparator.t(), this.a.V2());
            tb5.z(ex7Var, jSONObject, "press_end_actions", divSeparator.A, this.a.u0());
            tb5.z(ex7Var, jSONObject, "press_start_actions", divSeparator.B, this.a.u0());
            pa5.p(ex7Var, jSONObject, "reuse_id", divSeparator.f());
            pa5.p(ex7Var, jSONObject, "row_span", divSeparator.e());
            tb5.z(ex7Var, jSONObject, "selected_actions", divSeparator.u(), this.a.u0());
            tb5.z(ex7Var, jSONObject, "tooltips", divSeparator.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divSeparator.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divSeparator.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divSeparator.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divSeparator.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divSeparator.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "separator");
            tb5.z(ex7Var, jSONObject, "variable_triggers", divSeparator.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divSeparator.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divSeparator.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divSeparator.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divSeparator.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divSeparator.getWidth(), this.a.V6());
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
        public DivSeparatorTemplate c(ex7 ex7Var, DivSeparatorTemplate divSeparatorTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divSeparatorTemplate != null ? divSeparatorTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "action", zC, divSeparatorTemplate != null ? divSeparatorTemplate.b : null, this.a.v0());
            y45.i(tp3VarS2, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "action_animation", zC, divSeparatorTemplate != null ? divSeparatorTemplate.c : null, this.a.o1());
            y45.i(tp3VarS3, "readOptionalField(contex…mationJsonTemplateParser)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "actions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.d : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivSeparatorJsonParser.h, zC, divSeparatorTemplate != null ? divSeparatorTemplate.e : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivSeparatorJsonParser.i, zC, divSeparatorTemplate != null ? divSeparatorTemplate.f : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divSeparatorTemplate != null ? divSeparatorTemplate.g : null, ParsingConvertersKt.g, DivSeparatorJsonParser.k);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "animators", zC, divSeparatorTemplate != null ? divSeparatorTemplate.h : null, this.a.r1());
            y45.i(tp3VarZ2, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "background", zC, divSeparatorTemplate != null ? divSeparatorTemplate.i : null, this.a.D1());
            y45.i(tp3VarZ3, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "border", zC, divSeparatorTemplate != null ? divSeparatorTemplate.j : null, this.a.J1());
            y45.i(tp3VarS4, "readOptionalField(contex…BorderJsonTemplateParser)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "capture_focus_on_action", acb.a, zC, divSeparatorTemplate != null ? divSeparatorTemplate.k : null, ParsingConvertersKt.f);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…OnAction, ANY_TO_BOOLEAN)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divSeparatorTemplate != null ? divSeparatorTemplate.l : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar, zC, tp3Var, e74Var, DivSeparatorJsonParser.l);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "delimiter_style", zC, divSeparatorTemplate != null ? divSeparatorTemplate.m : null, this.a.H6());
            y45.i(tp3VarS5, "readOptionalField(contex…rStyleJsonTemplateParser)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.n : null, this.a.N2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "doubletap_actions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.o : null, this.a.v0());
            y45.i(tp3VarZ5, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.p : null, this.a.Z2());
            y45.i(tp3VarZ6, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "focus", zC, divSeparatorTemplate != null ? divSeparatorTemplate.q : null, this.a.x3());
            y45.i(tp3VarS6, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "functions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.r : null, this.a.G3());
            y45.i(tp3VarZ7, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "height", zC, divSeparatorTemplate != null ? divSeparatorTemplate.s : null, this.a.W6());
            y45.i(tp3VarS7, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "hover_end_actions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.t : null, this.a.v0());
            y45.i(tp3VarZ8, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "hover_start_actions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.u : null, this.a.v0());
            y45.i(tp3VarZ9, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divSeparatorTemplate != null ? divSeparatorTemplate.v : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divSeparatorTemplate != null ? divSeparatorTemplate.w : null, this.a.N4());
            y45.i(tp3VarS8, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "longtap_actions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.x : null, this.a.v0());
            y45.i(tp3VarZ10, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "margins", zC, divSeparatorTemplate != null ? divSeparatorTemplate.y : null, this.a.W2());
            y45.i(tp3VarS9, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divSeparatorTemplate != null ? divSeparatorTemplate.z : null, this.a.W2());
            y45.i(tp3VarS10, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "press_end_actions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.A : null, this.a.v0());
            y45.i(tp3VarZ11, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ12 = ra5.z(ex7VarC, jSONObject, "press_start_actions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.B : null, this.a.v0());
            y45.i(tp3VarZ12, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "reuse_id", acb.c, zC, divSeparatorTemplate != null ? divSeparatorTemplate.C : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar, zC, divSeparatorTemplate != null ? divSeparatorTemplate.D : null, e74Var, DivSeparatorJsonParser.m);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarZ13 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.E : null, this.a.v0());
            y45.i(tp3VarZ13, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ14 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divSeparatorTemplate != null ? divSeparatorTemplate.F : null, this.a.K8());
            y45.i(tp3VarZ14, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "transform", zC, divSeparatorTemplate != null ? divSeparatorTemplate.G : null, this.a.W8());
            y45.i(tp3VarS11, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divSeparatorTemplate != null ? divSeparatorTemplate.H : null, this.a.S1());
            y45.i(tp3VarS12, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divSeparatorTemplate != null ? divSeparatorTemplate.I : null, this.a.x1());
            y45.i(tp3VarS13, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divSeparatorTemplate != null ? divSeparatorTemplate.J : null, this.a.x1());
            y45.i(tp3VarS14, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var2 = divSeparatorTemplate != null ? divSeparatorTemplate.K : null;
            e74 e74Var2 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivSeparatorJsonParser.n;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var2, e74Var2, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ15 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divSeparatorTemplate != null ? divSeparatorTemplate.L : null, this.a.Z8());
            y45.i(tp3VarZ15, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ16 = ra5.z(ex7VarC, jSONObject, "variables", zC, divSeparatorTemplate != null ? divSeparatorTemplate.M : null, this.a.f9());
            y45.i(tp3VarZ16, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "visibility", DivSeparatorJsonParser.j, zC, divSeparatorTemplate != null ? divSeparatorTemplate.N : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS15 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divSeparatorTemplate != null ? divSeparatorTemplate.O : null, this.a.r9());
            y45.i(tp3VarS15, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ17 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divSeparatorTemplate != null ? divSeparatorTemplate.P : null, this.a.r9());
            y45.i(tp3VarZ17, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS16 = ra5.s(ex7VarC, jSONObject, "width", zC, divSeparatorTemplate != null ? divSeparatorTemplate.Q : null, this.a.W6());
            y45.i(tp3VarS16, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivSeparatorTemplate(tp3VarS, tp3VarS2, tp3VarS3, tp3VarZ, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ2, tp3VarZ3, tp3VarS4, tp3VarU3, tp3VarV2, tp3VarS5, tp3VarZ4, tp3VarZ5, tp3VarZ6, tp3VarS6, tp3VarZ7, tp3VarS7, tp3VarZ8, tp3VarZ9, tp3VarP, tp3VarS8, tp3VarZ10, tp3VarS9, tp3VarS10, tp3VarZ11, tp3VarZ12, tp3VarT, tp3VarV3, tp3VarZ13, tp3VarZ14, tp3VarS11, tp3VarS12, tp3VarS13, tp3VarS14, tp3VarX, tp3VarZ15, tp3VarZ16, tp3VarU4, tp3VarS15, tp3VarZ17, tp3VarS16);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSeparatorTemplate divSeparatorTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divSeparatorTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divSeparatorTemplate.a, this.a.I());
            ra5.I(ex7Var, jSONObject, "action", divSeparatorTemplate.b, this.a.v0());
            ra5.I(ex7Var, jSONObject, "action_animation", divSeparatorTemplate.c, this.a.o1());
            ra5.K(ex7Var, jSONObject, "actions", divSeparatorTemplate.d, this.a.v0());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divSeparatorTemplate.e, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divSeparatorTemplate.f, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divSeparatorTemplate.g);
            ra5.K(ex7Var, jSONObject, "animators", divSeparatorTemplate.h, this.a.r1());
            ra5.K(ex7Var, jSONObject, "background", divSeparatorTemplate.i, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divSeparatorTemplate.j, this.a.J1());
            ra5.D(ex7Var, jSONObject, "capture_focus_on_action", divSeparatorTemplate.k);
            ra5.D(ex7Var, jSONObject, "column_span", divSeparatorTemplate.l);
            ra5.I(ex7Var, jSONObject, "delimiter_style", divSeparatorTemplate.m, this.a.H6());
            ra5.K(ex7Var, jSONObject, "disappear_actions", divSeparatorTemplate.n, this.a.N2());
            ra5.K(ex7Var, jSONObject, "doubletap_actions", divSeparatorTemplate.o, this.a.v0());
            ra5.K(ex7Var, jSONObject, "extensions", divSeparatorTemplate.p, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divSeparatorTemplate.q, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divSeparatorTemplate.r, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divSeparatorTemplate.s, this.a.W6());
            ra5.K(ex7Var, jSONObject, "hover_end_actions", divSeparatorTemplate.t, this.a.v0());
            ra5.K(ex7Var, jSONObject, "hover_start_actions", divSeparatorTemplate.u, this.a.v0());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divSeparatorTemplate.v);
            ra5.I(ex7Var, jSONObject, "layout_provider", divSeparatorTemplate.w, this.a.N4());
            ra5.K(ex7Var, jSONObject, "longtap_actions", divSeparatorTemplate.x, this.a.v0());
            ra5.I(ex7Var, jSONObject, "margins", divSeparatorTemplate.y, this.a.W2());
            ra5.I(ex7Var, jSONObject, "paddings", divSeparatorTemplate.z, this.a.W2());
            ra5.K(ex7Var, jSONObject, "press_end_actions", divSeparatorTemplate.A, this.a.v0());
            ra5.K(ex7Var, jSONObject, "press_start_actions", divSeparatorTemplate.B, this.a.v0());
            ra5.D(ex7Var, jSONObject, "reuse_id", divSeparatorTemplate.C);
            ra5.D(ex7Var, jSONObject, "row_span", divSeparatorTemplate.D);
            ra5.K(ex7Var, jSONObject, "selected_actions", divSeparatorTemplate.E, this.a.v0());
            ra5.K(ex7Var, jSONObject, "tooltips", divSeparatorTemplate.F, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divSeparatorTemplate.G, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divSeparatorTemplate.H, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divSeparatorTemplate.I, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divSeparatorTemplate.J, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divSeparatorTemplate.K, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "separator");
            ra5.K(ex7Var, jSONObject, "variable_triggers", divSeparatorTemplate.L, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divSeparatorTemplate.M, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divSeparatorTemplate.N, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divSeparatorTemplate.O, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divSeparatorTemplate.P, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divSeparatorTemplate.Q, this.a.W6());
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
        public DivSeparator a(ex7 ex7Var, DivSeparatorTemplate divSeparatorTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divSeparatorTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divSeparatorTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            DivAction divAction = (DivAction) sa5.p(ex7Var, divSeparatorTemplate.b, jSONObject, "action", this.a.w0(), this.a.u0());
            DivAnimation divAnimation = (DivAnimation) sa5.p(ex7Var, divSeparatorTemplate.c, jSONObject, "action_animation", this.a.p1(), this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivSeparatorJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonFieldResolver.resolv…N_ANIMATION_DEFAULT_VALUE");
            List listB = sa5.B(ex7Var, divSeparatorTemplate.d, jSONObject, "actions", this.a.w0(), this.a.u0());
            Expression expressionS = sa5.s(ex7Var, divSeparatorTemplate.e, jSONObject, "alignment_horizontal", DivSeparatorJsonParser.h, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divSeparatorTemplate.f, jSONObject, "alignment_vertical", DivSeparatorJsonParser.i, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var = divSeparatorTemplate.g;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivSeparatorJsonParser.k;
            Expression expression = DivSeparatorJsonParser.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB2 = sa5.B(ex7Var, divSeparatorTemplate.h, jSONObject, "animators", this.a.s1(), this.a.q1());
            List listB3 = sa5.B(ex7Var, divSeparatorTemplate.i, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divSeparatorTemplate.j, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var2 = divSeparatorTemplate.k;
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = DivSeparatorJsonParser.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var2, jSONObject, "capture_focus_on_action", zbbVar2, e74Var2, expression2);
            Expression expression3 = expressionV == null ? expression2 : expressionV;
            tp3 tp3Var3 = divSeparatorTemplate.l;
            zbb zbbVar3 = acb.b;
            e74 e74Var3 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var3, jSONObject, "column_span", zbbVar3, e74Var3, DivSeparatorJsonParser.l);
            DivSeparator.DelimiterStyle delimiterStyle = (DivSeparator.DelimiterStyle) sa5.p(ex7Var, divSeparatorTemplate.m, jSONObject, "delimiter_style", this.a.I6(), this.a.G6());
            List listB4 = sa5.B(ex7Var, divSeparatorTemplate.n, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB5 = sa5.B(ex7Var, divSeparatorTemplate.o, jSONObject, "doubletap_actions", this.a.w0(), this.a.u0());
            List listB6 = sa5.B(ex7Var, divSeparatorTemplate.p, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divSeparatorTemplate.q, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB7 = sa5.B(ex7Var, divSeparatorTemplate.r, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divSeparatorTemplate.s, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivSeparatorJsonParser.e;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            List listB8 = sa5.B(ex7Var, divSeparatorTemplate.t, jSONObject, "hover_end_actions", this.a.w0(), this.a.u0());
            List listB9 = sa5.B(ex7Var, divSeparatorTemplate.u, jSONObject, "hover_start_actions", this.a.w0(), this.a.u0());
            String str = (String) sa5.m(ex7Var, divSeparatorTemplate.v, jSONObject, TtmlNode.ATTR_ID);
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divSeparatorTemplate.w, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            List listB10 = sa5.B(ex7Var, divSeparatorTemplate.x, jSONObject, "longtap_actions", this.a.w0(), this.a.u0());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divSeparatorTemplate.y, jSONObject, "margins", this.a.X2(), this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divSeparatorTemplate.z, jSONObject, "paddings", this.a.X2(), this.a.V2());
            List listB11 = sa5.B(ex7Var, divSeparatorTemplate.A, jSONObject, "press_end_actions", this.a.w0(), this.a.u0());
            List listB12 = sa5.B(ex7Var, divSeparatorTemplate.B, jSONObject, "press_start_actions", this.a.w0(), this.a.u0());
            Expression expressionR = sa5.r(ex7Var, divSeparatorTemplate.C, jSONObject, "reuse_id", acb.c);
            Expression expressionT2 = sa5.t(ex7Var, divSeparatorTemplate.D, jSONObject, "row_span", zbbVar3, e74Var3, DivSeparatorJsonParser.m);
            List listB13 = sa5.B(ex7Var, divSeparatorTemplate.E, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            List listB14 = sa5.B(ex7Var, divSeparatorTemplate.F, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divSeparatorTemplate.G, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divSeparatorTemplate.H, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divSeparatorTemplate.I, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divSeparatorTemplate.J, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divSeparatorTemplate.K, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivSeparatorJsonParser.n);
            List listB15 = sa5.B(ex7Var, divSeparatorTemplate.L, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB16 = sa5.B(ex7Var, divSeparatorTemplate.M, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var4 = divSeparatorTemplate.N;
            zbb zbbVar4 = DivSeparatorJsonParser.j;
            e74 e74Var4 = DivVisibility.FROM_STRING;
            Expression expression4 = DivSeparatorJsonParser.f;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var4, jSONObject, "visibility", zbbVar4, e74Var4, expression4);
            Expression expression5 = expressionV2 == null ? expression4 : expressionV2;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divSeparatorTemplate.O, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB17 = sa5.B(ex7Var, divSeparatorTemplate.P, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divSeparatorTemplate.Q, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivSeparatorJsonParser.g;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivSeparator(divAccessibility, divAction, divAnimation2, listB, expressionS, expressionS2, expression, listB2, listB3, divBorder, expression3, expressionT, delimiterStyle, listB4, listB5, listB6, divFocus, listB7, divSize2, listB8, listB9, str, divLayoutProvider, listB10, divEdgeInsets, divEdgeInsets2, listB11, listB12, expressionR, expressionT2, listB13, listB14, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB15, listB16, expression5, divVisibilityAction, listB17, divSize3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        Expression expressionA = aVar.a(100L);
        Expression expressionA2 = aVar.a(Double.valueOf(0.6d));
        Expression expressionA3 = aVar.a(DivAnimation.Name.FADE);
        Double dValueOf = Double.valueOf(1.0d);
        b = new DivAnimation(expressionA, expressionA2, null, null, expressionA3, null, null, aVar.a(dValueOf), 108, null);
        c = aVar.a(dValueOf);
        d = aVar.a(Boolean.TRUE);
        e = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        f = aVar.a(DivVisibility.VISIBLE);
        g = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
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
        j = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        k = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSeparatorJsonParser.e(((Double) obj).doubleValue());
            }
        };
        l = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSeparatorJsonParser.f(((Long) obj).longValue());
            }
        };
        m = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSeparatorJsonParser.g(((Long) obj).longValue());
            }
        };
        n = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivSeparatorJsonParser.h(list);
            }
        };
    }

    public static final boolean e(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean f(long j2) {
        return j2 >= 0;
    }

    public static final boolean g(long j2) {
        return j2 >= 0;
    }

    public static final boolean h(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
