package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivPagerJsonParser;
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

public abstract class DivPagerJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final DivSize.d e;
    public static final Expression f;
    public static final DivFixedSize g;
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
        public DivPager a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivPagerJsonParser.m, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivPagerJsonParser.n, DivAlignmentVertical.FROM_STRING);
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivPagerJsonParser.s;
            Expression expression = DivPagerJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            List listR2 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar2, e74Var2, DivPagerJsonParser.t);
            zbb zbbVar3 = DivPagerJsonParser.o;
            e74 e74Var3 = DivPager.ItemAlignment.FROM_STRING;
            Expression expression2 = DivPagerJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "cross_axis_alignment", zbbVar3, e74Var3, expression2);
            Expression expression3 = expressionL == null ? expression2 : expressionL;
            pnb pnbVar2 = DivPagerJsonParser.u;
            Expression expression4 = DivPagerJsonParser.d;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "default_item", zbbVar2, e74Var2, pnbVar2, expression4);
            if (expressionK2 != null) {
                expression4 = expressionK2;
            }
            List listR3 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR4 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR5 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivPagerJsonParser.e;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expression5 = DivPagerJsonParser.f;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "infinite_scroll", zbbVar4, e74Var4, expression5);
            if (expressionL2 != null) {
                expression5 = expressionL2;
            }
            DivCollectionItemBuilder divCollectionItemBuilder = (DivCollectionItemBuilder) tb5.n(ex7Var, jSONObject, "item_builder", this.a.a2());
            DivFixedSize divFixedSize = (DivFixedSize) tb5.n(ex7Var, jSONObject, "item_spacing", this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = DivPagerJsonParser.g;
            }
            DivFixedSize divFixedSize2 = divFixedSize;
            y45.i(divFixedSize2, "JsonPropertyParser.readO…TEM_SPACING_DEFAULT_VALUE");
            List listR6 = tb5.r(ex7Var, jSONObject, "items", this.a.J4());
            Object objG = tb5.g(ex7Var, jSONObject, "layout_mode", this.a.z5());
            y45.i(objG, "read(context, data, \"lay…youtModeJsonEntityParser)");
            DivPagerLayoutMode divPagerLayoutMode = (DivPagerLayoutMode) objG;
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            zbb zbbVar5 = DivPagerJsonParser.p;
            e74 e74Var5 = DivPager.Orientation.FROM_STRING;
            Expression expression6 = DivPagerJsonParser.h;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "orientation", zbbVar5, e74Var5, expression6);
            if (expressionL3 != null) {
                expression6 = expressionL3;
            }
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            DivPageTransformation divPageTransformation = (DivPageTransformation) tb5.n(ex7Var, jSONObject, "page_transformation", this.a.n5());
            Expression expression7 = DivPagerJsonParser.i;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "restrict_parent_scroll", zbbVar4, e74Var4, expression7);
            Expression expression8 = expressionL4 == null ? expression7 : expressionL4;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "reuse_id", acb.c);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar2, e74Var2, DivPagerJsonParser.v);
            zbb zbbVar6 = DivPagerJsonParser.q;
            Expression expression9 = DivPagerJsonParser.j;
            Expression expressionL5 = pa5.l(ex7Var, jSONObject, "scroll_axis_alignment", zbbVar6, e74Var3, expression9);
            Expression expression10 = expressionL5 == null ? expression9 : expressionL5;
            List listR7 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            List listR8 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivPagerJsonParser.w);
            List listR9 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR10 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar7 = DivPagerJsonParser.r;
            e74 e74Var6 = DivVisibility.FROM_STRING;
            Expression expression11 = DivPagerJsonParser.k;
            Expression expressionL6 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar7, e74Var6, expression11);
            if (expressionL6 == null) {
                expressionL6 = expression11;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR11 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivPagerJsonParser.l;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivPager(divAccessibility, expressionI, expressionI2, expression, listR, listR2, divBorder, expressionJ, expression3, expression4, listR3, listR4, divFocus, listR5, divSize2, str, expression5, divCollectionItemBuilder, divFixedSize2, listR6, divPagerLayoutMode, divLayoutProvider, divEdgeInsets, expression6, divEdgeInsets2, divPageTransformation, expression8, expressionH, expressionJ2, expression10, listR7, listR8, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR9, listR10, expressionL6, divVisibilityAction, listR11, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivPager divPager) {
            y45.j(ex7Var, "context");
            y45.j(divPager, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divPager.r(), this.a.H());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divPager.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divPager.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divPager.p());
            tb5.z(ex7Var, jSONObject, "animators", divPager.A(), this.a.q1());
            tb5.z(ex7Var, jSONObject, "background", divPager.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divPager.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "column_span", divPager.b());
            Expression expression = divPager.i;
            e74 e74Var = DivPager.ItemAlignment.TO_STRING;
            pa5.q(ex7Var, jSONObject, "cross_axis_alignment", expression, e74Var);
            pa5.p(ex7Var, jSONObject, "default_item", divPager.j);
            tb5.z(ex7Var, jSONObject, "disappear_actions", divPager.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "extensions", divPager.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divPager.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divPager.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divPager.getHeight(), this.a.V6());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divPager.getId());
            pa5.p(ex7Var, jSONObject, "infinite_scroll", divPager.q);
            tb5.x(ex7Var, jSONObject, "item_builder", divPager.r, this.a.a2());
            tb5.x(ex7Var, jSONObject, "item_spacing", divPager.s, this.a.t3());
            tb5.z(ex7Var, jSONObject, "items", divPager.t, this.a.J4());
            tb5.x(ex7Var, jSONObject, "layout_mode", divPager.u, this.a.z5());
            tb5.x(ex7Var, jSONObject, "layout_provider", divPager.v(), this.a.M4());
            tb5.x(ex7Var, jSONObject, "margins", divPager.d(), this.a.V2());
            pa5.q(ex7Var, jSONObject, "orientation", divPager.x, DivPager.Orientation.TO_STRING);
            tb5.x(ex7Var, jSONObject, "paddings", divPager.t(), this.a.V2());
            tb5.x(ex7Var, jSONObject, "page_transformation", divPager.z, this.a.n5());
            pa5.p(ex7Var, jSONObject, "restrict_parent_scroll", divPager.A);
            pa5.p(ex7Var, jSONObject, "reuse_id", divPager.f());
            pa5.p(ex7Var, jSONObject, "row_span", divPager.e());
            pa5.q(ex7Var, jSONObject, "scroll_axis_alignment", divPager.D, e74Var);
            tb5.z(ex7Var, jSONObject, "selected_actions", divPager.u(), this.a.u0());
            tb5.z(ex7Var, jSONObject, "tooltips", divPager.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divPager.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divPager.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divPager.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divPager.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divPager.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "pager");
            tb5.z(ex7Var, jSONObject, "variable_triggers", divPager.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divPager.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divPager.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divPager.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divPager.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divPager.getWidth(), this.a.V6());
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
        public DivPagerTemplate c(ex7 ex7Var, DivPagerTemplate divPagerTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divPagerTemplate != null ? divPagerTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivPagerJsonParser.m, zC, divPagerTemplate != null ? divPagerTemplate.b : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivPagerJsonParser.n, zC, divPagerTemplate != null ? divPagerTemplate.c : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divPagerTemplate != null ? divPagerTemplate.d : null, ParsingConvertersKt.g, DivPagerJsonParser.s);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "animators", zC, divPagerTemplate != null ? divPagerTemplate.e : null, this.a.r1());
            y45.i(tp3VarZ, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "background", zC, divPagerTemplate != null ? divPagerTemplate.f : null, this.a.D1());
            y45.i(tp3VarZ2, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "border", zC, divPagerTemplate != null ? divPagerTemplate.g : null, this.a.J1());
            y45.i(tp3VarS2, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divPagerTemplate != null ? divPagerTemplate.h : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar, zC, tp3Var, e74Var, DivPagerJsonParser.t);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            zbb zbbVar2 = DivPagerJsonParser.o;
            tp3 tp3Var2 = divPagerTemplate != null ? divPagerTemplate.i : null;
            e74 e74Var2 = DivPager.ItemAlignment.FROM_STRING;
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "cross_axis_alignment", zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…temAlignment.FROM_STRING)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "default_item", zbbVar, zC, divPagerTemplate != null ? divPagerTemplate.j : null, e74Var, DivPagerJsonParser.u);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…, DEFAULT_ITEM_VALIDATOR)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divPagerTemplate != null ? divPagerTemplate.k : null, this.a.N2());
            y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divPagerTemplate != null ? divPagerTemplate.l : null, this.a.Z2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "focus", zC, divPagerTemplate != null ? divPagerTemplate.m : null, this.a.x3());
            y45.i(tp3VarS3, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "functions", zC, divPagerTemplate != null ? divPagerTemplate.n : null, this.a.G3());
            y45.i(tp3VarZ5, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "height", zC, divPagerTemplate != null ? divPagerTemplate.o : null, this.a.W6());
            y45.i(tp3VarS4, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divPagerTemplate != null ? divPagerTemplate.p : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            zbb zbbVar3 = acb.a;
            tp3 tp3Var3 = divPagerTemplate != null ? divPagerTemplate.q : null;
            e74 e74Var3 = ParsingConvertersKt.f;
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "infinite_scroll", zbbVar3, zC, tp3Var3, e74Var3);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…teScroll, ANY_TO_BOOLEAN)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "item_builder", zC, divPagerTemplate != null ? divPagerTemplate.r : null, this.a.b2());
            y45.i(tp3VarS5, "readOptionalField(contex…uilderJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "item_spacing", zC, divPagerTemplate != null ? divPagerTemplate.s : null, this.a.u3());
            y45.i(tp3VarS6, "readOptionalField(contex…edSizeJsonTemplateParser)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "items", zC, divPagerTemplate != null ? divPagerTemplate.t : null, this.a.K4());
            y45.i(tp3VarZ6, "readOptionalListField(co…nt.divJsonTemplateParser)");
            tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, "layout_mode", zC, divPagerTemplate != null ? divPagerTemplate.u : null, this.a.A5());
            y45.i(tp3VarF, "readField(context, data,…utModeJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divPagerTemplate != null ? divPagerTemplate.v : null, this.a.N4());
            y45.i(tp3VarS7, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "margins", zC, divPagerTemplate != null ? divPagerTemplate.w : null, this.a.W2());
            y45.i(tp3VarS8, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "orientation", DivPagerJsonParser.p, zC, divPagerTemplate != null ? divPagerTemplate.x : null, DivPager.Orientation.FROM_STRING);
            y45.i(tp3VarU5, "readOptionalFieldWithExp….Orientation.FROM_STRING)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divPagerTemplate != null ? divPagerTemplate.y : null, this.a.W2());
            y45.i(tp3VarS9, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "page_transformation", zC, divPagerTemplate != null ? divPagerTemplate.z : null, this.a.o5());
            y45.i(tp3VarS10, "readOptionalField(contex…mationJsonTemplateParser)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "restrict_parent_scroll", zbbVar3, zC, divPagerTemplate != null ? divPagerTemplate.A : null, e74Var3);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…ntScroll, ANY_TO_BOOLEAN)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "reuse_id", acb.c, zC, divPagerTemplate != null ? divPagerTemplate.B : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar, zC, divPagerTemplate != null ? divPagerTemplate.C : null, e74Var, DivPagerJsonParser.v);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, "scroll_axis_alignment", DivPagerJsonParser.q, zC, divPagerTemplate != null ? divPagerTemplate.D : null, e74Var2);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…temAlignment.FROM_STRING)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divPagerTemplate != null ? divPagerTemplate.E : null, this.a.v0());
            y45.i(tp3VarZ7, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divPagerTemplate != null ? divPagerTemplate.F : null, this.a.K8());
            y45.i(tp3VarZ8, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "transform", zC, divPagerTemplate != null ? divPagerTemplate.G : null, this.a.W8());
            y45.i(tp3VarS11, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divPagerTemplate != null ? divPagerTemplate.H : null, this.a.S1());
            y45.i(tp3VarS12, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divPagerTemplate != null ? divPagerTemplate.I : null, this.a.x1());
            y45.i(tp3VarS13, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divPagerTemplate != null ? divPagerTemplate.J : null, this.a.x1());
            y45.i(tp3VarS14, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var4 = divPagerTemplate != null ? divPagerTemplate.K : null;
            e74 e74Var4 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivPagerJsonParser.w;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var4, e74Var4, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divPagerTemplate != null ? divPagerTemplate.L : null, this.a.Z8());
            y45.i(tp3VarZ9, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "variables", zC, divPagerTemplate != null ? divPagerTemplate.M : null, this.a.f9());
            y45.i(tp3VarZ10, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, "visibility", DivPagerJsonParser.r, zC, divPagerTemplate != null ? divPagerTemplate.N : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU8, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS15 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divPagerTemplate != null ? divPagerTemplate.O : null, this.a.r9());
            y45.i(tp3VarS15, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divPagerTemplate != null ? divPagerTemplate.P : null, this.a.r9());
            y45.i(tp3VarZ11, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS16 = ra5.s(ex7VarC, jSONObject, "width", zC, divPagerTemplate != null ? divPagerTemplate.Q : null, this.a.W6());
            y45.i(tp3VarS16, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivPagerTemplate(tp3VarS, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ, tp3VarZ2, tp3VarS2, tp3VarV2, tp3VarU3, tp3VarV3, tp3VarZ3, tp3VarZ4, tp3VarS3, tp3VarZ5, tp3VarS4, tp3VarP, tp3VarU4, tp3VarS5, tp3VarS6, tp3VarZ6, tp3VarF, tp3VarS7, tp3VarS8, tp3VarU5, tp3VarS9, tp3VarS10, tp3VarU6, tp3VarT, tp3VarV4, tp3VarU7, tp3VarZ7, tp3VarZ8, tp3VarS11, tp3VarS12, tp3VarS13, tp3VarS14, tp3VarX, tp3VarZ9, tp3VarZ10, tp3VarU8, tp3VarS15, tp3VarZ11, tp3VarS16);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivPagerTemplate divPagerTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divPagerTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divPagerTemplate.a, this.a.I());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divPagerTemplate.b, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divPagerTemplate.c, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divPagerTemplate.d);
            ra5.K(ex7Var, jSONObject, "animators", divPagerTemplate.e, this.a.r1());
            ra5.K(ex7Var, jSONObject, "background", divPagerTemplate.f, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divPagerTemplate.g, this.a.J1());
            ra5.D(ex7Var, jSONObject, "column_span", divPagerTemplate.h);
            tp3 tp3Var = divPagerTemplate.i;
            e74 e74Var = DivPager.ItemAlignment.TO_STRING;
            ra5.E(ex7Var, jSONObject, "cross_axis_alignment", tp3Var, e74Var);
            ra5.D(ex7Var, jSONObject, "default_item", divPagerTemplate.j);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divPagerTemplate.k, this.a.N2());
            ra5.K(ex7Var, jSONObject, "extensions", divPagerTemplate.l, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divPagerTemplate.m, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divPagerTemplate.n, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divPagerTemplate.o, this.a.W6());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divPagerTemplate.p);
            ra5.D(ex7Var, jSONObject, "infinite_scroll", divPagerTemplate.q);
            ra5.I(ex7Var, jSONObject, "item_builder", divPagerTemplate.r, this.a.b2());
            ra5.I(ex7Var, jSONObject, "item_spacing", divPagerTemplate.s, this.a.u3());
            ra5.K(ex7Var, jSONObject, "items", divPagerTemplate.t, this.a.K4());
            ra5.I(ex7Var, jSONObject, "layout_mode", divPagerTemplate.u, this.a.A5());
            ra5.I(ex7Var, jSONObject, "layout_provider", divPagerTemplate.v, this.a.N4());
            ra5.I(ex7Var, jSONObject, "margins", divPagerTemplate.w, this.a.W2());
            ra5.E(ex7Var, jSONObject, "orientation", divPagerTemplate.x, DivPager.Orientation.TO_STRING);
            ra5.I(ex7Var, jSONObject, "paddings", divPagerTemplate.y, this.a.W2());
            ra5.I(ex7Var, jSONObject, "page_transformation", divPagerTemplate.z, this.a.o5());
            ra5.D(ex7Var, jSONObject, "restrict_parent_scroll", divPagerTemplate.A);
            ra5.D(ex7Var, jSONObject, "reuse_id", divPagerTemplate.B);
            ra5.D(ex7Var, jSONObject, "row_span", divPagerTemplate.C);
            ra5.E(ex7Var, jSONObject, "scroll_axis_alignment", divPagerTemplate.D, e74Var);
            ra5.K(ex7Var, jSONObject, "selected_actions", divPagerTemplate.E, this.a.v0());
            ra5.K(ex7Var, jSONObject, "tooltips", divPagerTemplate.F, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divPagerTemplate.G, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divPagerTemplate.H, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divPagerTemplate.I, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divPagerTemplate.J, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divPagerTemplate.K, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "pager");
            ra5.K(ex7Var, jSONObject, "variable_triggers", divPagerTemplate.L, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divPagerTemplate.M, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divPagerTemplate.N, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divPagerTemplate.O, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divPagerTemplate.P, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divPagerTemplate.Q, this.a.W6());
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
        public DivPager a(ex7 ex7Var, DivPagerTemplate divPagerTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divPagerTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divPagerTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            Expression expressionS = sa5.s(ex7Var, divPagerTemplate.b, jSONObject, "alignment_horizontal", DivPagerJsonParser.m, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divPagerTemplate.c, jSONObject, "alignment_vertical", DivPagerJsonParser.n, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var = divPagerTemplate.d;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivPagerJsonParser.s;
            Expression expression = DivPagerJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB = sa5.B(ex7Var, divPagerTemplate.e, jSONObject, "animators", this.a.s1(), this.a.q1());
            List listB2 = sa5.B(ex7Var, divPagerTemplate.f, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divPagerTemplate.g, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var2 = divPagerTemplate.h;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var2, jSONObject, "column_span", zbbVar2, e74Var2, DivPagerJsonParser.t);
            tp3 tp3Var3 = divPagerTemplate.i;
            zbb zbbVar3 = DivPagerJsonParser.o;
            e74 e74Var3 = DivPager.ItemAlignment.FROM_STRING;
            Expression expression2 = DivPagerJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var3, jSONObject, "cross_axis_alignment", zbbVar3, e74Var3, expression2);
            Expression expression3 = expressionV == null ? expression2 : expressionV;
            tp3 tp3Var4 = divPagerTemplate.j;
            pnb pnbVar2 = DivPagerJsonParser.u;
            Expression expression4 = DivPagerJsonParser.d;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var4, jSONObject, "default_item", zbbVar2, e74Var2, pnbVar2, expression4);
            if (expressionU2 != null) {
                expression4 = expressionU2;
            }
            List listB3 = sa5.B(ex7Var, divPagerTemplate.k, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB4 = sa5.B(ex7Var, divPagerTemplate.l, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divPagerTemplate.m, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB5 = sa5.B(ex7Var, divPagerTemplate.n, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divPagerTemplate.o, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivPagerJsonParser.e;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) sa5.m(ex7Var, divPagerTemplate.p, jSONObject, TtmlNode.ATTR_ID);
            tp3 tp3Var5 = divPagerTemplate.q;
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expression5 = DivPagerJsonParser.f;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var5, jSONObject, "infinite_scroll", zbbVar4, e74Var4, expression5);
            if (expressionV2 != null) {
                expression5 = expressionV2;
            }
            DivCollectionItemBuilder divCollectionItemBuilder = (DivCollectionItemBuilder) sa5.p(ex7Var, divPagerTemplate.r, jSONObject, "item_builder", this.a.c2(), this.a.a2());
            DivFixedSize divFixedSize = (DivFixedSize) sa5.p(ex7Var, divPagerTemplate.s, jSONObject, "item_spacing", this.a.v3(), this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = DivPagerJsonParser.g;
            }
            DivFixedSize divFixedSize2 = divFixedSize;
            y45.i(divFixedSize2, "JsonFieldResolver.resolv…TEM_SPACING_DEFAULT_VALUE");
            List listB6 = sa5.B(ex7Var, divPagerTemplate.t, jSONObject, "items", this.a.L4(), this.a.J4());
            Object objD = sa5.d(ex7Var, divPagerTemplate.u, jSONObject, "layout_mode", this.a.B5(), this.a.z5());
            y45.i(objD, "resolve(context, templat…youtModeJsonEntityParser)");
            DivPagerLayoutMode divPagerLayoutMode = (DivPagerLayoutMode) objD;
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divPagerTemplate.v, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divPagerTemplate.w, jSONObject, "margins", this.a.X2(), this.a.V2());
            tp3 tp3Var6 = divPagerTemplate.x;
            zbb zbbVar5 = DivPagerJsonParser.p;
            e74 e74Var5 = DivPager.Orientation.FROM_STRING;
            Expression expression6 = DivPagerJsonParser.h;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var6, jSONObject, "orientation", zbbVar5, e74Var5, expression6);
            if (expressionV3 != null) {
                expression6 = expressionV3;
            }
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divPagerTemplate.y, jSONObject, "paddings", this.a.X2(), this.a.V2());
            DivPageTransformation divPageTransformation = (DivPageTransformation) sa5.p(ex7Var, divPagerTemplate.z, jSONObject, "page_transformation", this.a.p5(), this.a.n5());
            tp3 tp3Var7 = divPagerTemplate.A;
            Expression expression7 = DivPagerJsonParser.i;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var7, jSONObject, "restrict_parent_scroll", zbbVar4, e74Var4, expression7);
            if (expressionV4 != null) {
                expression7 = expressionV4;
            }
            Expression expressionR = sa5.r(ex7Var, divPagerTemplate.B, jSONObject, "reuse_id", acb.c);
            Expression expressionT2 = sa5.t(ex7Var, divPagerTemplate.C, jSONObject, "row_span", zbbVar2, e74Var2, DivPagerJsonParser.v);
            tp3 tp3Var8 = divPagerTemplate.D;
            zbb zbbVar6 = DivPagerJsonParser.q;
            Expression expression8 = DivPagerJsonParser.j;
            Expression expressionV5 = sa5.v(ex7Var, tp3Var8, jSONObject, "scroll_axis_alignment", zbbVar6, e74Var3, expression8);
            Expression expression9 = expressionV5 == null ? expression8 : expressionV5;
            List listB7 = sa5.B(ex7Var, divPagerTemplate.E, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            List listB8 = sa5.B(ex7Var, divPagerTemplate.F, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divPagerTemplate.G, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divPagerTemplate.H, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divPagerTemplate.I, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divPagerTemplate.J, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divPagerTemplate.K, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivPagerJsonParser.w);
            List listB9 = sa5.B(ex7Var, divPagerTemplate.L, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB10 = sa5.B(ex7Var, divPagerTemplate.M, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var9 = divPagerTemplate.N;
            zbb zbbVar7 = DivPagerJsonParser.r;
            e74 e74Var6 = DivVisibility.FROM_STRING;
            Expression expression10 = DivPagerJsonParser.k;
            Expression expressionV6 = sa5.v(ex7Var, tp3Var9, jSONObject, "visibility", zbbVar7, e74Var6, expression10);
            Expression expression11 = expressionV6 == null ? expression10 : expressionV6;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divPagerTemplate.O, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB11 = sa5.B(ex7Var, divPagerTemplate.P, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divPagerTemplate.Q, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivPagerJsonParser.l;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivPager(divAccessibility, expressionS, expressionS2, expression, listB, listB2, divBorder, expressionT, expression3, expression4, listB3, listB4, divFocus, listB5, divSize2, str, expression5, divCollectionItemBuilder, divFixedSize2, listB6, divPagerLayoutMode, divLayoutProvider, divEdgeInsets, expression6, divEdgeInsets2, divPageTransformation, expression7, expressionR, expressionT2, expression9, listB7, listB8, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB9, listB10, expression11, divVisibilityAction, listB11, divSize3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(1.0d));
        c = aVar.a(DivPager.ItemAlignment.START);
        d = aVar.a(0L);
        e = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        Boolean bool = Boolean.FALSE;
        f = aVar.a(bool);
        int i2 = 1;
        g = new DivFixedSize(null == true ? 1 : 0, aVar.a(0L), i2, null == true ? 1 : 0);
        h = aVar.a(DivPager.Orientation.HORIZONTAL);
        i = aVar.a(bool);
        j = aVar.a(DivPager.ItemAlignment.CENTER);
        k = aVar.a(DivVisibility.VISIBLE);
        l = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, i2, null == true ? 1 : 0));
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
        o = aVar2.a(hi.W(DivPager.ItemAlignment.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivPager.ItemAlignment);
            }
        });
        p = aVar2.a(hi.W(DivPager.Orientation.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivPager.Orientation);
            }
        });
        q = aVar2.a(hi.W(DivPager.ItemAlignment.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivPager.ItemAlignment);
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
                return DivPagerJsonParser.f(((Double) obj).doubleValue());
            }
        };
        t = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivPagerJsonParser.g(((Long) obj).longValue());
            }
        };
        u = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivPagerJsonParser.h(((Long) obj).longValue());
            }
        };
        v = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivPagerJsonParser.i(((Long) obj).longValue());
            }
        };
        w = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivPagerJsonParser.j(list);
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
