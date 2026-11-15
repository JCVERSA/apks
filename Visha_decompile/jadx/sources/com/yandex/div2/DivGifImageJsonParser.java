package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivGifImageJsonParser;
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

public abstract class DivGifImageJsonParser {
    public static final a a = new a(null);
    public static final DivAnimation b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final Expression f;
    public static final DivSize.d g;
    public static final Expression h;
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
    public static final pnb s;
    public static final pnb t;
    public static final pnb u;
    public static final hm5 v;

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
        public DivGifImage a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            DivAction divAction = (DivAction) tb5.n(ex7Var, jSONObject, "action", this.a.u0());
            DivAnimation divAnimation = (DivAnimation) tb5.n(ex7Var, jSONObject, "action_animation", this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivGifImageJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonPropertyParser.readO…N_ANIMATION_DEFAULT_VALUE");
            List listR = tb5.r(ex7Var, jSONObject, "actions", this.a.u0());
            zbb zbbVar = DivGifImageJsonParser.m;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", zbbVar, e74Var);
            zbb zbbVar2 = DivGifImageJsonParser.n;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", zbbVar2, e74Var2);
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar = DivGifImageJsonParser.s;
            Expression expression = DivGifImageJsonParser.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar3, e74Var3, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR2 = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            DivAspect divAspect = (DivAspect) tb5.n(ex7Var, jSONObject, "aspect", this.a.z1());
            List listR3 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expression2 = DivGifImageJsonParser.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "capture_focus_on_action", zbbVar4, e74Var4, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            zbb zbbVar5 = acb.b;
            e74 e74Var5 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar5, e74Var5, DivGifImageJsonParser.t);
            zbb zbbVar6 = DivGifImageJsonParser.o;
            Expression expression3 = DivGifImageJsonParser.e;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "content_alignment_horizontal", zbbVar6, e74Var, expression3);
            if (expressionL2 != null) {
                expression3 = expressionL2;
            }
            zbb zbbVar7 = DivGifImageJsonParser.p;
            Expression expression4 = DivGifImageJsonParser.f;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "content_alignment_vertical", zbbVar7, e74Var2, expression4);
            Expression expression5 = expressionL3 == null ? expression4 : expressionL3;
            List listR4 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR5 = tb5.r(ex7Var, jSONObject, "doubletap_actions", this.a.u0());
            List listR6 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR7 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            Expression expressionE = pa5.e(ex7Var, jSONObject, "gif_url", acb.e, ParsingConvertersKt.e);
            y45.i(expressionE, "readExpression(context, …E_HELPER_URI, ANY_TO_URI)");
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivGifImageJsonParser.g;
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
            zbb zbbVar8 = acb.f;
            e74 e74Var6 = ParsingConvertersKt.b;
            Expression expression6 = DivGifImageJsonParser.h;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "placeholder_color", zbbVar8, e74Var6, expression6);
            if (expressionL4 != null) {
                expression6 = expressionL4;
            }
            Expression expression7 = DivGifImageJsonParser.i;
            Expression expressionL5 = pa5.l(ex7Var, jSONObject, "preload_required", zbbVar4, e74Var4, expression7);
            if (expressionL5 != null) {
                expression7 = expressionL5;
            }
            List listR11 = tb5.r(ex7Var, jSONObject, "press_end_actions", this.a.u0());
            List listR12 = tb5.r(ex7Var, jSONObject, "press_start_actions", this.a.u0());
            zbb zbbVar9 = acb.c;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "preview", zbbVar9);
            Expression expressionH2 = pa5.h(ex7Var, jSONObject, "reuse_id", zbbVar9);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar5, e74Var5, DivGifImageJsonParser.u);
            zbb zbbVar10 = DivGifImageJsonParser.q;
            e74 e74Var7 = DivImageScale.FROM_STRING;
            Expression expression8 = DivGifImageJsonParser.j;
            Expression expressionL6 = pa5.l(ex7Var, jSONObject, "scale", zbbVar10, e74Var7, expression8);
            Expression expression9 = expressionL6 == null ? expression8 : expressionL6;
            List listR13 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            List listR14 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivGifImageJsonParser.v);
            List listR15 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR16 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar11 = DivGifImageJsonParser.r;
            e74 e74Var8 = DivVisibility.FROM_STRING;
            Expression expression10 = DivGifImageJsonParser.k;
            Expression expressionL7 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar11, e74Var8, expression10);
            if (expressionL7 == null) {
                expressionL7 = expression10;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR17 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivGifImageJsonParser.l;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivGifImage(divAccessibility, divAction, divAnimation2, listR, expressionI, expressionI2, expression, listR2, divAspect, listR3, divBorder, expression2, expressionJ, expression3, expression5, listR4, listR5, listR6, divFocus, listR7, expressionE, divSize2, listR8, listR9, str, divLayoutProvider, listR10, divEdgeInsets, divEdgeInsets2, expression6, expression7, listR11, listR12, expressionH, expressionH2, expressionJ2, expression9, listR13, listR14, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR15, listR16, expressionL7, divVisibilityAction, listR17, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivGifImage divGifImage) {
            y45.j(ex7Var, "context");
            y45.j(divGifImage, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divGifImage.r(), this.a.H());
            tb5.x(ex7Var, jSONObject, "action", divGifImage.b, this.a.u0());
            tb5.x(ex7Var, jSONObject, "action_animation", divGifImage.c, this.a.n1());
            tb5.z(ex7Var, jSONObject, "actions", divGifImage.d, this.a.u0());
            Expression expressionG = divGifImage.g();
            e74 e74Var = DivAlignmentHorizontal.TO_STRING;
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", expressionG, e74Var);
            Expression expressionO = divGifImage.o();
            e74 e74Var2 = DivAlignmentVertical.TO_STRING;
            pa5.q(ex7Var, jSONObject, "alignment_vertical", expressionO, e74Var2);
            pa5.p(ex7Var, jSONObject, "alpha", divGifImage.p());
            tb5.z(ex7Var, jSONObject, "animators", divGifImage.A(), this.a.q1());
            tb5.x(ex7Var, jSONObject, "aspect", divGifImage.i, this.a.z1());
            tb5.z(ex7Var, jSONObject, "background", divGifImage.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divGifImage.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "capture_focus_on_action", divGifImage.l);
            pa5.p(ex7Var, jSONObject, "column_span", divGifImage.b());
            pa5.q(ex7Var, jSONObject, "content_alignment_horizontal", divGifImage.n, e74Var);
            pa5.q(ex7Var, jSONObject, "content_alignment_vertical", divGifImage.o, e74Var2);
            tb5.z(ex7Var, jSONObject, "disappear_actions", divGifImage.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "doubletap_actions", divGifImage.q, this.a.u0());
            tb5.z(ex7Var, jSONObject, "extensions", divGifImage.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divGifImage.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divGifImage.y(), this.a.F3());
            pa5.q(ex7Var, jSONObject, "gif_url", divGifImage.u, ParsingConvertersKt.c);
            tb5.x(ex7Var, jSONObject, "height", divGifImage.getHeight(), this.a.V6());
            tb5.z(ex7Var, jSONObject, "hover_end_actions", divGifImage.w, this.a.u0());
            tb5.z(ex7Var, jSONObject, "hover_start_actions", divGifImage.x, this.a.u0());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divGifImage.getId());
            tb5.x(ex7Var, jSONObject, "layout_provider", divGifImage.v(), this.a.M4());
            tb5.z(ex7Var, jSONObject, "longtap_actions", divGifImage.A, this.a.u0());
            tb5.x(ex7Var, jSONObject, "margins", divGifImage.d(), this.a.V2());
            tb5.x(ex7Var, jSONObject, "paddings", divGifImage.t(), this.a.V2());
            pa5.q(ex7Var, jSONObject, "placeholder_color", divGifImage.D, ParsingConvertersKt.a);
            pa5.p(ex7Var, jSONObject, "preload_required", divGifImage.E);
            tb5.z(ex7Var, jSONObject, "press_end_actions", divGifImage.F, this.a.u0());
            tb5.z(ex7Var, jSONObject, "press_start_actions", divGifImage.G, this.a.u0());
            pa5.p(ex7Var, jSONObject, "preview", divGifImage.H);
            pa5.p(ex7Var, jSONObject, "reuse_id", divGifImage.f());
            pa5.p(ex7Var, jSONObject, "row_span", divGifImage.e());
            pa5.q(ex7Var, jSONObject, "scale", divGifImage.K, DivImageScale.TO_STRING);
            tb5.z(ex7Var, jSONObject, "selected_actions", divGifImage.u(), this.a.u0());
            tb5.z(ex7Var, jSONObject, "tooltips", divGifImage.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divGifImage.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divGifImage.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divGifImage.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divGifImage.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divGifImage.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "gif");
            tb5.z(ex7Var, jSONObject, "variable_triggers", divGifImage.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divGifImage.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divGifImage.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divGifImage.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divGifImage.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divGifImage.getWidth(), this.a.V6());
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
        public DivGifImageTemplate c(ex7 ex7Var, DivGifImageTemplate divGifImageTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divGifImageTemplate != null ? divGifImageTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "action", zC, divGifImageTemplate != null ? divGifImageTemplate.b : null, this.a.v0());
            y45.i(tp3VarS2, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "action_animation", zC, divGifImageTemplate != null ? divGifImageTemplate.c : null, this.a.o1());
            y45.i(tp3VarS3, "readOptionalField(contex…mationJsonTemplateParser)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "actions", zC, divGifImageTemplate != null ? divGifImageTemplate.d : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            zbb zbbVar = DivGifImageJsonParser.m;
            tp3 tp3Var = divGifImageTemplate != null ? divGifImageTemplate.e : null;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            zbb zbbVar2 = DivGifImageJsonParser.n;
            tp3 tp3Var2 = divGifImageTemplate != null ? divGifImageTemplate.f : null;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divGifImageTemplate != null ? divGifImageTemplate.g : null, ParsingConvertersKt.g, DivGifImageJsonParser.s);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "animators", zC, divGifImageTemplate != null ? divGifImageTemplate.h : null, this.a.r1());
            y45.i(tp3VarZ2, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "aspect", zC, divGifImageTemplate != null ? divGifImageTemplate.i : null, this.a.A1());
            y45.i(tp3VarS4, "readOptionalField(contex…AspectJsonTemplateParser)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "background", zC, divGifImageTemplate != null ? divGifImageTemplate.j : null, this.a.D1());
            y45.i(tp3VarZ3, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "border", zC, divGifImageTemplate != null ? divGifImageTemplate.k : null, this.a.J1());
            y45.i(tp3VarS5, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar3 = acb.a;
            tp3 tp3Var3 = divGifImageTemplate != null ? divGifImageTemplate.l : null;
            e74 e74Var3 = ParsingConvertersKt.f;
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "capture_focus_on_action", zbbVar3, zC, tp3Var3, e74Var3);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…OnAction, ANY_TO_BOOLEAN)");
            zbb zbbVar4 = acb.b;
            tp3 tp3Var4 = divGifImageTemplate != null ? divGifImageTemplate.m : null;
            e74 e74Var4 = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar4, zC, tp3Var4, e74Var4, DivGifImageJsonParser.t);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "content_alignment_horizontal", DivGifImageJsonParser.o, zC, divGifImageTemplate != null ? divGifImageTemplate.n : null, e74Var);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "content_alignment_vertical", DivGifImageJsonParser.p, zC, divGifImageTemplate != null ? divGifImageTemplate.o : null, e74Var2);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divGifImageTemplate != null ? divGifImageTemplate.p : null, this.a.N2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "doubletap_actions", zC, divGifImageTemplate != null ? divGifImageTemplate.q : null, this.a.v0());
            y45.i(tp3VarZ5, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divGifImageTemplate != null ? divGifImageTemplate.r : null, this.a.Z2());
            y45.i(tp3VarZ6, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "focus", zC, divGifImageTemplate != null ? divGifImageTemplate.s : null, this.a.x3());
            y45.i(tp3VarS6, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "functions", zC, divGifImageTemplate != null ? divGifImageTemplate.t : null, this.a.G3());
            y45.i(tp3VarZ7, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "gif_url", acb.e, zC, divGifImageTemplate != null ? divGifImageTemplate.u : null, ParsingConvertersKt.e);
            y45.i(tp3VarI, "readFieldWithExpression(…rent?.gifUrl, ANY_TO_URI)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "height", zC, divGifImageTemplate != null ? divGifImageTemplate.v : null, this.a.W6());
            y45.i(tp3VarS7, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "hover_end_actions", zC, divGifImageTemplate != null ? divGifImageTemplate.w : null, this.a.v0());
            y45.i(tp3VarZ8, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "hover_start_actions", zC, divGifImageTemplate != null ? divGifImageTemplate.x : null, this.a.v0());
            y45.i(tp3VarZ9, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divGifImageTemplate != null ? divGifImageTemplate.y : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divGifImageTemplate != null ? divGifImageTemplate.z : null, this.a.N4());
            y45.i(tp3VarS8, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "longtap_actions", zC, divGifImageTemplate != null ? divGifImageTemplate.A : null, this.a.v0());
            y45.i(tp3VarZ10, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "margins", zC, divGifImageTemplate != null ? divGifImageTemplate.B : null, this.a.W2());
            y45.i(tp3VarS9, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divGifImageTemplate != null ? divGifImageTemplate.C : null, this.a.W2());
            y45.i(tp3VarS10, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "placeholder_color", acb.f, zC, divGifImageTemplate != null ? divGifImageTemplate.D : null, ParsingConvertersKt.b);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, "preload_required", zbbVar3, zC, divGifImageTemplate != null ? divGifImageTemplate.E : null, e74Var3);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…Required, ANY_TO_BOOLEAN)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "press_end_actions", zC, divGifImageTemplate != null ? divGifImageTemplate.F : null, this.a.v0());
            y45.i(tp3VarZ11, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ12 = ra5.z(ex7VarC, jSONObject, "press_start_actions", zC, divGifImageTemplate != null ? divGifImageTemplate.G : null, this.a.v0());
            y45.i(tp3VarZ12, "readOptionalListField(co…ActionJsonTemplateParser)");
            zbb zbbVar5 = acb.c;
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "preview", zbbVar5, zC, divGifImageTemplate != null ? divGifImageTemplate.H : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.preview)");
            tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, "reuse_id", zbbVar5, zC, divGifImageTemplate != null ? divGifImageTemplate.I : null);
            y45.i(tp3VarT2, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar4, zC, divGifImageTemplate != null ? divGifImageTemplate.J : null, e74Var4, DivGifImageJsonParser.u);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, "scale", DivGifImageJsonParser.q, zC, divGifImageTemplate != null ? divGifImageTemplate.K : null, DivImageScale.FROM_STRING);
            y45.i(tp3VarU8, "readOptionalFieldWithExp…ivImageScale.FROM_STRING)");
            tp3 tp3VarZ13 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divGifImageTemplate != null ? divGifImageTemplate.L : null, this.a.v0());
            y45.i(tp3VarZ13, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ14 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divGifImageTemplate != null ? divGifImageTemplate.M : null, this.a.K8());
            y45.i(tp3VarZ14, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "transform", zC, divGifImageTemplate != null ? divGifImageTemplate.N : null, this.a.W8());
            y45.i(tp3VarS11, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divGifImageTemplate != null ? divGifImageTemplate.O : null, this.a.S1());
            y45.i(tp3VarS12, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divGifImageTemplate != null ? divGifImageTemplate.P : null, this.a.x1());
            y45.i(tp3VarS13, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divGifImageTemplate != null ? divGifImageTemplate.Q : null, this.a.x1());
            y45.i(tp3VarS14, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var5 = divGifImageTemplate != null ? divGifImageTemplate.R : null;
            e74 e74Var5 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivGifImageJsonParser.v;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var5, e74Var5, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ15 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divGifImageTemplate != null ? divGifImageTemplate.S : null, this.a.Z8());
            y45.i(tp3VarZ15, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ16 = ra5.z(ex7VarC, jSONObject, "variables", zC, divGifImageTemplate != null ? divGifImageTemplate.T : null, this.a.f9());
            y45.i(tp3VarZ16, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU9 = ra5.u(ex7VarC, jSONObject, "visibility", DivGifImageJsonParser.r, zC, divGifImageTemplate != null ? divGifImageTemplate.U : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU9, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS15 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divGifImageTemplate != null ? divGifImageTemplate.V : null, this.a.r9());
            y45.i(tp3VarS15, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ17 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divGifImageTemplate != null ? divGifImageTemplate.W : null, this.a.r9());
            y45.i(tp3VarZ17, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS16 = ra5.s(ex7VarC, jSONObject, "width", zC, divGifImageTemplate != null ? divGifImageTemplate.X : null, this.a.W6());
            y45.i(tp3VarS16, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivGifImageTemplate(tp3VarS, tp3VarS2, tp3VarS3, tp3VarZ, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ2, tp3VarS4, tp3VarZ3, tp3VarS5, tp3VarU3, tp3VarV2, tp3VarU4, tp3VarU5, tp3VarZ4, tp3VarZ5, tp3VarZ6, tp3VarS6, tp3VarZ7, tp3VarI, tp3VarS7, tp3VarZ8, tp3VarZ9, tp3VarP, tp3VarS8, tp3VarZ10, tp3VarS9, tp3VarS10, tp3VarU6, tp3VarU7, tp3VarZ11, tp3VarZ12, tp3VarT, tp3VarT2, tp3VarV3, tp3VarU8, tp3VarZ13, tp3VarZ14, tp3VarS11, tp3VarS12, tp3VarS13, tp3VarS14, tp3VarX, tp3VarZ15, tp3VarZ16, tp3VarU9, tp3VarS15, tp3VarZ17, tp3VarS16);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivGifImageTemplate divGifImageTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divGifImageTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divGifImageTemplate.a, this.a.I());
            ra5.I(ex7Var, jSONObject, "action", divGifImageTemplate.b, this.a.v0());
            ra5.I(ex7Var, jSONObject, "action_animation", divGifImageTemplate.c, this.a.o1());
            ra5.K(ex7Var, jSONObject, "actions", divGifImageTemplate.d, this.a.v0());
            tp3 tp3Var = divGifImageTemplate.e;
            e74 e74Var = DivAlignmentHorizontal.TO_STRING;
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", tp3Var, e74Var);
            tp3 tp3Var2 = divGifImageTemplate.f;
            e74 e74Var2 = DivAlignmentVertical.TO_STRING;
            ra5.E(ex7Var, jSONObject, "alignment_vertical", tp3Var2, e74Var2);
            ra5.D(ex7Var, jSONObject, "alpha", divGifImageTemplate.g);
            ra5.K(ex7Var, jSONObject, "animators", divGifImageTemplate.h, this.a.r1());
            ra5.I(ex7Var, jSONObject, "aspect", divGifImageTemplate.i, this.a.A1());
            ra5.K(ex7Var, jSONObject, "background", divGifImageTemplate.j, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divGifImageTemplate.k, this.a.J1());
            ra5.D(ex7Var, jSONObject, "capture_focus_on_action", divGifImageTemplate.l);
            ra5.D(ex7Var, jSONObject, "column_span", divGifImageTemplate.m);
            ra5.E(ex7Var, jSONObject, "content_alignment_horizontal", divGifImageTemplate.n, e74Var);
            ra5.E(ex7Var, jSONObject, "content_alignment_vertical", divGifImageTemplate.o, e74Var2);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divGifImageTemplate.p, this.a.N2());
            ra5.K(ex7Var, jSONObject, "doubletap_actions", divGifImageTemplate.q, this.a.v0());
            ra5.K(ex7Var, jSONObject, "extensions", divGifImageTemplate.r, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divGifImageTemplate.s, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divGifImageTemplate.t, this.a.G3());
            ra5.E(ex7Var, jSONObject, "gif_url", divGifImageTemplate.u, ParsingConvertersKt.c);
            ra5.I(ex7Var, jSONObject, "height", divGifImageTemplate.v, this.a.W6());
            ra5.K(ex7Var, jSONObject, "hover_end_actions", divGifImageTemplate.w, this.a.v0());
            ra5.K(ex7Var, jSONObject, "hover_start_actions", divGifImageTemplate.x, this.a.v0());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divGifImageTemplate.y);
            ra5.I(ex7Var, jSONObject, "layout_provider", divGifImageTemplate.z, this.a.N4());
            ra5.K(ex7Var, jSONObject, "longtap_actions", divGifImageTemplate.A, this.a.v0());
            ra5.I(ex7Var, jSONObject, "margins", divGifImageTemplate.B, this.a.W2());
            ra5.I(ex7Var, jSONObject, "paddings", divGifImageTemplate.C, this.a.W2());
            ra5.E(ex7Var, jSONObject, "placeholder_color", divGifImageTemplate.D, ParsingConvertersKt.a);
            ra5.D(ex7Var, jSONObject, "preload_required", divGifImageTemplate.E);
            ra5.K(ex7Var, jSONObject, "press_end_actions", divGifImageTemplate.F, this.a.v0());
            ra5.K(ex7Var, jSONObject, "press_start_actions", divGifImageTemplate.G, this.a.v0());
            ra5.D(ex7Var, jSONObject, "preview", divGifImageTemplate.H);
            ra5.D(ex7Var, jSONObject, "reuse_id", divGifImageTemplate.I);
            ra5.D(ex7Var, jSONObject, "row_span", divGifImageTemplate.J);
            ra5.E(ex7Var, jSONObject, "scale", divGifImageTemplate.K, DivImageScale.TO_STRING);
            ra5.K(ex7Var, jSONObject, "selected_actions", divGifImageTemplate.L, this.a.v0());
            ra5.K(ex7Var, jSONObject, "tooltips", divGifImageTemplate.M, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divGifImageTemplate.N, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divGifImageTemplate.O, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divGifImageTemplate.P, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divGifImageTemplate.Q, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divGifImageTemplate.R, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "gif");
            ra5.K(ex7Var, jSONObject, "variable_triggers", divGifImageTemplate.S, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divGifImageTemplate.T, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divGifImageTemplate.U, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divGifImageTemplate.V, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divGifImageTemplate.W, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divGifImageTemplate.X, this.a.W6());
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
        public DivGifImage a(ex7 ex7Var, DivGifImageTemplate divGifImageTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divGifImageTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divGifImageTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            DivAction divAction = (DivAction) sa5.p(ex7Var, divGifImageTemplate.b, jSONObject, "action", this.a.w0(), this.a.u0());
            DivAnimation divAnimation = (DivAnimation) sa5.p(ex7Var, divGifImageTemplate.c, jSONObject, "action_animation", this.a.p1(), this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivGifImageJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonFieldResolver.resolv…N_ANIMATION_DEFAULT_VALUE");
            List listB = sa5.B(ex7Var, divGifImageTemplate.d, jSONObject, "actions", this.a.w0(), this.a.u0());
            tp3 tp3Var = divGifImageTemplate.e;
            zbb zbbVar = DivGifImageJsonParser.m;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            Expression expressionS = sa5.s(ex7Var, tp3Var, jSONObject, "alignment_horizontal", zbbVar, e74Var);
            tp3 tp3Var2 = divGifImageTemplate.f;
            zbb zbbVar2 = DivGifImageJsonParser.n;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            Expression expressionS2 = sa5.s(ex7Var, tp3Var2, jSONObject, "alignment_vertical", zbbVar2, e74Var2);
            tp3 tp3Var3 = divGifImageTemplate.g;
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar = DivGifImageJsonParser.s;
            Expression expression = DivGifImageJsonParser.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var3, jSONObject, "alpha", zbbVar3, e74Var3, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB2 = sa5.B(ex7Var, divGifImageTemplate.h, jSONObject, "animators", this.a.s1(), this.a.q1());
            DivAspect divAspect = (DivAspect) sa5.p(ex7Var, divGifImageTemplate.i, jSONObject, "aspect", this.a.B1(), this.a.z1());
            List listB3 = sa5.B(ex7Var, divGifImageTemplate.j, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divGifImageTemplate.k, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var4 = divGifImageTemplate.l;
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expression2 = DivGifImageJsonParser.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var4, jSONObject, "capture_focus_on_action", zbbVar4, e74Var4, expression2);
            if (expressionV != null) {
                expression2 = expressionV;
            }
            tp3 tp3Var5 = divGifImageTemplate.m;
            zbb zbbVar5 = acb.b;
            e74 e74Var5 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var5, jSONObject, "column_span", zbbVar5, e74Var5, DivGifImageJsonParser.t);
            tp3 tp3Var6 = divGifImageTemplate.n;
            zbb zbbVar6 = DivGifImageJsonParser.o;
            Expression expression3 = DivGifImageJsonParser.e;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var6, jSONObject, "content_alignment_horizontal", zbbVar6, e74Var, expression3);
            Expression expression4 = expressionV2 == null ? expression3 : expressionV2;
            tp3 tp3Var7 = divGifImageTemplate.o;
            zbb zbbVar7 = DivGifImageJsonParser.p;
            Expression expression5 = DivGifImageJsonParser.f;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var7, jSONObject, "content_alignment_vertical", zbbVar7, e74Var2, expression5);
            if (expressionV3 != null) {
                expression5 = expressionV3;
            }
            List listB4 = sa5.B(ex7Var, divGifImageTemplate.p, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB5 = sa5.B(ex7Var, divGifImageTemplate.q, jSONObject, "doubletap_actions", this.a.w0(), this.a.u0());
            List listB6 = sa5.B(ex7Var, divGifImageTemplate.r, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divGifImageTemplate.s, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB7 = sa5.B(ex7Var, divGifImageTemplate.t, jSONObject, "functions", this.a.H3(), this.a.F3());
            Expression expressionH = sa5.h(ex7Var, divGifImageTemplate.u, jSONObject, "gif_url", acb.e, ParsingConvertersKt.e);
            y45.i(expressionH, "resolveExpression(contex…E_HELPER_URI, ANY_TO_URI)");
            DivSize divSize = (DivSize) sa5.p(ex7Var, divGifImageTemplate.v, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivGifImageJsonParser.g;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            List listB8 = sa5.B(ex7Var, divGifImageTemplate.w, jSONObject, "hover_end_actions", this.a.w0(), this.a.u0());
            List listB9 = sa5.B(ex7Var, divGifImageTemplate.x, jSONObject, "hover_start_actions", this.a.w0(), this.a.u0());
            String str = (String) sa5.m(ex7Var, divGifImageTemplate.y, jSONObject, TtmlNode.ATTR_ID);
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divGifImageTemplate.z, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            List listB10 = sa5.B(ex7Var, divGifImageTemplate.A, jSONObject, "longtap_actions", this.a.w0(), this.a.u0());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divGifImageTemplate.B, jSONObject, "margins", this.a.X2(), this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divGifImageTemplate.C, jSONObject, "paddings", this.a.X2(), this.a.V2());
            tp3 tp3Var8 = divGifImageTemplate.D;
            zbb zbbVar8 = acb.f;
            e74 e74Var6 = ParsingConvertersKt.b;
            Expression expression6 = DivGifImageJsonParser.h;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var8, jSONObject, "placeholder_color", zbbVar8, e74Var6, expression6);
            if (expressionV4 != null) {
                expression6 = expressionV4;
            }
            tp3 tp3Var9 = divGifImageTemplate.E;
            Expression expression7 = DivGifImageJsonParser.i;
            Expression expressionV5 = sa5.v(ex7Var, tp3Var9, jSONObject, "preload_required", zbbVar4, e74Var4, expression7);
            if (expressionV5 != null) {
                expression7 = expressionV5;
            }
            List listB11 = sa5.B(ex7Var, divGifImageTemplate.F, jSONObject, "press_end_actions", this.a.w0(), this.a.u0());
            List listB12 = sa5.B(ex7Var, divGifImageTemplate.G, jSONObject, "press_start_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var10 = divGifImageTemplate.H;
            zbb zbbVar9 = acb.c;
            Expression expressionR = sa5.r(ex7Var, tp3Var10, jSONObject, "preview", zbbVar9);
            Expression expressionR2 = sa5.r(ex7Var, divGifImageTemplate.I, jSONObject, "reuse_id", zbbVar9);
            Expression expressionT2 = sa5.t(ex7Var, divGifImageTemplate.J, jSONObject, "row_span", zbbVar5, e74Var5, DivGifImageJsonParser.u);
            tp3 tp3Var11 = divGifImageTemplate.K;
            zbb zbbVar10 = DivGifImageJsonParser.q;
            e74 e74Var7 = DivImageScale.FROM_STRING;
            Expression expression8 = DivGifImageJsonParser.j;
            Expression expressionV6 = sa5.v(ex7Var, tp3Var11, jSONObject, "scale", zbbVar10, e74Var7, expression8);
            Expression expression9 = expressionV6 == null ? expression8 : expressionV6;
            List listB13 = sa5.B(ex7Var, divGifImageTemplate.L, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            List listB14 = sa5.B(ex7Var, divGifImageTemplate.M, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divGifImageTemplate.N, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divGifImageTemplate.O, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divGifImageTemplate.P, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divGifImageTemplate.Q, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divGifImageTemplate.R, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivGifImageJsonParser.v);
            List listB15 = sa5.B(ex7Var, divGifImageTemplate.S, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB16 = sa5.B(ex7Var, divGifImageTemplate.T, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var12 = divGifImageTemplate.U;
            zbb zbbVar11 = DivGifImageJsonParser.r;
            e74 e74Var8 = DivVisibility.FROM_STRING;
            Expression expression10 = DivGifImageJsonParser.k;
            Expression expressionV7 = sa5.v(ex7Var, tp3Var12, jSONObject, "visibility", zbbVar11, e74Var8, expression10);
            Expression expression11 = expressionV7 == null ? expression10 : expressionV7;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divGifImageTemplate.V, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB17 = sa5.B(ex7Var, divGifImageTemplate.W, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divGifImageTemplate.X, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivGifImageJsonParser.l;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivGifImage(divAccessibility, divAction, divAnimation2, listB, expressionS, expressionS2, expression, listB2, divAspect, listB3, divBorder, expression2, expressionT, expression4, expression5, listB4, listB5, listB6, divFocus, listB7, expressionH, divSize2, listB8, listB9, str, divLayoutProvider, listB10, divEdgeInsets, divEdgeInsets2, expression6, expression7, listB11, listB12, expressionR, expressionR2, expressionT2, expression9, listB13, listB14, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB15, listB16, expression11, divVisibilityAction, listB17, divSize3);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        Expression expressionA = aVar.a(100L);
        Expression expressionA2 = aVar.a(Double.valueOf(0.6d));
        Expression expressionA3 = aVar.a(DivAnimation.Name.FADE);
        Double dValueOf = Double.valueOf(1.0d);
        b = new DivAnimation(expressionA, expressionA2, null, null, expressionA3, null, null, aVar.a(dValueOf), 108, null);
        c = aVar.a(dValueOf);
        d = aVar.a(Boolean.TRUE);
        e = aVar.a(DivAlignmentHorizontal.CENTER);
        f = aVar.a(DivAlignmentVertical.CENTER);
        g = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        h = aVar.a(335544320);
        i = aVar.a(Boolean.FALSE);
        j = aVar.a(DivImageScale.FILL);
        k = aVar.a(DivVisibility.VISIBLE);
        l = new DivSize.c(new DivMatchParentSize(null, 1, null));
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
        o = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        p = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        q = aVar2.a(hi.W(DivImageScale.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivImageScale);
            }
        });
        r = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        s = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGifImageJsonParser.e(((Double) obj).doubleValue());
            }
        };
        t = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGifImageJsonParser.f(((Long) obj).longValue());
            }
        };
        u = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGifImageJsonParser.g(((Long) obj).longValue());
            }
        };
        v = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivGifImageJsonParser.h(list);
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
