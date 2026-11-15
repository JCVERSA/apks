package com.yandex.div2;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivTextJsonParser;
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

public abstract class DivTextJsonParser {
    public static final zbb A;
    public static final zbb B;
    public static final zbb C;
    public static final pnb D;
    public static final pnb E;
    public static final pnb F;
    public static final pnb G;
    public static final pnb H;
    public static final pnb I;
    public static final pnb J;
    public static final pnb K;
    public static final hm5 L;
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
    public static final Expression l;
    public static final Expression m;
    public static final Expression n;
    public static final Expression o;
    public static final Expression p;
    public static final Expression q;
    public static final Expression r;
    public static final DivSize.c s;
    public static final zbb t;
    public static final zbb u;
    public static final zbb v;
    public static final zbb w;
    public static final zbb x;
    public static final zbb y;
    public static final zbb z;

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
        public DivText a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            DivAction divAction = (DivAction) tb5.n(ex7Var, jSONObject, "action", this.a.u0());
            DivAnimation divAnimation = (DivAnimation) tb5.n(ex7Var, jSONObject, "action_animation", this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivTextJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonPropertyParser.readO…N_ANIMATION_DEFAULT_VALUE");
            List listR = tb5.r(ex7Var, jSONObject, "actions", this.a.u0());
            zbb zbbVar = DivTextJsonParser.t;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", zbbVar, e74Var);
            zbb zbbVar2 = DivTextJsonParser.u;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", zbbVar2, e74Var2);
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar = DivTextJsonParser.D;
            Expression expression = DivTextJsonParser.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar3, e74Var3, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR2 = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expressionI3 = pa5.i(ex7Var, jSONObject, "auto_ellipsize", zbbVar4, e74Var4);
            List listR3 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            Expression expression2 = DivTextJsonParser.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "capture_focus_on_action", zbbVar4, e74Var4, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            zbb zbbVar5 = acb.b;
            e74 e74Var5 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar5, e74Var5, DivTextJsonParser.E);
            List listR4 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR5 = tb5.r(ex7Var, jSONObject, "doubletap_actions", this.a.u0());
            DivText.Ellipsis ellipsis = (DivText.Ellipsis) tb5.n(ex7Var, jSONObject, "ellipsis", this.a.X7());
            List listR6 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            zbb zbbVar6 = acb.f;
            e74 e74Var6 = ParsingConvertersKt.b;
            Expression expressionI4 = pa5.i(ex7Var, jSONObject, "focused_text_color", zbbVar6, e74Var6);
            zbb zbbVar7 = acb.c;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "font_family", zbbVar7);
            Expression expressionH2 = pa5.h(ex7Var, jSONObject, "font_feature_settings", zbbVar7);
            pnb pnbVar2 = DivTextJsonParser.F;
            Expression expression3 = DivTextJsonParser.e;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "font_size", zbbVar5, e74Var5, pnbVar2, expression3);
            if (expressionK2 != null) {
                expression3 = expressionK2;
            }
            zbb zbbVar8 = DivTextJsonParser.v;
            e74 e74Var7 = DivSizeUnit.FROM_STRING;
            Expression expression4 = DivTextJsonParser.f;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "font_size_unit", zbbVar8, e74Var7, expression4);
            Expression expression5 = expressionL2 == null ? expression4 : expressionL2;
            Expression expressionH3 = pa5.h(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h);
            zbb zbbVar9 = DivTextJsonParser.w;
            e74 e74Var8 = DivFontWeight.FROM_STRING;
            Expression expression6 = DivTextJsonParser.g;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, zbbVar9, e74Var8, expression6);
            Expression expression7 = expressionL3 == null ? expression6 : expressionL3;
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "font_weight_value", zbbVar5, e74Var5, DivTextJsonParser.G);
            List listR7 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivTextJsonParser.h;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            List listR8 = tb5.r(ex7Var, jSONObject, "hover_end_actions", this.a.u0());
            List listR9 = tb5.r(ex7Var, jSONObject, "hover_start_actions", this.a.u0());
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            List listR10 = tb5.r(ex7Var, jSONObject, "images", this.a.g8());
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            Expression expression8 = DivTextJsonParser.i;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "letter_spacing", zbbVar3, e74Var3, expression8);
            if (expressionL4 != null) {
                expression8 = expressionL4;
            }
            Expression expressionJ3 = pa5.j(ex7Var, jSONObject, "line_height", zbbVar5, e74Var5, DivTextJsonParser.H);
            List listR11 = tb5.r(ex7Var, jSONObject, "longtap_actions", this.a.u0());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            Expression expressionJ4 = pa5.j(ex7Var, jSONObject, "max_lines", zbbVar5, e74Var5, DivTextJsonParser.I);
            Expression expressionJ5 = pa5.j(ex7Var, jSONObject, "min_hidden_lines", zbbVar5, e74Var5, DivTextJsonParser.J);
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            List listR12 = tb5.r(ex7Var, jSONObject, "press_end_actions", this.a.u0());
            List listR13 = tb5.r(ex7Var, jSONObject, "press_start_actions", this.a.u0());
            List listR14 = tb5.r(ex7Var, jSONObject, "ranges", this.a.s8());
            Expression expressionH4 = pa5.h(ex7Var, jSONObject, "reuse_id", zbbVar7);
            Expression expressionJ6 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar5, e74Var5, DivTextJsonParser.K);
            Expression expression9 = DivTextJsonParser.j;
            Expression expressionL5 = pa5.l(ex7Var, jSONObject, "selectable", zbbVar4, e74Var4, expression9);
            Expression expression10 = expressionL5 == null ? expression9 : expressionL5;
            List listR15 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            zbb zbbVar10 = DivTextJsonParser.x;
            e74 e74Var9 = DivLineStyle.FROM_STRING;
            Expression expression11 = DivTextJsonParser.k;
            Expression expressionL6 = pa5.l(ex7Var, jSONObject, "strike", zbbVar10, e74Var9, expression11);
            Expression expression12 = expressionL6 == null ? expression11 : expressionL6;
            Expression expressionD = pa5.d(ex7Var, jSONObject, "text", zbbVar7);
            y45.i(expressionD, "readExpression(context, …ext\", TYPE_HELPER_STRING)");
            zbb zbbVar11 = DivTextJsonParser.y;
            Expression expression13 = DivTextJsonParser.l;
            Expression expressionL7 = pa5.l(ex7Var, jSONObject, "text_alignment_horizontal", zbbVar11, e74Var, expression13);
            Expression expression14 = expressionL7 == null ? expression13 : expressionL7;
            zbb zbbVar12 = DivTextJsonParser.z;
            Expression expression15 = DivTextJsonParser.m;
            Expression expressionL8 = pa5.l(ex7Var, jSONObject, "text_alignment_vertical", zbbVar12, e74Var2, expression15);
            Expression expression16 = expressionL8 == null ? expression15 : expressionL8;
            Expression expression17 = DivTextJsonParser.n;
            Expression expressionL9 = pa5.l(ex7Var, jSONObject, "text_color", zbbVar6, e74Var6, expression17);
            Expression expression18 = expressionL9 == null ? expression17 : expressionL9;
            DivTextGradient divTextGradient = (DivTextGradient) tb5.n(ex7Var, jSONObject, "text_gradient", this.a.a8());
            DivShadow divShadow = (DivShadow) tb5.n(ex7Var, jSONObject, "text_shadow", this.a.M6());
            Expression expression19 = DivTextJsonParser.o;
            Expression expressionL10 = pa5.l(ex7Var, jSONObject, "tighten_width", zbbVar4, e74Var4, expression19);
            Expression expression20 = expressionL10 == null ? expression19 : expressionL10;
            List listR16 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivTextJsonParser.L);
            zbb zbbVar13 = DivTextJsonParser.A;
            e74 e74Var10 = DivText.Truncate.FROM_STRING;
            Expression expression21 = DivTextJsonParser.p;
            Expression expressionL11 = pa5.l(ex7Var, jSONObject, "truncate", zbbVar13, e74Var10, expression21);
            Expression expression22 = expressionL11 == null ? expression21 : expressionL11;
            zbb zbbVar14 = DivTextJsonParser.B;
            Expression expression23 = DivTextJsonParser.q;
            Expression expressionL12 = pa5.l(ex7Var, jSONObject, TtmlNode.UNDERLINE, zbbVar14, e74Var9, expression23);
            Expression expression24 = expressionL12 == null ? expression23 : expressionL12;
            List listR17 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR18 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar15 = DivTextJsonParser.C;
            e74 e74Var11 = DivVisibility.FROM_STRING;
            Expression expression25 = DivTextJsonParser.r;
            Expression expressionL13 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar15, e74Var11, expression25);
            if (expressionL13 == null) {
                expressionL13 = expression25;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR19 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivTextJsonParser.s;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivText(divAccessibility, divAction, divAnimation2, listR, expressionI, expressionI2, expression, listR2, expressionI3, listR3, divBorder, expression2, expressionJ, listR4, listR5, ellipsis, listR6, divFocus, expressionI4, expressionH, expressionH2, expression3, expression5, expressionH3, expression7, expressionJ2, listR7, divSize2, listR8, listR9, str, listR10, divLayoutProvider, expression8, expressionJ3, listR11, divEdgeInsets, expressionJ4, expressionJ5, divEdgeInsets2, listR12, listR13, listR14, expressionH4, expressionJ6, expression10, listR15, expression12, expressionD, expression14, expression16, expression18, divTextGradient, divShadow, expression20, listR16, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, expression22, expression24, listR17, listR18, expressionL13, divVisibilityAction, listR19, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivText divText) {
            y45.j(ex7Var, "context");
            y45.j(divText, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divText.r(), this.a.H());
            tb5.x(ex7Var, jSONObject, "action", divText.b, this.a.u0());
            tb5.x(ex7Var, jSONObject, "action_animation", divText.c, this.a.n1());
            tb5.z(ex7Var, jSONObject, "actions", divText.d, this.a.u0());
            Expression expressionG = divText.g();
            e74 e74Var = DivAlignmentHorizontal.TO_STRING;
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", expressionG, e74Var);
            Expression expressionO = divText.o();
            e74 e74Var2 = DivAlignmentVertical.TO_STRING;
            pa5.q(ex7Var, jSONObject, "alignment_vertical", expressionO, e74Var2);
            pa5.p(ex7Var, jSONObject, "alpha", divText.p());
            tb5.z(ex7Var, jSONObject, "animators", divText.A(), this.a.q1());
            pa5.p(ex7Var, jSONObject, "auto_ellipsize", divText.i);
            tb5.z(ex7Var, jSONObject, "background", divText.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divText.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "capture_focus_on_action", divText.l);
            pa5.p(ex7Var, jSONObject, "column_span", divText.b());
            tb5.z(ex7Var, jSONObject, "disappear_actions", divText.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "doubletap_actions", divText.o, this.a.u0());
            tb5.x(ex7Var, jSONObject, "ellipsis", divText.p, this.a.X7());
            tb5.z(ex7Var, jSONObject, "extensions", divText.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divText.q(), this.a.w3());
            Expression expression = divText.s;
            e74 e74Var3 = ParsingConvertersKt.a;
            pa5.q(ex7Var, jSONObject, "focused_text_color", expression, e74Var3);
            pa5.p(ex7Var, jSONObject, "font_family", divText.t);
            pa5.p(ex7Var, jSONObject, "font_feature_settings", divText.u);
            pa5.p(ex7Var, jSONObject, "font_size", divText.v);
            pa5.q(ex7Var, jSONObject, "font_size_unit", divText.w, DivSizeUnit.TO_STRING);
            pa5.p(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, divText.x);
            pa5.q(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, divText.y, DivFontWeight.TO_STRING);
            pa5.p(ex7Var, jSONObject, "font_weight_value", divText.z);
            tb5.z(ex7Var, jSONObject, "functions", divText.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divText.getHeight(), this.a.V6());
            tb5.z(ex7Var, jSONObject, "hover_end_actions", divText.C, this.a.u0());
            tb5.z(ex7Var, jSONObject, "hover_start_actions", divText.D, this.a.u0());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divText.getId());
            tb5.z(ex7Var, jSONObject, "images", divText.F, this.a.g8());
            tb5.x(ex7Var, jSONObject, "layout_provider", divText.v(), this.a.M4());
            pa5.p(ex7Var, jSONObject, "letter_spacing", divText.H);
            pa5.p(ex7Var, jSONObject, "line_height", divText.I);
            tb5.z(ex7Var, jSONObject, "longtap_actions", divText.J, this.a.u0());
            tb5.x(ex7Var, jSONObject, "margins", divText.d(), this.a.V2());
            pa5.p(ex7Var, jSONObject, "max_lines", divText.L);
            pa5.p(ex7Var, jSONObject, "min_hidden_lines", divText.M);
            tb5.x(ex7Var, jSONObject, "paddings", divText.t(), this.a.V2());
            tb5.z(ex7Var, jSONObject, "press_end_actions", divText.O, this.a.u0());
            tb5.z(ex7Var, jSONObject, "press_start_actions", divText.P, this.a.u0());
            tb5.z(ex7Var, jSONObject, "ranges", divText.Q, this.a.s8());
            pa5.p(ex7Var, jSONObject, "reuse_id", divText.f());
            pa5.p(ex7Var, jSONObject, "row_span", divText.e());
            pa5.p(ex7Var, jSONObject, "selectable", divText.T);
            tb5.z(ex7Var, jSONObject, "selected_actions", divText.u(), this.a.u0());
            Expression expression2 = divText.V;
            e74 e74Var4 = DivLineStyle.TO_STRING;
            pa5.q(ex7Var, jSONObject, "strike", expression2, e74Var4);
            pa5.p(ex7Var, jSONObject, "text", divText.W);
            pa5.q(ex7Var, jSONObject, "text_alignment_horizontal", divText.X, e74Var);
            pa5.q(ex7Var, jSONObject, "text_alignment_vertical", divText.Y, e74Var2);
            pa5.q(ex7Var, jSONObject, "text_color", divText.Z, e74Var3);
            tb5.x(ex7Var, jSONObject, "text_gradient", divText.a0, this.a.a8());
            tb5.x(ex7Var, jSONObject, "text_shadow", divText.b0, this.a.M6());
            pa5.p(ex7Var, jSONObject, "tighten_width", divText.c0);
            tb5.z(ex7Var, jSONObject, "tooltips", divText.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divText.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divText.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divText.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divText.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divText.n(), DivTransitionTrigger.TO_STRING);
            pa5.q(ex7Var, jSONObject, "truncate", divText.j0, DivText.Truncate.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "text");
            pa5.q(ex7Var, jSONObject, TtmlNode.UNDERLINE, divText.k0, e74Var4);
            tb5.z(ex7Var, jSONObject, "variable_triggers", divText.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divText.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divText.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divText.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divText.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divText.getWidth(), this.a.V6());
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
        public DivTextTemplate c(ex7 ex7Var, DivTextTemplate divTextTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divTextTemplate != null ? divTextTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "action", zC, divTextTemplate != null ? divTextTemplate.b : null, this.a.v0());
            y45.i(tp3VarS2, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "action_animation", zC, divTextTemplate != null ? divTextTemplate.c : null, this.a.o1());
            y45.i(tp3VarS3, "readOptionalField(contex…mationJsonTemplateParser)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "actions", zC, divTextTemplate != null ? divTextTemplate.d : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            zbb zbbVar = DivTextJsonParser.t;
            tp3 tp3Var = divTextTemplate != null ? divTextTemplate.e : null;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            zbb zbbVar2 = DivTextJsonParser.u;
            tp3 tp3Var2 = divTextTemplate != null ? divTextTemplate.f : null;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            zbb zbbVar3 = acb.d;
            tp3 tp3Var3 = divTextTemplate != null ? divTextTemplate.g : null;
            e74 e74Var3 = ParsingConvertersKt.g;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", zbbVar3, zC, tp3Var3, e74Var3, DivTextJsonParser.D);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "animators", zC, divTextTemplate != null ? divTextTemplate.h : null, this.a.r1());
            y45.i(tp3VarZ2, "readOptionalListField(co…imatorJsonTemplateParser)");
            zbb zbbVar4 = acb.a;
            tp3 tp3Var4 = divTextTemplate != null ? divTextTemplate.i : null;
            e74 e74Var4 = ParsingConvertersKt.f;
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "auto_ellipsize", zbbVar4, zC, tp3Var4, e74Var4);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…llipsize, ANY_TO_BOOLEAN)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "background", zC, divTextTemplate != null ? divTextTemplate.j : null, this.a.D1());
            y45.i(tp3VarZ3, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "border", zC, divTextTemplate != null ? divTextTemplate.k : null, this.a.J1());
            y45.i(tp3VarS4, "readOptionalField(contex…BorderJsonTemplateParser)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "capture_focus_on_action", zbbVar4, zC, divTextTemplate != null ? divTextTemplate.l : null, e74Var4);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…OnAction, ANY_TO_BOOLEAN)");
            zbb zbbVar5 = acb.b;
            tp3 tp3Var5 = divTextTemplate != null ? divTextTemplate.m : null;
            e74 e74Var5 = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar5, zC, tp3Var5, e74Var5, DivTextJsonParser.E);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divTextTemplate != null ? divTextTemplate.n : null, this.a.N2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "doubletap_actions", zC, divTextTemplate != null ? divTextTemplate.o : null, this.a.v0());
            y45.i(tp3VarZ5, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "ellipsis", zC, divTextTemplate != null ? divTextTemplate.p : null, this.a.Y7());
            y45.i(tp3VarS5, "readOptionalField(contex…lipsisJsonTemplateParser)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divTextTemplate != null ? divTextTemplate.q : null, this.a.Z2());
            y45.i(tp3VarZ6, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "focus", zC, divTextTemplate != null ? divTextTemplate.r : null, this.a.x3());
            y45.i(tp3VarS6, "readOptionalField(contex…vFocusJsonTemplateParser)");
            zbb zbbVar6 = acb.f;
            tp3 tp3Var6 = divTextTemplate != null ? divTextTemplate.s : null;
            e74 e74Var6 = ParsingConvertersKt.b;
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "focused_text_color", zbbVar6, zC, tp3Var6, e74Var6);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            zbb zbbVar7 = acb.c;
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "font_family", zbbVar7, zC, divTextTemplate != null ? divTextTemplate.t : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…ride, parent?.fontFamily)");
            tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, "font_feature_settings", zbbVar7, zC, divTextTemplate != null ? divTextTemplate.u : null);
            y45.i(tp3VarT2, "readOptionalFieldWithExp…ent?.fontFeatureSettings)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "font_size", zbbVar5, zC, divTextTemplate != null ? divTextTemplate.v : null, e74Var5, DivTextJsonParser.F);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…INT, FONT_SIZE_VALIDATOR)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "font_size_unit", DivTextJsonParser.v, zC, divTextTemplate != null ? divTextTemplate.w : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU6, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            tp3 tp3VarT3 = ra5.t(ex7VarC, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h, zC, divTextTemplate != null ? divTextTemplate.x : null);
            y45.i(tp3VarT3, "readOptionalFieldWithExp…t?.fontVariationSettings)");
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, FontsContractCompat.Columns.WEIGHT, DivTextJsonParser.w, zC, divTextTemplate != null ? divTextTemplate.y : null, DivFontWeight.FROM_STRING);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…ivFontWeight.FROM_STRING)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "font_weight_value", zbbVar5, zC, divTextTemplate != null ? divTextTemplate.z : null, e74Var5, DivTextJsonParser.G);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…T_WEIGHT_VALUE_VALIDATOR)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "functions", zC, divTextTemplate != null ? divTextTemplate.A : null, this.a.G3());
            y45.i(tp3VarZ7, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "height", zC, divTextTemplate != null ? divTextTemplate.B : null, this.a.W6());
            y45.i(tp3VarS7, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "hover_end_actions", zC, divTextTemplate != null ? divTextTemplate.C : null, this.a.v0());
            y45.i(tp3VarZ8, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "hover_start_actions", zC, divTextTemplate != null ? divTextTemplate.D : null, this.a.v0());
            y45.i(tp3VarZ9, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divTextTemplate != null ? divTextTemplate.E : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "images", zC, divTextTemplate != null ? divTextTemplate.F : null, this.a.h8());
            y45.i(tp3VarZ10, "readOptionalListField(co…tImageJsonTemplateParser)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divTextTemplate != null ? divTextTemplate.G : null, this.a.N4());
            y45.i(tp3VarS8, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, "letter_spacing", zbbVar3, zC, divTextTemplate != null ? divTextTemplate.H : null, e74Var3);
            y45.i(tp3VarU8, "readOptionalFieldWithExp…pacing, NUMBER_TO_DOUBLE)");
            tp3 tp3VarV5 = ra5.v(ex7VarC, jSONObject, "line_height", zbbVar5, zC, divTextTemplate != null ? divTextTemplate.I : null, e74Var5, DivTextJsonParser.H);
            y45.i(tp3VarV5, "readOptionalFieldWithExp…T, LINE_HEIGHT_VALIDATOR)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "longtap_actions", zC, divTextTemplate != null ? divTextTemplate.J : null, this.a.v0());
            y45.i(tp3VarZ11, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "margins", zC, divTextTemplate != null ? divTextTemplate.K : null, this.a.W2());
            y45.i(tp3VarS9, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarV6 = ra5.v(ex7VarC, jSONObject, "max_lines", zbbVar5, zC, divTextTemplate != null ? divTextTemplate.L : null, e74Var5, DivTextJsonParser.I);
            y45.i(tp3VarV6, "readOptionalFieldWithExp…INT, MAX_LINES_VALIDATOR)");
            tp3 tp3VarV7 = ra5.v(ex7VarC, jSONObject, "min_hidden_lines", zbbVar5, zC, divTextTemplate != null ? divTextTemplate.M : null, e74Var5, DivTextJsonParser.J);
            y45.i(tp3VarV7, "readOptionalFieldWithExp…N_HIDDEN_LINES_VALIDATOR)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divTextTemplate != null ? divTextTemplate.N : null, this.a.W2());
            y45.i(tp3VarS10, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarZ12 = ra5.z(ex7VarC, jSONObject, "press_end_actions", zC, divTextTemplate != null ? divTextTemplate.O : null, this.a.v0());
            y45.i(tp3VarZ12, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ13 = ra5.z(ex7VarC, jSONObject, "press_start_actions", zC, divTextTemplate != null ? divTextTemplate.P : null, this.a.v0());
            y45.i(tp3VarZ13, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ14 = ra5.z(ex7VarC, jSONObject, "ranges", zC, divTextTemplate != null ? divTextTemplate.Q : null, this.a.t8());
            y45.i(tp3VarZ14, "readOptionalListField(co…tRangeJsonTemplateParser)");
            tp3 tp3VarT4 = ra5.t(ex7VarC, jSONObject, "reuse_id", zbbVar7, zC, divTextTemplate != null ? divTextTemplate.R : null);
            y45.i(tp3VarT4, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV8 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar5, zC, divTextTemplate != null ? divTextTemplate.S : null, e74Var5, DivTextJsonParser.K);
            y45.i(tp3VarV8, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarU9 = ra5.u(ex7VarC, jSONObject, "selectable", zbbVar4, zC, divTextTemplate != null ? divTextTemplate.T : null, e74Var4);
            y45.i(tp3VarU9, "readOptionalFieldWithExp…lectable, ANY_TO_BOOLEAN)");
            tp3 tp3VarZ15 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divTextTemplate != null ? divTextTemplate.U : null, this.a.v0());
            y45.i(tp3VarZ15, "readOptionalListField(co…ActionJsonTemplateParser)");
            zbb zbbVar8 = DivTextJsonParser.x;
            tp3 tp3Var7 = divTextTemplate != null ? divTextTemplate.V : null;
            e74 e74Var7 = DivLineStyle.FROM_STRING;
            tp3 tp3VarU10 = ra5.u(ex7VarC, jSONObject, "strike", zbbVar8, zC, tp3Var7, e74Var7);
            y45.i(tp3VarU10, "readOptionalFieldWithExp…DivLineStyle.FROM_STRING)");
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "text", zbbVar7, zC, divTextTemplate != null ? divTextTemplate.W : null);
            y45.i(tp3VarH, "readFieldWithExpression(…owOverride, parent?.text)");
            tp3 tp3VarU11 = ra5.u(ex7VarC, jSONObject, "text_alignment_horizontal", DivTextJsonParser.y, zC, divTextTemplate != null ? divTextTemplate.X : null, e74Var);
            y45.i(tp3VarU11, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU12 = ra5.u(ex7VarC, jSONObject, "text_alignment_vertical", DivTextJsonParser.z, zC, divTextTemplate != null ? divTextTemplate.Y : null, e74Var2);
            y45.i(tp3VarU12, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarU13 = ra5.u(ex7VarC, jSONObject, "text_color", zbbVar6, zC, divTextTemplate != null ? divTextTemplate.Z : null, e74Var6);
            y45.i(tp3VarU13, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "text_gradient", zC, divTextTemplate != null ? divTextTemplate.a0 : null, this.a.b8());
            y45.i(tp3VarS11, "readOptionalField(contex…adientJsonTemplateParser)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "text_shadow", zC, divTextTemplate != null ? divTextTemplate.b0 : null, this.a.N6());
            y45.i(tp3VarS12, "readOptionalField(contex…ShadowJsonTemplateParser)");
            tp3 tp3VarU14 = ra5.u(ex7VarC, jSONObject, "tighten_width", zbbVar4, zC, divTextTemplate != null ? divTextTemplate.c0 : null, e74Var4);
            y45.i(tp3VarU14, "readOptionalFieldWithExp…tenWidth, ANY_TO_BOOLEAN)");
            tp3 tp3VarZ16 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divTextTemplate != null ? divTextTemplate.d0 : null, this.a.K8());
            y45.i(tp3VarZ16, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "transform", zC, divTextTemplate != null ? divTextTemplate.e0 : null, this.a.W8());
            y45.i(tp3VarS13, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divTextTemplate != null ? divTextTemplate.f0 : null, this.a.S1());
            y45.i(tp3VarS14, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS15 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divTextTemplate != null ? divTextTemplate.g0 : null, this.a.x1());
            y45.i(tp3VarS15, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS16 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divTextTemplate != null ? divTextTemplate.h0 : null, this.a.x1());
            y45.i(tp3VarS16, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var8 = divTextTemplate != null ? divTextTemplate.i0 : null;
            e74 e74Var8 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivTextJsonParser.L;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var8, e74Var8, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarU15 = ra5.u(ex7VarC, jSONObject, "truncate", DivTextJsonParser.A, zC, divTextTemplate != null ? divTextTemplate.j0 : null, DivText.Truncate.FROM_STRING);
            y45.i(tp3VarU15, "readOptionalFieldWithExp…ext.Truncate.FROM_STRING)");
            tp3 tp3VarU16 = ra5.u(ex7VarC, jSONObject, TtmlNode.UNDERLINE, DivTextJsonParser.B, zC, divTextTemplate != null ? divTextTemplate.k0 : null, e74Var7);
            y45.i(tp3VarU16, "readOptionalFieldWithExp…DivLineStyle.FROM_STRING)");
            tp3 tp3VarZ17 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divTextTemplate != null ? divTextTemplate.l0 : null, this.a.Z8());
            y45.i(tp3VarZ17, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ18 = ra5.z(ex7VarC, jSONObject, "variables", zC, divTextTemplate != null ? divTextTemplate.m0 : null, this.a.f9());
            y45.i(tp3VarZ18, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU17 = ra5.u(ex7VarC, jSONObject, "visibility", DivTextJsonParser.C, zC, divTextTemplate != null ? divTextTemplate.n0 : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU17, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS17 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divTextTemplate != null ? divTextTemplate.o0 : null, this.a.r9());
            y45.i(tp3VarS17, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ19 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divTextTemplate != null ? divTextTemplate.p0 : null, this.a.r9());
            y45.i(tp3VarZ19, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS18 = ra5.s(ex7VarC, jSONObject, "width", zC, divTextTemplate != null ? divTextTemplate.q0 : null, this.a.W6());
            y45.i(tp3VarS18, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivTextTemplate(tp3VarS, tp3VarS2, tp3VarS3, tp3VarZ, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ2, tp3VarU3, tp3VarZ3, tp3VarS4, tp3VarU4, tp3VarV2, tp3VarZ4, tp3VarZ5, tp3VarS5, tp3VarZ6, tp3VarS6, tp3VarU5, tp3VarT, tp3VarT2, tp3VarV3, tp3VarU6, tp3VarT3, tp3VarU7, tp3VarV4, tp3VarZ7, tp3VarS7, tp3VarZ8, tp3VarZ9, tp3VarP, tp3VarZ10, tp3VarS8, tp3VarU8, tp3VarV5, tp3VarZ11, tp3VarS9, tp3VarV6, tp3VarV7, tp3VarS10, tp3VarZ12, tp3VarZ13, tp3VarZ14, tp3VarT4, tp3VarV8, tp3VarU9, tp3VarZ15, tp3VarU10, tp3VarH, tp3VarU11, tp3VarU12, tp3VarU13, tp3VarS11, tp3VarS12, tp3VarU14, tp3VarZ16, tp3VarS13, tp3VarS14, tp3VarS15, tp3VarS16, tp3VarX, tp3VarU15, tp3VarU16, tp3VarZ17, tp3VarZ18, tp3VarU17, tp3VarS17, tp3VarZ19, tp3VarS18);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextTemplate divTextTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divTextTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divTextTemplate.a, this.a.I());
            ra5.I(ex7Var, jSONObject, "action", divTextTemplate.b, this.a.v0());
            ra5.I(ex7Var, jSONObject, "action_animation", divTextTemplate.c, this.a.o1());
            ra5.K(ex7Var, jSONObject, "actions", divTextTemplate.d, this.a.v0());
            tp3 tp3Var = divTextTemplate.e;
            e74 e74Var = DivAlignmentHorizontal.TO_STRING;
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", tp3Var, e74Var);
            tp3 tp3Var2 = divTextTemplate.f;
            e74 e74Var2 = DivAlignmentVertical.TO_STRING;
            ra5.E(ex7Var, jSONObject, "alignment_vertical", tp3Var2, e74Var2);
            ra5.D(ex7Var, jSONObject, "alpha", divTextTemplate.g);
            ra5.K(ex7Var, jSONObject, "animators", divTextTemplate.h, this.a.r1());
            ra5.D(ex7Var, jSONObject, "auto_ellipsize", divTextTemplate.i);
            ra5.K(ex7Var, jSONObject, "background", divTextTemplate.j, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divTextTemplate.k, this.a.J1());
            ra5.D(ex7Var, jSONObject, "capture_focus_on_action", divTextTemplate.l);
            ra5.D(ex7Var, jSONObject, "column_span", divTextTemplate.m);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divTextTemplate.n, this.a.N2());
            ra5.K(ex7Var, jSONObject, "doubletap_actions", divTextTemplate.o, this.a.v0());
            ra5.I(ex7Var, jSONObject, "ellipsis", divTextTemplate.p, this.a.Y7());
            ra5.K(ex7Var, jSONObject, "extensions", divTextTemplate.q, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divTextTemplate.r, this.a.x3());
            tp3 tp3Var3 = divTextTemplate.s;
            e74 e74Var3 = ParsingConvertersKt.a;
            ra5.E(ex7Var, jSONObject, "focused_text_color", tp3Var3, e74Var3);
            ra5.D(ex7Var, jSONObject, "font_family", divTextTemplate.t);
            ra5.D(ex7Var, jSONObject, "font_feature_settings", divTextTemplate.u);
            ra5.D(ex7Var, jSONObject, "font_size", divTextTemplate.v);
            ra5.E(ex7Var, jSONObject, "font_size_unit", divTextTemplate.w, DivSizeUnit.TO_STRING);
            ra5.D(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, divTextTemplate.x);
            ra5.E(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, divTextTemplate.y, DivFontWeight.TO_STRING);
            ra5.D(ex7Var, jSONObject, "font_weight_value", divTextTemplate.z);
            ra5.K(ex7Var, jSONObject, "functions", divTextTemplate.A, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divTextTemplate.B, this.a.W6());
            ra5.K(ex7Var, jSONObject, "hover_end_actions", divTextTemplate.C, this.a.v0());
            ra5.K(ex7Var, jSONObject, "hover_start_actions", divTextTemplate.D, this.a.v0());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divTextTemplate.E);
            ra5.K(ex7Var, jSONObject, "images", divTextTemplate.F, this.a.h8());
            ra5.I(ex7Var, jSONObject, "layout_provider", divTextTemplate.G, this.a.N4());
            ra5.D(ex7Var, jSONObject, "letter_spacing", divTextTemplate.H);
            ra5.D(ex7Var, jSONObject, "line_height", divTextTemplate.I);
            ra5.K(ex7Var, jSONObject, "longtap_actions", divTextTemplate.J, this.a.v0());
            ra5.I(ex7Var, jSONObject, "margins", divTextTemplate.K, this.a.W2());
            ra5.D(ex7Var, jSONObject, "max_lines", divTextTemplate.L);
            ra5.D(ex7Var, jSONObject, "min_hidden_lines", divTextTemplate.M);
            ra5.I(ex7Var, jSONObject, "paddings", divTextTemplate.N, this.a.W2());
            ra5.K(ex7Var, jSONObject, "press_end_actions", divTextTemplate.O, this.a.v0());
            ra5.K(ex7Var, jSONObject, "press_start_actions", divTextTemplate.P, this.a.v0());
            ra5.K(ex7Var, jSONObject, "ranges", divTextTemplate.Q, this.a.t8());
            ra5.D(ex7Var, jSONObject, "reuse_id", divTextTemplate.R);
            ra5.D(ex7Var, jSONObject, "row_span", divTextTemplate.S);
            ra5.D(ex7Var, jSONObject, "selectable", divTextTemplate.T);
            ra5.K(ex7Var, jSONObject, "selected_actions", divTextTemplate.U, this.a.v0());
            tp3 tp3Var4 = divTextTemplate.V;
            e74 e74Var4 = DivLineStyle.TO_STRING;
            ra5.E(ex7Var, jSONObject, "strike", tp3Var4, e74Var4);
            ra5.D(ex7Var, jSONObject, "text", divTextTemplate.W);
            ra5.E(ex7Var, jSONObject, "text_alignment_horizontal", divTextTemplate.X, e74Var);
            ra5.E(ex7Var, jSONObject, "text_alignment_vertical", divTextTemplate.Y, e74Var2);
            ra5.E(ex7Var, jSONObject, "text_color", divTextTemplate.Z, e74Var3);
            ra5.I(ex7Var, jSONObject, "text_gradient", divTextTemplate.a0, this.a.b8());
            ra5.I(ex7Var, jSONObject, "text_shadow", divTextTemplate.b0, this.a.N6());
            ra5.D(ex7Var, jSONObject, "tighten_width", divTextTemplate.c0);
            ra5.K(ex7Var, jSONObject, "tooltips", divTextTemplate.d0, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divTextTemplate.e0, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divTextTemplate.f0, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divTextTemplate.g0, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divTextTemplate.h0, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divTextTemplate.i0, DivTransitionTrigger.TO_STRING);
            ra5.E(ex7Var, jSONObject, "truncate", divTextTemplate.j0, DivText.Truncate.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "text");
            ra5.E(ex7Var, jSONObject, TtmlNode.UNDERLINE, divTextTemplate.k0, e74Var4);
            ra5.K(ex7Var, jSONObject, "variable_triggers", divTextTemplate.l0, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divTextTemplate.m0, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divTextTemplate.n0, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divTextTemplate.o0, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divTextTemplate.p0, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divTextTemplate.q0, this.a.W6());
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
        public DivText a(ex7 ex7Var, DivTextTemplate divTextTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divTextTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divTextTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            DivAction divAction = (DivAction) sa5.p(ex7Var, divTextTemplate.b, jSONObject, "action", this.a.w0(), this.a.u0());
            DivAnimation divAnimation = (DivAnimation) sa5.p(ex7Var, divTextTemplate.c, jSONObject, "action_animation", this.a.p1(), this.a.n1());
            if (divAnimation == null) {
                divAnimation = DivTextJsonParser.b;
            }
            DivAnimation divAnimation2 = divAnimation;
            y45.i(divAnimation2, "JsonFieldResolver.resolv…N_ANIMATION_DEFAULT_VALUE");
            List listB = sa5.B(ex7Var, divTextTemplate.d, jSONObject, "actions", this.a.w0(), this.a.u0());
            tp3 tp3Var = divTextTemplate.e;
            zbb zbbVar = DivTextJsonParser.t;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            Expression expressionS = sa5.s(ex7Var, tp3Var, jSONObject, "alignment_horizontal", zbbVar, e74Var);
            tp3 tp3Var2 = divTextTemplate.f;
            zbb zbbVar2 = DivTextJsonParser.u;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            Expression expressionS2 = sa5.s(ex7Var, tp3Var2, jSONObject, "alignment_vertical", zbbVar2, e74Var2);
            tp3 tp3Var3 = divTextTemplate.g;
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar = DivTextJsonParser.D;
            Expression expression = DivTextJsonParser.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var3, jSONObject, "alpha", zbbVar3, e74Var3, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB2 = sa5.B(ex7Var, divTextTemplate.h, jSONObject, "animators", this.a.s1(), this.a.q1());
            tp3 tp3Var4 = divTextTemplate.i;
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expressionS3 = sa5.s(ex7Var, tp3Var4, jSONObject, "auto_ellipsize", zbbVar4, e74Var4);
            List listB3 = sa5.B(ex7Var, divTextTemplate.j, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divTextTemplate.k, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var5 = divTextTemplate.l;
            Expression expression2 = DivTextJsonParser.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var5, jSONObject, "capture_focus_on_action", zbbVar4, e74Var4, expression2);
            Expression expression3 = expressionV == null ? expression2 : expressionV;
            tp3 tp3Var6 = divTextTemplate.m;
            zbb zbbVar5 = acb.b;
            e74 e74Var5 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var6, jSONObject, "column_span", zbbVar5, e74Var5, DivTextJsonParser.E);
            List listB4 = sa5.B(ex7Var, divTextTemplate.n, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB5 = sa5.B(ex7Var, divTextTemplate.o, jSONObject, "doubletap_actions", this.a.w0(), this.a.u0());
            DivText.Ellipsis ellipsis = (DivText.Ellipsis) sa5.p(ex7Var, divTextTemplate.p, jSONObject, "ellipsis", this.a.Z7(), this.a.X7());
            List listB6 = sa5.B(ex7Var, divTextTemplate.q, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divTextTemplate.r, jSONObject, "focus", this.a.y3(), this.a.w3());
            tp3 tp3Var7 = divTextTemplate.s;
            zbb zbbVar6 = acb.f;
            e74 e74Var6 = ParsingConvertersKt.b;
            Expression expressionS4 = sa5.s(ex7Var, tp3Var7, jSONObject, "focused_text_color", zbbVar6, e74Var6);
            tp3 tp3Var8 = divTextTemplate.t;
            zbb zbbVar7 = acb.c;
            Expression expressionR = sa5.r(ex7Var, tp3Var8, jSONObject, "font_family", zbbVar7);
            Expression expressionR2 = sa5.r(ex7Var, divTextTemplate.u, jSONObject, "font_feature_settings", zbbVar7);
            tp3 tp3Var9 = divTextTemplate.v;
            pnb pnbVar2 = DivTextJsonParser.F;
            Expression expression4 = DivTextJsonParser.e;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var9, jSONObject, "font_size", zbbVar5, e74Var5, pnbVar2, expression4);
            if (expressionU2 != null) {
                expression4 = expressionU2;
            }
            tp3 tp3Var10 = divTextTemplate.w;
            zbb zbbVar8 = DivTextJsonParser.v;
            e74 e74Var7 = DivSizeUnit.FROM_STRING;
            Expression expression5 = DivTextJsonParser.f;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var10, jSONObject, "font_size_unit", zbbVar8, e74Var7, expression5);
            Expression expression6 = expressionV2 == null ? expression5 : expressionV2;
            Expression expressionR3 = sa5.r(ex7Var, divTextTemplate.x, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h);
            tp3 tp3Var11 = divTextTemplate.y;
            zbb zbbVar9 = DivTextJsonParser.w;
            e74 e74Var8 = DivFontWeight.FROM_STRING;
            Expression expression7 = DivTextJsonParser.g;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var11, jSONObject, FontsContractCompat.Columns.WEIGHT, zbbVar9, e74Var8, expression7);
            Expression expression8 = expressionV3 == null ? expression7 : expressionV3;
            Expression expressionT2 = sa5.t(ex7Var, divTextTemplate.z, jSONObject, "font_weight_value", zbbVar5, e74Var5, DivTextJsonParser.G);
            List listB7 = sa5.B(ex7Var, divTextTemplate.A, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divTextTemplate.B, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivTextJsonParser.h;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            List listB8 = sa5.B(ex7Var, divTextTemplate.C, jSONObject, "hover_end_actions", this.a.w0(), this.a.u0());
            List listB9 = sa5.B(ex7Var, divTextTemplate.D, jSONObject, "hover_start_actions", this.a.w0(), this.a.u0());
            String str = (String) sa5.m(ex7Var, divTextTemplate.E, jSONObject, TtmlNode.ATTR_ID);
            List listB10 = sa5.B(ex7Var, divTextTemplate.F, jSONObject, "images", this.a.i8(), this.a.g8());
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divTextTemplate.G, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            tp3 tp3Var12 = divTextTemplate.H;
            Expression expression9 = DivTextJsonParser.i;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var12, jSONObject, "letter_spacing", zbbVar3, e74Var3, expression9);
            if (expressionV4 != null) {
                expression9 = expressionV4;
            }
            Expression expressionT3 = sa5.t(ex7Var, divTextTemplate.I, jSONObject, "line_height", zbbVar5, e74Var5, DivTextJsonParser.H);
            List listB11 = sa5.B(ex7Var, divTextTemplate.J, jSONObject, "longtap_actions", this.a.w0(), this.a.u0());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divTextTemplate.K, jSONObject, "margins", this.a.X2(), this.a.V2());
            Expression expressionT4 = sa5.t(ex7Var, divTextTemplate.L, jSONObject, "max_lines", zbbVar5, e74Var5, DivTextJsonParser.I);
            Expression expressionT5 = sa5.t(ex7Var, divTextTemplate.M, jSONObject, "min_hidden_lines", zbbVar5, e74Var5, DivTextJsonParser.J);
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divTextTemplate.N, jSONObject, "paddings", this.a.X2(), this.a.V2());
            List listB12 = sa5.B(ex7Var, divTextTemplate.O, jSONObject, "press_end_actions", this.a.w0(), this.a.u0());
            List listB13 = sa5.B(ex7Var, divTextTemplate.P, jSONObject, "press_start_actions", this.a.w0(), this.a.u0());
            List listB14 = sa5.B(ex7Var, divTextTemplate.Q, jSONObject, "ranges", this.a.u8(), this.a.s8());
            Expression expressionR4 = sa5.r(ex7Var, divTextTemplate.R, jSONObject, "reuse_id", zbbVar7);
            Expression expressionT6 = sa5.t(ex7Var, divTextTemplate.S, jSONObject, "row_span", zbbVar5, e74Var5, DivTextJsonParser.K);
            tp3 tp3Var13 = divTextTemplate.T;
            Expression expression10 = DivTextJsonParser.j;
            Expression expressionV5 = sa5.v(ex7Var, tp3Var13, jSONObject, "selectable", zbbVar4, e74Var4, expression10);
            Expression expression11 = expressionV5 == null ? expression10 : expressionV5;
            List listB15 = sa5.B(ex7Var, divTextTemplate.U, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var14 = divTextTemplate.V;
            zbb zbbVar10 = DivTextJsonParser.x;
            e74 e74Var9 = DivLineStyle.FROM_STRING;
            Expression expression12 = DivTextJsonParser.k;
            Expression expressionV6 = sa5.v(ex7Var, tp3Var14, jSONObject, "strike", zbbVar10, e74Var9, expression12);
            Expression expression13 = expressionV6 == null ? expression12 : expressionV6;
            Expression expressionG = sa5.g(ex7Var, divTextTemplate.W, jSONObject, "text", zbbVar7);
            y45.i(expressionG, "resolveExpression(contex…ext\", TYPE_HELPER_STRING)");
            tp3 tp3Var15 = divTextTemplate.X;
            zbb zbbVar11 = DivTextJsonParser.y;
            Expression expression14 = DivTextJsonParser.l;
            Expression expressionV7 = sa5.v(ex7Var, tp3Var15, jSONObject, "text_alignment_horizontal", zbbVar11, e74Var, expression14);
            Expression expression15 = expressionV7 == null ? expression14 : expressionV7;
            tp3 tp3Var16 = divTextTemplate.Y;
            zbb zbbVar12 = DivTextJsonParser.z;
            Expression expression16 = DivTextJsonParser.m;
            Expression expressionV8 = sa5.v(ex7Var, tp3Var16, jSONObject, "text_alignment_vertical", zbbVar12, e74Var2, expression16);
            Expression expression17 = expressionV8 == null ? expression16 : expressionV8;
            tp3 tp3Var17 = divTextTemplate.Z;
            Expression expression18 = DivTextJsonParser.n;
            Expression expressionV9 = sa5.v(ex7Var, tp3Var17, jSONObject, "text_color", zbbVar6, e74Var6, expression18);
            Expression expression19 = expressionV9 == null ? expression18 : expressionV9;
            DivTextGradient divTextGradient = (DivTextGradient) sa5.p(ex7Var, divTextTemplate.a0, jSONObject, "text_gradient", this.a.c8(), this.a.a8());
            DivShadow divShadow = (DivShadow) sa5.p(ex7Var, divTextTemplate.b0, jSONObject, "text_shadow", this.a.O6(), this.a.M6());
            tp3 tp3Var18 = divTextTemplate.c0;
            Expression expression20 = DivTextJsonParser.o;
            Expression expressionV10 = sa5.v(ex7Var, tp3Var18, jSONObject, "tighten_width", zbbVar4, e74Var4, expression20);
            Expression expression21 = expressionV10 == null ? expression20 : expressionV10;
            List listB16 = sa5.B(ex7Var, divTextTemplate.d0, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divTextTemplate.e0, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divTextTemplate.f0, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divTextTemplate.g0, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divTextTemplate.h0, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divTextTemplate.i0, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivTextJsonParser.L);
            tp3 tp3Var19 = divTextTemplate.j0;
            zbb zbbVar13 = DivTextJsonParser.A;
            e74 e74Var10 = DivText.Truncate.FROM_STRING;
            Expression expression22 = DivTextJsonParser.p;
            Expression expressionV11 = sa5.v(ex7Var, tp3Var19, jSONObject, "truncate", zbbVar13, e74Var10, expression22);
            Expression expression23 = expressionV11 == null ? expression22 : expressionV11;
            tp3 tp3Var20 = divTextTemplate.k0;
            zbb zbbVar14 = DivTextJsonParser.B;
            Expression expression24 = DivTextJsonParser.q;
            Expression expressionV12 = sa5.v(ex7Var, tp3Var20, jSONObject, TtmlNode.UNDERLINE, zbbVar14, e74Var9, expression24);
            Expression expression25 = expressionV12 == null ? expression24 : expressionV12;
            List listB17 = sa5.B(ex7Var, divTextTemplate.l0, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB18 = sa5.B(ex7Var, divTextTemplate.m0, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var21 = divTextTemplate.n0;
            zbb zbbVar15 = DivTextJsonParser.C;
            e74 e74Var11 = DivVisibility.FROM_STRING;
            Expression expression26 = DivTextJsonParser.r;
            Expression expressionV13 = sa5.v(ex7Var, tp3Var21, jSONObject, "visibility", zbbVar15, e74Var11, expression26);
            Expression expression27 = expressionV13 == null ? expression26 : expressionV13;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divTextTemplate.o0, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB19 = sa5.B(ex7Var, divTextTemplate.p0, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divTextTemplate.q0, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivTextJsonParser.s;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivText(divAccessibility, divAction, divAnimation2, listB, expressionS, expressionS2, expression, listB2, expressionS3, listB3, divBorder, expression3, expressionT, listB4, listB5, ellipsis, listB6, divFocus, expressionS4, expressionR, expressionR2, expression4, expression6, expressionR3, expression8, expressionT2, listB7, divSize2, listB8, listB9, str, listB10, divLayoutProvider, expression9, expressionT3, listB11, divEdgeInsets, expressionT4, expressionT5, divEdgeInsets2, listB12, listB13, listB14, expressionR4, expressionT6, expression11, listB15, expression13, expressionG, expression15, expression17, expression19, divTextGradient, divShadow, expression21, listB16, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, expression23, expression25, listB17, listB18, expression27, divVisibilityAction, listB19, divSize3);
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
        e = aVar.a(12L);
        f = aVar.a(DivSizeUnit.SP);
        g = aVar.a(DivFontWeight.REGULAR);
        h = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        i = aVar.a(Double.valueOf(0.0d));
        Boolean bool = Boolean.FALSE;
        j = aVar.a(bool);
        DivLineStyle divLineStyle = DivLineStyle.NONE;
        k = aVar.a(divLineStyle);
        l = aVar.a(DivAlignmentHorizontal.START);
        m = aVar.a(DivAlignmentVertical.TOP);
        n = aVar.a(-16777216);
        o = aVar.a(bool);
        p = aVar.a(DivText.Truncate.END);
        q = aVar.a(divLineStyle);
        r = aVar.a(DivVisibility.VISIBLE);
        s = new DivSize.c(new DivMatchParentSize(null, 1, null));
        zbb.a aVar2 = zbb.a;
        t = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        u = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        v = aVar2.a(hi.W(DivSizeUnit.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivSizeUnit);
            }
        });
        w = aVar2.a(hi.W(DivFontWeight.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivFontWeight);
            }
        });
        x = aVar2.a(hi.W(DivLineStyle.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivLineStyle);
            }
        });
        y = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        z = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        A = aVar2.a(hi.W(DivText.Truncate.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivText.Truncate);
            }
        });
        B = aVar2.a(hi.W(DivLineStyle.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivLineStyle);
            }
        });
        C = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        D = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextJsonParser.j(((Double) obj).doubleValue());
            }
        };
        E = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextJsonParser.k(((Long) obj).longValue());
            }
        };
        F = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextJsonParser.l(((Long) obj).longValue());
            }
        };
        G = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextJsonParser.m(((Long) obj).longValue());
            }
        };
        H = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextJsonParser.n(((Long) obj).longValue());
            }
        };
        I = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextJsonParser.o(((Long) obj).longValue());
            }
        };
        J = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextJsonParser.p(((Long) obj).longValue());
            }
        };
        K = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextJsonParser.q(((Long) obj).longValue());
            }
        };
        L = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivTextJsonParser.r(list);
            }
        };
    }

    public static final boolean j(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean k(long j2) {
        return j2 >= 0;
    }

    public static final boolean l(long j2) {
        return j2 >= 0;
    }

    public static final boolean m(long j2) {
        return j2 > 0;
    }

    public static final boolean n(long j2) {
        return j2 >= 0;
    }

    public static final boolean o(long j2) {
        return j2 >= 0;
    }

    public static final boolean p(long j2) {
        return j2 >= 0;
    }

    public static final boolean q(long j2) {
        return j2 >= 0;
    }

    public static final boolean r(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
