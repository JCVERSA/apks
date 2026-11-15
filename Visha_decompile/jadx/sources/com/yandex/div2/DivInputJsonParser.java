package com.yandex.div2;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivInputJsonParser;
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

public abstract class DivInputJsonParser {
    public static final zbb A;
    public static final zbb B;
    public static final pnb C;
    public static final pnb D;
    public static final pnb E;
    public static final pnb F;
    public static final pnb G;
    public static final pnb H;
    public static final pnb I;
    public static final pnb J;
    public static final hm5 K;
    public static final a a = new a(null);
    public static final Expression b;
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
    public static final DivSize.c r;
    public static final zbb s;
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
        public DivInput a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            zbb zbbVar = DivInputJsonParser.s;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", zbbVar, e74Var);
            zbb zbbVar2 = DivInputJsonParser.t;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", zbbVar2, e74Var2);
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar = DivInputJsonParser.C;
            Expression expression = DivInputJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar3, e74Var3, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            zbb zbbVar4 = DivInputJsonParser.u;
            e74 e74Var4 = DivInput.Autocapitalization.FROM_STRING;
            Expression expression2 = DivInputJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "autocapitalization", zbbVar4, e74Var4, expression2);
            Expression expression3 = expressionL == null ? expression2 : expressionL;
            List listR2 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar5 = acb.b;
            e74 e74Var5 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar5, e74Var5, DivInputJsonParser.D);
            List listR3 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR4 = tb5.r(ex7Var, jSONObject, "enter_key_actions", this.a.u0());
            zbb zbbVar6 = DivInputJsonParser.v;
            e74 e74Var6 = DivInput.EnterKeyType.FROM_STRING;
            Expression expression4 = DivInputJsonParser.d;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "enter_key_type", zbbVar6, e74Var6, expression4);
            Expression expression5 = expressionL2 == null ? expression4 : expressionL2;
            List listR5 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            List listR6 = tb5.r(ex7Var, jSONObject, "filters", this.a.j4());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            zbb zbbVar7 = acb.c;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "font_family", zbbVar7);
            pnb pnbVar2 = DivInputJsonParser.E;
            Expression expression6 = DivInputJsonParser.e;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "font_size", zbbVar5, e74Var5, pnbVar2, expression6);
            if (expressionK2 != null) {
                expression6 = expressionK2;
            }
            zbb zbbVar8 = DivInputJsonParser.w;
            e74 e74Var7 = DivSizeUnit.FROM_STRING;
            Expression expression7 = DivInputJsonParser.f;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "font_size_unit", zbbVar8, e74Var7, expression7);
            Expression expression8 = expressionL3 == null ? expression7 : expressionL3;
            Expression expressionH2 = pa5.h(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h);
            zbb zbbVar9 = DivInputJsonParser.x;
            e74 e74Var8 = DivFontWeight.FROM_STRING;
            Expression expression9 = DivInputJsonParser.g;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, zbbVar9, e74Var8, expression9);
            Expression expression10 = expressionL4 == null ? expression9 : expressionL4;
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "font_weight_value", zbbVar5, e74Var5, DivInputJsonParser.F);
            List listR7 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivInputJsonParser.h;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            zbb zbbVar10 = acb.f;
            e74 e74Var9 = ParsingConvertersKt.b;
            Expression expressionI3 = pa5.i(ex7Var, jSONObject, "highlight_color", zbbVar10, e74Var9);
            Expression expression11 = DivInputJsonParser.i;
            Expression expressionL5 = pa5.l(ex7Var, jSONObject, "hint_color", zbbVar10, e74Var9, expression11);
            if (expressionL5 != null) {
                expression11 = expressionL5;
            }
            Expression expressionH3 = pa5.h(ex7Var, jSONObject, "hint_text", zbbVar7);
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            zbb zbbVar11 = acb.a;
            e74 e74Var10 = ParsingConvertersKt.f;
            Expression expression12 = DivInputJsonParser.j;
            Expression expressionL6 = pa5.l(ex7Var, jSONObject, "is_enabled", zbbVar11, e74Var10, expression12);
            if (expressionL6 != null) {
                expression12 = expressionL6;
            }
            zbb zbbVar12 = DivInputJsonParser.y;
            e74 e74Var11 = DivInput.KeyboardType.FROM_STRING;
            Expression expression13 = DivInputJsonParser.k;
            Expression expressionL7 = pa5.l(ex7Var, jSONObject, "keyboard_type", zbbVar12, e74Var11, expression13);
            if (expressionL7 != null) {
                expression13 = expressionL7;
            }
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            Expression expression14 = DivInputJsonParser.l;
            Expression expressionL8 = pa5.l(ex7Var, jSONObject, "letter_spacing", zbbVar3, e74Var3, expression14);
            if (expressionL8 != null) {
                expression14 = expressionL8;
            }
            Expression expressionJ3 = pa5.j(ex7Var, jSONObject, "line_height", zbbVar5, e74Var5, DivInputJsonParser.G);
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            DivInputMask divInputMask = (DivInputMask) tb5.n(ex7Var, jSONObject, "mask", this.a.s4());
            Expression expressionJ4 = pa5.j(ex7Var, jSONObject, "max_length", zbbVar5, e74Var5, DivInputJsonParser.H);
            Expression expressionJ5 = pa5.j(ex7Var, jSONObject, "max_visible_lines", zbbVar5, e74Var5, DivInputJsonParser.I);
            DivInput.NativeInterface nativeInterface = (DivInput.NativeInterface) tb5.n(ex7Var, jSONObject, "native_interface", this.a.v4());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            Expression expressionH4 = pa5.h(ex7Var, jSONObject, "reuse_id", zbbVar7);
            Expression expressionJ6 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar5, e74Var5, DivInputJsonParser.J);
            Expression expression15 = DivInputJsonParser.m;
            Expression expressionL9 = pa5.l(ex7Var, jSONObject, "select_all_on_focus", zbbVar11, e74Var10, expression15);
            Expression expression16 = expressionL9 == null ? expression15 : expressionL9;
            List listR8 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            zbb zbbVar13 = DivInputJsonParser.z;
            Expression expression17 = DivInputJsonParser.n;
            Expression expressionL10 = pa5.l(ex7Var, jSONObject, "text_alignment_horizontal", zbbVar13, e74Var, expression17);
            Expression expression18 = expressionL10 == null ? expression17 : expressionL10;
            zbb zbbVar14 = DivInputJsonParser.A;
            Expression expression19 = DivInputJsonParser.o;
            Expression expressionL11 = pa5.l(ex7Var, jSONObject, "text_alignment_vertical", zbbVar14, e74Var2, expression19);
            Expression expression20 = expressionL11 == null ? expression19 : expressionL11;
            Expression expression21 = DivInputJsonParser.p;
            Expression expressionL12 = pa5.l(ex7Var, jSONObject, "text_color", zbbVar10, e74Var9, expression21);
            Expression expression22 = expressionL12 == null ? expression21 : expressionL12;
            Object objD = tb5.d(ex7Var, jSONObject, "text_variable");
            y45.i(objD, "read(context, data, \"text_variable\")");
            String str2 = (String) objD;
            List listR9 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivInputJsonParser.K);
            List listR10 = tb5.r(ex7Var, jSONObject, "validators", this.a.D4());
            List listR11 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR12 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar15 = DivInputJsonParser.B;
            e74 e74Var12 = DivVisibility.FROM_STRING;
            Expression expression23 = DivInputJsonParser.q;
            Expression expressionL13 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar15, e74Var12, expression23);
            if (expressionL13 == null) {
                expressionL13 = expression23;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR13 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivInputJsonParser.r;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivInput(divAccessibility, expressionI, expressionI2, expression, listR, expression3, listR2, divBorder, expressionJ, listR3, listR4, expression5, listR5, listR6, divFocus, expressionH, expression6, expression8, expressionH2, expression10, expressionJ2, listR7, divSize2, expressionI3, expression11, expressionH3, str, expression12, expression13, divLayoutProvider, expression14, expressionJ3, divEdgeInsets, divInputMask, expressionJ4, expressionJ5, nativeInterface, divEdgeInsets2, expressionH4, expressionJ6, expression16, listR8, expression18, expression20, expression22, str2, listR9, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR10, listR11, listR12, expressionL13, divVisibilityAction, listR13, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivInput divInput) {
            y45.j(ex7Var, "context");
            y45.j(divInput, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divInput.r(), this.a.H());
            Expression expressionG = divInput.g();
            e74 e74Var = DivAlignmentHorizontal.TO_STRING;
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", expressionG, e74Var);
            Expression expressionO = divInput.o();
            e74 e74Var2 = DivAlignmentVertical.TO_STRING;
            pa5.q(ex7Var, jSONObject, "alignment_vertical", expressionO, e74Var2);
            pa5.p(ex7Var, jSONObject, "alpha", divInput.p());
            tb5.z(ex7Var, jSONObject, "animators", divInput.A(), this.a.q1());
            pa5.q(ex7Var, jSONObject, "autocapitalization", divInput.f, DivInput.Autocapitalization.TO_STRING);
            tb5.z(ex7Var, jSONObject, "background", divInput.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divInput.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "column_span", divInput.b());
            tb5.z(ex7Var, jSONObject, "disappear_actions", divInput.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "enter_key_actions", divInput.k, this.a.u0());
            pa5.q(ex7Var, jSONObject, "enter_key_type", divInput.l, DivInput.EnterKeyType.TO_STRING);
            tb5.z(ex7Var, jSONObject, "extensions", divInput.getExtensions(), this.a.Y2());
            tb5.z(ex7Var, jSONObject, "filters", divInput.n, this.a.j4());
            tb5.x(ex7Var, jSONObject, "focus", divInput.q(), this.a.w3());
            pa5.p(ex7Var, jSONObject, "font_family", divInput.p);
            pa5.p(ex7Var, jSONObject, "font_size", divInput.q);
            pa5.q(ex7Var, jSONObject, "font_size_unit", divInput.r, DivSizeUnit.TO_STRING);
            pa5.p(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, divInput.s);
            pa5.q(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, divInput.t, DivFontWeight.TO_STRING);
            pa5.p(ex7Var, jSONObject, "font_weight_value", divInput.u);
            tb5.z(ex7Var, jSONObject, "functions", divInput.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divInput.getHeight(), this.a.V6());
            Expression expression = divInput.x;
            e74 e74Var3 = ParsingConvertersKt.a;
            pa5.q(ex7Var, jSONObject, "highlight_color", expression, e74Var3);
            pa5.q(ex7Var, jSONObject, "hint_color", divInput.y, e74Var3);
            pa5.p(ex7Var, jSONObject, "hint_text", divInput.z);
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divInput.getId());
            pa5.p(ex7Var, jSONObject, "is_enabled", divInput.B);
            pa5.q(ex7Var, jSONObject, "keyboard_type", divInput.C, DivInput.KeyboardType.TO_STRING);
            tb5.x(ex7Var, jSONObject, "layout_provider", divInput.v(), this.a.M4());
            pa5.p(ex7Var, jSONObject, "letter_spacing", divInput.E);
            pa5.p(ex7Var, jSONObject, "line_height", divInput.F);
            tb5.x(ex7Var, jSONObject, "margins", divInput.d(), this.a.V2());
            tb5.x(ex7Var, jSONObject, "mask", divInput.H, this.a.s4());
            pa5.p(ex7Var, jSONObject, "max_length", divInput.I);
            pa5.p(ex7Var, jSONObject, "max_visible_lines", divInput.J);
            tb5.x(ex7Var, jSONObject, "native_interface", divInput.K, this.a.v4());
            tb5.x(ex7Var, jSONObject, "paddings", divInput.t(), this.a.V2());
            pa5.p(ex7Var, jSONObject, "reuse_id", divInput.f());
            pa5.p(ex7Var, jSONObject, "row_span", divInput.e());
            pa5.p(ex7Var, jSONObject, "select_all_on_focus", divInput.O);
            tb5.z(ex7Var, jSONObject, "selected_actions", divInput.u(), this.a.u0());
            pa5.q(ex7Var, jSONObject, "text_alignment_horizontal", divInput.Q, e74Var);
            pa5.q(ex7Var, jSONObject, "text_alignment_vertical", divInput.R, e74Var2);
            pa5.q(ex7Var, jSONObject, "text_color", divInput.S, e74Var3);
            tb5.v(ex7Var, jSONObject, "text_variable", divInput.T);
            tb5.z(ex7Var, jSONObject, "tooltips", divInput.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divInput.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divInput.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divInput.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divInput.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divInput.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "input");
            tb5.z(ex7Var, jSONObject, "validators", divInput.a0, this.a.D4());
            tb5.z(ex7Var, jSONObject, "variable_triggers", divInput.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divInput.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divInput.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divInput.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divInput.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divInput.getWidth(), this.a.V6());
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
        public DivInputTemplate c(ex7 ex7Var, DivInputTemplate divInputTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divInputTemplate != null ? divInputTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            zbb zbbVar = DivInputJsonParser.s;
            tp3 tp3Var = divInputTemplate != null ? divInputTemplate.b : null;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            zbb zbbVar2 = DivInputJsonParser.t;
            tp3 tp3Var2 = divInputTemplate != null ? divInputTemplate.c : null;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            zbb zbbVar3 = acb.d;
            tp3 tp3Var3 = divInputTemplate != null ? divInputTemplate.d : null;
            e74 e74Var3 = ParsingConvertersKt.g;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", zbbVar3, zC, tp3Var3, e74Var3, DivInputJsonParser.C);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "animators", zC, divInputTemplate != null ? divInputTemplate.e : null, this.a.r1());
            y45.i(tp3VarZ, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "autocapitalization", DivInputJsonParser.u, zC, divInputTemplate != null ? divInputTemplate.f : null, DivInput.Autocapitalization.FROM_STRING);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…pitalization.FROM_STRING)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "background", zC, divInputTemplate != null ? divInputTemplate.g : null, this.a.D1());
            y45.i(tp3VarZ2, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "border", zC, divInputTemplate != null ? divInputTemplate.h : null, this.a.J1());
            y45.i(tp3VarS2, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar4 = acb.b;
            tp3 tp3Var4 = divInputTemplate != null ? divInputTemplate.i : null;
            e74 e74Var4 = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar4, zC, tp3Var4, e74Var4, DivInputJsonParser.D);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divInputTemplate != null ? divInputTemplate.j : null, this.a.N2());
            y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "enter_key_actions", zC, divInputTemplate != null ? divInputTemplate.k : null, this.a.v0());
            y45.i(tp3VarZ4, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "enter_key_type", DivInputJsonParser.v, zC, divInputTemplate != null ? divInputTemplate.l : null, DivInput.EnterKeyType.FROM_STRING);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…EnterKeyType.FROM_STRING)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divInputTemplate != null ? divInputTemplate.m : null, this.a.Z2());
            y45.i(tp3VarZ5, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "filters", zC, divInputTemplate != null ? divInputTemplate.n : null, this.a.k4());
            y45.i(tp3VarZ6, "readOptionalListField(co…FilterJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "focus", zC, divInputTemplate != null ? divInputTemplate.o : null, this.a.x3());
            y45.i(tp3VarS3, "readOptionalField(contex…vFocusJsonTemplateParser)");
            zbb zbbVar5 = acb.c;
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "font_family", zbbVar5, zC, divInputTemplate != null ? divInputTemplate.p : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…ride, parent?.fontFamily)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "font_size", zbbVar4, zC, divInputTemplate != null ? divInputTemplate.q : null, e74Var4, DivInputJsonParser.E);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…INT, FONT_SIZE_VALIDATOR)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "font_size_unit", DivInputJsonParser.w, zC, divInputTemplate != null ? divInputTemplate.r : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU5, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h, zC, divInputTemplate != null ? divInputTemplate.s : null);
            y45.i(tp3VarT2, "readOptionalFieldWithExp…t?.fontVariationSettings)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, FontsContractCompat.Columns.WEIGHT, DivInputJsonParser.x, zC, divInputTemplate != null ? divInputTemplate.t : null, DivFontWeight.FROM_STRING);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…ivFontWeight.FROM_STRING)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "font_weight_value", zbbVar4, zC, divInputTemplate != null ? divInputTemplate.u : null, e74Var4, DivInputJsonParser.F);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…T_WEIGHT_VALUE_VALIDATOR)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "functions", zC, divInputTemplate != null ? divInputTemplate.v : null, this.a.G3());
            y45.i(tp3VarZ7, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "height", zC, divInputTemplate != null ? divInputTemplate.w : null, this.a.W6());
            y45.i(tp3VarS4, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            zbb zbbVar6 = acb.f;
            tp3 tp3Var5 = divInputTemplate != null ? divInputTemplate.x : null;
            e74 e74Var5 = ParsingConvertersKt.b;
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, "highlight_color", zbbVar6, zC, tp3Var5, e74Var5);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, "hint_color", zbbVar6, zC, divInputTemplate != null ? divInputTemplate.y : null, e74Var5);
            y45.i(tp3VarU8, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarT3 = ra5.t(ex7VarC, jSONObject, "hint_text", zbbVar5, zC, divInputTemplate != null ? divInputTemplate.z : null);
            y45.i(tp3VarT3, "readOptionalFieldWithExp…erride, parent?.hintText)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divInputTemplate != null ? divInputTemplate.A : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            zbb zbbVar7 = acb.a;
            tp3 tp3Var6 = divInputTemplate != null ? divInputTemplate.B : null;
            e74 e74Var6 = ParsingConvertersKt.f;
            tp3 tp3VarU9 = ra5.u(ex7VarC, jSONObject, "is_enabled", zbbVar7, zC, tp3Var6, e74Var6);
            y45.i(tp3VarU9, "readOptionalFieldWithExp…sEnabled, ANY_TO_BOOLEAN)");
            tp3 tp3VarU10 = ra5.u(ex7VarC, jSONObject, "keyboard_type", DivInputJsonParser.y, zC, divInputTemplate != null ? divInputTemplate.C : null, DivInput.KeyboardType.FROM_STRING);
            y45.i(tp3VarU10, "readOptionalFieldWithExp…KeyboardType.FROM_STRING)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divInputTemplate != null ? divInputTemplate.D : null, this.a.N4());
            y45.i(tp3VarS5, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarU11 = ra5.u(ex7VarC, jSONObject, "letter_spacing", zbbVar3, zC, divInputTemplate != null ? divInputTemplate.E : null, e74Var3);
            y45.i(tp3VarU11, "readOptionalFieldWithExp…pacing, NUMBER_TO_DOUBLE)");
            tp3 tp3VarV5 = ra5.v(ex7VarC, jSONObject, "line_height", zbbVar4, zC, divInputTemplate != null ? divInputTemplate.F : null, e74Var4, DivInputJsonParser.G);
            y45.i(tp3VarV5, "readOptionalFieldWithExp…T, LINE_HEIGHT_VALIDATOR)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "margins", zC, divInputTemplate != null ? divInputTemplate.G : null, this.a.W2());
            y45.i(tp3VarS6, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "mask", zC, divInputTemplate != null ? divInputTemplate.H : null, this.a.t4());
            y45.i(tp3VarS7, "readOptionalField(contex…utMaskJsonTemplateParser)");
            tp3 tp3VarV6 = ra5.v(ex7VarC, jSONObject, "max_length", zbbVar4, zC, divInputTemplate != null ? divInputTemplate.I : null, e74Var4, DivInputJsonParser.H);
            y45.i(tp3VarV6, "readOptionalFieldWithExp…NT, MAX_LENGTH_VALIDATOR)");
            tp3 tp3VarV7 = ra5.v(ex7VarC, jSONObject, "max_visible_lines", zbbVar4, zC, divInputTemplate != null ? divInputTemplate.J : null, e74Var4, DivInputJsonParser.I);
            y45.i(tp3VarV7, "readOptionalFieldWithExp…_VISIBLE_LINES_VALIDATOR)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "native_interface", zC, divInputTemplate != null ? divInputTemplate.K : null, this.a.w4());
            y45.i(tp3VarS8, "readOptionalField(contex…erfaceJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divInputTemplate != null ? divInputTemplate.L : null, this.a.W2());
            y45.i(tp3VarS9, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarT4 = ra5.t(ex7VarC, jSONObject, "reuse_id", zbbVar5, zC, divInputTemplate != null ? divInputTemplate.M : null);
            y45.i(tp3VarT4, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV8 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar4, zC, divInputTemplate != null ? divInputTemplate.N : null, e74Var4, DivInputJsonParser.J);
            y45.i(tp3VarV8, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarU12 = ra5.u(ex7VarC, jSONObject, "select_all_on_focus", zbbVar7, zC, divInputTemplate != null ? divInputTemplate.O : null, e74Var6);
            y45.i(tp3VarU12, "readOptionalFieldWithExp…lOnFocus, ANY_TO_BOOLEAN)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divInputTemplate != null ? divInputTemplate.P : null, this.a.v0());
            y45.i(tp3VarZ8, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarU13 = ra5.u(ex7VarC, jSONObject, "text_alignment_horizontal", DivInputJsonParser.z, zC, divInputTemplate != null ? divInputTemplate.Q : null, e74Var);
            y45.i(tp3VarU13, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU14 = ra5.u(ex7VarC, jSONObject, "text_alignment_vertical", DivInputJsonParser.A, zC, divInputTemplate != null ? divInputTemplate.R : null, e74Var2);
            y45.i(tp3VarU14, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarU15 = ra5.u(ex7VarC, jSONObject, "text_color", zbbVar6, zC, divInputTemplate != null ? divInputTemplate.S : null, e74Var5);
            y45.i(tp3VarU15, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "text_variable", zC, divInputTemplate != null ? divInputTemplate.T : null);
            y45.i(tp3VarC, "readField(context, data,…de, parent?.textVariable)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divInputTemplate != null ? divInputTemplate.U : null, this.a.K8());
            y45.i(tp3VarZ9, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "transform", zC, divInputTemplate != null ? divInputTemplate.V : null, this.a.W8());
            y45.i(tp3VarS10, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divInputTemplate != null ? divInputTemplate.W : null, this.a.S1());
            y45.i(tp3VarS11, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divInputTemplate != null ? divInputTemplate.X : null, this.a.x1());
            y45.i(tp3VarS12, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divInputTemplate != null ? divInputTemplate.Y : null, this.a.x1());
            y45.i(tp3VarS13, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var7 = divInputTemplate != null ? divInputTemplate.Z : null;
            e74 e74Var7 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivInputJsonParser.K;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var7, e74Var7, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "validators", zC, divInputTemplate != null ? divInputTemplate.a0 : null, this.a.E4());
            y45.i(tp3VarZ10, "readOptionalListField(co…idatorJsonTemplateParser)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divInputTemplate != null ? divInputTemplate.b0 : null, this.a.Z8());
            y45.i(tp3VarZ11, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ12 = ra5.z(ex7VarC, jSONObject, "variables", zC, divInputTemplate != null ? divInputTemplate.c0 : null, this.a.f9());
            y45.i(tp3VarZ12, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU16 = ra5.u(ex7VarC, jSONObject, "visibility", DivInputJsonParser.B, zC, divInputTemplate != null ? divInputTemplate.d0 : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU16, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divInputTemplate != null ? divInputTemplate.e0 : null, this.a.r9());
            y45.i(tp3VarS14, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ13 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divInputTemplate != null ? divInputTemplate.f0 : null, this.a.r9());
            y45.i(tp3VarZ13, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS15 = ra5.s(ex7VarC, jSONObject, "width", zC, divInputTemplate != null ? divInputTemplate.g0 : null, this.a.W6());
            y45.i(tp3VarS15, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivInputTemplate(tp3VarS, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ, tp3VarU3, tp3VarZ2, tp3VarS2, tp3VarV2, tp3VarZ3, tp3VarZ4, tp3VarU4, tp3VarZ5, tp3VarZ6, tp3VarS3, tp3VarT, tp3VarV3, tp3VarU5, tp3VarT2, tp3VarU6, tp3VarV4, tp3VarZ7, tp3VarS4, tp3VarU7, tp3VarU8, tp3VarT3, tp3VarP, tp3VarU9, tp3VarU10, tp3VarS5, tp3VarU11, tp3VarV5, tp3VarS6, tp3VarS7, tp3VarV6, tp3VarV7, tp3VarS8, tp3VarS9, tp3VarT4, tp3VarV8, tp3VarU12, tp3VarZ8, tp3VarU13, tp3VarU14, tp3VarU15, tp3VarC, tp3VarZ9, tp3VarS10, tp3VarS11, tp3VarS12, tp3VarS13, tp3VarX, tp3VarZ10, tp3VarZ11, tp3VarZ12, tp3VarU16, tp3VarS14, tp3VarZ13, tp3VarS15);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivInputTemplate divInputTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divInputTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divInputTemplate.a, this.a.I());
            tp3 tp3Var = divInputTemplate.b;
            e74 e74Var = DivAlignmentHorizontal.TO_STRING;
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", tp3Var, e74Var);
            tp3 tp3Var2 = divInputTemplate.c;
            e74 e74Var2 = DivAlignmentVertical.TO_STRING;
            ra5.E(ex7Var, jSONObject, "alignment_vertical", tp3Var2, e74Var2);
            ra5.D(ex7Var, jSONObject, "alpha", divInputTemplate.d);
            ra5.K(ex7Var, jSONObject, "animators", divInputTemplate.e, this.a.r1());
            ra5.E(ex7Var, jSONObject, "autocapitalization", divInputTemplate.f, DivInput.Autocapitalization.TO_STRING);
            ra5.K(ex7Var, jSONObject, "background", divInputTemplate.g, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divInputTemplate.h, this.a.J1());
            ra5.D(ex7Var, jSONObject, "column_span", divInputTemplate.i);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divInputTemplate.j, this.a.N2());
            ra5.K(ex7Var, jSONObject, "enter_key_actions", divInputTemplate.k, this.a.v0());
            ra5.E(ex7Var, jSONObject, "enter_key_type", divInputTemplate.l, DivInput.EnterKeyType.TO_STRING);
            ra5.K(ex7Var, jSONObject, "extensions", divInputTemplate.m, this.a.Z2());
            ra5.K(ex7Var, jSONObject, "filters", divInputTemplate.n, this.a.k4());
            ra5.I(ex7Var, jSONObject, "focus", divInputTemplate.o, this.a.x3());
            ra5.D(ex7Var, jSONObject, "font_family", divInputTemplate.p);
            ra5.D(ex7Var, jSONObject, "font_size", divInputTemplate.q);
            ra5.E(ex7Var, jSONObject, "font_size_unit", divInputTemplate.r, DivSizeUnit.TO_STRING);
            ra5.D(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, divInputTemplate.s);
            ra5.E(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, divInputTemplate.t, DivFontWeight.TO_STRING);
            ra5.D(ex7Var, jSONObject, "font_weight_value", divInputTemplate.u);
            ra5.K(ex7Var, jSONObject, "functions", divInputTemplate.v, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divInputTemplate.w, this.a.W6());
            tp3 tp3Var3 = divInputTemplate.x;
            e74 e74Var3 = ParsingConvertersKt.a;
            ra5.E(ex7Var, jSONObject, "highlight_color", tp3Var3, e74Var3);
            ra5.E(ex7Var, jSONObject, "hint_color", divInputTemplate.y, e74Var3);
            ra5.D(ex7Var, jSONObject, "hint_text", divInputTemplate.z);
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divInputTemplate.A);
            ra5.D(ex7Var, jSONObject, "is_enabled", divInputTemplate.B);
            ra5.E(ex7Var, jSONObject, "keyboard_type", divInputTemplate.C, DivInput.KeyboardType.TO_STRING);
            ra5.I(ex7Var, jSONObject, "layout_provider", divInputTemplate.D, this.a.N4());
            ra5.D(ex7Var, jSONObject, "letter_spacing", divInputTemplate.E);
            ra5.D(ex7Var, jSONObject, "line_height", divInputTemplate.F);
            ra5.I(ex7Var, jSONObject, "margins", divInputTemplate.G, this.a.W2());
            ra5.I(ex7Var, jSONObject, "mask", divInputTemplate.H, this.a.t4());
            ra5.D(ex7Var, jSONObject, "max_length", divInputTemplate.I);
            ra5.D(ex7Var, jSONObject, "max_visible_lines", divInputTemplate.J);
            ra5.I(ex7Var, jSONObject, "native_interface", divInputTemplate.K, this.a.w4());
            ra5.I(ex7Var, jSONObject, "paddings", divInputTemplate.L, this.a.W2());
            ra5.D(ex7Var, jSONObject, "reuse_id", divInputTemplate.M);
            ra5.D(ex7Var, jSONObject, "row_span", divInputTemplate.N);
            ra5.D(ex7Var, jSONObject, "select_all_on_focus", divInputTemplate.O);
            ra5.K(ex7Var, jSONObject, "selected_actions", divInputTemplate.P, this.a.v0());
            ra5.E(ex7Var, jSONObject, "text_alignment_horizontal", divInputTemplate.Q, e74Var);
            ra5.E(ex7Var, jSONObject, "text_alignment_vertical", divInputTemplate.R, e74Var2);
            ra5.E(ex7Var, jSONObject, "text_color", divInputTemplate.S, e74Var3);
            ra5.G(ex7Var, jSONObject, "text_variable", divInputTemplate.T);
            ra5.K(ex7Var, jSONObject, "tooltips", divInputTemplate.U, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divInputTemplate.V, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divInputTemplate.W, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divInputTemplate.X, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divInputTemplate.Y, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divInputTemplate.Z, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "input");
            ra5.K(ex7Var, jSONObject, "validators", divInputTemplate.a0, this.a.E4());
            ra5.K(ex7Var, jSONObject, "variable_triggers", divInputTemplate.b0, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divInputTemplate.c0, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divInputTemplate.d0, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divInputTemplate.e0, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divInputTemplate.f0, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divInputTemplate.g0, this.a.W6());
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
        public DivInput a(ex7 ex7Var, DivInputTemplate divInputTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divInputTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divInputTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            tp3 tp3Var = divInputTemplate.b;
            zbb zbbVar = DivInputJsonParser.s;
            e74 e74Var = DivAlignmentHorizontal.FROM_STRING;
            Expression expressionS = sa5.s(ex7Var, tp3Var, jSONObject, "alignment_horizontal", zbbVar, e74Var);
            tp3 tp3Var2 = divInputTemplate.c;
            zbb zbbVar2 = DivInputJsonParser.t;
            e74 e74Var2 = DivAlignmentVertical.FROM_STRING;
            Expression expressionS2 = sa5.s(ex7Var, tp3Var2, jSONObject, "alignment_vertical", zbbVar2, e74Var2);
            tp3 tp3Var3 = divInputTemplate.d;
            zbb zbbVar3 = acb.d;
            e74 e74Var3 = ParsingConvertersKt.g;
            pnb pnbVar = DivInputJsonParser.C;
            Expression expression = DivInputJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var3, jSONObject, "alpha", zbbVar3, e74Var3, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB = sa5.B(ex7Var, divInputTemplate.e, jSONObject, "animators", this.a.s1(), this.a.q1());
            tp3 tp3Var4 = divInputTemplate.f;
            zbb zbbVar4 = DivInputJsonParser.u;
            e74 e74Var4 = DivInput.Autocapitalization.FROM_STRING;
            Expression expression2 = DivInputJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var4, jSONObject, "autocapitalization", zbbVar4, e74Var4, expression2);
            Expression expression3 = expressionV == null ? expression2 : expressionV;
            List listB2 = sa5.B(ex7Var, divInputTemplate.g, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divInputTemplate.h, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var5 = divInputTemplate.i;
            zbb zbbVar5 = acb.b;
            e74 e74Var5 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var5, jSONObject, "column_span", zbbVar5, e74Var5, DivInputJsonParser.D);
            List listB3 = sa5.B(ex7Var, divInputTemplate.j, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB4 = sa5.B(ex7Var, divInputTemplate.k, jSONObject, "enter_key_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var6 = divInputTemplate.l;
            zbb zbbVar6 = DivInputJsonParser.v;
            e74 e74Var6 = DivInput.EnterKeyType.FROM_STRING;
            Expression expression4 = DivInputJsonParser.d;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var6, jSONObject, "enter_key_type", zbbVar6, e74Var6, expression4);
            Expression expression5 = expressionV2 == null ? expression4 : expressionV2;
            List listB5 = sa5.B(ex7Var, divInputTemplate.m, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            List listB6 = sa5.B(ex7Var, divInputTemplate.n, jSONObject, "filters", this.a.l4(), this.a.j4());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divInputTemplate.o, jSONObject, "focus", this.a.y3(), this.a.w3());
            tp3 tp3Var7 = divInputTemplate.p;
            zbb zbbVar7 = acb.c;
            Expression expressionR = sa5.r(ex7Var, tp3Var7, jSONObject, "font_family", zbbVar7);
            tp3 tp3Var8 = divInputTemplate.q;
            pnb pnbVar2 = DivInputJsonParser.E;
            Expression expression6 = DivInputJsonParser.e;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var8, jSONObject, "font_size", zbbVar5, e74Var5, pnbVar2, expression6);
            if (expressionU2 != null) {
                expression6 = expressionU2;
            }
            tp3 tp3Var9 = divInputTemplate.r;
            zbb zbbVar8 = DivInputJsonParser.w;
            e74 e74Var7 = DivSizeUnit.FROM_STRING;
            Expression expression7 = DivInputJsonParser.f;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var9, jSONObject, "font_size_unit", zbbVar8, e74Var7, expression7);
            Expression expression8 = expressionV3 == null ? expression7 : expressionV3;
            Expression expressionR2 = sa5.r(ex7Var, divInputTemplate.s, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h);
            tp3 tp3Var10 = divInputTemplate.t;
            zbb zbbVar9 = DivInputJsonParser.x;
            e74 e74Var8 = DivFontWeight.FROM_STRING;
            Expression expression9 = DivInputJsonParser.g;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var10, jSONObject, FontsContractCompat.Columns.WEIGHT, zbbVar9, e74Var8, expression9);
            Expression expression10 = expressionV4 == null ? expression9 : expressionV4;
            Expression expressionT2 = sa5.t(ex7Var, divInputTemplate.u, jSONObject, "font_weight_value", zbbVar5, e74Var5, DivInputJsonParser.F);
            List listB7 = sa5.B(ex7Var, divInputTemplate.v, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divInputTemplate.w, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivInputJsonParser.h;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            tp3 tp3Var11 = divInputTemplate.x;
            zbb zbbVar10 = acb.f;
            e74 e74Var9 = ParsingConvertersKt.b;
            Expression expressionS3 = sa5.s(ex7Var, tp3Var11, jSONObject, "highlight_color", zbbVar10, e74Var9);
            tp3 tp3Var12 = divInputTemplate.y;
            Expression expression11 = DivInputJsonParser.i;
            Expression expressionV5 = sa5.v(ex7Var, tp3Var12, jSONObject, "hint_color", zbbVar10, e74Var9, expression11);
            if (expressionV5 != null) {
                expression11 = expressionV5;
            }
            Expression expressionR3 = sa5.r(ex7Var, divInputTemplate.z, jSONObject, "hint_text", zbbVar7);
            String str = (String) sa5.m(ex7Var, divInputTemplate.A, jSONObject, TtmlNode.ATTR_ID);
            tp3 tp3Var13 = divInputTemplate.B;
            zbb zbbVar11 = acb.a;
            e74 e74Var10 = ParsingConvertersKt.f;
            Expression expression12 = DivInputJsonParser.j;
            Expression expressionV6 = sa5.v(ex7Var, tp3Var13, jSONObject, "is_enabled", zbbVar11, e74Var10, expression12);
            if (expressionV6 != null) {
                expression12 = expressionV6;
            }
            tp3 tp3Var14 = divInputTemplate.C;
            zbb zbbVar12 = DivInputJsonParser.y;
            e74 e74Var11 = DivInput.KeyboardType.FROM_STRING;
            Expression expression13 = DivInputJsonParser.k;
            Expression expressionV7 = sa5.v(ex7Var, tp3Var14, jSONObject, "keyboard_type", zbbVar12, e74Var11, expression13);
            if (expressionV7 != null) {
                expression13 = expressionV7;
            }
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divInputTemplate.D, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            tp3 tp3Var15 = divInputTemplate.E;
            Expression expression14 = DivInputJsonParser.l;
            Expression expressionV8 = sa5.v(ex7Var, tp3Var15, jSONObject, "letter_spacing", zbbVar3, e74Var3, expression14);
            if (expressionV8 != null) {
                expression14 = expressionV8;
            }
            Expression expressionT3 = sa5.t(ex7Var, divInputTemplate.F, jSONObject, "line_height", zbbVar5, e74Var5, DivInputJsonParser.G);
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divInputTemplate.G, jSONObject, "margins", this.a.X2(), this.a.V2());
            DivInputMask divInputMask = (DivInputMask) sa5.p(ex7Var, divInputTemplate.H, jSONObject, "mask", this.a.u4(), this.a.s4());
            Expression expressionT4 = sa5.t(ex7Var, divInputTemplate.I, jSONObject, "max_length", zbbVar5, e74Var5, DivInputJsonParser.H);
            Expression expressionT5 = sa5.t(ex7Var, divInputTemplate.J, jSONObject, "max_visible_lines", zbbVar5, e74Var5, DivInputJsonParser.I);
            DivInput.NativeInterface nativeInterface = (DivInput.NativeInterface) sa5.p(ex7Var, divInputTemplate.K, jSONObject, "native_interface", this.a.x4(), this.a.v4());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divInputTemplate.L, jSONObject, "paddings", this.a.X2(), this.a.V2());
            Expression expressionR4 = sa5.r(ex7Var, divInputTemplate.M, jSONObject, "reuse_id", zbbVar7);
            Expression expressionT6 = sa5.t(ex7Var, divInputTemplate.N, jSONObject, "row_span", zbbVar5, e74Var5, DivInputJsonParser.J);
            tp3 tp3Var16 = divInputTemplate.O;
            Expression expression15 = DivInputJsonParser.m;
            Expression expressionV9 = sa5.v(ex7Var, tp3Var16, jSONObject, "select_all_on_focus", zbbVar11, e74Var10, expression15);
            Expression expression16 = expressionV9 == null ? expression15 : expressionV9;
            List listB8 = sa5.B(ex7Var, divInputTemplate.P, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var17 = divInputTemplate.Q;
            zbb zbbVar13 = DivInputJsonParser.z;
            Expression expression17 = DivInputJsonParser.n;
            Expression expressionV10 = sa5.v(ex7Var, tp3Var17, jSONObject, "text_alignment_horizontal", zbbVar13, e74Var, expression17);
            Expression expression18 = expressionV10 == null ? expression17 : expressionV10;
            tp3 tp3Var18 = divInputTemplate.R;
            zbb zbbVar14 = DivInputJsonParser.A;
            Expression expression19 = DivInputJsonParser.o;
            Expression expressionV11 = sa5.v(ex7Var, tp3Var18, jSONObject, "text_alignment_vertical", zbbVar14, e74Var2, expression19);
            Expression expression20 = expressionV11 == null ? expression19 : expressionV11;
            tp3 tp3Var19 = divInputTemplate.S;
            Expression expression21 = DivInputJsonParser.p;
            Expression expressionV12 = sa5.v(ex7Var, tp3Var19, jSONObject, "text_color", zbbVar10, e74Var9, expression21);
            Expression expression22 = expressionV12 == null ? expression21 : expressionV12;
            Object objA = sa5.a(ex7Var, divInputTemplate.T, jSONObject, "text_variable");
            y45.i(objA, "resolve(context, templat…e, data, \"text_variable\")");
            String str2 = (String) objA;
            List listB9 = sa5.B(ex7Var, divInputTemplate.U, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divInputTemplate.V, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divInputTemplate.W, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divInputTemplate.X, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divInputTemplate.Y, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divInputTemplate.Z, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivInputJsonParser.K);
            List listB10 = sa5.B(ex7Var, divInputTemplate.a0, jSONObject, "validators", this.a.F4(), this.a.D4());
            List listB11 = sa5.B(ex7Var, divInputTemplate.b0, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB12 = sa5.B(ex7Var, divInputTemplate.c0, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var20 = divInputTemplate.d0;
            zbb zbbVar15 = DivInputJsonParser.B;
            e74 e74Var12 = DivVisibility.FROM_STRING;
            Expression expression23 = DivInputJsonParser.q;
            Expression expressionV13 = sa5.v(ex7Var, tp3Var20, jSONObject, "visibility", zbbVar15, e74Var12, expression23);
            Expression expression24 = expressionV13 == null ? expression23 : expressionV13;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divInputTemplate.e0, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB13 = sa5.B(ex7Var, divInputTemplate.f0, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divInputTemplate.g0, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivInputJsonParser.r;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivInput(divAccessibility, expressionS, expressionS2, expression, listB, expression3, listB2, divBorder, expressionT, listB3, listB4, expression5, listB5, listB6, divFocus, expressionR, expression6, expression8, expressionR2, expression10, expressionT2, listB7, divSize2, expressionS3, expression11, expressionR3, str, expression12, expression13, divLayoutProvider, expression14, expressionT3, divEdgeInsets, divInputMask, expressionT4, expressionT5, nativeInterface, divEdgeInsets2, expressionR4, expressionT6, expression16, listB8, expression18, expression20, expression22, str2, listB9, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB10, listB11, listB12, expression24, divVisibilityAction, listB13, divSize3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(1.0d));
        c = aVar.a(DivInput.Autocapitalization.AUTO);
        d = aVar.a(DivInput.EnterKeyType.DEFAULT);
        e = aVar.a(12L);
        f = aVar.a(DivSizeUnit.SP);
        g = aVar.a(DivFontWeight.REGULAR);
        h = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        i = aVar.a(1929379840);
        j = aVar.a(Boolean.TRUE);
        k = aVar.a(DivInput.KeyboardType.MULTI_LINE_TEXT);
        l = aVar.a(Double.valueOf(0.0d));
        m = aVar.a(Boolean.FALSE);
        n = aVar.a(DivAlignmentHorizontal.START);
        o = aVar.a(DivAlignmentVertical.CENTER);
        p = aVar.a(-16777216);
        q = aVar.a(DivVisibility.VISIBLE);
        r = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        zbb.a aVar2 = zbb.a;
        s = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        t = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        u = aVar2.a(hi.W(DivInput.Autocapitalization.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivInput.Autocapitalization);
            }
        });
        v = aVar2.a(hi.W(DivInput.EnterKeyType.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivInput.EnterKeyType);
            }
        });
        w = aVar2.a(hi.W(DivSizeUnit.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivSizeUnit);
            }
        });
        x = aVar2.a(hi.W(DivFontWeight.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivFontWeight);
            }
        });
        y = aVar2.a(hi.W(DivInput.KeyboardType.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivInput.KeyboardType);
            }
        });
        z = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        A = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        B = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        C = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivInputJsonParser.j(((Double) obj).doubleValue());
            }
        };
        D = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivInputJsonParser.k(((Long) obj).longValue());
            }
        };
        E = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivInputJsonParser.l(((Long) obj).longValue());
            }
        };
        F = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivInputJsonParser.m(((Long) obj).longValue());
            }
        };
        G = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivInputJsonParser.n(((Long) obj).longValue());
            }
        };
        H = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivInputJsonParser.o(((Long) obj).longValue());
            }
        };
        I = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivInputJsonParser.p(((Long) obj).longValue());
            }
        };
        J = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivInputJsonParser.q(((Long) obj).longValue());
            }
        };
        K = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivInputJsonParser.r(list);
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
        return j2 > 0;
    }

    public static final boolean p(long j2) {
        return j2 > 0;
    }

    public static final boolean q(long j2) {
        return j2 >= 0;
    }

    public static final boolean r(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
