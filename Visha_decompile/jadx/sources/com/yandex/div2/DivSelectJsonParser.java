package com.yandex.div2;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSelectJsonParser;
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

public abstract class DivSelectJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final DivSize.d f;
    public static final Expression g;
    public static final Expression h;
    public static final Expression i;
    public static final Expression j;
    public static final DivSize.c k;
    public static final zbb l;
    public static final zbb m;
    public static final zbb n;
    public static final zbb o;
    public static final zbb p;
    public static final pnb q;
    public static final pnb r;
    public static final pnb s;
    public static final pnb t;
    public static final pnb u;
    public static final hm5 v;
    public static final pnb w;
    public static final hm5 x;

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
        public DivSelect a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivSelectJsonParser.l, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivSelectJsonParser.m, DivAlignmentVertical.FROM_STRING);
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivSelectJsonParser.q;
            Expression expression = DivSelectJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            List listR2 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar2, e74Var2, DivSelectJsonParser.r);
            List listR3 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR4 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            zbb zbbVar3 = acb.c;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "font_family", zbbVar3);
            pnb pnbVar2 = DivSelectJsonParser.s;
            Expression expression2 = DivSelectJsonParser.c;
            Expression expression3 = expression;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "font_size", zbbVar2, e74Var2, pnbVar2, expression2);
            if (expressionK2 != null) {
                expression2 = expressionK2;
            }
            zbb zbbVar4 = DivSelectJsonParser.n;
            e74 e74Var3 = DivSizeUnit.FROM_STRING;
            Expression expression4 = DivSelectJsonParser.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "font_size_unit", zbbVar4, e74Var3, expression4);
            Expression expression5 = expressionL == null ? expression4 : expressionL;
            Expression expressionH2 = pa5.h(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h);
            zbb zbbVar5 = DivSelectJsonParser.o;
            e74 e74Var4 = DivFontWeight.FROM_STRING;
            Expression expression6 = DivSelectJsonParser.e;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, zbbVar5, e74Var4, expression6);
            Expression expression7 = expressionL2 == null ? expression6 : expressionL2;
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "font_weight_value", zbbVar2, e74Var2, DivSelectJsonParser.t);
            List listR5 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivSelectJsonParser.f;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            zbb zbbVar6 = acb.f;
            e74 e74Var5 = ParsingConvertersKt.b;
            Expression expression8 = DivSelectJsonParser.g;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "hint_color", zbbVar6, e74Var5, expression8);
            if (expressionL3 != null) {
                expression8 = expressionL3;
            }
            Expression expressionH3 = pa5.h(ex7Var, jSONObject, "hint_text", zbbVar3);
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            Expression expression9 = DivSelectJsonParser.h;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "letter_spacing", zbbVar, e74Var, expression9);
            if (expressionL4 != null) {
                expression9 = expressionL4;
            }
            Expression expressionJ3 = pa5.j(ex7Var, jSONObject, "line_height", zbbVar2, e74Var2, DivSelectJsonParser.u);
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            List listJ = tb5.j(ex7Var, jSONObject, "options", this.a.D6(), DivSelectJsonParser.v);
            y45.i(listJ, "readList(context, data, …arser, OPTIONS_VALIDATOR)");
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            Expression expressionH4 = pa5.h(ex7Var, jSONObject, "reuse_id", zbbVar3);
            Expression expressionJ4 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar2, e74Var2, DivSelectJsonParser.w);
            List listR6 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            Expression expression10 = DivSelectJsonParser.i;
            Expression expressionL5 = pa5.l(ex7Var, jSONObject, "text_color", zbbVar6, e74Var5, expression10);
            Expression expression11 = expressionL5 == null ? expression10 : expressionL5;
            List listR7 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivSelectJsonParser.x);
            Object objD = tb5.d(ex7Var, jSONObject, "value_variable");
            y45.i(objD, "read(context, data, \"value_variable\")");
            String str2 = (String) objD;
            List listR8 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR9 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar7 = DivSelectJsonParser.p;
            e74 e74Var6 = DivVisibility.FROM_STRING;
            Expression expression12 = DivSelectJsonParser.j;
            Expression expressionL6 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar7, e74Var6, expression12);
            if (expressionL6 == null) {
                expressionL6 = expression12;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR10 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivSelectJsonParser.k;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivSelect(divAccessibility, expressionI, expressionI2, expression3, listR, listR2, divBorder, expressionJ, listR3, listR4, divFocus, expressionH, expression2, expression5, expressionH2, expression7, expressionJ2, listR5, divSize2, expression8, expressionH3, str, divLayoutProvider, expression9, expressionJ3, divEdgeInsets, listJ, divEdgeInsets2, expressionH4, expressionJ4, listR6, expression11, listR7, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, str2, listR8, listR9, expressionL6, divVisibilityAction, listR10, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSelect divSelect) {
            y45.j(ex7Var, "context");
            y45.j(divSelect, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divSelect.r(), this.a.H());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divSelect.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divSelect.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divSelect.p());
            tb5.z(ex7Var, jSONObject, "animators", divSelect.A(), this.a.q1());
            tb5.z(ex7Var, jSONObject, "background", divSelect.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divSelect.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "column_span", divSelect.b());
            tb5.z(ex7Var, jSONObject, "disappear_actions", divSelect.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "extensions", divSelect.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divSelect.q(), this.a.w3());
            pa5.p(ex7Var, jSONObject, "font_family", divSelect.l);
            pa5.p(ex7Var, jSONObject, "font_size", divSelect.m);
            pa5.q(ex7Var, jSONObject, "font_size_unit", divSelect.n, DivSizeUnit.TO_STRING);
            pa5.p(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, divSelect.o);
            pa5.q(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, divSelect.p, DivFontWeight.TO_STRING);
            pa5.p(ex7Var, jSONObject, "font_weight_value", divSelect.q);
            tb5.z(ex7Var, jSONObject, "functions", divSelect.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divSelect.getHeight(), this.a.V6());
            Expression expression = divSelect.t;
            e74 e74Var = ParsingConvertersKt.a;
            pa5.q(ex7Var, jSONObject, "hint_color", expression, e74Var);
            pa5.p(ex7Var, jSONObject, "hint_text", divSelect.u);
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divSelect.getId());
            tb5.x(ex7Var, jSONObject, "layout_provider", divSelect.v(), this.a.M4());
            pa5.p(ex7Var, jSONObject, "letter_spacing", divSelect.x);
            pa5.p(ex7Var, jSONObject, "line_height", divSelect.y);
            tb5.x(ex7Var, jSONObject, "margins", divSelect.d(), this.a.V2());
            tb5.z(ex7Var, jSONObject, "options", divSelect.A, this.a.D6());
            tb5.x(ex7Var, jSONObject, "paddings", divSelect.t(), this.a.V2());
            pa5.p(ex7Var, jSONObject, "reuse_id", divSelect.f());
            pa5.p(ex7Var, jSONObject, "row_span", divSelect.e());
            tb5.z(ex7Var, jSONObject, "selected_actions", divSelect.u(), this.a.u0());
            pa5.q(ex7Var, jSONObject, "text_color", divSelect.F, e74Var);
            tb5.z(ex7Var, jSONObject, "tooltips", divSelect.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divSelect.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divSelect.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divSelect.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divSelect.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divSelect.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "select");
            tb5.v(ex7Var, jSONObject, "value_variable", divSelect.M);
            tb5.z(ex7Var, jSONObject, "variable_triggers", divSelect.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divSelect.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divSelect.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divSelect.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divSelect.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divSelect.getWidth(), this.a.V6());
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
        public DivSelectTemplate c(ex7 ex7Var, DivSelectTemplate divSelectTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divSelectTemplate != null ? divSelectTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivSelectJsonParser.l, zC, divSelectTemplate != null ? divSelectTemplate.b : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivSelectJsonParser.m, zC, divSelectTemplate != null ? divSelectTemplate.c : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            zbb zbbVar = acb.d;
            tp3 tp3Var = divSelectTemplate != null ? divSelectTemplate.d : null;
            e74 e74Var = ParsingConvertersKt.g;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", zbbVar, zC, tp3Var, e74Var, DivSelectJsonParser.q);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "animators", zC, divSelectTemplate != null ? divSelectTemplate.e : null, this.a.r1());
            y45.i(tp3VarZ, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "background", zC, divSelectTemplate != null ? divSelectTemplate.f : null, this.a.D1());
            y45.i(tp3VarZ2, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "border", zC, divSelectTemplate != null ? divSelectTemplate.g : null, this.a.J1());
            y45.i(tp3VarS2, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar2 = acb.b;
            tp3 tp3Var2 = divSelectTemplate != null ? divSelectTemplate.h : null;
            e74 e74Var2 = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar2, zC, tp3Var2, e74Var2, DivSelectJsonParser.r);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divSelectTemplate != null ? divSelectTemplate.i : null, this.a.N2());
            y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divSelectTemplate != null ? divSelectTemplate.j : null, this.a.Z2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "focus", zC, divSelectTemplate != null ? divSelectTemplate.k : null, this.a.x3());
            y45.i(tp3VarS3, "readOptionalField(contex…vFocusJsonTemplateParser)");
            zbb zbbVar3 = acb.c;
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "font_family", zbbVar3, zC, divSelectTemplate != null ? divSelectTemplate.l : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…ride, parent?.fontFamily)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "font_size", zbbVar2, zC, divSelectTemplate != null ? divSelectTemplate.m : null, e74Var2, DivSelectJsonParser.s);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…INT, FONT_SIZE_VALIDATOR)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "font_size_unit", DivSelectJsonParser.n, zC, divSelectTemplate != null ? divSelectTemplate.n : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU3, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h, zC, divSelectTemplate != null ? divSelectTemplate.o : null);
            y45.i(tp3VarT2, "readOptionalFieldWithExp…t?.fontVariationSettings)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, FontsContractCompat.Columns.WEIGHT, DivSelectJsonParser.o, zC, divSelectTemplate != null ? divSelectTemplate.p : null, DivFontWeight.FROM_STRING);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…ivFontWeight.FROM_STRING)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "font_weight_value", zbbVar2, zC, divSelectTemplate != null ? divSelectTemplate.q : null, e74Var2, DivSelectJsonParser.t);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…T_WEIGHT_VALUE_VALIDATOR)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "functions", zC, divSelectTemplate != null ? divSelectTemplate.r : null, this.a.G3());
            y45.i(tp3VarZ5, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "height", zC, divSelectTemplate != null ? divSelectTemplate.s : null, this.a.W6());
            y45.i(tp3VarS4, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            zbb zbbVar4 = acb.f;
            tp3 tp3Var3 = divSelectTemplate != null ? divSelectTemplate.t : null;
            e74 e74Var3 = ParsingConvertersKt.b;
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "hint_color", zbbVar4, zC, tp3Var3, e74Var3);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarT3 = ra5.t(ex7VarC, jSONObject, "hint_text", zbbVar3, zC, divSelectTemplate != null ? divSelectTemplate.u : null);
            y45.i(tp3VarT3, "readOptionalFieldWithExp…erride, parent?.hintText)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divSelectTemplate != null ? divSelectTemplate.v : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divSelectTemplate != null ? divSelectTemplate.w : null, this.a.N4());
            y45.i(tp3VarS5, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "letter_spacing", zbbVar, zC, divSelectTemplate != null ? divSelectTemplate.x : null, e74Var);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…pacing, NUMBER_TO_DOUBLE)");
            tp3 tp3VarV5 = ra5.v(ex7VarC, jSONObject, "line_height", zbbVar2, zC, divSelectTemplate != null ? divSelectTemplate.y : null, e74Var2, DivSelectJsonParser.u);
            y45.i(tp3VarV5, "readOptionalFieldWithExp…T, LINE_HEIGHT_VALIDATOR)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "margins", zC, divSelectTemplate != null ? divSelectTemplate.z : null, this.a.W2());
            y45.i(tp3VarS6, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3Var4 = divSelectTemplate != null ? divSelectTemplate.A : null;
            yi5 yi5VarE6 = this.a.E6();
            hm5 hm5Var = DivSelectJsonParser.v;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarM = ra5.m(ex7VarC, jSONObject, "options", zC, tp3Var4, yi5VarE6, hm5Var);
            y45.i(tp3VarM, "readListField(context, d…OPTIONS_VALIDATOR.cast())");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divSelectTemplate != null ? divSelectTemplate.B : null, this.a.W2());
            y45.i(tp3VarS7, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarT4 = ra5.t(ex7VarC, jSONObject, "reuse_id", zbbVar3, zC, divSelectTemplate != null ? divSelectTemplate.C : null);
            y45.i(tp3VarT4, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV6 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar2, zC, divSelectTemplate != null ? divSelectTemplate.D : null, e74Var2, DivSelectJsonParser.w);
            y45.i(tp3VarV6, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divSelectTemplate != null ? divSelectTemplate.E : null, this.a.v0());
            y45.i(tp3VarZ6, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, "text_color", zbbVar4, zC, divSelectTemplate != null ? divSelectTemplate.F : null, e74Var3);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divSelectTemplate != null ? divSelectTemplate.G : null, this.a.K8());
            y45.i(tp3VarZ7, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "transform", zC, divSelectTemplate != null ? divSelectTemplate.H : null, this.a.W8());
            y45.i(tp3VarS8, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divSelectTemplate != null ? divSelectTemplate.I : null, this.a.S1());
            y45.i(tp3VarS9, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divSelectTemplate != null ? divSelectTemplate.J : null, this.a.x1());
            y45.i(tp3VarS10, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divSelectTemplate != null ? divSelectTemplate.K : null, this.a.x1());
            y45.i(tp3VarS11, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var5 = divSelectTemplate != null ? divSelectTemplate.L : null;
            e74 e74Var4 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var2 = DivSelectJsonParser.x;
            y45.h(hm5Var2, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var5, e74Var4, hm5Var2);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "value_variable", zC, divSelectTemplate != null ? divSelectTemplate.M : null);
            y45.i(tp3VarC, "readField(context, data,…e, parent?.valueVariable)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divSelectTemplate != null ? divSelectTemplate.N : null, this.a.Z8());
            y45.i(tp3VarZ8, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "variables", zC, divSelectTemplate != null ? divSelectTemplate.O : null, this.a.f9());
            y45.i(tp3VarZ9, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, "visibility", DivSelectJsonParser.p, zC, divSelectTemplate != null ? divSelectTemplate.P : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU8, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divSelectTemplate != null ? divSelectTemplate.Q : null, this.a.r9());
            y45.i(tp3VarS12, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divSelectTemplate != null ? divSelectTemplate.R : null, this.a.r9());
            y45.i(tp3VarZ10, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "width", zC, divSelectTemplate != null ? divSelectTemplate.S : null, this.a.W6());
            y45.i(tp3VarS13, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivSelectTemplate(tp3VarS, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ, tp3VarZ2, tp3VarS2, tp3VarV2, tp3VarZ3, tp3VarZ4, tp3VarS3, tp3VarT, tp3VarV3, tp3VarU3, tp3VarT2, tp3VarU4, tp3VarV4, tp3VarZ5, tp3VarS4, tp3VarU5, tp3VarT3, tp3VarP, tp3VarS5, tp3VarU6, tp3VarV5, tp3VarS6, tp3VarM, tp3VarS7, tp3VarT4, tp3VarV6, tp3VarZ6, tp3VarU7, tp3VarZ7, tp3VarS8, tp3VarS9, tp3VarS10, tp3VarS11, tp3VarX, tp3VarC, tp3VarZ8, tp3VarZ9, tp3VarU8, tp3VarS12, tp3VarZ10, tp3VarS13);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSelectTemplate divSelectTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divSelectTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divSelectTemplate.a, this.a.I());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divSelectTemplate.b, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divSelectTemplate.c, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divSelectTemplate.d);
            ra5.K(ex7Var, jSONObject, "animators", divSelectTemplate.e, this.a.r1());
            ra5.K(ex7Var, jSONObject, "background", divSelectTemplate.f, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divSelectTemplate.g, this.a.J1());
            ra5.D(ex7Var, jSONObject, "column_span", divSelectTemplate.h);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divSelectTemplate.i, this.a.N2());
            ra5.K(ex7Var, jSONObject, "extensions", divSelectTemplate.j, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divSelectTemplate.k, this.a.x3());
            ra5.D(ex7Var, jSONObject, "font_family", divSelectTemplate.l);
            ra5.D(ex7Var, jSONObject, "font_size", divSelectTemplate.m);
            ra5.E(ex7Var, jSONObject, "font_size_unit", divSelectTemplate.n, DivSizeUnit.TO_STRING);
            ra5.D(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, divSelectTemplate.o);
            ra5.E(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, divSelectTemplate.p, DivFontWeight.TO_STRING);
            ra5.D(ex7Var, jSONObject, "font_weight_value", divSelectTemplate.q);
            ra5.K(ex7Var, jSONObject, "functions", divSelectTemplate.r, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divSelectTemplate.s, this.a.W6());
            tp3 tp3Var = divSelectTemplate.t;
            e74 e74Var = ParsingConvertersKt.a;
            ra5.E(ex7Var, jSONObject, "hint_color", tp3Var, e74Var);
            ra5.D(ex7Var, jSONObject, "hint_text", divSelectTemplate.u);
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divSelectTemplate.v);
            ra5.I(ex7Var, jSONObject, "layout_provider", divSelectTemplate.w, this.a.N4());
            ra5.D(ex7Var, jSONObject, "letter_spacing", divSelectTemplate.x);
            ra5.D(ex7Var, jSONObject, "line_height", divSelectTemplate.y);
            ra5.I(ex7Var, jSONObject, "margins", divSelectTemplate.z, this.a.W2());
            ra5.K(ex7Var, jSONObject, "options", divSelectTemplate.A, this.a.E6());
            ra5.I(ex7Var, jSONObject, "paddings", divSelectTemplate.B, this.a.W2());
            ra5.D(ex7Var, jSONObject, "reuse_id", divSelectTemplate.C);
            ra5.D(ex7Var, jSONObject, "row_span", divSelectTemplate.D);
            ra5.K(ex7Var, jSONObject, "selected_actions", divSelectTemplate.E, this.a.v0());
            ra5.E(ex7Var, jSONObject, "text_color", divSelectTemplate.F, e74Var);
            ra5.K(ex7Var, jSONObject, "tooltips", divSelectTemplate.G, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divSelectTemplate.H, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divSelectTemplate.I, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divSelectTemplate.J, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divSelectTemplate.K, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divSelectTemplate.L, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "select");
            ra5.G(ex7Var, jSONObject, "value_variable", divSelectTemplate.M);
            ra5.K(ex7Var, jSONObject, "variable_triggers", divSelectTemplate.N, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divSelectTemplate.O, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divSelectTemplate.P, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divSelectTemplate.Q, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divSelectTemplate.R, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divSelectTemplate.S, this.a.W6());
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
        public DivSelect a(ex7 ex7Var, DivSelectTemplate divSelectTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divSelectTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divSelectTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            Expression expressionS = sa5.s(ex7Var, divSelectTemplate.b, jSONObject, "alignment_horizontal", DivSelectJsonParser.l, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divSelectTemplate.c, jSONObject, "alignment_vertical", DivSelectJsonParser.m, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var = divSelectTemplate.d;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivSelectJsonParser.q;
            Expression expression = DivSelectJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB = sa5.B(ex7Var, divSelectTemplate.e, jSONObject, "animators", this.a.s1(), this.a.q1());
            List listB2 = sa5.B(ex7Var, divSelectTemplate.f, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divSelectTemplate.g, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var2 = divSelectTemplate.h;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var2, jSONObject, "column_span", zbbVar2, e74Var2, DivSelectJsonParser.r);
            List listB3 = sa5.B(ex7Var, divSelectTemplate.i, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB4 = sa5.B(ex7Var, divSelectTemplate.j, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divSelectTemplate.k, jSONObject, "focus", this.a.y3(), this.a.w3());
            tp3 tp3Var3 = divSelectTemplate.l;
            zbb zbbVar3 = acb.c;
            Expression expressionR = sa5.r(ex7Var, tp3Var3, jSONObject, "font_family", zbbVar3);
            tp3 tp3Var4 = divSelectTemplate.m;
            pnb pnbVar2 = DivSelectJsonParser.s;
            Expression expression2 = DivSelectJsonParser.c;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var4, jSONObject, "font_size", zbbVar2, e74Var2, pnbVar2, expression2);
            if (expressionU2 != null) {
                expression2 = expressionU2;
            }
            tp3 tp3Var5 = divSelectTemplate.n;
            zbb zbbVar4 = DivSelectJsonParser.n;
            e74 e74Var3 = DivSizeUnit.FROM_STRING;
            Expression expression3 = DivSelectJsonParser.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var5, jSONObject, "font_size_unit", zbbVar4, e74Var3, expression3);
            Expression expression4 = expressionV == null ? expression3 : expressionV;
            Expression expressionR2 = sa5.r(ex7Var, divSelectTemplate.o, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h);
            tp3 tp3Var6 = divSelectTemplate.p;
            zbb zbbVar5 = DivSelectJsonParser.o;
            e74 e74Var4 = DivFontWeight.FROM_STRING;
            Expression expression5 = DivSelectJsonParser.e;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var6, jSONObject, FontsContractCompat.Columns.WEIGHT, zbbVar5, e74Var4, expression5);
            Expression expression6 = expressionV2 == null ? expression5 : expressionV2;
            Expression expressionT2 = sa5.t(ex7Var, divSelectTemplate.q, jSONObject, "font_weight_value", zbbVar2, e74Var2, DivSelectJsonParser.t);
            List listB5 = sa5.B(ex7Var, divSelectTemplate.r, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divSelectTemplate.s, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivSelectJsonParser.f;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            tp3 tp3Var7 = divSelectTemplate.t;
            zbb zbbVar6 = acb.f;
            e74 e74Var5 = ParsingConvertersKt.b;
            Expression expression7 = DivSelectJsonParser.g;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var7, jSONObject, "hint_color", zbbVar6, e74Var5, expression7);
            if (expressionV3 != null) {
                expression7 = expressionV3;
            }
            Expression expressionR3 = sa5.r(ex7Var, divSelectTemplate.u, jSONObject, "hint_text", zbbVar3);
            String str = (String) sa5.m(ex7Var, divSelectTemplate.v, jSONObject, TtmlNode.ATTR_ID);
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divSelectTemplate.w, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            tp3 tp3Var8 = divSelectTemplate.x;
            Expression expression8 = DivSelectJsonParser.h;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var8, jSONObject, "letter_spacing", zbbVar, e74Var, expression8);
            if (expressionV4 != null) {
                expression8 = expressionV4;
            }
            Expression expressionT3 = sa5.t(ex7Var, divSelectTemplate.y, jSONObject, "line_height", zbbVar2, e74Var2, DivSelectJsonParser.u);
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divSelectTemplate.z, jSONObject, "margins", this.a.X2(), this.a.V2());
            List listL = sa5.l(ex7Var, divSelectTemplate.A, jSONObject, "options", this.a.F6(), this.a.D6(), DivSelectJsonParser.v);
            y45.i(listL, "resolveList(context, tem…arser, OPTIONS_VALIDATOR)");
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divSelectTemplate.B, jSONObject, "paddings", this.a.X2(), this.a.V2());
            Expression expressionR4 = sa5.r(ex7Var, divSelectTemplate.C, jSONObject, "reuse_id", zbbVar3);
            Expression expressionT4 = sa5.t(ex7Var, divSelectTemplate.D, jSONObject, "row_span", zbbVar2, e74Var2, DivSelectJsonParser.w);
            List listB6 = sa5.B(ex7Var, divSelectTemplate.E, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var9 = divSelectTemplate.F;
            Expression expression9 = DivSelectJsonParser.i;
            Expression expressionV5 = sa5.v(ex7Var, tp3Var9, jSONObject, "text_color", zbbVar6, e74Var5, expression9);
            Expression expression10 = expressionV5 == null ? expression9 : expressionV5;
            List listB7 = sa5.B(ex7Var, divSelectTemplate.G, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divSelectTemplate.H, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divSelectTemplate.I, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divSelectTemplate.J, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divSelectTemplate.K, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divSelectTemplate.L, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivSelectJsonParser.x);
            Object objA = sa5.a(ex7Var, divSelectTemplate.M, jSONObject, "value_variable");
            y45.i(objA, "resolve(context, templat…, data, \"value_variable\")");
            String str2 = (String) objA;
            List listB8 = sa5.B(ex7Var, divSelectTemplate.N, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB9 = sa5.B(ex7Var, divSelectTemplate.O, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var10 = divSelectTemplate.P;
            zbb zbbVar7 = DivSelectJsonParser.p;
            e74 e74Var6 = DivVisibility.FROM_STRING;
            Expression expression11 = DivSelectJsonParser.j;
            Expression expressionV6 = sa5.v(ex7Var, tp3Var10, jSONObject, "visibility", zbbVar7, e74Var6, expression11);
            Expression expression12 = expressionV6 == null ? expression11 : expressionV6;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divSelectTemplate.Q, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB10 = sa5.B(ex7Var, divSelectTemplate.R, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divSelectTemplate.S, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivSelectJsonParser.k;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivSelect(divAccessibility, expressionS, expressionS2, expression, listB, listB2, divBorder, expressionT, listB3, listB4, divFocus, expressionR, expression2, expression4, expressionR2, expression6, expressionT2, listB5, divSize2, expression7, expressionR3, str, divLayoutProvider, expression8, expressionT3, divEdgeInsets, listL, divEdgeInsets2, expressionR4, expressionT4, listB6, expression10, listB7, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, str2, listB8, listB9, expression12, divVisibilityAction, listB10, divSize3);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(1.0d));
        c = aVar.a(12L);
        d = aVar.a(DivSizeUnit.SP);
        e = aVar.a(DivFontWeight.REGULAR);
        f = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        g = aVar.a(1929379840);
        h = aVar.a(Double.valueOf(0.0d));
        i = aVar.a(-16777216);
        j = aVar.a(DivVisibility.VISIBLE);
        k = new DivSize.c(new DivMatchParentSize(null, 1, null));
        zbb.a aVar2 = zbb.a;
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
        n = aVar2.a(hi.W(DivSizeUnit.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivSizeUnit);
            }
        });
        o = aVar2.a(hi.W(DivFontWeight.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivFontWeight);
            }
        });
        p = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        q = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSelectJsonParser.i(((Double) obj).doubleValue());
            }
        };
        r = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSelectJsonParser.j(((Long) obj).longValue());
            }
        };
        s = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSelectJsonParser.k(((Long) obj).longValue());
            }
        };
        t = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSelectJsonParser.l(((Long) obj).longValue());
            }
        };
        u = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSelectJsonParser.m(((Long) obj).longValue());
            }
        };
        v = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivSelectJsonParser.n(list);
            }
        };
        w = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSelectJsonParser.o(((Long) obj).longValue());
            }
        };
        x = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivSelectJsonParser.p(list);
            }
        };
    }

    public static final boolean i(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean j(long j2) {
        return j2 >= 0;
    }

    public static final boolean k(long j2) {
        return j2 >= 0;
    }

    public static final boolean l(long j2) {
        return j2 > 0;
    }

    public static final boolean m(long j2) {
        return j2 >= 0;
    }

    public static final boolean n(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }

    public static final boolean o(long j2) {
        return j2 >= 0;
    }

    public static final boolean p(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
