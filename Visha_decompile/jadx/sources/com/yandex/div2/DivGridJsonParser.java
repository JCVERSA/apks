package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivGridJsonParser;
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

public abstract class DivGridJsonParser {
    public static final a a = new a(null);
    public static final DivAnimation b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final Expression f;
    public static final DivSize.d g;
    public static final Expression h;
    public static final DivSize.c i;
    public static final zbb j;
    public static final zbb k;
    public static final zbb l;
    public static final zbb m;
    public static final zbb n;
    public static final pnb o;
    public static final pnb p;
    public static final pnb q;
    public static final pnb r;
    public static final hm5 s;

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
        public DivGrid a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            DivAction divAction = (DivAction) tb5.n(ex7Var, jSONObject, "action", this.a.u0());
            DivAnimation divAnimation = (DivAnimation) tb5.n(ex7Var, jSONObject, "action_animation", this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivGridJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonPropertyParser.readO…N_ANIMATION_DEFAULT_VALUE");
            List listR = tb5.r(ex7Var, jSONObject, "actions", this.a.u0());
            zbb zbbVar = DivGridJsonParser.j;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", zbbVar, e74Var);
            zbb zbbVar2 = DivGridJsonParser.k;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", zbbVar2, e74Var2);
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar = DivGridJsonParser.o;
            Expression expression = DivGridJsonParser.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar3, e74Var3, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR2 = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            List listR3 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expression2 = DivGridJsonParser.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "capture_focus_on_action", zbbVar4, e74Var4, expression2);
            Expression expression3 = expressionL == null ? expression2 : expressionL;
            zbb zbbVar5 = acb.b;
            e74 e74Var5 = ParsingConvertersKt.h;
            Expression expressionF = pa5.f(ex7Var, jSONObject, "column_count", zbbVar5, e74Var5, DivGridJsonParser.p);
            y45.i(expressionF, "readExpression(context, …, COLUMN_COUNT_VALIDATOR)");
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar5, e74Var5, DivGridJsonParser.q);
            zbb zbbVar6 = DivGridJsonParser.l;
            Expression expression4 = DivGridJsonParser.e;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "content_alignment_horizontal", zbbVar6, e74Var, expression4);
            if (expressionL2 != null) {
                expression4 = expressionL2;
            }
            zbb zbbVar7 = DivGridJsonParser.m;
            Expression expression5 = DivGridJsonParser.f;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "content_alignment_vertical", zbbVar7, e74Var2, expression5);
            Expression expression6 = expressionL3 == null ? expression5 : expressionL3;
            List listR4 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR5 = tb5.r(ex7Var, jSONObject, "doubletap_actions", this.a.u0());
            List listR6 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR7 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivGridJsonParser.g;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            List listR8 = tb5.r(ex7Var, jSONObject, "hover_end_actions", this.a.u0());
            List listR9 = tb5.r(ex7Var, jSONObject, "hover_start_actions", this.a.u0());
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            List listR10 = tb5.r(ex7Var, jSONObject, "items", this.a.J4());
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            List listR11 = tb5.r(ex7Var, jSONObject, "longtap_actions", this.a.u0());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            List listR12 = tb5.r(ex7Var, jSONObject, "press_end_actions", this.a.u0());
            List listR13 = tb5.r(ex7Var, jSONObject, "press_start_actions", this.a.u0());
            Expression expressionH = pa5.h(ex7Var, jSONObject, "reuse_id", acb.c);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar5, e74Var5, DivGridJsonParser.r);
            List listR14 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            List listR15 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivGridJsonParser.s);
            List listR16 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR17 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar8 = DivGridJsonParser.n;
            e74 e74Var6 = DivVisibility.FROM_STRING;
            Expression expression7 = DivGridJsonParser.h;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar8, e74Var6, expression7);
            if (expressionL4 == null) {
                expressionL4 = expression7;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR18 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivGridJsonParser.i;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivGrid(divAccessibility, divAction, divAnimation2, listR, expressionI, expressionI2, expression, listR2, listR3, divBorder, expression3, expressionF, expressionJ, expression4, expression6, listR4, listR5, listR6, divFocus, listR7, divSize2, listR8, listR9, str, listR10, divLayoutProvider, listR11, divEdgeInsets, divEdgeInsets2, listR12, listR13, expressionH, expressionJ2, listR14, listR15, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR16, listR17, expressionL4, divVisibilityAction, listR18, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivGrid divGrid) {
            y45.j(ex7Var, "context");
            y45.j(divGrid, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divGrid.r(), this.a.H());
            tb5.x(ex7Var, jSONObject, "action", divGrid.b, this.a.u0());
            tb5.x(ex7Var, jSONObject, "action_animation", divGrid.c, this.a.n1());
            tb5.z(ex7Var, jSONObject, "actions", divGrid.d, this.a.u0());
            Expression expressionG = divGrid.g();
            e74 e74Var = DivAlignmentHorizontal.TO_STRING;
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", expressionG, e74Var);
            Expression expressionO = divGrid.o();
            e74 e74Var2 = DivAlignmentVertical.TO_STRING;
            pa5.q(ex7Var, jSONObject, "alignment_vertical", expressionO, e74Var2);
            pa5.p(ex7Var, jSONObject, "alpha", divGrid.p());
            tb5.z(ex7Var, jSONObject, "animators", divGrid.A(), this.a.q1());
            tb5.z(ex7Var, jSONObject, "background", divGrid.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divGrid.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "capture_focus_on_action", divGrid.k);
            pa5.p(ex7Var, jSONObject, "column_count", divGrid.l);
            pa5.p(ex7Var, jSONObject, "column_span", divGrid.b());
            pa5.q(ex7Var, jSONObject, "content_alignment_horizontal", divGrid.n, e74Var);
            pa5.q(ex7Var, jSONObject, "content_alignment_vertical", divGrid.o, e74Var2);
            tb5.z(ex7Var, jSONObject, "disappear_actions", divGrid.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "doubletap_actions", divGrid.q, this.a.u0());
            tb5.z(ex7Var, jSONObject, "extensions", divGrid.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divGrid.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divGrid.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divGrid.getHeight(), this.a.V6());
            tb5.z(ex7Var, jSONObject, "hover_end_actions", divGrid.v, this.a.u0());
            tb5.z(ex7Var, jSONObject, "hover_start_actions", divGrid.w, this.a.u0());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divGrid.getId());
            tb5.z(ex7Var, jSONObject, "items", divGrid.y, this.a.J4());
            tb5.x(ex7Var, jSONObject, "layout_provider", divGrid.v(), this.a.M4());
            tb5.z(ex7Var, jSONObject, "longtap_actions", divGrid.A, this.a.u0());
            tb5.x(ex7Var, jSONObject, "margins", divGrid.d(), this.a.V2());
            tb5.x(ex7Var, jSONObject, "paddings", divGrid.t(), this.a.V2());
            tb5.z(ex7Var, jSONObject, "press_end_actions", divGrid.D, this.a.u0());
            tb5.z(ex7Var, jSONObject, "press_start_actions", divGrid.E, this.a.u0());
            pa5.p(ex7Var, jSONObject, "reuse_id", divGrid.f());
            pa5.p(ex7Var, jSONObject, "row_span", divGrid.e());
            tb5.z(ex7Var, jSONObject, "selected_actions", divGrid.u(), this.a.u0());
            tb5.z(ex7Var, jSONObject, "tooltips", divGrid.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divGrid.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divGrid.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divGrid.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divGrid.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divGrid.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "grid");
            tb5.z(ex7Var, jSONObject, "variable_triggers", divGrid.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divGrid.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divGrid.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divGrid.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divGrid.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divGrid.getWidth(), this.a.V6());
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
        public DivGridTemplate c(ex7 ex7Var, DivGridTemplate divGridTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divGridTemplate != null ? divGridTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "action", zC, divGridTemplate != null ? divGridTemplate.b : null, this.a.v0());
            y45.i(tp3VarS2, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "action_animation", zC, divGridTemplate != null ? divGridTemplate.c : null, this.a.o1());
            y45.i(tp3VarS3, "readOptionalField(contex…mationJsonTemplateParser)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "actions", zC, divGridTemplate != null ? divGridTemplate.d : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            zbb zbbVar = DivGridJsonParser.j;
            tp3 tp3Var = divGridTemplate != null ? divGridTemplate.e : null;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            zbb zbbVar2 = DivGridJsonParser.k;
            tp3 tp3Var2 = divGridTemplate != null ? divGridTemplate.f : null;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divGridTemplate != null ? divGridTemplate.g : null, ParsingConvertersKt.g, DivGridJsonParser.o);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "animators", zC, divGridTemplate != null ? divGridTemplate.h : null, this.a.r1());
            y45.i(tp3VarZ2, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "background", zC, divGridTemplate != null ? divGridTemplate.i : null, this.a.D1());
            y45.i(tp3VarZ3, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "border", zC, divGridTemplate != null ? divGridTemplate.j : null, this.a.J1());
            y45.i(tp3VarS4, "readOptionalField(contex…BorderJsonTemplateParser)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "capture_focus_on_action", acb.a, zC, divGridTemplate != null ? divGridTemplate.k : null, ParsingConvertersKt.f);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…OnAction, ANY_TO_BOOLEAN)");
            zbb zbbVar3 = acb.b;
            tp3 tp3Var3 = divGridTemplate != null ? divGridTemplate.l : null;
            e74 e74Var3 = ParsingConvertersKt.h;
            tp3 tp3VarJ = ra5.j(ex7VarC, jSONObject, "column_count", zbbVar3, zC, tp3Var3, e74Var3, DivGridJsonParser.p);
            y45.i(tp3VarJ, "readFieldWithExpression(…, COLUMN_COUNT_VALIDATOR)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar3, zC, divGridTemplate != null ? divGridTemplate.m : null, e74Var3, DivGridJsonParser.q);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "content_alignment_horizontal", DivGridJsonParser.l, zC, divGridTemplate != null ? divGridTemplate.n : null, e74Var);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "content_alignment_vertical", DivGridJsonParser.m, zC, divGridTemplate != null ? divGridTemplate.o : null, e74Var2);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divGridTemplate != null ? divGridTemplate.p : null, this.a.N2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "doubletap_actions", zC, divGridTemplate != null ? divGridTemplate.q : null, this.a.v0());
            y45.i(tp3VarZ5, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divGridTemplate != null ? divGridTemplate.r : null, this.a.Z2());
            y45.i(tp3VarZ6, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "focus", zC, divGridTemplate != null ? divGridTemplate.s : null, this.a.x3());
            y45.i(tp3VarS5, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "functions", zC, divGridTemplate != null ? divGridTemplate.t : null, this.a.G3());
            y45.i(tp3VarZ7, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "height", zC, divGridTemplate != null ? divGridTemplate.u : null, this.a.W6());
            y45.i(tp3VarS6, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "hover_end_actions", zC, divGridTemplate != null ? divGridTemplate.v : null, this.a.v0());
            y45.i(tp3VarZ8, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "hover_start_actions", zC, divGridTemplate != null ? divGridTemplate.w : null, this.a.v0());
            y45.i(tp3VarZ9, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divGridTemplate != null ? divGridTemplate.x : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "items", zC, divGridTemplate != null ? divGridTemplate.y : null, this.a.K4());
            y45.i(tp3VarZ10, "readOptionalListField(co…nt.divJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divGridTemplate != null ? divGridTemplate.z : null, this.a.N4());
            y45.i(tp3VarS7, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "longtap_actions", zC, divGridTemplate != null ? divGridTemplate.A : null, this.a.v0());
            y45.i(tp3VarZ11, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "margins", zC, divGridTemplate != null ? divGridTemplate.B : null, this.a.W2());
            y45.i(tp3VarS8, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divGridTemplate != null ? divGridTemplate.C : null, this.a.W2());
            y45.i(tp3VarS9, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarZ12 = ra5.z(ex7VarC, jSONObject, "press_end_actions", zC, divGridTemplate != null ? divGridTemplate.D : null, this.a.v0());
            y45.i(tp3VarZ12, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ13 = ra5.z(ex7VarC, jSONObject, "press_start_actions", zC, divGridTemplate != null ? divGridTemplate.E : null, this.a.v0());
            y45.i(tp3VarZ13, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "reuse_id", acb.c, zC, divGridTemplate != null ? divGridTemplate.F : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar3, zC, divGridTemplate != null ? divGridTemplate.G : null, e74Var3, DivGridJsonParser.r);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarZ14 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divGridTemplate != null ? divGridTemplate.H : null, this.a.v0());
            y45.i(tp3VarZ14, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ15 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divGridTemplate != null ? divGridTemplate.I : null, this.a.K8());
            y45.i(tp3VarZ15, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "transform", zC, divGridTemplate != null ? divGridTemplate.J : null, this.a.W8());
            y45.i(tp3VarS10, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divGridTemplate != null ? divGridTemplate.K : null, this.a.S1());
            y45.i(tp3VarS11, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divGridTemplate != null ? divGridTemplate.L : null, this.a.x1());
            y45.i(tp3VarS12, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divGridTemplate != null ? divGridTemplate.M : null, this.a.x1());
            y45.i(tp3VarS13, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var4 = divGridTemplate != null ? divGridTemplate.N : null;
            e74 e74Var4 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivGridJsonParser.s;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var4, e74Var4, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ16 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divGridTemplate != null ? divGridTemplate.O : null, this.a.Z8());
            y45.i(tp3VarZ16, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ17 = ra5.z(ex7VarC, jSONObject, "variables", zC, divGridTemplate != null ? divGridTemplate.P : null, this.a.f9());
            y45.i(tp3VarZ17, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "visibility", DivGridJsonParser.n, zC, divGridTemplate != null ? divGridTemplate.Q : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divGridTemplate != null ? divGridTemplate.R : null, this.a.r9());
            y45.i(tp3VarS14, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ18 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divGridTemplate != null ? divGridTemplate.S : null, this.a.r9());
            y45.i(tp3VarZ18, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS15 = ra5.s(ex7VarC, jSONObject, "width", zC, divGridTemplate != null ? divGridTemplate.T : null, this.a.W6());
            y45.i(tp3VarS15, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivGridTemplate(tp3VarS, tp3VarS2, tp3VarS3, tp3VarZ, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ2, tp3VarZ3, tp3VarS4, tp3VarU3, tp3VarJ, tp3VarV2, tp3VarU4, tp3VarU5, tp3VarZ4, tp3VarZ5, tp3VarZ6, tp3VarS5, tp3VarZ7, tp3VarS6, tp3VarZ8, tp3VarZ9, tp3VarP, tp3VarZ10, tp3VarS7, tp3VarZ11, tp3VarS8, tp3VarS9, tp3VarZ12, tp3VarZ13, tp3VarT, tp3VarV3, tp3VarZ14, tp3VarZ15, tp3VarS10, tp3VarS11, tp3VarS12, tp3VarS13, tp3VarX, tp3VarZ16, tp3VarZ17, tp3VarU6, tp3VarS14, tp3VarZ18, tp3VarS15);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivGridTemplate divGridTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divGridTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divGridTemplate.a, this.a.I());
            ra5.I(ex7Var, jSONObject, "action", divGridTemplate.b, this.a.v0());
            ra5.I(ex7Var, jSONObject, "action_animation", divGridTemplate.c, this.a.o1());
            ra5.K(ex7Var, jSONObject, "actions", divGridTemplate.d, this.a.v0());
            tp3 tp3Var = divGridTemplate.e;
            e74 e74Var = DivAlignmentHorizontal.TO_STRING;
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", tp3Var, e74Var);
            tp3 tp3Var2 = divGridTemplate.f;
            e74 e74Var2 = DivAlignmentVertical.TO_STRING;
            ra5.E(ex7Var, jSONObject, "alignment_vertical", tp3Var2, e74Var2);
            ra5.D(ex7Var, jSONObject, "alpha", divGridTemplate.g);
            ra5.K(ex7Var, jSONObject, "animators", divGridTemplate.h, this.a.r1());
            ra5.K(ex7Var, jSONObject, "background", divGridTemplate.i, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divGridTemplate.j, this.a.J1());
            ra5.D(ex7Var, jSONObject, "capture_focus_on_action", divGridTemplate.k);
            ra5.D(ex7Var, jSONObject, "column_count", divGridTemplate.l);
            ra5.D(ex7Var, jSONObject, "column_span", divGridTemplate.m);
            ra5.E(ex7Var, jSONObject, "content_alignment_horizontal", divGridTemplate.n, e74Var);
            ra5.E(ex7Var, jSONObject, "content_alignment_vertical", divGridTemplate.o, e74Var2);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divGridTemplate.p, this.a.N2());
            ra5.K(ex7Var, jSONObject, "doubletap_actions", divGridTemplate.q, this.a.v0());
            ra5.K(ex7Var, jSONObject, "extensions", divGridTemplate.r, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divGridTemplate.s, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divGridTemplate.t, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divGridTemplate.u, this.a.W6());
            ra5.K(ex7Var, jSONObject, "hover_end_actions", divGridTemplate.v, this.a.v0());
            ra5.K(ex7Var, jSONObject, "hover_start_actions", divGridTemplate.w, this.a.v0());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divGridTemplate.x);
            ra5.K(ex7Var, jSONObject, "items", divGridTemplate.y, this.a.K4());
            ra5.I(ex7Var, jSONObject, "layout_provider", divGridTemplate.z, this.a.N4());
            ra5.K(ex7Var, jSONObject, "longtap_actions", divGridTemplate.A, this.a.v0());
            ra5.I(ex7Var, jSONObject, "margins", divGridTemplate.B, this.a.W2());
            ra5.I(ex7Var, jSONObject, "paddings", divGridTemplate.C, this.a.W2());
            ra5.K(ex7Var, jSONObject, "press_end_actions", divGridTemplate.D, this.a.v0());
            ra5.K(ex7Var, jSONObject, "press_start_actions", divGridTemplate.E, this.a.v0());
            ra5.D(ex7Var, jSONObject, "reuse_id", divGridTemplate.F);
            ra5.D(ex7Var, jSONObject, "row_span", divGridTemplate.G);
            ra5.K(ex7Var, jSONObject, "selected_actions", divGridTemplate.H, this.a.v0());
            ra5.K(ex7Var, jSONObject, "tooltips", divGridTemplate.I, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divGridTemplate.J, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divGridTemplate.K, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divGridTemplate.L, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divGridTemplate.M, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divGridTemplate.N, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "grid");
            ra5.K(ex7Var, jSONObject, "variable_triggers", divGridTemplate.O, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divGridTemplate.P, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divGridTemplate.Q, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divGridTemplate.R, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divGridTemplate.S, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divGridTemplate.T, this.a.W6());
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
        public DivGrid a(ex7 ex7Var, DivGridTemplate divGridTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divGridTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divGridTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            DivAction divAction = (DivAction) sa5.p(ex7Var, divGridTemplate.b, jSONObject, "action", this.a.w0(), this.a.u0());
            DivAnimation divAnimation = (DivAnimation) sa5.p(ex7Var, divGridTemplate.c, jSONObject, "action_animation", this.a.p1(), this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivGridJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonFieldResolver.resolv…N_ANIMATION_DEFAULT_VALUE");
            List listB = sa5.B(ex7Var, divGridTemplate.d, jSONObject, "actions", this.a.w0(), this.a.u0());
            tp3 tp3Var = divGridTemplate.e;
            zbb zbbVar = DivGridJsonParser.j;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            Expression expressionS = sa5.s(ex7Var, tp3Var, jSONObject, "alignment_horizontal", zbbVar, e74Var);
            tp3 tp3Var2 = divGridTemplate.f;
            zbb zbbVar2 = DivGridJsonParser.k;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            Expression expressionS2 = sa5.s(ex7Var, tp3Var2, jSONObject, "alignment_vertical", zbbVar2, e74Var2);
            tp3 tp3Var3 = divGridTemplate.g;
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar = DivGridJsonParser.o;
            Expression expression = DivGridJsonParser.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var3, jSONObject, "alpha", zbbVar3, e74Var3, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB2 = sa5.B(ex7Var, divGridTemplate.h, jSONObject, "animators", this.a.s1(), this.a.q1());
            List listB3 = sa5.B(ex7Var, divGridTemplate.i, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divGridTemplate.j, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var4 = divGridTemplate.k;
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expression2 = DivGridJsonParser.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var4, jSONObject, "capture_focus_on_action", zbbVar4, e74Var4, expression2);
            Expression expression3 = expressionV == null ? expression2 : expressionV;
            tp3 tp3Var5 = divGridTemplate.l;
            zbb zbbVar5 = acb.b;
            e74 e74Var5 = ParsingConvertersKt.h;
            Expression expressionI = sa5.i(ex7Var, tp3Var5, jSONObject, "column_count", zbbVar5, e74Var5, DivGridJsonParser.p);
            y45.i(expressionI, "resolveExpression(contex…, COLUMN_COUNT_VALIDATOR)");
            Expression expressionT = sa5.t(ex7Var, divGridTemplate.m, jSONObject, "column_span", zbbVar5, e74Var5, DivGridJsonParser.q);
            tp3 tp3Var6 = divGridTemplate.n;
            zbb zbbVar6 = DivGridJsonParser.l;
            Expression expression4 = DivGridJsonParser.e;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var6, jSONObject, "content_alignment_horizontal", zbbVar6, e74Var, expression4);
            Expression expression5 = expressionV2 == null ? expression4 : expressionV2;
            tp3 tp3Var7 = divGridTemplate.o;
            zbb zbbVar7 = DivGridJsonParser.m;
            Expression expression6 = DivGridJsonParser.f;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var7, jSONObject, "content_alignment_vertical", zbbVar7, e74Var2, expression6);
            if (expressionV3 != null) {
                expression6 = expressionV3;
            }
            List listB4 = sa5.B(ex7Var, divGridTemplate.p, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB5 = sa5.B(ex7Var, divGridTemplate.q, jSONObject, "doubletap_actions", this.a.w0(), this.a.u0());
            List listB6 = sa5.B(ex7Var, divGridTemplate.r, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divGridTemplate.s, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB7 = sa5.B(ex7Var, divGridTemplate.t, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divGridTemplate.u, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivGridJsonParser.g;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            List listB8 = sa5.B(ex7Var, divGridTemplate.v, jSONObject, "hover_end_actions", this.a.w0(), this.a.u0());
            List listB9 = sa5.B(ex7Var, divGridTemplate.w, jSONObject, "hover_start_actions", this.a.w0(), this.a.u0());
            String str = (String) sa5.m(ex7Var, divGridTemplate.x, jSONObject, TtmlNode.ATTR_ID);
            List listB10 = sa5.B(ex7Var, divGridTemplate.y, jSONObject, "items", this.a.L4(), this.a.J4());
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divGridTemplate.z, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            List listB11 = sa5.B(ex7Var, divGridTemplate.A, jSONObject, "longtap_actions", this.a.w0(), this.a.u0());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divGridTemplate.B, jSONObject, "margins", this.a.X2(), this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divGridTemplate.C, jSONObject, "paddings", this.a.X2(), this.a.V2());
            List listB12 = sa5.B(ex7Var, divGridTemplate.D, jSONObject, "press_end_actions", this.a.w0(), this.a.u0());
            List listB13 = sa5.B(ex7Var, divGridTemplate.E, jSONObject, "press_start_actions", this.a.w0(), this.a.u0());
            Expression expressionR = sa5.r(ex7Var, divGridTemplate.F, jSONObject, "reuse_id", acb.c);
            Expression expressionT2 = sa5.t(ex7Var, divGridTemplate.G, jSONObject, "row_span", zbbVar5, e74Var5, DivGridJsonParser.r);
            List listB14 = sa5.B(ex7Var, divGridTemplate.H, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            List listB15 = sa5.B(ex7Var, divGridTemplate.I, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divGridTemplate.J, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divGridTemplate.K, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divGridTemplate.L, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divGridTemplate.M, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divGridTemplate.N, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivGridJsonParser.s);
            List listB16 = sa5.B(ex7Var, divGridTemplate.O, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB17 = sa5.B(ex7Var, divGridTemplate.P, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var8 = divGridTemplate.Q;
            zbb zbbVar8 = DivGridJsonParser.n;
            e74 e74Var6 = DivVisibility.FROM_STRING;
            Expression expression7 = DivGridJsonParser.h;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var8, jSONObject, "visibility", zbbVar8, e74Var6, expression7);
            Expression expression8 = expressionV4 == null ? expression7 : expressionV4;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divGridTemplate.R, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB18 = sa5.B(ex7Var, divGridTemplate.S, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divGridTemplate.T, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivGridJsonParser.i;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivGrid(divAccessibility, divAction, divAnimation2, listB, expressionS, expressionS2, expression, listB2, listB3, divBorder, expression3, expressionI, expressionT, expression5, expression6, listB4, listB5, listB6, divFocus, listB7, divSize2, listB8, listB9, str, listB10, divLayoutProvider, listB11, divEdgeInsets, divEdgeInsets2, listB12, listB13, expressionR, expressionT2, listB14, listB15, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB16, listB17, expression8, divVisibilityAction, listB18, divSize3);
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
        e = aVar.a(DivAlignmentHorizontal.START);
        f = aVar.a(DivAlignmentVertical.TOP);
        g = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        h = aVar.a(DivVisibility.VISIBLE);
        i = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        zbb.a aVar2 = zbb.a;
        j = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        k = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        l = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        m = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        n = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        o = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGridJsonParser.f(((Double) obj).doubleValue());
            }
        };
        p = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGridJsonParser.g(((Long) obj).longValue());
            }
        };
        q = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGridJsonParser.h(((Long) obj).longValue());
            }
        };
        r = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGridJsonParser.i(((Long) obj).longValue());
            }
        };
        s = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivGridJsonParser.j(list);
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

    public static final boolean i(long j2) {
        return j2 >= 0;
    }

    public static final boolean j(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
