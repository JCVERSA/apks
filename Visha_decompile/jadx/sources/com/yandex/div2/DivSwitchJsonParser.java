package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSwitchJsonParser;
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

public abstract class DivSwitchJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final DivSize.d c;
    public static final Expression d;
    public static final Expression e;
    public static final DivSize.c f;
    public static final zbb g;
    public static final zbb h;
    public static final zbb i;
    public static final pnb j;
    public static final pnb k;
    public static final pnb l;
    public static final hm5 m;

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
        public DivSwitch a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivSwitchJsonParser.g, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivSwitchJsonParser.h, DivAlignmentVertical.FROM_STRING);
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivSwitchJsonParser.j;
            Expression expression = DivSwitchJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            List listR2 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar2, e74Var2, DivSwitchJsonParser.k);
            List listR3 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR4 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR5 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivSwitchJsonParser.c;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            zbb zbbVar3 = acb.a;
            e74 e74Var3 = ParsingConvertersKt.f;
            Expression expression2 = DivSwitchJsonParser.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "is_enabled", zbbVar3, e74Var3, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            Object objD = tb5.d(ex7Var, jSONObject, "is_on_variable");
            y45.i(objD, "read(context, data, \"is_on_variable\")");
            String str2 = (String) objD;
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            Expression expressionI3 = pa5.i(ex7Var, jSONObject, "on_color", acb.f, ParsingConvertersKt.b);
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            Expression expressionH = pa5.h(ex7Var, jSONObject, "reuse_id", acb.c);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar2, e74Var2, DivSwitchJsonParser.l);
            List listR6 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            List listR7 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivSwitchJsonParser.m);
            List listR8 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR9 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar4 = DivSwitchJsonParser.i;
            e74 e74Var4 = DivVisibility.FROM_STRING;
            Expression expression3 = DivSwitchJsonParser.e;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar4, e74Var4, expression3);
            if (expressionL2 == null) {
                expressionL2 = expression3;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR10 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivSwitchJsonParser.f;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivSwitch(divAccessibility, expressionI, expressionI2, expression, listR, listR2, divBorder, expressionJ, listR3, listR4, divFocus, listR5, divSize2, str, expression2, str2, divLayoutProvider, divEdgeInsets, expressionI3, divEdgeInsets2, expressionH, expressionJ2, listR6, listR7, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR8, listR9, expressionL2, divVisibilityAction, listR10, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSwitch divSwitch) {
            y45.j(ex7Var, "context");
            y45.j(divSwitch, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divSwitch.r(), this.a.H());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divSwitch.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divSwitch.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divSwitch.p());
            tb5.z(ex7Var, jSONObject, "animators", divSwitch.A(), this.a.q1());
            tb5.z(ex7Var, jSONObject, "background", divSwitch.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divSwitch.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "column_span", divSwitch.b());
            tb5.z(ex7Var, jSONObject, "disappear_actions", divSwitch.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "extensions", divSwitch.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divSwitch.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divSwitch.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divSwitch.getHeight(), this.a.V6());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divSwitch.getId());
            pa5.p(ex7Var, jSONObject, "is_enabled", divSwitch.o);
            tb5.v(ex7Var, jSONObject, "is_on_variable", divSwitch.p);
            tb5.x(ex7Var, jSONObject, "layout_provider", divSwitch.v(), this.a.M4());
            tb5.x(ex7Var, jSONObject, "margins", divSwitch.d(), this.a.V2());
            pa5.q(ex7Var, jSONObject, "on_color", divSwitch.s, ParsingConvertersKt.a);
            tb5.x(ex7Var, jSONObject, "paddings", divSwitch.t(), this.a.V2());
            pa5.p(ex7Var, jSONObject, "reuse_id", divSwitch.f());
            pa5.p(ex7Var, jSONObject, "row_span", divSwitch.e());
            tb5.z(ex7Var, jSONObject, "selected_actions", divSwitch.u(), this.a.u0());
            tb5.z(ex7Var, jSONObject, "tooltips", divSwitch.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divSwitch.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divSwitch.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divSwitch.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divSwitch.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divSwitch.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", ClientABTestDTOKt.SWITCH);
            tb5.z(ex7Var, jSONObject, "variable_triggers", divSwitch.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divSwitch.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divSwitch.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divSwitch.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divSwitch.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divSwitch.getWidth(), this.a.V6());
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
        public DivSwitchTemplate c(ex7 ex7Var, DivSwitchTemplate divSwitchTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divSwitchTemplate != null ? divSwitchTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivSwitchJsonParser.g, zC, divSwitchTemplate != null ? divSwitchTemplate.b : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivSwitchJsonParser.h, zC, divSwitchTemplate != null ? divSwitchTemplate.c : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divSwitchTemplate != null ? divSwitchTemplate.d : null, ParsingConvertersKt.g, DivSwitchJsonParser.j);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "animators", zC, divSwitchTemplate != null ? divSwitchTemplate.e : null, this.a.r1());
            y45.i(tp3VarZ, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "background", zC, divSwitchTemplate != null ? divSwitchTemplate.f : null, this.a.D1());
            y45.i(tp3VarZ2, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "border", zC, divSwitchTemplate != null ? divSwitchTemplate.g : null, this.a.J1());
            y45.i(tp3VarS2, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divSwitchTemplate != null ? divSwitchTemplate.h : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar, zC, tp3Var, e74Var, DivSwitchJsonParser.k);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divSwitchTemplate != null ? divSwitchTemplate.i : null, this.a.N2());
            y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divSwitchTemplate != null ? divSwitchTemplate.j : null, this.a.Z2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "focus", zC, divSwitchTemplate != null ? divSwitchTemplate.k : null, this.a.x3());
            y45.i(tp3VarS3, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "functions", zC, divSwitchTemplate != null ? divSwitchTemplate.l : null, this.a.G3());
            y45.i(tp3VarZ5, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "height", zC, divSwitchTemplate != null ? divSwitchTemplate.m : null, this.a.W6());
            y45.i(tp3VarS4, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divSwitchTemplate != null ? divSwitchTemplate.n : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "is_enabled", acb.a, zC, divSwitchTemplate != null ? divSwitchTemplate.o : null, ParsingConvertersKt.f);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…sEnabled, ANY_TO_BOOLEAN)");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "is_on_variable", zC, divSwitchTemplate != null ? divSwitchTemplate.p : null);
            y45.i(tp3VarC, "readField(context, data,…de, parent?.isOnVariable)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divSwitchTemplate != null ? divSwitchTemplate.q : null, this.a.N4());
            y45.i(tp3VarS5, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "margins", zC, divSwitchTemplate != null ? divSwitchTemplate.r : null, this.a.W2());
            y45.i(tp3VarS6, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "on_color", acb.f, zC, divSwitchTemplate != null ? divSwitchTemplate.s : null, ParsingConvertersKt.b);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divSwitchTemplate != null ? divSwitchTemplate.t : null, this.a.W2());
            y45.i(tp3VarS7, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "reuse_id", acb.c, zC, divSwitchTemplate != null ? divSwitchTemplate.u : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar, zC, divSwitchTemplate != null ? divSwitchTemplate.v : null, e74Var, DivSwitchJsonParser.l);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divSwitchTemplate != null ? divSwitchTemplate.w : null, this.a.v0());
            y45.i(tp3VarZ6, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divSwitchTemplate != null ? divSwitchTemplate.x : null, this.a.K8());
            y45.i(tp3VarZ7, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "transform", zC, divSwitchTemplate != null ? divSwitchTemplate.y : null, this.a.W8());
            y45.i(tp3VarS8, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divSwitchTemplate != null ? divSwitchTemplate.z : null, this.a.S1());
            y45.i(tp3VarS9, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divSwitchTemplate != null ? divSwitchTemplate.A : null, this.a.x1());
            y45.i(tp3VarS10, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divSwitchTemplate != null ? divSwitchTemplate.B : null, this.a.x1());
            y45.i(tp3VarS11, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var2 = divSwitchTemplate != null ? divSwitchTemplate.C : null;
            e74 e74Var2 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivSwitchJsonParser.m;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var2, e74Var2, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divSwitchTemplate != null ? divSwitchTemplate.D : null, this.a.Z8());
            y45.i(tp3VarZ8, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "variables", zC, divSwitchTemplate != null ? divSwitchTemplate.E : null, this.a.f9());
            y45.i(tp3VarZ9, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "visibility", DivSwitchJsonParser.i, zC, divSwitchTemplate != null ? divSwitchTemplate.F : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divSwitchTemplate != null ? divSwitchTemplate.G : null, this.a.r9());
            y45.i(tp3VarS12, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divSwitchTemplate != null ? divSwitchTemplate.H : null, this.a.r9());
            y45.i(tp3VarZ10, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "width", zC, divSwitchTemplate != null ? divSwitchTemplate.I : null, this.a.W6());
            y45.i(tp3VarS13, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivSwitchTemplate(tp3VarS, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ, tp3VarZ2, tp3VarS2, tp3VarV2, tp3VarZ3, tp3VarZ4, tp3VarS3, tp3VarZ5, tp3VarS4, tp3VarP, tp3VarU3, tp3VarC, tp3VarS5, tp3VarS6, tp3VarU4, tp3VarS7, tp3VarT, tp3VarV3, tp3VarZ6, tp3VarZ7, tp3VarS8, tp3VarS9, tp3VarS10, tp3VarS11, tp3VarX, tp3VarZ8, tp3VarZ9, tp3VarU5, tp3VarS12, tp3VarZ10, tp3VarS13);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSwitchTemplate divSwitchTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divSwitchTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divSwitchTemplate.a, this.a.I());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divSwitchTemplate.b, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divSwitchTemplate.c, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divSwitchTemplate.d);
            ra5.K(ex7Var, jSONObject, "animators", divSwitchTemplate.e, this.a.r1());
            ra5.K(ex7Var, jSONObject, "background", divSwitchTemplate.f, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divSwitchTemplate.g, this.a.J1());
            ra5.D(ex7Var, jSONObject, "column_span", divSwitchTemplate.h);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divSwitchTemplate.i, this.a.N2());
            ra5.K(ex7Var, jSONObject, "extensions", divSwitchTemplate.j, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divSwitchTemplate.k, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divSwitchTemplate.l, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divSwitchTemplate.m, this.a.W6());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divSwitchTemplate.n);
            ra5.D(ex7Var, jSONObject, "is_enabled", divSwitchTemplate.o);
            ra5.G(ex7Var, jSONObject, "is_on_variable", divSwitchTemplate.p);
            ra5.I(ex7Var, jSONObject, "layout_provider", divSwitchTemplate.q, this.a.N4());
            ra5.I(ex7Var, jSONObject, "margins", divSwitchTemplate.r, this.a.W2());
            ra5.E(ex7Var, jSONObject, "on_color", divSwitchTemplate.s, ParsingConvertersKt.a);
            ra5.I(ex7Var, jSONObject, "paddings", divSwitchTemplate.t, this.a.W2());
            ra5.D(ex7Var, jSONObject, "reuse_id", divSwitchTemplate.u);
            ra5.D(ex7Var, jSONObject, "row_span", divSwitchTemplate.v);
            ra5.K(ex7Var, jSONObject, "selected_actions", divSwitchTemplate.w, this.a.v0());
            ra5.K(ex7Var, jSONObject, "tooltips", divSwitchTemplate.x, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divSwitchTemplate.y, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divSwitchTemplate.z, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divSwitchTemplate.A, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divSwitchTemplate.B, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divSwitchTemplate.C, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", ClientABTestDTOKt.SWITCH);
            ra5.K(ex7Var, jSONObject, "variable_triggers", divSwitchTemplate.D, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divSwitchTemplate.E, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divSwitchTemplate.F, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divSwitchTemplate.G, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divSwitchTemplate.H, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divSwitchTemplate.I, this.a.W6());
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
        public DivSwitch a(ex7 ex7Var, DivSwitchTemplate divSwitchTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divSwitchTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divSwitchTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            Expression expressionS = sa5.s(ex7Var, divSwitchTemplate.b, jSONObject, "alignment_horizontal", DivSwitchJsonParser.g, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divSwitchTemplate.c, jSONObject, "alignment_vertical", DivSwitchJsonParser.h, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var = divSwitchTemplate.d;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivSwitchJsonParser.j;
            Expression expression = DivSwitchJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB = sa5.B(ex7Var, divSwitchTemplate.e, jSONObject, "animators", this.a.s1(), this.a.q1());
            List listB2 = sa5.B(ex7Var, divSwitchTemplate.f, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divSwitchTemplate.g, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var2 = divSwitchTemplate.h;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var2, jSONObject, "column_span", zbbVar2, e74Var2, DivSwitchJsonParser.k);
            List listB3 = sa5.B(ex7Var, divSwitchTemplate.i, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB4 = sa5.B(ex7Var, divSwitchTemplate.j, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divSwitchTemplate.k, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB5 = sa5.B(ex7Var, divSwitchTemplate.l, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divSwitchTemplate.m, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivSwitchJsonParser.c;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) sa5.m(ex7Var, divSwitchTemplate.n, jSONObject, TtmlNode.ATTR_ID);
            tp3 tp3Var3 = divSwitchTemplate.o;
            zbb zbbVar3 = acb.a;
            e74 e74Var3 = ParsingConvertersKt.f;
            Expression expression2 = DivSwitchJsonParser.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var3, jSONObject, "is_enabled", zbbVar3, e74Var3, expression2);
            if (expressionV != null) {
                expression2 = expressionV;
            }
            Object objA = sa5.a(ex7Var, divSwitchTemplate.p, jSONObject, "is_on_variable");
            y45.i(objA, "resolve(context, templat…, data, \"is_on_variable\")");
            String str2 = (String) objA;
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divSwitchTemplate.q, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divSwitchTemplate.r, jSONObject, "margins", this.a.X2(), this.a.V2());
            Expression expressionS3 = sa5.s(ex7Var, divSwitchTemplate.s, jSONObject, "on_color", acb.f, ParsingConvertersKt.b);
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divSwitchTemplate.t, jSONObject, "paddings", this.a.X2(), this.a.V2());
            Expression expressionR = sa5.r(ex7Var, divSwitchTemplate.u, jSONObject, "reuse_id", acb.c);
            Expression expressionT2 = sa5.t(ex7Var, divSwitchTemplate.v, jSONObject, "row_span", zbbVar2, e74Var2, DivSwitchJsonParser.l);
            List listB6 = sa5.B(ex7Var, divSwitchTemplate.w, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            List listB7 = sa5.B(ex7Var, divSwitchTemplate.x, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divSwitchTemplate.y, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divSwitchTemplate.z, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divSwitchTemplate.A, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divSwitchTemplate.B, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divSwitchTemplate.C, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivSwitchJsonParser.m);
            List listB8 = sa5.B(ex7Var, divSwitchTemplate.D, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB9 = sa5.B(ex7Var, divSwitchTemplate.E, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var4 = divSwitchTemplate.F;
            zbb zbbVar4 = DivSwitchJsonParser.i;
            e74 e74Var4 = DivVisibility.FROM_STRING;
            Expression expression3 = DivSwitchJsonParser.e;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var4, jSONObject, "visibility", zbbVar4, e74Var4, expression3);
            Expression expression4 = expressionV2 == null ? expression3 : expressionV2;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divSwitchTemplate.G, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB10 = sa5.B(ex7Var, divSwitchTemplate.H, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divSwitchTemplate.I, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivSwitchJsonParser.f;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivSwitch(divAccessibility, expressionS, expressionS2, expression, listB, listB2, divBorder, expressionT, listB3, listB4, divFocus, listB5, divSize2, str, expression2, str2, divLayoutProvider, divEdgeInsets, expressionS3, divEdgeInsets2, expressionR, expressionT2, listB6, listB7, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB8, listB9, expression4, divVisibilityAction, listB10, divSize3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(1.0d));
        c = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        d = aVar.a(Boolean.TRUE);
        e = aVar.a(DivVisibility.VISIBLE);
        f = new DivSize.c(new DivMatchParentSize(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0));
        zbb.a aVar2 = zbb.a;
        g = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        h = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        i = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        j = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSwitchJsonParser.e(((Double) obj).doubleValue());
            }
        };
        k = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSwitchJsonParser.f(((Long) obj).longValue());
            }
        };
        l = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSwitchJsonParser.g(((Long) obj).longValue());
            }
        };
        m = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivSwitchJsonParser.h(list);
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
