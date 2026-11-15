package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hisavana.common.tracking.TrackingKey;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivImageJsonParser;
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

public abstract class DivImageJsonParser {
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
    public static final Expression l;
    public static final Expression m;
    public static final DivSize.c n;
    public static final zbb o;
    public static final zbb p;
    public static final zbb q;
    public static final zbb r;
    public static final zbb s;
    public static final zbb t;
    public static final zbb u;
    public static final pnb v;
    public static final pnb w;
    public static final pnb x;
    public static final hm5 y;

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
        public DivImage a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            DivAction divAction = (DivAction) tb5.n(ex7Var, jSONObject, "action", this.a.u0());
            DivAnimation divAnimation = (DivAnimation) tb5.n(ex7Var, jSONObject, "action_animation", this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivImageJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonPropertyParser.readO…N_ANIMATION_DEFAULT_VALUE");
            List listR = tb5.r(ex7Var, jSONObject, "actions", this.a.u0());
            zbb zbbVar = DivImageJsonParser.o;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", zbbVar, e74Var);
            zbb zbbVar2 = DivImageJsonParser.p;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", zbbVar2, e74Var2);
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar = DivImageJsonParser.v;
            Expression expression = DivImageJsonParser.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar3, e74Var3, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR2 = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            DivFadeTransition divFadeTransition = (DivFadeTransition) tb5.n(ex7Var, jSONObject, "appearance_animation", this.a.b3());
            DivAspect divAspect = (DivAspect) tb5.n(ex7Var, jSONObject, "aspect", this.a.z1());
            List listR3 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expression2 = DivImageJsonParser.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "capture_focus_on_action", zbbVar4, e74Var4, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            zbb zbbVar5 = acb.b;
            e74 e74Var5 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar5, e74Var5, DivImageJsonParser.w);
            zbb zbbVar6 = DivImageJsonParser.q;
            Expression expression3 = DivImageJsonParser.e;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "content_alignment_horizontal", zbbVar6, e74Var, expression3);
            if (expressionL2 != null) {
                expression3 = expressionL2;
            }
            zbb zbbVar7 = DivImageJsonParser.r;
            Expression expression4 = DivImageJsonParser.f;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "content_alignment_vertical", zbbVar7, e74Var2, expression4);
            Expression expression5 = expressionL3 == null ? expression4 : expressionL3;
            List listR4 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR5 = tb5.r(ex7Var, jSONObject, "doubletap_actions", this.a.u0());
            List listR6 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            List listR7 = tb5.r(ex7Var, jSONObject, "filters", this.a.e3());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR8 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivImageJsonParser.g;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            Expression expression6 = DivImageJsonParser.h;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "high_priority_preview_show", zbbVar4, e74Var4, expression6);
            if (expressionL4 != null) {
                expression6 = expressionL4;
            }
            List listR9 = tb5.r(ex7Var, jSONObject, "hover_end_actions", this.a.u0());
            List listR10 = tb5.r(ex7Var, jSONObject, "hover_start_actions", this.a.u0());
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            Expression expressionE = pa5.e(ex7Var, jSONObject, TrackingKey.IMAGE_URL, acb.e, ParsingConvertersKt.e);
            y45.i(expressionE, "readExpression(context, …E_HELPER_URI, ANY_TO_URI)");
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            List listR11 = tb5.r(ex7Var, jSONObject, "longtap_actions", this.a.u0());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            zbb zbbVar8 = acb.f;
            e74 e74Var6 = ParsingConvertersKt.b;
            Expression expression7 = DivImageJsonParser.i;
            Expression expressionL5 = pa5.l(ex7Var, jSONObject, "placeholder_color", zbbVar8, e74Var6, expression7);
            if (expressionL5 != null) {
                expression7 = expressionL5;
            }
            Expression expression8 = DivImageJsonParser.j;
            Expression expressionL6 = pa5.l(ex7Var, jSONObject, "preload_required", zbbVar4, e74Var4, expression8);
            if (expressionL6 != null) {
                expression8 = expressionL6;
            }
            List listR12 = tb5.r(ex7Var, jSONObject, "press_end_actions", this.a.u0());
            List listR13 = tb5.r(ex7Var, jSONObject, "press_start_actions", this.a.u0());
            zbb zbbVar9 = acb.c;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "preview", zbbVar9);
            Expression expressionH2 = pa5.h(ex7Var, jSONObject, "reuse_id", zbbVar9);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar5, e74Var5, DivImageJsonParser.x);
            zbb zbbVar10 = DivImageJsonParser.s;
            e74 e74Var7 = DivImageScale.FROM_STRING;
            Expression expression9 = DivImageJsonParser.k;
            Expression expressionL7 = pa5.l(ex7Var, jSONObject, "scale", zbbVar10, e74Var7, expression9);
            Expression expression10 = expressionL7 == null ? expression9 : expressionL7;
            List listR14 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            Expression expressionI3 = pa5.i(ex7Var, jSONObject, "tint_color", zbbVar8, e74Var6);
            zbb zbbVar11 = DivImageJsonParser.t;
            e74 e74Var8 = DivBlendMode.FROM_STRING;
            Expression expression11 = DivImageJsonParser.l;
            Expression expressionL8 = pa5.l(ex7Var, jSONObject, "tint_mode", zbbVar11, e74Var8, expression11);
            Expression expression12 = expressionL8 == null ? expression11 : expressionL8;
            List listR15 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivImageJsonParser.y);
            List listR16 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR17 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar12 = DivImageJsonParser.u;
            e74 e74Var9 = DivVisibility.FROM_STRING;
            Expression expression13 = DivImageJsonParser.m;
            Expression expressionL9 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar12, e74Var9, expression13);
            if (expressionL9 == null) {
                expressionL9 = expression13;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR18 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivImageJsonParser.n;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivImage(divAccessibility, divAction, divAnimation2, listR, expressionI, expressionI2, expression, listR2, divFadeTransition, divAspect, listR3, divBorder, expression2, expressionJ, expression3, expression5, listR4, listR5, listR6, listR7, divFocus, listR8, divSize2, expression6, listR9, listR10, str, expressionE, divLayoutProvider, listR11, divEdgeInsets, divEdgeInsets2, expression7, expression8, listR12, listR13, expressionH, expressionH2, expressionJ2, expression10, listR14, expressionI3, expression12, listR15, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR16, listR17, expressionL9, divVisibilityAction, listR18, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivImage divImage) {
            y45.j(ex7Var, "context");
            y45.j(divImage, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divImage.r(), this.a.H());
            tb5.x(ex7Var, jSONObject, "action", divImage.b, this.a.u0());
            tb5.x(ex7Var, jSONObject, "action_animation", divImage.c, this.a.n1());
            tb5.z(ex7Var, jSONObject, "actions", divImage.d, this.a.u0());
            Expression expressionG = divImage.g();
            e74 e74Var = DivAlignmentHorizontal.TO_STRING;
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", expressionG, e74Var);
            Expression expressionO = divImage.o();
            e74 e74Var2 = DivAlignmentVertical.TO_STRING;
            pa5.q(ex7Var, jSONObject, "alignment_vertical", expressionO, e74Var2);
            pa5.p(ex7Var, jSONObject, "alpha", divImage.p());
            tb5.z(ex7Var, jSONObject, "animators", divImage.A(), this.a.q1());
            tb5.x(ex7Var, jSONObject, "appearance_animation", divImage.i, this.a.b3());
            tb5.x(ex7Var, jSONObject, "aspect", divImage.j, this.a.z1());
            tb5.z(ex7Var, jSONObject, "background", divImage.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divImage.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "capture_focus_on_action", divImage.m);
            pa5.p(ex7Var, jSONObject, "column_span", divImage.b());
            pa5.q(ex7Var, jSONObject, "content_alignment_horizontal", divImage.o, e74Var);
            pa5.q(ex7Var, jSONObject, "content_alignment_vertical", divImage.p, e74Var2);
            tb5.z(ex7Var, jSONObject, "disappear_actions", divImage.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "doubletap_actions", divImage.r, this.a.u0());
            tb5.z(ex7Var, jSONObject, "extensions", divImage.getExtensions(), this.a.Y2());
            tb5.z(ex7Var, jSONObject, "filters", divImage.t, this.a.e3());
            tb5.x(ex7Var, jSONObject, "focus", divImage.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divImage.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divImage.getHeight(), this.a.V6());
            pa5.p(ex7Var, jSONObject, "high_priority_preview_show", divImage.x);
            tb5.z(ex7Var, jSONObject, "hover_end_actions", divImage.y, this.a.u0());
            tb5.z(ex7Var, jSONObject, "hover_start_actions", divImage.z, this.a.u0());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divImage.getId());
            pa5.q(ex7Var, jSONObject, TrackingKey.IMAGE_URL, divImage.B, ParsingConvertersKt.c);
            tb5.x(ex7Var, jSONObject, "layout_provider", divImage.v(), this.a.M4());
            tb5.z(ex7Var, jSONObject, "longtap_actions", divImage.D, this.a.u0());
            tb5.x(ex7Var, jSONObject, "margins", divImage.d(), this.a.V2());
            tb5.x(ex7Var, jSONObject, "paddings", divImage.t(), this.a.V2());
            Expression expression = divImage.G;
            e74 e74Var3 = ParsingConvertersKt.a;
            pa5.q(ex7Var, jSONObject, "placeholder_color", expression, e74Var3);
            pa5.p(ex7Var, jSONObject, "preload_required", divImage.H);
            tb5.z(ex7Var, jSONObject, "press_end_actions", divImage.I, this.a.u0());
            tb5.z(ex7Var, jSONObject, "press_start_actions", divImage.J, this.a.u0());
            pa5.p(ex7Var, jSONObject, "preview", divImage.K);
            pa5.p(ex7Var, jSONObject, "reuse_id", divImage.f());
            pa5.p(ex7Var, jSONObject, "row_span", divImage.e());
            pa5.q(ex7Var, jSONObject, "scale", divImage.N, DivImageScale.TO_STRING);
            tb5.z(ex7Var, jSONObject, "selected_actions", divImage.u(), this.a.u0());
            pa5.q(ex7Var, jSONObject, "tint_color", divImage.P, e74Var3);
            pa5.q(ex7Var, jSONObject, "tint_mode", divImage.Q, DivBlendMode.TO_STRING);
            tb5.z(ex7Var, jSONObject, "tooltips", divImage.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divImage.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divImage.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divImage.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divImage.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divImage.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "image");
            tb5.z(ex7Var, jSONObject, "variable_triggers", divImage.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divImage.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divImage.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divImage.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divImage.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divImage.getWidth(), this.a.V6());
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
        public DivImageTemplate c(ex7 ex7Var, DivImageTemplate divImageTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divImageTemplate != null ? divImageTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "action", zC, divImageTemplate != null ? divImageTemplate.b : null, this.a.v0());
            y45.i(tp3VarS2, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "action_animation", zC, divImageTemplate != null ? divImageTemplate.c : null, this.a.o1());
            y45.i(tp3VarS3, "readOptionalField(contex…mationJsonTemplateParser)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "actions", zC, divImageTemplate != null ? divImageTemplate.d : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            zbb zbbVar = DivImageJsonParser.o;
            tp3 tp3Var = divImageTemplate != null ? divImageTemplate.e : null;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            zbb zbbVar2 = DivImageJsonParser.p;
            tp3 tp3Var2 = divImageTemplate != null ? divImageTemplate.f : null;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divImageTemplate != null ? divImageTemplate.g : null, ParsingConvertersKt.g, DivImageJsonParser.v);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "animators", zC, divImageTemplate != null ? divImageTemplate.h : null, this.a.r1());
            y45.i(tp3VarZ2, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "appearance_animation", zC, divImageTemplate != null ? divImageTemplate.i : null, this.a.c3());
            y45.i(tp3VarS4, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "aspect", zC, divImageTemplate != null ? divImageTemplate.j : null, this.a.A1());
            y45.i(tp3VarS5, "readOptionalField(contex…AspectJsonTemplateParser)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "background", zC, divImageTemplate != null ? divImageTemplate.k : null, this.a.D1());
            y45.i(tp3VarZ3, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "border", zC, divImageTemplate != null ? divImageTemplate.l : null, this.a.J1());
            y45.i(tp3VarS6, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar3 = acb.a;
            tp3 tp3Var3 = divImageTemplate != null ? divImageTemplate.m : null;
            e74 e74Var3 = ParsingConvertersKt.f;
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "capture_focus_on_action", zbbVar3, zC, tp3Var3, e74Var3);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…OnAction, ANY_TO_BOOLEAN)");
            zbb zbbVar4 = acb.b;
            tp3 tp3Var4 = divImageTemplate != null ? divImageTemplate.n : null;
            e74 e74Var4 = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar4, zC, tp3Var4, e74Var4, DivImageJsonParser.w);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "content_alignment_horizontal", DivImageJsonParser.q, zC, divImageTemplate != null ? divImageTemplate.o : null, e74Var);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "content_alignment_vertical", DivImageJsonParser.r, zC, divImageTemplate != null ? divImageTemplate.p : null, e74Var2);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divImageTemplate != null ? divImageTemplate.q : null, this.a.N2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "doubletap_actions", zC, divImageTemplate != null ? divImageTemplate.r : null, this.a.v0());
            y45.i(tp3VarZ5, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divImageTemplate != null ? divImageTemplate.s : null, this.a.Z2());
            y45.i(tp3VarZ6, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "filters", zC, divImageTemplate != null ? divImageTemplate.t : null, this.a.f3());
            y45.i(tp3VarZ7, "readOptionalListField(co…FilterJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "focus", zC, divImageTemplate != null ? divImageTemplate.u : null, this.a.x3());
            y45.i(tp3VarS7, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "functions", zC, divImageTemplate != null ? divImageTemplate.v : null, this.a.G3());
            y45.i(tp3VarZ8, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "height", zC, divImageTemplate != null ? divImageTemplate.w : null, this.a.W6());
            y45.i(tp3VarS8, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "high_priority_preview_show", zbbVar3, zC, divImageTemplate != null ? divImageTemplate.x : null, e74Var3);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…viewShow, ANY_TO_BOOLEAN)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "hover_end_actions", zC, divImageTemplate != null ? divImageTemplate.y : null, this.a.v0());
            y45.i(tp3VarZ9, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "hover_start_actions", zC, divImageTemplate != null ? divImageTemplate.z : null, this.a.v0());
            y45.i(tp3VarZ10, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divImageTemplate != null ? divImageTemplate.A : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, TrackingKey.IMAGE_URL, acb.e, zC, divImageTemplate != null ? divImageTemplate.B : null, ParsingConvertersKt.e);
            y45.i(tp3VarI, "readFieldWithExpression(…nt?.imageUrl, ANY_TO_URI)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divImageTemplate != null ? divImageTemplate.C : null, this.a.N4());
            y45.i(tp3VarS9, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "longtap_actions", zC, divImageTemplate != null ? divImageTemplate.D : null, this.a.v0());
            y45.i(tp3VarZ11, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "margins", zC, divImageTemplate != null ? divImageTemplate.E : null, this.a.W2());
            y45.i(tp3VarS10, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divImageTemplate != null ? divImageTemplate.F : null, this.a.W2());
            y45.i(tp3VarS11, "readOptionalField(contex…InsetsJsonTemplateParser)");
            zbb zbbVar5 = acb.f;
            tp3 tp3Var5 = divImageTemplate != null ? divImageTemplate.G : null;
            e74 e74Var5 = ParsingConvertersKt.b;
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, "placeholder_color", zbbVar5, zC, tp3Var5, e74Var5);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, "preload_required", zbbVar3, zC, divImageTemplate != null ? divImageTemplate.H : null, e74Var3);
            y45.i(tp3VarU8, "readOptionalFieldWithExp…Required, ANY_TO_BOOLEAN)");
            tp3 tp3VarZ12 = ra5.z(ex7VarC, jSONObject, "press_end_actions", zC, divImageTemplate != null ? divImageTemplate.I : null, this.a.v0());
            y45.i(tp3VarZ12, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ13 = ra5.z(ex7VarC, jSONObject, "press_start_actions", zC, divImageTemplate != null ? divImageTemplate.J : null, this.a.v0());
            y45.i(tp3VarZ13, "readOptionalListField(co…ActionJsonTemplateParser)");
            zbb zbbVar6 = acb.c;
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "preview", zbbVar6, zC, divImageTemplate != null ? divImageTemplate.K : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.preview)");
            tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, "reuse_id", zbbVar6, zC, divImageTemplate != null ? divImageTemplate.L : null);
            y45.i(tp3VarT2, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar4, zC, divImageTemplate != null ? divImageTemplate.M : null, e74Var4, DivImageJsonParser.x);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarU9 = ra5.u(ex7VarC, jSONObject, "scale", DivImageJsonParser.s, zC, divImageTemplate != null ? divImageTemplate.N : null, DivImageScale.FROM_STRING);
            y45.i(tp3VarU9, "readOptionalFieldWithExp…ivImageScale.FROM_STRING)");
            tp3 tp3VarZ14 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divImageTemplate != null ? divImageTemplate.O : null, this.a.v0());
            y45.i(tp3VarZ14, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarU10 = ra5.u(ex7VarC, jSONObject, "tint_color", zbbVar5, zC, divImageTemplate != null ? divImageTemplate.P : null, e74Var5);
            y45.i(tp3VarU10, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarU11 = ra5.u(ex7VarC, jSONObject, "tint_mode", DivImageJsonParser.t, zC, divImageTemplate != null ? divImageTemplate.Q : null, DivBlendMode.FROM_STRING);
            y45.i(tp3VarU11, "readOptionalFieldWithExp…DivBlendMode.FROM_STRING)");
            tp3 tp3VarZ15 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divImageTemplate != null ? divImageTemplate.R : null, this.a.K8());
            y45.i(tp3VarZ15, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "transform", zC, divImageTemplate != null ? divImageTemplate.S : null, this.a.W8());
            y45.i(tp3VarS12, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divImageTemplate != null ? divImageTemplate.T : null, this.a.S1());
            y45.i(tp3VarS13, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divImageTemplate != null ? divImageTemplate.U : null, this.a.x1());
            y45.i(tp3VarS14, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS15 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divImageTemplate != null ? divImageTemplate.V : null, this.a.x1());
            y45.i(tp3VarS15, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var6 = divImageTemplate != null ? divImageTemplate.W : null;
            e74 e74Var6 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivImageJsonParser.y;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var6, e74Var6, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ16 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divImageTemplate != null ? divImageTemplate.X : null, this.a.Z8());
            y45.i(tp3VarZ16, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ17 = ra5.z(ex7VarC, jSONObject, "variables", zC, divImageTemplate != null ? divImageTemplate.Y : null, this.a.f9());
            y45.i(tp3VarZ17, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU12 = ra5.u(ex7VarC, jSONObject, "visibility", DivImageJsonParser.u, zC, divImageTemplate != null ? divImageTemplate.Z : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU12, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS16 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divImageTemplate != null ? divImageTemplate.a0 : null, this.a.r9());
            y45.i(tp3VarS16, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ18 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divImageTemplate != null ? divImageTemplate.b0 : null, this.a.r9());
            y45.i(tp3VarZ18, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS17 = ra5.s(ex7VarC, jSONObject, "width", zC, divImageTemplate != null ? divImageTemplate.c0 : null, this.a.W6());
            y45.i(tp3VarS17, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivImageTemplate(tp3VarS, tp3VarS2, tp3VarS3, tp3VarZ, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ2, tp3VarS4, tp3VarS5, tp3VarZ3, tp3VarS6, tp3VarU3, tp3VarV2, tp3VarU4, tp3VarU5, tp3VarZ4, tp3VarZ5, tp3VarZ6, tp3VarZ7, tp3VarS7, tp3VarZ8, tp3VarS8, tp3VarU6, tp3VarZ9, tp3VarZ10, tp3VarP, tp3VarI, tp3VarS9, tp3VarZ11, tp3VarS10, tp3VarS11, tp3VarU7, tp3VarU8, tp3VarZ12, tp3VarZ13, tp3VarT, tp3VarT2, tp3VarV3, tp3VarU9, tp3VarZ14, tp3VarU10, tp3VarU11, tp3VarZ15, tp3VarS12, tp3VarS13, tp3VarS14, tp3VarS15, tp3VarX, tp3VarZ16, tp3VarZ17, tp3VarU12, tp3VarS16, tp3VarZ18, tp3VarS17);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivImageTemplate divImageTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divImageTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divImageTemplate.a, this.a.I());
            ra5.I(ex7Var, jSONObject, "action", divImageTemplate.b, this.a.v0());
            ra5.I(ex7Var, jSONObject, "action_animation", divImageTemplate.c, this.a.o1());
            ra5.K(ex7Var, jSONObject, "actions", divImageTemplate.d, this.a.v0());
            tp3 tp3Var = divImageTemplate.e;
            e74 e74Var = DivAlignmentHorizontal.TO_STRING;
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", tp3Var, e74Var);
            tp3 tp3Var2 = divImageTemplate.f;
            e74 e74Var2 = DivAlignmentVertical.TO_STRING;
            ra5.E(ex7Var, jSONObject, "alignment_vertical", tp3Var2, e74Var2);
            ra5.D(ex7Var, jSONObject, "alpha", divImageTemplate.g);
            ra5.K(ex7Var, jSONObject, "animators", divImageTemplate.h, this.a.r1());
            ra5.I(ex7Var, jSONObject, "appearance_animation", divImageTemplate.i, this.a.c3());
            ra5.I(ex7Var, jSONObject, "aspect", divImageTemplate.j, this.a.A1());
            ra5.K(ex7Var, jSONObject, "background", divImageTemplate.k, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divImageTemplate.l, this.a.J1());
            ra5.D(ex7Var, jSONObject, "capture_focus_on_action", divImageTemplate.m);
            ra5.D(ex7Var, jSONObject, "column_span", divImageTemplate.n);
            ra5.E(ex7Var, jSONObject, "content_alignment_horizontal", divImageTemplate.o, e74Var);
            ra5.E(ex7Var, jSONObject, "content_alignment_vertical", divImageTemplate.p, e74Var2);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divImageTemplate.q, this.a.N2());
            ra5.K(ex7Var, jSONObject, "doubletap_actions", divImageTemplate.r, this.a.v0());
            ra5.K(ex7Var, jSONObject, "extensions", divImageTemplate.s, this.a.Z2());
            ra5.K(ex7Var, jSONObject, "filters", divImageTemplate.t, this.a.f3());
            ra5.I(ex7Var, jSONObject, "focus", divImageTemplate.u, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divImageTemplate.v, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divImageTemplate.w, this.a.W6());
            ra5.D(ex7Var, jSONObject, "high_priority_preview_show", divImageTemplate.x);
            ra5.K(ex7Var, jSONObject, "hover_end_actions", divImageTemplate.y, this.a.v0());
            ra5.K(ex7Var, jSONObject, "hover_start_actions", divImageTemplate.z, this.a.v0());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divImageTemplate.A);
            ra5.E(ex7Var, jSONObject, TrackingKey.IMAGE_URL, divImageTemplate.B, ParsingConvertersKt.c);
            ra5.I(ex7Var, jSONObject, "layout_provider", divImageTemplate.C, this.a.N4());
            ra5.K(ex7Var, jSONObject, "longtap_actions", divImageTemplate.D, this.a.v0());
            ra5.I(ex7Var, jSONObject, "margins", divImageTemplate.E, this.a.W2());
            ra5.I(ex7Var, jSONObject, "paddings", divImageTemplate.F, this.a.W2());
            tp3 tp3Var3 = divImageTemplate.G;
            e74 e74Var3 = ParsingConvertersKt.a;
            ra5.E(ex7Var, jSONObject, "placeholder_color", tp3Var3, e74Var3);
            ra5.D(ex7Var, jSONObject, "preload_required", divImageTemplate.H);
            ra5.K(ex7Var, jSONObject, "press_end_actions", divImageTemplate.I, this.a.v0());
            ra5.K(ex7Var, jSONObject, "press_start_actions", divImageTemplate.J, this.a.v0());
            ra5.D(ex7Var, jSONObject, "preview", divImageTemplate.K);
            ra5.D(ex7Var, jSONObject, "reuse_id", divImageTemplate.L);
            ra5.D(ex7Var, jSONObject, "row_span", divImageTemplate.M);
            ra5.E(ex7Var, jSONObject, "scale", divImageTemplate.N, DivImageScale.TO_STRING);
            ra5.K(ex7Var, jSONObject, "selected_actions", divImageTemplate.O, this.a.v0());
            ra5.E(ex7Var, jSONObject, "tint_color", divImageTemplate.P, e74Var3);
            ra5.E(ex7Var, jSONObject, "tint_mode", divImageTemplate.Q, DivBlendMode.TO_STRING);
            ra5.K(ex7Var, jSONObject, "tooltips", divImageTemplate.R, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divImageTemplate.S, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divImageTemplate.T, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divImageTemplate.U, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divImageTemplate.V, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divImageTemplate.W, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "image");
            ra5.K(ex7Var, jSONObject, "variable_triggers", divImageTemplate.X, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divImageTemplate.Y, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divImageTemplate.Z, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divImageTemplate.a0, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divImageTemplate.b0, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divImageTemplate.c0, this.a.W6());
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
        public DivImage a(ex7 ex7Var, DivImageTemplate divImageTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divImageTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divImageTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            DivAction divAction = (DivAction) sa5.p(ex7Var, divImageTemplate.b, jSONObject, "action", this.a.w0(), this.a.u0());
            DivAnimation divAnimation = (DivAnimation) sa5.p(ex7Var, divImageTemplate.c, jSONObject, "action_animation", this.a.p1(), this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivImageJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonFieldResolver.resolv…N_ANIMATION_DEFAULT_VALUE");
            List listB = sa5.B(ex7Var, divImageTemplate.d, jSONObject, "actions", this.a.w0(), this.a.u0());
            tp3 tp3Var = divImageTemplate.e;
            zbb zbbVar = DivImageJsonParser.o;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            Expression expressionS = sa5.s(ex7Var, tp3Var, jSONObject, "alignment_horizontal", zbbVar, e74Var);
            tp3 tp3Var2 = divImageTemplate.f;
            zbb zbbVar2 = DivImageJsonParser.p;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            Expression expressionS2 = sa5.s(ex7Var, tp3Var2, jSONObject, "alignment_vertical", zbbVar2, e74Var2);
            tp3 tp3Var3 = divImageTemplate.g;
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar = DivImageJsonParser.v;
            Expression expression = DivImageJsonParser.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var3, jSONObject, "alpha", zbbVar3, e74Var3, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB2 = sa5.B(ex7Var, divImageTemplate.h, jSONObject, "animators", this.a.s1(), this.a.q1());
            DivFadeTransition divFadeTransition = (DivFadeTransition) sa5.p(ex7Var, divImageTemplate.i, jSONObject, "appearance_animation", this.a.d3(), this.a.b3());
            DivAspect divAspect = (DivAspect) sa5.p(ex7Var, divImageTemplate.j, jSONObject, "aspect", this.a.B1(), this.a.z1());
            List listB3 = sa5.B(ex7Var, divImageTemplate.k, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divImageTemplate.l, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var4 = divImageTemplate.m;
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expression2 = DivImageJsonParser.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var4, jSONObject, "capture_focus_on_action", zbbVar4, e74Var4, expression2);
            if (expressionV != null) {
                expression2 = expressionV;
            }
            tp3 tp3Var5 = divImageTemplate.n;
            zbb zbbVar5 = acb.b;
            e74 e74Var5 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var5, jSONObject, "column_span", zbbVar5, e74Var5, DivImageJsonParser.w);
            tp3 tp3Var6 = divImageTemplate.o;
            zbb zbbVar6 = DivImageJsonParser.q;
            Expression expression3 = DivImageJsonParser.e;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var6, jSONObject, "content_alignment_horizontal", zbbVar6, e74Var, expression3);
            if (expressionV2 != null) {
                expression3 = expressionV2;
            }
            tp3 tp3Var7 = divImageTemplate.p;
            zbb zbbVar7 = DivImageJsonParser.r;
            Expression expression4 = DivImageJsonParser.f;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var7, jSONObject, "content_alignment_vertical", zbbVar7, e74Var2, expression4);
            Expression expression5 = expressionV3 == null ? expression4 : expressionV3;
            List listB4 = sa5.B(ex7Var, divImageTemplate.q, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB5 = sa5.B(ex7Var, divImageTemplate.r, jSONObject, "doubletap_actions", this.a.w0(), this.a.u0());
            List listB6 = sa5.B(ex7Var, divImageTemplate.s, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            List listB7 = sa5.B(ex7Var, divImageTemplate.t, jSONObject, "filters", this.a.g3(), this.a.e3());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divImageTemplate.u, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB8 = sa5.B(ex7Var, divImageTemplate.v, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divImageTemplate.w, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivImageJsonParser.g;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            tp3 tp3Var8 = divImageTemplate.x;
            Expression expression6 = DivImageJsonParser.h;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var8, jSONObject, "high_priority_preview_show", zbbVar4, e74Var4, expression6);
            Expression expression7 = expressionV4 == null ? expression6 : expressionV4;
            List listB9 = sa5.B(ex7Var, divImageTemplate.y, jSONObject, "hover_end_actions", this.a.w0(), this.a.u0());
            List listB10 = sa5.B(ex7Var, divImageTemplate.z, jSONObject, "hover_start_actions", this.a.w0(), this.a.u0());
            String str = (String) sa5.m(ex7Var, divImageTemplate.A, jSONObject, TtmlNode.ATTR_ID);
            Expression expressionH = sa5.h(ex7Var, divImageTemplate.B, jSONObject, TrackingKey.IMAGE_URL, acb.e, ParsingConvertersKt.e);
            y45.i(expressionH, "resolveExpression(contex…E_HELPER_URI, ANY_TO_URI)");
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divImageTemplate.C, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            List listB11 = sa5.B(ex7Var, divImageTemplate.D, jSONObject, "longtap_actions", this.a.w0(), this.a.u0());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divImageTemplate.E, jSONObject, "margins", this.a.X2(), this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divImageTemplate.F, jSONObject, "paddings", this.a.X2(), this.a.V2());
            tp3 tp3Var9 = divImageTemplate.G;
            zbb zbbVar8 = acb.f;
            e74 e74Var6 = ParsingConvertersKt.b;
            Expression expression8 = DivImageJsonParser.i;
            Expression expressionV5 = sa5.v(ex7Var, tp3Var9, jSONObject, "placeholder_color", zbbVar8, e74Var6, expression8);
            if (expressionV5 != null) {
                expression8 = expressionV5;
            }
            tp3 tp3Var10 = divImageTemplate.H;
            Expression expression9 = DivImageJsonParser.j;
            Expression expressionV6 = sa5.v(ex7Var, tp3Var10, jSONObject, "preload_required", zbbVar4, e74Var4, expression9);
            if (expressionV6 != null) {
                expression9 = expressionV6;
            }
            List listB12 = sa5.B(ex7Var, divImageTemplate.I, jSONObject, "press_end_actions", this.a.w0(), this.a.u0());
            List listB13 = sa5.B(ex7Var, divImageTemplate.J, jSONObject, "press_start_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var11 = divImageTemplate.K;
            zbb zbbVar9 = acb.c;
            Expression expressionR = sa5.r(ex7Var, tp3Var11, jSONObject, "preview", zbbVar9);
            Expression expressionR2 = sa5.r(ex7Var, divImageTemplate.L, jSONObject, "reuse_id", zbbVar9);
            Expression expressionT2 = sa5.t(ex7Var, divImageTemplate.M, jSONObject, "row_span", zbbVar5, e74Var5, DivImageJsonParser.x);
            tp3 tp3Var12 = divImageTemplate.N;
            zbb zbbVar10 = DivImageJsonParser.s;
            e74 e74Var7 = DivImageScale.FROM_STRING;
            Expression expression10 = DivImageJsonParser.k;
            Expression expressionV7 = sa5.v(ex7Var, tp3Var12, jSONObject, "scale", zbbVar10, e74Var7, expression10);
            Expression expression11 = expressionV7 == null ? expression10 : expressionV7;
            List listB14 = sa5.B(ex7Var, divImageTemplate.O, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            Expression expressionS3 = sa5.s(ex7Var, divImageTemplate.P, jSONObject, "tint_color", zbbVar8, e74Var6);
            tp3 tp3Var13 = divImageTemplate.Q;
            zbb zbbVar11 = DivImageJsonParser.t;
            e74 e74Var8 = DivBlendMode.FROM_STRING;
            Expression expression12 = DivImageJsonParser.l;
            Expression expressionV8 = sa5.v(ex7Var, tp3Var13, jSONObject, "tint_mode", zbbVar11, e74Var8, expression12);
            Expression expression13 = expressionV8 == null ? expression12 : expressionV8;
            List listB15 = sa5.B(ex7Var, divImageTemplate.R, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divImageTemplate.S, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divImageTemplate.T, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divImageTemplate.U, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divImageTemplate.V, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divImageTemplate.W, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivImageJsonParser.y);
            List listB16 = sa5.B(ex7Var, divImageTemplate.X, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB17 = sa5.B(ex7Var, divImageTemplate.Y, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var14 = divImageTemplate.Z;
            zbb zbbVar12 = DivImageJsonParser.u;
            e74 e74Var9 = DivVisibility.FROM_STRING;
            Expression expression14 = DivImageJsonParser.m;
            Expression expressionV9 = sa5.v(ex7Var, tp3Var14, jSONObject, "visibility", zbbVar12, e74Var9, expression14);
            Expression expression15 = expressionV9 == null ? expression14 : expressionV9;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divImageTemplate.a0, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB18 = sa5.B(ex7Var, divImageTemplate.b0, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divImageTemplate.c0, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivImageJsonParser.n;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivImage(divAccessibility, divAction, divAnimation2, listB, expressionS, expressionS2, expression, listB2, divFadeTransition, divAspect, listB3, divBorder, expression2, expressionT, expression3, expression5, listB4, listB5, listB6, listB7, divFocus, listB8, divSize2, expression7, listB9, listB10, str, expressionH, divLayoutProvider, listB11, divEdgeInsets, divEdgeInsets2, expression8, expression9, listB12, listB13, expressionR, expressionR2, expressionT2, expression11, listB14, expressionS3, expression13, listB15, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB16, listB17, expression15, divVisibilityAction, listB18, divSize3);
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
        Boolean bool = Boolean.FALSE;
        h = aVar.a(bool);
        i = aVar.a(335544320);
        j = aVar.a(bool);
        k = aVar.a(DivImageScale.FILL);
        l = aVar.a(DivBlendMode.SOURCE_IN);
        m = aVar.a(DivVisibility.VISIBLE);
        n = new DivSize.c(new DivMatchParentSize(null, 1, null));
        zbb.a aVar2 = zbb.a;
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
        q = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        r = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        s = aVar2.a(hi.W(DivImageScale.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivImageScale);
            }
        });
        t = aVar2.a(hi.W(DivBlendMode.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivBlendMode);
            }
        });
        u = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        v = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivImageJsonParser.e(((Double) obj).doubleValue());
            }
        };
        w = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivImageJsonParser.f(((Long) obj).longValue());
            }
        };
        x = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivImageJsonParser.g(((Long) obj).longValue());
            }
        };
        y = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivImageJsonParser.h(list);
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
