package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivTabsJsonParser;
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

public abstract class DivTabsJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final DivSize.d e;
    public static final Expression f;
    public static final Expression g;
    public static final Expression h;
    public static final DivEdgeInsets i;
    public static final Expression j;
    public static final DivEdgeInsets k;
    public static final Expression l;
    public static final DivSize.c m;
    public static final zbb n;
    public static final zbb o;
    public static final zbb p;
    public static final pnb q;
    public static final pnb r;
    public static final hm5 s;
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
        public DivTabs a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivTabsJsonParser.n, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivTabsJsonParser.o, DivAlignmentVertical.FROM_STRING);
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivTabsJsonParser.q;
            Expression expression = DivTabsJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            List listR2 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar2, e74Var2, DivTabsJsonParser.r);
            List listR3 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            zbb zbbVar3 = acb.a;
            e74 e74Var3 = ParsingConvertersKt.f;
            Expression expression2 = DivTabsJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "dynamic_height", zbbVar3, e74Var3, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            List listR4 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR5 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            Expression expression3 = DivTabsJsonParser.d;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "has_separator", zbbVar3, e74Var3, expression3);
            if (expressionL2 != null) {
                expression3 = expressionL2;
            }
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivTabsJsonParser.e;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            List listJ = tb5.j(ex7Var, jSONObject, "items", this.a.L7(), DivTabsJsonParser.s);
            y45.i(listJ, "readList(context, data, …yParser, ITEMS_VALIDATOR)");
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            Expression expression4 = DivTabsJsonParser.f;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "restrict_parent_scroll", zbbVar3, e74Var3, expression4);
            if (expressionL3 != null) {
                expression4 = expressionL3;
            }
            Expression expressionH = pa5.h(ex7Var, jSONObject, "reuse_id", acb.c);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar2, e74Var2, DivTabsJsonParser.t);
            List listR6 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            pnb pnbVar2 = DivTabsJsonParser.u;
            Expression expression5 = DivTabsJsonParser.g;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "selected_tab", zbbVar2, e74Var2, pnbVar2, expression5);
            if (expressionK2 != null) {
                expression5 = expressionK2;
            }
            zbb zbbVar4 = acb.f;
            e74 e74Var4 = ParsingConvertersKt.b;
            Expression expression6 = DivTabsJsonParser.h;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "separator_color", zbbVar4, e74Var4, expression6);
            Expression expression7 = expressionL4 == null ? expression6 : expressionL4;
            DivEdgeInsets divEdgeInsets3 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "separator_paddings", this.a.V2());
            if (divEdgeInsets3 == null) {
                divEdgeInsets3 = DivTabsJsonParser.i;
            }
            DivEdgeInsets divEdgeInsets4 = divEdgeInsets3;
            y45.i(divEdgeInsets4, "JsonPropertyParser.readO…OR_PADDINGS_DEFAULT_VALUE");
            Expression expression8 = DivTabsJsonParser.j;
            Expression expressionL5 = pa5.l(ex7Var, jSONObject, "switch_tabs_by_content_swipe_enabled", zbbVar3, e74Var3, expression8);
            Expression expression9 = expressionL5 == null ? expression8 : expressionL5;
            DivTabs.TabTitleDelimiter tabTitleDelimiter = (DivTabs.TabTitleDelimiter) tb5.n(ex7Var, jSONObject, "tab_title_delimiter", this.a.R7());
            DivTabs.TabTitleStyle tabTitleStyle = (DivTabs.TabTitleStyle) tb5.n(ex7Var, jSONObject, "tab_title_style", this.a.U7());
            DivEdgeInsets divEdgeInsets5 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "title_paddings", this.a.V2());
            if (divEdgeInsets5 == null) {
                divEdgeInsets5 = DivTabsJsonParser.k;
            }
            DivEdgeInsets divEdgeInsets6 = divEdgeInsets5;
            y45.i(divEdgeInsets6, "JsonPropertyParser.readO…LE_PADDINGS_DEFAULT_VALUE");
            List listR7 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivTabsJsonParser.v);
            List listR8 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR9 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar5 = DivTabsJsonParser.p;
            e74 e74Var5 = DivVisibility.FROM_STRING;
            Expression expression10 = DivTabsJsonParser.l;
            Expression expressionL6 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar5, e74Var5, expression10);
            if (expressionL6 == null) {
                expressionL6 = expression10;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR10 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivTabsJsonParser.m;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivTabs(divAccessibility, expressionI, expressionI2, expression, listR, listR2, divBorder, expressionJ, listR3, expression2, listR4, divFocus, listR5, expression3, divSize2, str, listJ, divLayoutProvider, divEdgeInsets, divEdgeInsets2, expression4, expressionH, expressionJ2, listR6, expression5, expression7, divEdgeInsets4, expression9, tabTitleDelimiter, tabTitleStyle, divEdgeInsets6, listR7, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR8, listR9, expressionL6, divVisibilityAction, listR10, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTabs divTabs) {
            y45.j(ex7Var, "context");
            y45.j(divTabs, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divTabs.r(), this.a.H());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divTabs.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divTabs.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divTabs.p());
            tb5.z(ex7Var, jSONObject, "animators", divTabs.A(), this.a.q1());
            tb5.z(ex7Var, jSONObject, "background", divTabs.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divTabs.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "column_span", divTabs.b());
            tb5.z(ex7Var, jSONObject, "disappear_actions", divTabs.k(), this.a.M2());
            pa5.p(ex7Var, jSONObject, "dynamic_height", divTabs.j);
            tb5.z(ex7Var, jSONObject, "extensions", divTabs.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divTabs.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divTabs.y(), this.a.F3());
            pa5.p(ex7Var, jSONObject, "has_separator", divTabs.n);
            tb5.x(ex7Var, jSONObject, "height", divTabs.getHeight(), this.a.V6());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divTabs.getId());
            tb5.z(ex7Var, jSONObject, "items", divTabs.q, this.a.L7());
            tb5.x(ex7Var, jSONObject, "layout_provider", divTabs.v(), this.a.M4());
            tb5.x(ex7Var, jSONObject, "margins", divTabs.d(), this.a.V2());
            tb5.x(ex7Var, jSONObject, "paddings", divTabs.t(), this.a.V2());
            pa5.p(ex7Var, jSONObject, "restrict_parent_scroll", divTabs.u);
            pa5.p(ex7Var, jSONObject, "reuse_id", divTabs.f());
            pa5.p(ex7Var, jSONObject, "row_span", divTabs.e());
            tb5.z(ex7Var, jSONObject, "selected_actions", divTabs.u(), this.a.u0());
            pa5.p(ex7Var, jSONObject, "selected_tab", divTabs.y);
            pa5.q(ex7Var, jSONObject, "separator_color", divTabs.z, ParsingConvertersKt.a);
            tb5.x(ex7Var, jSONObject, "separator_paddings", divTabs.A, this.a.V2());
            pa5.p(ex7Var, jSONObject, "switch_tabs_by_content_swipe_enabled", divTabs.B);
            tb5.x(ex7Var, jSONObject, "tab_title_delimiter", divTabs.C, this.a.R7());
            tb5.x(ex7Var, jSONObject, "tab_title_style", divTabs.D, this.a.U7());
            tb5.x(ex7Var, jSONObject, "title_paddings", divTabs.E, this.a.V2());
            tb5.z(ex7Var, jSONObject, "tooltips", divTabs.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divTabs.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divTabs.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divTabs.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divTabs.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divTabs.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "tabs");
            tb5.z(ex7Var, jSONObject, "variable_triggers", divTabs.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divTabs.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divTabs.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divTabs.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divTabs.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divTabs.getWidth(), this.a.V6());
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
        public DivTabsTemplate c(ex7 ex7Var, DivTabsTemplate divTabsTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divTabsTemplate != null ? divTabsTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivTabsJsonParser.n, zC, divTabsTemplate != null ? divTabsTemplate.b : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivTabsJsonParser.o, zC, divTabsTemplate != null ? divTabsTemplate.c : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divTabsTemplate != null ? divTabsTemplate.d : null, ParsingConvertersKt.g, DivTabsJsonParser.q);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "animators", zC, divTabsTemplate != null ? divTabsTemplate.e : null, this.a.r1());
            y45.i(tp3VarZ, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "background", zC, divTabsTemplate != null ? divTabsTemplate.f : null, this.a.D1());
            y45.i(tp3VarZ2, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "border", zC, divTabsTemplate != null ? divTabsTemplate.g : null, this.a.J1());
            y45.i(tp3VarS2, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divTabsTemplate != null ? divTabsTemplate.h : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar, zC, tp3Var, e74Var, DivTabsJsonParser.r);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divTabsTemplate != null ? divTabsTemplate.i : null, this.a.N2());
            y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
            zbb zbbVar2 = acb.a;
            tp3 tp3Var2 = divTabsTemplate != null ? divTabsTemplate.j : null;
            e74 e74Var2 = ParsingConvertersKt.f;
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "dynamic_height", zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…icHeight, ANY_TO_BOOLEAN)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divTabsTemplate != null ? divTabsTemplate.k : null, this.a.Z2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "focus", zC, divTabsTemplate != null ? divTabsTemplate.l : null, this.a.x3());
            y45.i(tp3VarS3, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "functions", zC, divTabsTemplate != null ? divTabsTemplate.m : null, this.a.G3());
            y45.i(tp3VarZ5, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "has_separator", zbbVar2, zC, divTabsTemplate != null ? divTabsTemplate.n : null, e74Var2);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…eparator, ANY_TO_BOOLEAN)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "height", zC, divTabsTemplate != null ? divTabsTemplate.o : null, this.a.W6());
            y45.i(tp3VarS4, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divTabsTemplate != null ? divTabsTemplate.p : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3Var3 = divTabsTemplate != null ? divTabsTemplate.q : null;
            yi5 yi5VarM7 = this.a.M7();
            hm5 hm5Var = DivTabsJsonParser.s;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarM = ra5.m(ex7VarC, jSONObject, "items", zC, tp3Var3, yi5VarM7, hm5Var);
            y45.i(tp3VarM, "readListField(context, d…, ITEMS_VALIDATOR.cast())");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divTabsTemplate != null ? divTabsTemplate.r : null, this.a.N4());
            y45.i(tp3VarS5, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "margins", zC, divTabsTemplate != null ? divTabsTemplate.s : null, this.a.W2());
            y45.i(tp3VarS6, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divTabsTemplate != null ? divTabsTemplate.t : null, this.a.W2());
            y45.i(tp3VarS7, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "restrict_parent_scroll", zbbVar2, zC, divTabsTemplate != null ? divTabsTemplate.u : null, e74Var2);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…ntScroll, ANY_TO_BOOLEAN)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "reuse_id", acb.c, zC, divTabsTemplate != null ? divTabsTemplate.v : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar, zC, divTabsTemplate != null ? divTabsTemplate.w : null, e74Var, DivTabsJsonParser.t);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divTabsTemplate != null ? divTabsTemplate.x : null, this.a.v0());
            y45.i(tp3VarZ6, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "selected_tab", zbbVar, zC, divTabsTemplate != null ? divTabsTemplate.y : null, e74Var, DivTabsJsonParser.u);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…, SELECTED_TAB_VALIDATOR)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "separator_color", acb.f, zC, divTabsTemplate != null ? divTabsTemplate.z : null, ParsingConvertersKt.b);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "separator_paddings", zC, divTabsTemplate != null ? divTabsTemplate.A : null, this.a.W2());
            y45.i(tp3VarS8, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, "switch_tabs_by_content_swipe_enabled", zbbVar2, zC, divTabsTemplate != null ? divTabsTemplate.B : null, e74Var2);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…eEnabled, ANY_TO_BOOLEAN)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "tab_title_delimiter", zC, divTabsTemplate != null ? divTabsTemplate.C : null, this.a.S7());
            y45.i(tp3VarS9, "readOptionalField(contex…imiterJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "tab_title_style", zC, divTabsTemplate != null ? divTabsTemplate.D : null, this.a.V7());
            y45.i(tp3VarS10, "readOptionalField(contex…eStyleJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "title_paddings", zC, divTabsTemplate != null ? divTabsTemplate.E : null, this.a.W2());
            y45.i(tp3VarS11, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divTabsTemplate != null ? divTabsTemplate.F : null, this.a.K8());
            y45.i(tp3VarZ7, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "transform", zC, divTabsTemplate != null ? divTabsTemplate.G : null, this.a.W8());
            y45.i(tp3VarS12, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divTabsTemplate != null ? divTabsTemplate.H : null, this.a.S1());
            y45.i(tp3VarS13, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divTabsTemplate != null ? divTabsTemplate.I : null, this.a.x1());
            y45.i(tp3VarS14, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS15 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divTabsTemplate != null ? divTabsTemplate.J : null, this.a.x1());
            y45.i(tp3VarS15, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var4 = divTabsTemplate != null ? divTabsTemplate.K : null;
            e74 e74Var3 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var2 = DivTabsJsonParser.v;
            y45.h(hm5Var2, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var4, e74Var3, hm5Var2);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divTabsTemplate != null ? divTabsTemplate.L : null, this.a.Z8());
            y45.i(tp3VarZ8, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "variables", zC, divTabsTemplate != null ? divTabsTemplate.M : null, this.a.f9());
            y45.i(tp3VarZ9, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, "visibility", DivTabsJsonParser.p, zC, divTabsTemplate != null ? divTabsTemplate.N : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU8, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS16 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divTabsTemplate != null ? divTabsTemplate.O : null, this.a.r9());
            y45.i(tp3VarS16, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divTabsTemplate != null ? divTabsTemplate.P : null, this.a.r9());
            y45.i(tp3VarZ10, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS17 = ra5.s(ex7VarC, jSONObject, "width", zC, divTabsTemplate != null ? divTabsTemplate.Q : null, this.a.W6());
            y45.i(tp3VarS17, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivTabsTemplate(tp3VarS, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ, tp3VarZ2, tp3VarS2, tp3VarV2, tp3VarZ3, tp3VarU3, tp3VarZ4, tp3VarS3, tp3VarZ5, tp3VarU4, tp3VarS4, tp3VarP, tp3VarM, tp3VarS5, tp3VarS6, tp3VarS7, tp3VarU5, tp3VarT, tp3VarV3, tp3VarZ6, tp3VarV4, tp3VarU6, tp3VarS8, tp3VarU7, tp3VarS9, tp3VarS10, tp3VarS11, tp3VarZ7, tp3VarS12, tp3VarS13, tp3VarS14, tp3VarS15, tp3VarX, tp3VarZ8, tp3VarZ9, tp3VarU8, tp3VarS16, tp3VarZ10, tp3VarS17);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTabsTemplate divTabsTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divTabsTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divTabsTemplate.a, this.a.I());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divTabsTemplate.b, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divTabsTemplate.c, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divTabsTemplate.d);
            ra5.K(ex7Var, jSONObject, "animators", divTabsTemplate.e, this.a.r1());
            ra5.K(ex7Var, jSONObject, "background", divTabsTemplate.f, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divTabsTemplate.g, this.a.J1());
            ra5.D(ex7Var, jSONObject, "column_span", divTabsTemplate.h);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divTabsTemplate.i, this.a.N2());
            ra5.D(ex7Var, jSONObject, "dynamic_height", divTabsTemplate.j);
            ra5.K(ex7Var, jSONObject, "extensions", divTabsTemplate.k, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divTabsTemplate.l, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divTabsTemplate.m, this.a.G3());
            ra5.D(ex7Var, jSONObject, "has_separator", divTabsTemplate.n);
            ra5.I(ex7Var, jSONObject, "height", divTabsTemplate.o, this.a.W6());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divTabsTemplate.p);
            ra5.K(ex7Var, jSONObject, "items", divTabsTemplate.q, this.a.M7());
            ra5.I(ex7Var, jSONObject, "layout_provider", divTabsTemplate.r, this.a.N4());
            ra5.I(ex7Var, jSONObject, "margins", divTabsTemplate.s, this.a.W2());
            ra5.I(ex7Var, jSONObject, "paddings", divTabsTemplate.t, this.a.W2());
            ra5.D(ex7Var, jSONObject, "restrict_parent_scroll", divTabsTemplate.u);
            ra5.D(ex7Var, jSONObject, "reuse_id", divTabsTemplate.v);
            ra5.D(ex7Var, jSONObject, "row_span", divTabsTemplate.w);
            ra5.K(ex7Var, jSONObject, "selected_actions", divTabsTemplate.x, this.a.v0());
            ra5.D(ex7Var, jSONObject, "selected_tab", divTabsTemplate.y);
            ra5.E(ex7Var, jSONObject, "separator_color", divTabsTemplate.z, ParsingConvertersKt.a);
            ra5.I(ex7Var, jSONObject, "separator_paddings", divTabsTemplate.A, this.a.W2());
            ra5.D(ex7Var, jSONObject, "switch_tabs_by_content_swipe_enabled", divTabsTemplate.B);
            ra5.I(ex7Var, jSONObject, "tab_title_delimiter", divTabsTemplate.C, this.a.S7());
            ra5.I(ex7Var, jSONObject, "tab_title_style", divTabsTemplate.D, this.a.V7());
            ra5.I(ex7Var, jSONObject, "title_paddings", divTabsTemplate.E, this.a.W2());
            ra5.K(ex7Var, jSONObject, "tooltips", divTabsTemplate.F, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divTabsTemplate.G, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divTabsTemplate.H, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divTabsTemplate.I, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divTabsTemplate.J, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divTabsTemplate.K, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "tabs");
            ra5.K(ex7Var, jSONObject, "variable_triggers", divTabsTemplate.L, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divTabsTemplate.M, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divTabsTemplate.N, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divTabsTemplate.O, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divTabsTemplate.P, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divTabsTemplate.Q, this.a.W6());
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
        public DivTabs a(ex7 ex7Var, DivTabsTemplate divTabsTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divTabsTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divTabsTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            Expression expressionS = sa5.s(ex7Var, divTabsTemplate.b, jSONObject, "alignment_horizontal", DivTabsJsonParser.n, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divTabsTemplate.c, jSONObject, "alignment_vertical", DivTabsJsonParser.o, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var = divTabsTemplate.d;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivTabsJsonParser.q;
            Expression expression = DivTabsJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB = sa5.B(ex7Var, divTabsTemplate.e, jSONObject, "animators", this.a.s1(), this.a.q1());
            List listB2 = sa5.B(ex7Var, divTabsTemplate.f, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divTabsTemplate.g, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var2 = divTabsTemplate.h;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var2, jSONObject, "column_span", zbbVar2, e74Var2, DivTabsJsonParser.r);
            List listB3 = sa5.B(ex7Var, divTabsTemplate.i, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            tp3 tp3Var3 = divTabsTemplate.j;
            zbb zbbVar3 = acb.a;
            e74 e74Var3 = ParsingConvertersKt.f;
            Expression expression2 = DivTabsJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var3, jSONObject, "dynamic_height", zbbVar3, e74Var3, expression2);
            if (expressionV != null) {
                expression2 = expressionV;
            }
            List listB4 = sa5.B(ex7Var, divTabsTemplate.k, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divTabsTemplate.l, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB5 = sa5.B(ex7Var, divTabsTemplate.m, jSONObject, "functions", this.a.H3(), this.a.F3());
            tp3 tp3Var4 = divTabsTemplate.n;
            Expression expression3 = DivTabsJsonParser.d;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var4, jSONObject, "has_separator", zbbVar3, e74Var3, expression3);
            if (expressionV2 != null) {
                expression3 = expressionV2;
            }
            DivSize divSize = (DivSize) sa5.p(ex7Var, divTabsTemplate.o, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivTabsJsonParser.e;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) sa5.m(ex7Var, divTabsTemplate.p, jSONObject, TtmlNode.ATTR_ID);
            List listL = sa5.l(ex7Var, divTabsTemplate.q, jSONObject, "items", this.a.N7(), this.a.L7(), DivTabsJsonParser.s);
            y45.i(listL, "resolveList(context, tem…yParser, ITEMS_VALIDATOR)");
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divTabsTemplate.r, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divTabsTemplate.s, jSONObject, "margins", this.a.X2(), this.a.V2());
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divTabsTemplate.t, jSONObject, "paddings", this.a.X2(), this.a.V2());
            tp3 tp3Var5 = divTabsTemplate.u;
            Expression expression4 = DivTabsJsonParser.f;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var5, jSONObject, "restrict_parent_scroll", zbbVar3, e74Var3, expression4);
            if (expressionV3 != null) {
                expression4 = expressionV3;
            }
            Expression expressionR = sa5.r(ex7Var, divTabsTemplate.v, jSONObject, "reuse_id", acb.c);
            Expression expressionT2 = sa5.t(ex7Var, divTabsTemplate.w, jSONObject, "row_span", zbbVar2, e74Var2, DivTabsJsonParser.t);
            List listB6 = sa5.B(ex7Var, divTabsTemplate.x, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var6 = divTabsTemplate.y;
            pnb pnbVar2 = DivTabsJsonParser.u;
            Expression expression5 = DivTabsJsonParser.g;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var6, jSONObject, "selected_tab", zbbVar2, e74Var2, pnbVar2, expression5);
            if (expressionU2 != null) {
                expression5 = expressionU2;
            }
            tp3 tp3Var7 = divTabsTemplate.z;
            zbb zbbVar4 = acb.f;
            e74 e74Var4 = ParsingConvertersKt.b;
            Expression expression6 = DivTabsJsonParser.h;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var7, jSONObject, "separator_color", zbbVar4, e74Var4, expression6);
            Expression expression7 = expressionV4 == null ? expression6 : expressionV4;
            DivEdgeInsets divEdgeInsets3 = (DivEdgeInsets) sa5.p(ex7Var, divTabsTemplate.A, jSONObject, "separator_paddings", this.a.X2(), this.a.V2());
            if (divEdgeInsets3 == null) {
                divEdgeInsets3 = DivTabsJsonParser.i;
            }
            DivEdgeInsets divEdgeInsets4 = divEdgeInsets3;
            y45.i(divEdgeInsets4, "JsonFieldResolver.resolv…OR_PADDINGS_DEFAULT_VALUE");
            tp3 tp3Var8 = divTabsTemplate.B;
            Expression expression8 = DivTabsJsonParser.j;
            Expression expressionV5 = sa5.v(ex7Var, tp3Var8, jSONObject, "switch_tabs_by_content_swipe_enabled", zbbVar3, e74Var3, expression8);
            Expression expression9 = expressionV5 == null ? expression8 : expressionV5;
            DivTabs.TabTitleDelimiter tabTitleDelimiter = (DivTabs.TabTitleDelimiter) sa5.p(ex7Var, divTabsTemplate.C, jSONObject, "tab_title_delimiter", this.a.T7(), this.a.R7());
            DivTabs.TabTitleStyle tabTitleStyle = (DivTabs.TabTitleStyle) sa5.p(ex7Var, divTabsTemplate.D, jSONObject, "tab_title_style", this.a.W7(), this.a.U7());
            DivEdgeInsets divEdgeInsets5 = (DivEdgeInsets) sa5.p(ex7Var, divTabsTemplate.E, jSONObject, "title_paddings", this.a.X2(), this.a.V2());
            if (divEdgeInsets5 == null) {
                divEdgeInsets5 = DivTabsJsonParser.k;
            }
            DivEdgeInsets divEdgeInsets6 = divEdgeInsets5;
            y45.i(divEdgeInsets6, "JsonFieldResolver.resolv…LE_PADDINGS_DEFAULT_VALUE");
            List listB7 = sa5.B(ex7Var, divTabsTemplate.F, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divTabsTemplate.G, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divTabsTemplate.H, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divTabsTemplate.I, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divTabsTemplate.J, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divTabsTemplate.K, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivTabsJsonParser.v);
            List listB8 = sa5.B(ex7Var, divTabsTemplate.L, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB9 = sa5.B(ex7Var, divTabsTemplate.M, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var9 = divTabsTemplate.N;
            zbb zbbVar5 = DivTabsJsonParser.p;
            e74 e74Var5 = DivVisibility.FROM_STRING;
            Expression expression10 = DivTabsJsonParser.l;
            Expression expressionV6 = sa5.v(ex7Var, tp3Var9, jSONObject, "visibility", zbbVar5, e74Var5, expression10);
            Expression expression11 = expressionV6 == null ? expression10 : expressionV6;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divTabsTemplate.O, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB10 = sa5.B(ex7Var, divTabsTemplate.P, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divTabsTemplate.Q, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivTabsJsonParser.m;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivTabs(divAccessibility, expressionS, expressionS2, expression, listB, listB2, divBorder, expressionT, listB3, expression2, listB4, divFocus, listB5, expression3, divSize2, str, listL, divLayoutProvider, divEdgeInsets, divEdgeInsets2, expression4, expressionR, expressionT2, listB6, expression5, expression7, divEdgeInsets4, expression9, tabTitleDelimiter, tabTitleStyle, divEdgeInsets6, listB7, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB8, listB9, expression11, divVisibilityAction, listB10, divSize3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(1.0d));
        Boolean bool = Boolean.FALSE;
        c = aVar.a(bool);
        d = aVar.a(bool);
        e = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        f = aVar.a(bool);
        g = aVar.a(0L);
        h = aVar.a(335544320);
        i = new DivEdgeInsets(aVar.a(0L), null, aVar.a(12L), aVar.a(12L), null, aVar.a(0L), null, 82, null);
        j = aVar.a(Boolean.TRUE);
        k = new DivEdgeInsets(aVar.a(8L), null, aVar.a(12L), aVar.a(12L), null, aVar.a(0L), null, 82, null);
        l = aVar.a(DivVisibility.VISIBLE);
        m = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        zbb.a aVar2 = zbb.a;
        n = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        o = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
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
                return DivTabsJsonParser.g(((Double) obj).doubleValue());
            }
        };
        r = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTabsJsonParser.h(((Long) obj).longValue());
            }
        };
        s = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivTabsJsonParser.i(list);
            }
        };
        t = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTabsJsonParser.j(((Long) obj).longValue());
            }
        };
        u = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTabsJsonParser.k(((Long) obj).longValue());
            }
        };
        v = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivTabsJsonParser.l(list);
            }
        };
    }

    public static final boolean g(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean h(long j2) {
        return j2 >= 0;
    }

    public static final boolean i(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }

    public static final boolean j(long j2) {
        return j2 >= 0;
    }

    public static final boolean k(long j2) {
        return j2 >= 0;
    }

    public static final boolean l(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
