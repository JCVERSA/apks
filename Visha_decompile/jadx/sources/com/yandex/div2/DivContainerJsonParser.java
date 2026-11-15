package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivContainerJsonParser;
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

public abstract class DivContainerJsonParser {
    public static final a a = new a(null);
    public static final DivAnimation b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final Expression f;
    public static final Expression g;
    public static final DivSize.d h;
    public static final Expression i;
    public static final Expression j;
    public static final Expression k;
    public static final DivSize.c l;
    public static final zbb m;
    public static final zbb n;
    public static final zbb o;
    public static final zbb p;
    public static final zbb q;
    public static final zbb r;
    public static final zbb s;
    public static final pnb t;
    public static final pnb u;
    public static final pnb v;
    public static final hm5 w;

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
        public DivContainer a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            DivAction divAction = (DivAction) tb5.n(ex7Var, jSONObject, "action", this.a.u0());
            DivAnimation divAnimation = (DivAnimation) tb5.n(ex7Var, jSONObject, "action_animation", this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivContainerJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonPropertyParser.readO…N_ANIMATION_DEFAULT_VALUE");
            List listR = tb5.r(ex7Var, jSONObject, "actions", this.a.u0());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivContainerJsonParser.m, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivContainerJsonParser.n, DivAlignmentVertical.FROM_STRING);
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivContainerJsonParser.t;
            Expression expression = DivContainerJsonParser.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR2 = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            DivAspect divAspect = (DivAspect) tb5.n(ex7Var, jSONObject, "aspect", this.a.z1());
            List listR3 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = DivContainerJsonParser.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "capture_focus_on_action", zbbVar2, e74Var2, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            Expression expression3 = DivContainerJsonParser.e;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "clip_to_bounds", zbbVar2, e74Var2, expression3);
            if (expressionL2 != null) {
                expression3 = expressionL2;
            }
            zbb zbbVar3 = acb.b;
            e74 e74Var3 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar3, e74Var3, DivContainerJsonParser.u);
            zbb zbbVar4 = DivContainerJsonParser.o;
            e74 e74Var4 = DivContentAlignmentHorizontal.FROM_STRING;
            Expression expression4 = DivContainerJsonParser.f;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "content_alignment_horizontal", zbbVar4, e74Var4, expression4);
            if (expressionL3 != null) {
                expression4 = expressionL3;
            }
            zbb zbbVar5 = DivContainerJsonParser.p;
            e74 e74Var5 = DivContentAlignmentVertical.FROM_STRING;
            Expression expression5 = DivContainerJsonParser.g;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "content_alignment_vertical", zbbVar5, e74Var5, expression5);
            if (expressionL4 != null) {
                expression5 = expressionL4;
            }
            List listR4 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR5 = tb5.r(ex7Var, jSONObject, "doubletap_actions", this.a.u0());
            List listR6 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR7 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivContainerJsonParser.h;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            List listR8 = tb5.r(ex7Var, jSONObject, "hover_end_actions", this.a.u0());
            List listR9 = tb5.r(ex7Var, jSONObject, "hover_start_actions", this.a.u0());
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            DivCollectionItemBuilder divCollectionItemBuilder = (DivCollectionItemBuilder) tb5.n(ex7Var, jSONObject, "item_builder", this.a.a2());
            List listR10 = tb5.r(ex7Var, jSONObject, "items", this.a.J4());
            zbb zbbVar6 = DivContainerJsonParser.q;
            e74 e74Var6 = DivContainer.LayoutMode.FROM_STRING;
            Expression expression6 = DivContainerJsonParser.i;
            Expression expressionL5 = pa5.l(ex7Var, jSONObject, "layout_mode", zbbVar6, e74Var6, expression6);
            if (expressionL5 != null) {
                expression6 = expressionL5;
            }
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            DivContainer.Separator separator = (DivContainer.Separator) tb5.n(ex7Var, jSONObject, "line_separator", this.a.m2());
            List listR11 = tb5.r(ex7Var, jSONObject, "longtap_actions", this.a.u0());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            zbb zbbVar7 = DivContainerJsonParser.r;
            e74 e74Var7 = DivContainer.Orientation.FROM_STRING;
            Expression expression7 = DivContainerJsonParser.j;
            Expression expressionL6 = pa5.l(ex7Var, jSONObject, "orientation", zbbVar7, e74Var7, expression7);
            if (expressionL6 != null) {
                expression7 = expressionL6;
            }
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            List listR12 = tb5.r(ex7Var, jSONObject, "press_end_actions", this.a.u0());
            List listR13 = tb5.r(ex7Var, jSONObject, "press_start_actions", this.a.u0());
            Expression expressionH = pa5.h(ex7Var, jSONObject, "reuse_id", acb.c);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar3, e74Var3, DivContainerJsonParser.v);
            List listR14 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            DivContainer.Separator separator2 = (DivContainer.Separator) tb5.n(ex7Var, jSONObject, "separator", this.a.m2());
            List listR15 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivContainerJsonParser.w);
            List listR16 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR17 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar8 = DivContainerJsonParser.s;
            e74 e74Var8 = DivVisibility.FROM_STRING;
            Expression expression8 = DivContainerJsonParser.k;
            Expression expressionL7 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar8, e74Var8, expression8);
            if (expressionL7 == null) {
                expressionL7 = expression8;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR18 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivContainerJsonParser.l;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivContainer(divAccessibility, divAction, divAnimation2, listR, expressionI, expressionI2, expression, listR2, divAspect, listR3, divBorder, expression2, expression3, expressionJ, expression4, expression5, listR4, listR5, listR6, divFocus, listR7, divSize2, listR8, listR9, str, divCollectionItemBuilder, listR10, expression6, divLayoutProvider, separator, listR11, divEdgeInsets, expression7, divEdgeInsets2, listR12, listR13, expressionH, expressionJ2, listR14, separator2, listR15, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR16, listR17, expressionL7, divVisibilityAction, listR18, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivContainer divContainer) {
            y45.j(ex7Var, "context");
            y45.j(divContainer, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divContainer.r(), this.a.H());
            tb5.x(ex7Var, jSONObject, "action", divContainer.b, this.a.u0());
            tb5.x(ex7Var, jSONObject, "action_animation", divContainer.c, this.a.n1());
            tb5.z(ex7Var, jSONObject, "actions", divContainer.d, this.a.u0());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divContainer.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divContainer.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divContainer.p());
            tb5.z(ex7Var, jSONObject, "animators", divContainer.A(), this.a.q1());
            tb5.x(ex7Var, jSONObject, "aspect", divContainer.i, this.a.z1());
            tb5.z(ex7Var, jSONObject, "background", divContainer.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divContainer.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "capture_focus_on_action", divContainer.l);
            pa5.p(ex7Var, jSONObject, "clip_to_bounds", divContainer.m);
            pa5.p(ex7Var, jSONObject, "column_span", divContainer.b());
            pa5.q(ex7Var, jSONObject, "content_alignment_horizontal", divContainer.o, DivContentAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "content_alignment_vertical", divContainer.p, DivContentAlignmentVertical.TO_STRING);
            tb5.z(ex7Var, jSONObject, "disappear_actions", divContainer.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "doubletap_actions", divContainer.r, this.a.u0());
            tb5.z(ex7Var, jSONObject, "extensions", divContainer.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divContainer.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divContainer.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divContainer.getHeight(), this.a.V6());
            tb5.z(ex7Var, jSONObject, "hover_end_actions", divContainer.w, this.a.u0());
            tb5.z(ex7Var, jSONObject, "hover_start_actions", divContainer.x, this.a.u0());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divContainer.getId());
            tb5.x(ex7Var, jSONObject, "item_builder", divContainer.z, this.a.a2());
            tb5.z(ex7Var, jSONObject, "items", divContainer.A, this.a.J4());
            pa5.q(ex7Var, jSONObject, "layout_mode", divContainer.B, DivContainer.LayoutMode.TO_STRING);
            tb5.x(ex7Var, jSONObject, "layout_provider", divContainer.v(), this.a.M4());
            tb5.x(ex7Var, jSONObject, "line_separator", divContainer.D, this.a.m2());
            tb5.z(ex7Var, jSONObject, "longtap_actions", divContainer.E, this.a.u0());
            tb5.x(ex7Var, jSONObject, "margins", divContainer.d(), this.a.V2());
            pa5.q(ex7Var, jSONObject, "orientation", divContainer.G, DivContainer.Orientation.TO_STRING);
            tb5.x(ex7Var, jSONObject, "paddings", divContainer.t(), this.a.V2());
            tb5.z(ex7Var, jSONObject, "press_end_actions", divContainer.I, this.a.u0());
            tb5.z(ex7Var, jSONObject, "press_start_actions", divContainer.J, this.a.u0());
            pa5.p(ex7Var, jSONObject, "reuse_id", divContainer.f());
            pa5.p(ex7Var, jSONObject, "row_span", divContainer.e());
            tb5.z(ex7Var, jSONObject, "selected_actions", divContainer.u(), this.a.u0());
            tb5.x(ex7Var, jSONObject, "separator", divContainer.N, this.a.m2());
            tb5.z(ex7Var, jSONObject, "tooltips", divContainer.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divContainer.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divContainer.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divContainer.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divContainer.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divContainer.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", TtmlNode.RUBY_CONTAINER);
            tb5.z(ex7Var, jSONObject, "variable_triggers", divContainer.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divContainer.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divContainer.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divContainer.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divContainer.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divContainer.getWidth(), this.a.V6());
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
        public DivContainerTemplate c(ex7 ex7Var, DivContainerTemplate divContainerTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divContainerTemplate != null ? divContainerTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "action", zC, divContainerTemplate != null ? divContainerTemplate.b : null, this.a.v0());
            y45.i(tp3VarS2, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "action_animation", zC, divContainerTemplate != null ? divContainerTemplate.c : null, this.a.o1());
            y45.i(tp3VarS3, "readOptionalField(contex…mationJsonTemplateParser)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "actions", zC, divContainerTemplate != null ? divContainerTemplate.d : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivContainerJsonParser.m, zC, divContainerTemplate != null ? divContainerTemplate.e : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivContainerJsonParser.n, zC, divContainerTemplate != null ? divContainerTemplate.f : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divContainerTemplate != null ? divContainerTemplate.g : null, ParsingConvertersKt.g, DivContainerJsonParser.t);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "animators", zC, divContainerTemplate != null ? divContainerTemplate.h : null, this.a.r1());
            y45.i(tp3VarZ2, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "aspect", zC, divContainerTemplate != null ? divContainerTemplate.i : null, this.a.A1());
            y45.i(tp3VarS4, "readOptionalField(contex…AspectJsonTemplateParser)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "background", zC, divContainerTemplate != null ? divContainerTemplate.j : null, this.a.D1());
            y45.i(tp3VarZ3, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "border", zC, divContainerTemplate != null ? divContainerTemplate.k : null, this.a.J1());
            y45.i(tp3VarS5, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar = acb.a;
            tp3 tp3Var = divContainerTemplate != null ? divContainerTemplate.l : null;
            e74 e74Var = ParsingConvertersKt.f;
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "capture_focus_on_action", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…OnAction, ANY_TO_BOOLEAN)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "clip_to_bounds", zbbVar, zC, divContainerTemplate != null ? divContainerTemplate.m : null, e74Var);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…ToBounds, ANY_TO_BOOLEAN)");
            zbb zbbVar2 = acb.b;
            tp3 tp3Var2 = divContainerTemplate != null ? divContainerTemplate.n : null;
            e74 e74Var2 = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar2, zC, tp3Var2, e74Var2, DivContainerJsonParser.u);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "content_alignment_horizontal", DivContainerJsonParser.o, zC, divContainerTemplate != null ? divContainerTemplate.o : null, DivContentAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "content_alignment_vertical", DivContainerJsonParser.p, zC, divContainerTemplate != null ? divContainerTemplate.p : null, DivContentAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divContainerTemplate != null ? divContainerTemplate.q : null, this.a.N2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "doubletap_actions", zC, divContainerTemplate != null ? divContainerTemplate.r : null, this.a.v0());
            y45.i(tp3VarZ5, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divContainerTemplate != null ? divContainerTemplate.s : null, this.a.Z2());
            y45.i(tp3VarZ6, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "focus", zC, divContainerTemplate != null ? divContainerTemplate.t : null, this.a.x3());
            y45.i(tp3VarS6, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "functions", zC, divContainerTemplate != null ? divContainerTemplate.u : null, this.a.G3());
            y45.i(tp3VarZ7, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "height", zC, divContainerTemplate != null ? divContainerTemplate.v : null, this.a.W6());
            y45.i(tp3VarS7, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "hover_end_actions", zC, divContainerTemplate != null ? divContainerTemplate.w : null, this.a.v0());
            y45.i(tp3VarZ8, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "hover_start_actions", zC, divContainerTemplate != null ? divContainerTemplate.x : null, this.a.v0());
            y45.i(tp3VarZ9, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divContainerTemplate != null ? divContainerTemplate.y : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "item_builder", zC, divContainerTemplate != null ? divContainerTemplate.z : null, this.a.b2());
            y45.i(tp3VarS8, "readOptionalField(contex…uilderJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "items", zC, divContainerTemplate != null ? divContainerTemplate.A : null, this.a.K4());
            y45.i(tp3VarZ10, "readOptionalListField(co…nt.divJsonTemplateParser)");
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, "layout_mode", DivContainerJsonParser.q, zC, divContainerTemplate != null ? divContainerTemplate.B : null, DivContainer.LayoutMode.FROM_STRING);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…r.LayoutMode.FROM_STRING)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divContainerTemplate != null ? divContainerTemplate.C : null, this.a.N4());
            y45.i(tp3VarS9, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "line_separator", zC, divContainerTemplate != null ? divContainerTemplate.D : null, this.a.n2());
            y45.i(tp3VarS10, "readOptionalField(contex…aratorJsonTemplateParser)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "longtap_actions", zC, divContainerTemplate != null ? divContainerTemplate.E : null, this.a.v0());
            y45.i(tp3VarZ11, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "margins", zC, divContainerTemplate != null ? divContainerTemplate.F : null, this.a.W2());
            y45.i(tp3VarS11, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, "orientation", DivContainerJsonParser.r, zC, divContainerTemplate != null ? divContainerTemplate.G : null, DivContainer.Orientation.FROM_STRING);
            y45.i(tp3VarU8, "readOptionalFieldWithExp….Orientation.FROM_STRING)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divContainerTemplate != null ? divContainerTemplate.H : null, this.a.W2());
            y45.i(tp3VarS12, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarZ12 = ra5.z(ex7VarC, jSONObject, "press_end_actions", zC, divContainerTemplate != null ? divContainerTemplate.I : null, this.a.v0());
            y45.i(tp3VarZ12, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ13 = ra5.z(ex7VarC, jSONObject, "press_start_actions", zC, divContainerTemplate != null ? divContainerTemplate.J : null, this.a.v0());
            y45.i(tp3VarZ13, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "reuse_id", acb.c, zC, divContainerTemplate != null ? divContainerTemplate.K : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar2, zC, divContainerTemplate != null ? divContainerTemplate.L : null, e74Var2, DivContainerJsonParser.v);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarZ14 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divContainerTemplate != null ? divContainerTemplate.M : null, this.a.v0());
            y45.i(tp3VarZ14, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "separator", zC, divContainerTemplate != null ? divContainerTemplate.N : null, this.a.n2());
            y45.i(tp3VarS13, "readOptionalField(contex…aratorJsonTemplateParser)");
            tp3 tp3VarZ15 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divContainerTemplate != null ? divContainerTemplate.O : null, this.a.K8());
            y45.i(tp3VarZ15, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "transform", zC, divContainerTemplate != null ? divContainerTemplate.P : null, this.a.W8());
            y45.i(tp3VarS14, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS15 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divContainerTemplate != null ? divContainerTemplate.Q : null, this.a.S1());
            y45.i(tp3VarS15, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS16 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divContainerTemplate != null ? divContainerTemplate.R : null, this.a.x1());
            y45.i(tp3VarS16, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS17 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divContainerTemplate != null ? divContainerTemplate.S : null, this.a.x1());
            y45.i(tp3VarS17, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var3 = divContainerTemplate != null ? divContainerTemplate.T : null;
            e74 e74Var3 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivContainerJsonParser.w;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var3, e74Var3, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ16 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divContainerTemplate != null ? divContainerTemplate.U : null, this.a.Z8());
            y45.i(tp3VarZ16, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ17 = ra5.z(ex7VarC, jSONObject, "variables", zC, divContainerTemplate != null ? divContainerTemplate.V : null, this.a.f9());
            y45.i(tp3VarZ17, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU9 = ra5.u(ex7VarC, jSONObject, "visibility", DivContainerJsonParser.s, zC, divContainerTemplate != null ? divContainerTemplate.W : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU9, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS18 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divContainerTemplate != null ? divContainerTemplate.X : null, this.a.r9());
            y45.i(tp3VarS18, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ18 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divContainerTemplate != null ? divContainerTemplate.Y : null, this.a.r9());
            y45.i(tp3VarZ18, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS19 = ra5.s(ex7VarC, jSONObject, "width", zC, divContainerTemplate != null ? divContainerTemplate.Z : null, this.a.W6());
            y45.i(tp3VarS19, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivContainerTemplate(tp3VarS, tp3VarS2, tp3VarS3, tp3VarZ, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ2, tp3VarS4, tp3VarZ3, tp3VarS5, tp3VarU3, tp3VarU4, tp3VarV2, tp3VarU5, tp3VarU6, tp3VarZ4, tp3VarZ5, tp3VarZ6, tp3VarS6, tp3VarZ7, tp3VarS7, tp3VarZ8, tp3VarZ9, tp3VarP, tp3VarS8, tp3VarZ10, tp3VarU7, tp3VarS9, tp3VarS10, tp3VarZ11, tp3VarS11, tp3VarU8, tp3VarS12, tp3VarZ12, tp3VarZ13, tp3VarT, tp3VarV3, tp3VarZ14, tp3VarS13, tp3VarZ15, tp3VarS14, tp3VarS15, tp3VarS16, tp3VarS17, tp3VarX, tp3VarZ16, tp3VarZ17, tp3VarU9, tp3VarS18, tp3VarZ18, tp3VarS19);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivContainerTemplate divContainerTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divContainerTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divContainerTemplate.a, this.a.I());
            ra5.I(ex7Var, jSONObject, "action", divContainerTemplate.b, this.a.v0());
            ra5.I(ex7Var, jSONObject, "action_animation", divContainerTemplate.c, this.a.o1());
            ra5.K(ex7Var, jSONObject, "actions", divContainerTemplate.d, this.a.v0());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divContainerTemplate.e, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divContainerTemplate.f, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divContainerTemplate.g);
            ra5.K(ex7Var, jSONObject, "animators", divContainerTemplate.h, this.a.r1());
            ra5.I(ex7Var, jSONObject, "aspect", divContainerTemplate.i, this.a.A1());
            ra5.K(ex7Var, jSONObject, "background", divContainerTemplate.j, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divContainerTemplate.k, this.a.J1());
            ra5.D(ex7Var, jSONObject, "capture_focus_on_action", divContainerTemplate.l);
            ra5.D(ex7Var, jSONObject, "clip_to_bounds", divContainerTemplate.m);
            ra5.D(ex7Var, jSONObject, "column_span", divContainerTemplate.n);
            ra5.E(ex7Var, jSONObject, "content_alignment_horizontal", divContainerTemplate.o, DivContentAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "content_alignment_vertical", divContainerTemplate.p, DivContentAlignmentVertical.TO_STRING);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divContainerTemplate.q, this.a.N2());
            ra5.K(ex7Var, jSONObject, "doubletap_actions", divContainerTemplate.r, this.a.v0());
            ra5.K(ex7Var, jSONObject, "extensions", divContainerTemplate.s, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divContainerTemplate.t, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divContainerTemplate.u, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divContainerTemplate.v, this.a.W6());
            ra5.K(ex7Var, jSONObject, "hover_end_actions", divContainerTemplate.w, this.a.v0());
            ra5.K(ex7Var, jSONObject, "hover_start_actions", divContainerTemplate.x, this.a.v0());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divContainerTemplate.y);
            ra5.I(ex7Var, jSONObject, "item_builder", divContainerTemplate.z, this.a.b2());
            ra5.K(ex7Var, jSONObject, "items", divContainerTemplate.A, this.a.K4());
            ra5.E(ex7Var, jSONObject, "layout_mode", divContainerTemplate.B, DivContainer.LayoutMode.TO_STRING);
            ra5.I(ex7Var, jSONObject, "layout_provider", divContainerTemplate.C, this.a.N4());
            ra5.I(ex7Var, jSONObject, "line_separator", divContainerTemplate.D, this.a.n2());
            ra5.K(ex7Var, jSONObject, "longtap_actions", divContainerTemplate.E, this.a.v0());
            ra5.I(ex7Var, jSONObject, "margins", divContainerTemplate.F, this.a.W2());
            ra5.E(ex7Var, jSONObject, "orientation", divContainerTemplate.G, DivContainer.Orientation.TO_STRING);
            ra5.I(ex7Var, jSONObject, "paddings", divContainerTemplate.H, this.a.W2());
            ra5.K(ex7Var, jSONObject, "press_end_actions", divContainerTemplate.I, this.a.v0());
            ra5.K(ex7Var, jSONObject, "press_start_actions", divContainerTemplate.J, this.a.v0());
            ra5.D(ex7Var, jSONObject, "reuse_id", divContainerTemplate.K);
            ra5.D(ex7Var, jSONObject, "row_span", divContainerTemplate.L);
            ra5.K(ex7Var, jSONObject, "selected_actions", divContainerTemplate.M, this.a.v0());
            ra5.I(ex7Var, jSONObject, "separator", divContainerTemplate.N, this.a.n2());
            ra5.K(ex7Var, jSONObject, "tooltips", divContainerTemplate.O, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divContainerTemplate.P, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divContainerTemplate.Q, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divContainerTemplate.R, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divContainerTemplate.S, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divContainerTemplate.T, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", TtmlNode.RUBY_CONTAINER);
            ra5.K(ex7Var, jSONObject, "variable_triggers", divContainerTemplate.U, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divContainerTemplate.V, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divContainerTemplate.W, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divContainerTemplate.X, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divContainerTemplate.Y, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divContainerTemplate.Z, this.a.W6());
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
        public DivContainer a(ex7 ex7Var, DivContainerTemplate divContainerTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divContainerTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divContainerTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            DivAction divAction = (DivAction) sa5.p(ex7Var, divContainerTemplate.b, jSONObject, "action", this.a.w0(), this.a.u0());
            DivAnimation divAnimation = (DivAnimation) sa5.p(ex7Var, divContainerTemplate.c, jSONObject, "action_animation", this.a.p1(), this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivContainerJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonFieldResolver.resolv…N_ANIMATION_DEFAULT_VALUE");
            List listB = sa5.B(ex7Var, divContainerTemplate.d, jSONObject, "actions", this.a.w0(), this.a.u0());
            Expression expressionS = sa5.s(ex7Var, divContainerTemplate.e, jSONObject, "alignment_horizontal", DivContainerJsonParser.m, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divContainerTemplate.f, jSONObject, "alignment_vertical", DivContainerJsonParser.n, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var = divContainerTemplate.g;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivContainerJsonParser.t;
            Expression expression = DivContainerJsonParser.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB2 = sa5.B(ex7Var, divContainerTemplate.h, jSONObject, "animators", this.a.s1(), this.a.q1());
            DivAspect divAspect = (DivAspect) sa5.p(ex7Var, divContainerTemplate.i, jSONObject, "aspect", this.a.B1(), this.a.z1());
            List listB3 = sa5.B(ex7Var, divContainerTemplate.j, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divContainerTemplate.k, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var2 = divContainerTemplate.l;
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = DivContainerJsonParser.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var2, jSONObject, "capture_focus_on_action", zbbVar2, e74Var2, expression2);
            if (expressionV != null) {
                expression2 = expressionV;
            }
            tp3 tp3Var3 = divContainerTemplate.m;
            Expression expression3 = DivContainerJsonParser.e;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var3, jSONObject, "clip_to_bounds", zbbVar2, e74Var2, expression3);
            if (expressionV2 != null) {
                expression3 = expressionV2;
            }
            tp3 tp3Var4 = divContainerTemplate.n;
            zbb zbbVar3 = acb.b;
            e74 e74Var3 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var4, jSONObject, "column_span", zbbVar3, e74Var3, DivContainerJsonParser.u);
            tp3 tp3Var5 = divContainerTemplate.o;
            zbb zbbVar4 = DivContainerJsonParser.o;
            e74 e74Var4 = DivContentAlignmentHorizontal.FROM_STRING;
            Expression expression4 = DivContainerJsonParser.f;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var5, jSONObject, "content_alignment_horizontal", zbbVar4, e74Var4, expression4);
            if (expressionV3 != null) {
                expression4 = expressionV3;
            }
            tp3 tp3Var6 = divContainerTemplate.p;
            zbb zbbVar5 = DivContainerJsonParser.p;
            e74 e74Var5 = DivContentAlignmentVertical.FROM_STRING;
            Expression expression5 = DivContainerJsonParser.g;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var6, jSONObject, "content_alignment_vertical", zbbVar5, e74Var5, expression5);
            if (expressionV4 != null) {
                expression5 = expressionV4;
            }
            List listB4 = sa5.B(ex7Var, divContainerTemplate.q, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB5 = sa5.B(ex7Var, divContainerTemplate.r, jSONObject, "doubletap_actions", this.a.w0(), this.a.u0());
            List listB6 = sa5.B(ex7Var, divContainerTemplate.s, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divContainerTemplate.t, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB7 = sa5.B(ex7Var, divContainerTemplate.u, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divContainerTemplate.v, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivContainerJsonParser.h;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            List listB8 = sa5.B(ex7Var, divContainerTemplate.w, jSONObject, "hover_end_actions", this.a.w0(), this.a.u0());
            List listB9 = sa5.B(ex7Var, divContainerTemplate.x, jSONObject, "hover_start_actions", this.a.w0(), this.a.u0());
            String str = (String) sa5.m(ex7Var, divContainerTemplate.y, jSONObject, TtmlNode.ATTR_ID);
            DivCollectionItemBuilder divCollectionItemBuilder = (DivCollectionItemBuilder) sa5.p(ex7Var, divContainerTemplate.z, jSONObject, "item_builder", this.a.c2(), this.a.a2());
            List listB10 = sa5.B(ex7Var, divContainerTemplate.A, jSONObject, "items", this.a.L4(), this.a.J4());
            tp3 tp3Var7 = divContainerTemplate.B;
            zbb zbbVar6 = DivContainerJsonParser.q;
            e74 e74Var6 = DivContainer.LayoutMode.FROM_STRING;
            Expression expression6 = DivContainerJsonParser.i;
            Expression expressionV5 = sa5.v(ex7Var, tp3Var7, jSONObject, "layout_mode", zbbVar6, e74Var6, expression6);
            if (expressionV5 != null) {
                expression6 = expressionV5;
            }
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divContainerTemplate.C, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            DivContainer.Separator separator = (DivContainer.Separator) sa5.p(ex7Var, divContainerTemplate.D, jSONObject, "line_separator", this.a.o2(), this.a.m2());
            List listB11 = sa5.B(ex7Var, divContainerTemplate.E, jSONObject, "longtap_actions", this.a.w0(), this.a.u0());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divContainerTemplate.F, jSONObject, "margins", this.a.X2(), this.a.V2());
            tp3 tp3Var8 = divContainerTemplate.G;
            zbb zbbVar7 = DivContainerJsonParser.r;
            e74 e74Var7 = DivContainer.Orientation.FROM_STRING;
            Expression expression7 = DivContainerJsonParser.j;
            Expression expressionV6 = sa5.v(ex7Var, tp3Var8, jSONObject, "orientation", zbbVar7, e74Var7, expression7);
            if (expressionV6 != null) {
                expression7 = expressionV6;
            }
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divContainerTemplate.H, jSONObject, "paddings", this.a.X2(), this.a.V2());
            List listB12 = sa5.B(ex7Var, divContainerTemplate.I, jSONObject, "press_end_actions", this.a.w0(), this.a.u0());
            List listB13 = sa5.B(ex7Var, divContainerTemplate.J, jSONObject, "press_start_actions", this.a.w0(), this.a.u0());
            Expression expressionR = sa5.r(ex7Var, divContainerTemplate.K, jSONObject, "reuse_id", acb.c);
            Expression expressionT2 = sa5.t(ex7Var, divContainerTemplate.L, jSONObject, "row_span", zbbVar3, e74Var3, DivContainerJsonParser.v);
            List listB14 = sa5.B(ex7Var, divContainerTemplate.M, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            DivContainer.Separator separator2 = (DivContainer.Separator) sa5.p(ex7Var, divContainerTemplate.N, jSONObject, "separator", this.a.o2(), this.a.m2());
            List listB15 = sa5.B(ex7Var, divContainerTemplate.O, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divContainerTemplate.P, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divContainerTemplate.Q, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divContainerTemplate.R, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divContainerTemplate.S, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divContainerTemplate.T, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivContainerJsonParser.w);
            List listB16 = sa5.B(ex7Var, divContainerTemplate.U, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB17 = sa5.B(ex7Var, divContainerTemplate.V, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var9 = divContainerTemplate.W;
            zbb zbbVar8 = DivContainerJsonParser.s;
            e74 e74Var8 = DivVisibility.FROM_STRING;
            Expression expression8 = DivContainerJsonParser.k;
            Expression expressionV7 = sa5.v(ex7Var, tp3Var9, jSONObject, "visibility", zbbVar8, e74Var8, expression8);
            Expression expression9 = expressionV7 == null ? expression8 : expressionV7;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divContainerTemplate.X, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB18 = sa5.B(ex7Var, divContainerTemplate.Y, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divContainerTemplate.Z, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivContainerJsonParser.l;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivContainer(divAccessibility, divAction, divAnimation2, listB, expressionS, expressionS2, expression, listB2, divAspect, listB3, divBorder, expression2, expression3, expressionT, expression4, expression5, listB4, listB5, listB6, divFocus, listB7, divSize2, listB8, listB9, str, divCollectionItemBuilder, listB10, expression6, divLayoutProvider, separator, listB11, divEdgeInsets, expression7, divEdgeInsets2, listB12, listB13, expressionR, expressionT2, listB14, separator2, listB15, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB16, listB17, expression9, divVisibilityAction, listB18, divSize3);
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
        Boolean bool = Boolean.TRUE;
        d = aVar.a(bool);
        e = aVar.a(bool);
        f = aVar.a(DivContentAlignmentHorizontal.START);
        g = aVar.a(DivContentAlignmentVertical.TOP);
        h = new DivSize.d(new DivWrapContentSize(null, null, null == true ? 1 : 0, 7, null));
        i = aVar.a(DivContainer.LayoutMode.NO_WRAP);
        j = aVar.a(DivContainer.Orientation.VERTICAL);
        k = aVar.a(DivVisibility.VISIBLE);
        l = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        zbb.a aVar2 = zbb.a;
        m = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        n = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        o = aVar2.a(hi.W(DivContentAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivContentAlignmentHorizontal);
            }
        });
        p = aVar2.a(hi.W(DivContentAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivContentAlignmentVertical);
            }
        });
        q = aVar2.a(hi.W(DivContainer.LayoutMode.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivContainer.LayoutMode);
            }
        });
        r = aVar2.a(hi.W(DivContainer.Orientation.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivContainer.Orientation);
            }
        });
        s = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        t = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivContainerJsonParser.e(((Double) obj).doubleValue());
            }
        };
        u = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivContainerJsonParser.f(((Long) obj).longValue());
            }
        };
        v = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivContainerJsonParser.g(((Long) obj).longValue());
            }
        };
        w = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivContainerJsonParser.h(list);
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
