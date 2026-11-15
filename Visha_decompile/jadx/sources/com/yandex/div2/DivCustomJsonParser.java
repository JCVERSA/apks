package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivCustomJsonParser;
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

public abstract class DivCustomJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final DivSize.d c;
    public static final Expression d;
    public static final DivSize.c e;
    public static final zbb f;
    public static final zbb g;
    public static final zbb h;
    public static final pnb i;
    public static final pnb j;
    public static final pnb k;
    public static final hm5 l;

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
        public DivCustom a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivCustomJsonParser.f, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivCustomJsonParser.g, DivAlignmentVertical.FROM_STRING);
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivCustomJsonParser.i;
            Expression expression = DivCustomJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            List listR2 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar2, e74Var2, DivCustomJsonParser.j);
            JSONObject jSONObject2 = (JSONObject) tb5.k(ex7Var, jSONObject, "custom_props");
            Object objD = tb5.d(ex7Var, jSONObject, "custom_type");
            y45.i(objD, "read(context, data, \"custom_type\")");
            String str = (String) objD;
            List listR3 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR4 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR5 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivCustomJsonParser.c;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            String str2 = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            List listR6 = tb5.r(ex7Var, jSONObject, "items", this.a.J4());
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            Expression expressionH = pa5.h(ex7Var, jSONObject, "reuse_id", acb.c);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar2, e74Var2, DivCustomJsonParser.k);
            List listR7 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            List listR8 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivCustomJsonParser.l);
            List listR9 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR10 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar3 = DivCustomJsonParser.h;
            e74 e74Var3 = DivVisibility.FROM_STRING;
            Expression expression2 = DivCustomJsonParser.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "visibility", zbbVar3, e74Var3, expression2);
            if (expressionL == null) {
                expressionL = expression2;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR11 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivCustomJsonParser.e;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivCustom(divAccessibility, expressionI, expressionI2, expression, listR, listR2, divBorder, expressionJ, jSONObject2, str, listR3, listR4, divFocus, listR5, divSize2, str2, listR6, divLayoutProvider, divEdgeInsets, divEdgeInsets2, expressionH, expressionJ2, listR7, listR8, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR9, listR10, expressionL, divVisibilityAction, listR11, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCustom divCustom) {
            y45.j(ex7Var, "context");
            y45.j(divCustom, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divCustom.r(), this.a.H());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divCustom.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divCustom.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divCustom.p());
            tb5.z(ex7Var, jSONObject, "animators", divCustom.A(), this.a.q1());
            tb5.z(ex7Var, jSONObject, "background", divCustom.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divCustom.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "column_span", divCustom.b());
            tb5.v(ex7Var, jSONObject, "custom_props", divCustom.i);
            tb5.v(ex7Var, jSONObject, "custom_type", divCustom.j);
            tb5.z(ex7Var, jSONObject, "disappear_actions", divCustom.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "extensions", divCustom.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divCustom.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divCustom.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divCustom.getHeight(), this.a.V6());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divCustom.getId());
            tb5.z(ex7Var, jSONObject, "items", divCustom.q, this.a.J4());
            tb5.x(ex7Var, jSONObject, "layout_provider", divCustom.v(), this.a.M4());
            tb5.x(ex7Var, jSONObject, "margins", divCustom.d(), this.a.V2());
            tb5.x(ex7Var, jSONObject, "paddings", divCustom.t(), this.a.V2());
            pa5.p(ex7Var, jSONObject, "reuse_id", divCustom.f());
            pa5.p(ex7Var, jSONObject, "row_span", divCustom.e());
            tb5.z(ex7Var, jSONObject, "selected_actions", divCustom.u(), this.a.u0());
            tb5.z(ex7Var, jSONObject, "tooltips", divCustom.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divCustom.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divCustom.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divCustom.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divCustom.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divCustom.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "custom");
            tb5.z(ex7Var, jSONObject, "variable_triggers", divCustom.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divCustom.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divCustom.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divCustom.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divCustom.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divCustom.getWidth(), this.a.V6());
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
        public DivCustomTemplate c(ex7 ex7Var, DivCustomTemplate divCustomTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divCustomTemplate != null ? divCustomTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivCustomJsonParser.f, zC, divCustomTemplate != null ? divCustomTemplate.b : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivCustomJsonParser.g, zC, divCustomTemplate != null ? divCustomTemplate.c : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divCustomTemplate != null ? divCustomTemplate.d : null, ParsingConvertersKt.g, DivCustomJsonParser.i);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "animators", zC, divCustomTemplate != null ? divCustomTemplate.e : null, this.a.r1());
            y45.i(tp3VarZ, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "background", zC, divCustomTemplate != null ? divCustomTemplate.f : null, this.a.D1());
            y45.i(tp3VarZ2, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "border", zC, divCustomTemplate != null ? divCustomTemplate.g : null, this.a.J1());
            y45.i(tp3VarS2, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divCustomTemplate != null ? divCustomTemplate.h : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar, zC, tp3Var, e74Var, DivCustomJsonParser.j);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, "custom_props", zC, divCustomTemplate != null ? divCustomTemplate.i : null);
            y45.i(tp3VarP, "readOptionalField(contex…ide, parent?.customProps)");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "custom_type", zC, divCustomTemplate != null ? divCustomTemplate.j : null);
            y45.i(tp3VarC, "readField(context, data,…ride, parent?.customType)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divCustomTemplate != null ? divCustomTemplate.k : null, this.a.N2());
            y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divCustomTemplate != null ? divCustomTemplate.l : null, this.a.Z2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "focus", zC, divCustomTemplate != null ? divCustomTemplate.m : null, this.a.x3());
            y45.i(tp3VarS3, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "functions", zC, divCustomTemplate != null ? divCustomTemplate.n : null, this.a.G3());
            y45.i(tp3VarZ5, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "height", zC, divCustomTemplate != null ? divCustomTemplate.o : null, this.a.W6());
            y45.i(tp3VarS4, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarP2 = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divCustomTemplate != null ? divCustomTemplate.p : null);
            y45.i(tp3VarP2, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "items", zC, divCustomTemplate != null ? divCustomTemplate.q : null, this.a.K4());
            y45.i(tp3VarZ6, "readOptionalListField(co…nt.divJsonTemplateParser)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divCustomTemplate != null ? divCustomTemplate.r : null, this.a.N4());
            y45.i(tp3VarS5, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "margins", zC, divCustomTemplate != null ? divCustomTemplate.s : null, this.a.W2());
            y45.i(tp3VarS6, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divCustomTemplate != null ? divCustomTemplate.t : null, this.a.W2());
            y45.i(tp3VarS7, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "reuse_id", acb.c, zC, divCustomTemplate != null ? divCustomTemplate.u : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar, zC, divCustomTemplate != null ? divCustomTemplate.v : null, e74Var, DivCustomJsonParser.k);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divCustomTemplate != null ? divCustomTemplate.w : null, this.a.v0());
            y45.i(tp3VarZ7, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divCustomTemplate != null ? divCustomTemplate.x : null, this.a.K8());
            y45.i(tp3VarZ8, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "transform", zC, divCustomTemplate != null ? divCustomTemplate.y : null, this.a.W8());
            y45.i(tp3VarS8, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divCustomTemplate != null ? divCustomTemplate.z : null, this.a.S1());
            y45.i(tp3VarS9, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divCustomTemplate != null ? divCustomTemplate.A : null, this.a.x1());
            y45.i(tp3VarS10, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divCustomTemplate != null ? divCustomTemplate.B : null, this.a.x1());
            y45.i(tp3VarS11, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var2 = divCustomTemplate != null ? divCustomTemplate.C : null;
            e74 e74Var2 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivCustomJsonParser.l;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var2, e74Var2, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divCustomTemplate != null ? divCustomTemplate.D : null, this.a.Z8());
            y45.i(tp3VarZ9, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "variables", zC, divCustomTemplate != null ? divCustomTemplate.E : null, this.a.f9());
            y45.i(tp3VarZ10, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "visibility", DivCustomJsonParser.h, zC, divCustomTemplate != null ? divCustomTemplate.F : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divCustomTemplate != null ? divCustomTemplate.G : null, this.a.r9());
            y45.i(tp3VarS12, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divCustomTemplate != null ? divCustomTemplate.H : null, this.a.r9());
            y45.i(tp3VarZ11, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "width", zC, divCustomTemplate != null ? divCustomTemplate.I : null, this.a.W6());
            y45.i(tp3VarS13, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivCustomTemplate(tp3VarS, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ, tp3VarZ2, tp3VarS2, tp3VarV2, tp3VarP, tp3VarC, tp3VarZ3, tp3VarZ4, tp3VarS3, tp3VarZ5, tp3VarS4, tp3VarP2, tp3VarZ6, tp3VarS5, tp3VarS6, tp3VarS7, tp3VarT, tp3VarV3, tp3VarZ7, tp3VarZ8, tp3VarS8, tp3VarS9, tp3VarS10, tp3VarS11, tp3VarX, tp3VarZ9, tp3VarZ10, tp3VarU3, tp3VarS12, tp3VarZ11, tp3VarS13);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCustomTemplate divCustomTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divCustomTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divCustomTemplate.a, this.a.I());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divCustomTemplate.b, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divCustomTemplate.c, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divCustomTemplate.d);
            ra5.K(ex7Var, jSONObject, "animators", divCustomTemplate.e, this.a.r1());
            ra5.K(ex7Var, jSONObject, "background", divCustomTemplate.f, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divCustomTemplate.g, this.a.J1());
            ra5.D(ex7Var, jSONObject, "column_span", divCustomTemplate.h);
            ra5.G(ex7Var, jSONObject, "custom_props", divCustomTemplate.i);
            ra5.G(ex7Var, jSONObject, "custom_type", divCustomTemplate.j);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divCustomTemplate.k, this.a.N2());
            ra5.K(ex7Var, jSONObject, "extensions", divCustomTemplate.l, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divCustomTemplate.m, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divCustomTemplate.n, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divCustomTemplate.o, this.a.W6());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divCustomTemplate.p);
            ra5.K(ex7Var, jSONObject, "items", divCustomTemplate.q, this.a.K4());
            ra5.I(ex7Var, jSONObject, "layout_provider", divCustomTemplate.r, this.a.N4());
            ra5.I(ex7Var, jSONObject, "margins", divCustomTemplate.s, this.a.W2());
            ra5.I(ex7Var, jSONObject, "paddings", divCustomTemplate.t, this.a.W2());
            ra5.D(ex7Var, jSONObject, "reuse_id", divCustomTemplate.u);
            ra5.D(ex7Var, jSONObject, "row_span", divCustomTemplate.v);
            ra5.K(ex7Var, jSONObject, "selected_actions", divCustomTemplate.w, this.a.v0());
            ra5.K(ex7Var, jSONObject, "tooltips", divCustomTemplate.x, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divCustomTemplate.y, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divCustomTemplate.z, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divCustomTemplate.A, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divCustomTemplate.B, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divCustomTemplate.C, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "custom");
            ra5.K(ex7Var, jSONObject, "variable_triggers", divCustomTemplate.D, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divCustomTemplate.E, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divCustomTemplate.F, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divCustomTemplate.G, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divCustomTemplate.H, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divCustomTemplate.I, this.a.W6());
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
        public DivCustom a(ex7 ex7Var, DivCustomTemplate divCustomTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divCustomTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divCustomTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            Expression expressionS = sa5.s(ex7Var, divCustomTemplate.b, jSONObject, "alignment_horizontal", DivCustomJsonParser.f, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divCustomTemplate.c, jSONObject, "alignment_vertical", DivCustomJsonParser.g, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var = divCustomTemplate.d;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivCustomJsonParser.i;
            Expression expression = DivCustomJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB = sa5.B(ex7Var, divCustomTemplate.e, jSONObject, "animators", this.a.s1(), this.a.q1());
            List listB2 = sa5.B(ex7Var, divCustomTemplate.f, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divCustomTemplate.g, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var2 = divCustomTemplate.h;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var2, jSONObject, "column_span", zbbVar2, e74Var2, DivCustomJsonParser.j);
            JSONObject jSONObject2 = (JSONObject) sa5.m(ex7Var, divCustomTemplate.i, jSONObject, "custom_props");
            Object objA = sa5.a(ex7Var, divCustomTemplate.j, jSONObject, "custom_type");
            y45.i(objA, "resolve(context, templat…ype, data, \"custom_type\")");
            String str = (String) objA;
            List listB3 = sa5.B(ex7Var, divCustomTemplate.k, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB4 = sa5.B(ex7Var, divCustomTemplate.l, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divCustomTemplate.m, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB5 = sa5.B(ex7Var, divCustomTemplate.n, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divCustomTemplate.o, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivCustomJsonParser.c;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            String str2 = (String) sa5.m(ex7Var, divCustomTemplate.p, jSONObject, TtmlNode.ATTR_ID);
            List listB6 = sa5.B(ex7Var, divCustomTemplate.q, jSONObject, "items", this.a.L4(), this.a.J4());
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divCustomTemplate.r, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divCustomTemplate.s, jSONObject, "margins", this.a.X2(), this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divCustomTemplate.t, jSONObject, "paddings", this.a.X2(), this.a.V2());
            Expression expressionR = sa5.r(ex7Var, divCustomTemplate.u, jSONObject, "reuse_id", acb.c);
            Expression expressionT2 = sa5.t(ex7Var, divCustomTemplate.v, jSONObject, "row_span", zbbVar2, e74Var2, DivCustomJsonParser.k);
            List listB7 = sa5.B(ex7Var, divCustomTemplate.w, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            List listB8 = sa5.B(ex7Var, divCustomTemplate.x, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divCustomTemplate.y, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divCustomTemplate.z, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divCustomTemplate.A, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divCustomTemplate.B, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divCustomTemplate.C, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivCustomJsonParser.l);
            List listB9 = sa5.B(ex7Var, divCustomTemplate.D, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB10 = sa5.B(ex7Var, divCustomTemplate.E, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var3 = divCustomTemplate.F;
            zbb zbbVar3 = DivCustomJsonParser.h;
            e74 e74Var3 = DivVisibility.FROM_STRING;
            Expression expression2 = DivCustomJsonParser.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var3, jSONObject, "visibility", zbbVar3, e74Var3, expression2);
            Expression expression3 = expressionV == null ? expression2 : expressionV;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divCustomTemplate.G, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB11 = sa5.B(ex7Var, divCustomTemplate.H, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divCustomTemplate.I, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivCustomJsonParser.e;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivCustom(divAccessibility, expressionS, expressionS2, expression, listB, listB2, divBorder, expressionT, jSONObject2, str, listB3, listB4, divFocus, listB5, divSize2, str2, listB6, divLayoutProvider, divEdgeInsets, divEdgeInsets2, expressionR, expressionT2, listB7, listB8, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB9, listB10, expression3, divVisibilityAction, listB11, divSize3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(1.0d));
        c = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        d = aVar.a(DivVisibility.VISIBLE);
        e = new DivSize.c(new DivMatchParentSize(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0));
        zbb.a aVar2 = zbb.a;
        f = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        g = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        h = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivCustomJsonParser.e(((Double) obj).doubleValue());
            }
        };
        j = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivCustomJsonParser.f(((Long) obj).longValue());
            }
        };
        k = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivCustomJsonParser.g(((Long) obj).longValue());
            }
        };
        l = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivCustomJsonParser.h(list);
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
