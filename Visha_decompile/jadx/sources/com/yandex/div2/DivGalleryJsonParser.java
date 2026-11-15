package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivGalleryJsonParser;
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

public abstract class DivGalleryJsonParser {
    public static final hm5 A;
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final DivSize.d e;
    public static final Expression f;
    public static final Expression g;
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
    public static final zbb s;
    public static final pnb t;
    public static final pnb u;
    public static final pnb v;
    public static final pnb w;
    public static final pnb x;
    public static final pnb y;
    public static final pnb z;

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
        public DivGallery a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivGalleryJsonParser.m, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivGalleryJsonParser.n, DivAlignmentVertical.FROM_STRING);
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivGalleryJsonParser.t;
            Expression expression = DivGalleryJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            List listR2 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_count", zbbVar2, e74Var2, DivGalleryJsonParser.u);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "column_span", zbbVar2, e74Var2, DivGalleryJsonParser.v);
            zbb zbbVar3 = DivGalleryJsonParser.o;
            e74 e74Var3 = DivGallery.CrossContentAlignment.FROM_STRING;
            Expression expression2 = DivGalleryJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "cross_content_alignment", zbbVar3, e74Var3, expression2);
            Expression expression3 = expressionL == null ? expression2 : expressionL;
            Expression expressionJ3 = pa5.j(ex7Var, jSONObject, "cross_spacing", zbbVar2, e74Var2, DivGalleryJsonParser.w);
            pnb pnbVar2 = DivGalleryJsonParser.x;
            Expression expression4 = DivGalleryJsonParser.d;
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
                divSize = DivGalleryJsonParser.e;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            DivCollectionItemBuilder divCollectionItemBuilder = (DivCollectionItemBuilder) tb5.n(ex7Var, jSONObject, "item_builder", this.a.a2());
            pnb pnbVar3 = DivGalleryJsonParser.y;
            Expression expression5 = DivGalleryJsonParser.f;
            Expression expressionK3 = pa5.k(ex7Var, jSONObject, "item_spacing", zbbVar2, e74Var2, pnbVar3, expression5);
            if (expressionK3 != null) {
                expression5 = expressionK3;
            }
            List listR6 = tb5.r(ex7Var, jSONObject, "items", this.a.J4());
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            zbb zbbVar4 = DivGalleryJsonParser.p;
            e74 e74Var4 = DivGallery.Orientation.FROM_STRING;
            Expression expression6 = DivGalleryJsonParser.g;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "orientation", zbbVar4, e74Var4, expression6);
            Expression expression7 = expressionL2 == null ? expression6 : expressionL2;
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            zbb zbbVar5 = acb.a;
            e74 e74Var5 = ParsingConvertersKt.f;
            Expression expression8 = DivGalleryJsonParser.h;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "restrict_parent_scroll", zbbVar5, e74Var5, expression8);
            Expression expression9 = expressionL3 == null ? expression8 : expressionL3;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "reuse_id", acb.c);
            Expression expressionJ4 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar2, e74Var2, DivGalleryJsonParser.z);
            zbb zbbVar6 = DivGalleryJsonParser.q;
            e74 e74Var6 = DivGallery.ScrollMode.FROM_STRING;
            Expression expression10 = DivGalleryJsonParser.i;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "scroll_mode", zbbVar6, e74Var6, expression10);
            Expression expression11 = expressionL4 == null ? expression10 : expressionL4;
            zbb zbbVar7 = DivGalleryJsonParser.r;
            e74 e74Var7 = DivGallery.Scrollbar.FROM_STRING;
            Expression expression12 = DivGalleryJsonParser.j;
            Expression expressionL5 = pa5.l(ex7Var, jSONObject, "scrollbar", zbbVar7, e74Var7, expression12);
            Expression expression13 = expressionL5 == null ? expression12 : expressionL5;
            List listR7 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            List listR8 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivGalleryJsonParser.A);
            List listR9 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR10 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar8 = DivGalleryJsonParser.s;
            e74 e74Var8 = DivVisibility.FROM_STRING;
            Expression expression14 = DivGalleryJsonParser.k;
            Expression expressionL6 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar8, e74Var8, expression14);
            if (expressionL6 == null) {
                expressionL6 = expression14;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR11 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivGalleryJsonParser.l;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivGallery(divAccessibility, expressionI, expressionI2, expression, listR, listR2, divBorder, expressionJ, expressionJ2, expression3, expressionJ3, expression4, listR3, listR4, divFocus, listR5, divSize2, str, divCollectionItemBuilder, expression5, listR6, divLayoutProvider, divEdgeInsets, expression7, divEdgeInsets2, expression9, expressionH, expressionJ4, expression11, expression13, listR7, listR8, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR9, listR10, expressionL6, divVisibilityAction, listR11, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivGallery divGallery) {
            y45.j(ex7Var, "context");
            y45.j(divGallery, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divGallery.r(), this.a.H());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divGallery.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divGallery.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divGallery.p());
            tb5.z(ex7Var, jSONObject, "animators", divGallery.A(), this.a.q1());
            tb5.z(ex7Var, jSONObject, "background", divGallery.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divGallery.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "column_count", divGallery.h);
            pa5.p(ex7Var, jSONObject, "column_span", divGallery.b());
            pa5.q(ex7Var, jSONObject, "cross_content_alignment", divGallery.j, DivGallery.CrossContentAlignment.TO_STRING);
            pa5.p(ex7Var, jSONObject, "cross_spacing", divGallery.k);
            pa5.p(ex7Var, jSONObject, "default_item", divGallery.l);
            tb5.z(ex7Var, jSONObject, "disappear_actions", divGallery.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "extensions", divGallery.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divGallery.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divGallery.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divGallery.getHeight(), this.a.V6());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divGallery.getId());
            tb5.x(ex7Var, jSONObject, "item_builder", divGallery.s, this.a.a2());
            pa5.p(ex7Var, jSONObject, "item_spacing", divGallery.t);
            tb5.z(ex7Var, jSONObject, "items", divGallery.u, this.a.J4());
            tb5.x(ex7Var, jSONObject, "layout_provider", divGallery.v(), this.a.M4());
            tb5.x(ex7Var, jSONObject, "margins", divGallery.d(), this.a.V2());
            pa5.q(ex7Var, jSONObject, "orientation", divGallery.x, DivGallery.Orientation.TO_STRING);
            tb5.x(ex7Var, jSONObject, "paddings", divGallery.t(), this.a.V2());
            pa5.p(ex7Var, jSONObject, "restrict_parent_scroll", divGallery.z);
            pa5.p(ex7Var, jSONObject, "reuse_id", divGallery.f());
            pa5.p(ex7Var, jSONObject, "row_span", divGallery.e());
            pa5.q(ex7Var, jSONObject, "scroll_mode", divGallery.C, DivGallery.ScrollMode.TO_STRING);
            pa5.q(ex7Var, jSONObject, "scrollbar", divGallery.D, DivGallery.Scrollbar.TO_STRING);
            tb5.z(ex7Var, jSONObject, "selected_actions", divGallery.u(), this.a.u0());
            tb5.z(ex7Var, jSONObject, "tooltips", divGallery.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divGallery.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divGallery.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divGallery.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divGallery.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divGallery.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "gallery");
            tb5.z(ex7Var, jSONObject, "variable_triggers", divGallery.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divGallery.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divGallery.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divGallery.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divGallery.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divGallery.getWidth(), this.a.V6());
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
        public DivGalleryTemplate c(ex7 ex7Var, DivGalleryTemplate divGalleryTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divGalleryTemplate != null ? divGalleryTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivGalleryJsonParser.m, zC, divGalleryTemplate != null ? divGalleryTemplate.b : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivGalleryJsonParser.n, zC, divGalleryTemplate != null ? divGalleryTemplate.c : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divGalleryTemplate != null ? divGalleryTemplate.d : null, ParsingConvertersKt.g, DivGalleryJsonParser.t);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "animators", zC, divGalleryTemplate != null ? divGalleryTemplate.e : null, this.a.r1());
            y45.i(tp3VarZ, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "background", zC, divGalleryTemplate != null ? divGalleryTemplate.f : null, this.a.D1());
            y45.i(tp3VarZ2, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "border", zC, divGalleryTemplate != null ? divGalleryTemplate.g : null, this.a.J1());
            y45.i(tp3VarS2, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divGalleryTemplate != null ? divGalleryTemplate.h : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_count", zbbVar, zC, tp3Var, e74Var, DivGalleryJsonParser.u);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…, COLUMN_COUNT_VALIDATOR)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar, zC, divGalleryTemplate != null ? divGalleryTemplate.i : null, e74Var, DivGalleryJsonParser.v);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "cross_content_alignment", DivGalleryJsonParser.o, zC, divGalleryTemplate != null ? divGalleryTemplate.j : null, DivGallery.CrossContentAlignment.FROM_STRING);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…entAlignment.FROM_STRING)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "cross_spacing", zbbVar, zC, divGalleryTemplate != null ? divGalleryTemplate.k : null, e74Var, DivGalleryJsonParser.w);
            y45.i(tp3VarV4, "readOptionalFieldWithExp… CROSS_SPACING_VALIDATOR)");
            tp3 tp3VarV5 = ra5.v(ex7VarC, jSONObject, "default_item", zbbVar, zC, divGalleryTemplate != null ? divGalleryTemplate.l : null, e74Var, DivGalleryJsonParser.x);
            y45.i(tp3VarV5, "readOptionalFieldWithExp…, DEFAULT_ITEM_VALIDATOR)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divGalleryTemplate != null ? divGalleryTemplate.m : null, this.a.N2());
            y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divGalleryTemplate != null ? divGalleryTemplate.n : null, this.a.Z2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "focus", zC, divGalleryTemplate != null ? divGalleryTemplate.o : null, this.a.x3());
            y45.i(tp3VarS3, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "functions", zC, divGalleryTemplate != null ? divGalleryTemplate.p : null, this.a.G3());
            y45.i(tp3VarZ5, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "height", zC, divGalleryTemplate != null ? divGalleryTemplate.q : null, this.a.W6());
            y45.i(tp3VarS4, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divGalleryTemplate != null ? divGalleryTemplate.r : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "item_builder", zC, divGalleryTemplate != null ? divGalleryTemplate.s : null, this.a.b2());
            y45.i(tp3VarS5, "readOptionalField(contex…uilderJsonTemplateParser)");
            tp3 tp3VarV6 = ra5.v(ex7VarC, jSONObject, "item_spacing", zbbVar, zC, divGalleryTemplate != null ? divGalleryTemplate.t : null, e74Var, DivGalleryJsonParser.y);
            y45.i(tp3VarV6, "readOptionalFieldWithExp…, ITEM_SPACING_VALIDATOR)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "items", zC, divGalleryTemplate != null ? divGalleryTemplate.u : null, this.a.K4());
            y45.i(tp3VarZ6, "readOptionalListField(co…nt.divJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divGalleryTemplate != null ? divGalleryTemplate.v : null, this.a.N4());
            y45.i(tp3VarS6, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "margins", zC, divGalleryTemplate != null ? divGalleryTemplate.w : null, this.a.W2());
            y45.i(tp3VarS7, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "orientation", DivGalleryJsonParser.p, zC, divGalleryTemplate != null ? divGalleryTemplate.x : null, DivGallery.Orientation.FROM_STRING);
            y45.i(tp3VarU4, "readOptionalFieldWithExp….Orientation.FROM_STRING)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divGalleryTemplate != null ? divGalleryTemplate.y : null, this.a.W2());
            y45.i(tp3VarS8, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "restrict_parent_scroll", acb.a, zC, divGalleryTemplate != null ? divGalleryTemplate.z : null, ParsingConvertersKt.f);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…ntScroll, ANY_TO_BOOLEAN)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "reuse_id", acb.c, zC, divGalleryTemplate != null ? divGalleryTemplate.A : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV7 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar, zC, divGalleryTemplate != null ? divGalleryTemplate.B : null, e74Var, DivGalleryJsonParser.z);
            y45.i(tp3VarV7, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "scroll_mode", DivGalleryJsonParser.q, zC, divGalleryTemplate != null ? divGalleryTemplate.C : null, DivGallery.ScrollMode.FROM_STRING);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…y.ScrollMode.FROM_STRING)");
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, "scrollbar", DivGalleryJsonParser.r, zC, divGalleryTemplate != null ? divGalleryTemplate.D : null, DivGallery.Scrollbar.FROM_STRING);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…ry.Scrollbar.FROM_STRING)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divGalleryTemplate != null ? divGalleryTemplate.E : null, this.a.v0());
            y45.i(tp3VarZ7, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divGalleryTemplate != null ? divGalleryTemplate.F : null, this.a.K8());
            y45.i(tp3VarZ8, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "transform", zC, divGalleryTemplate != null ? divGalleryTemplate.G : null, this.a.W8());
            y45.i(tp3VarS9, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divGalleryTemplate != null ? divGalleryTemplate.H : null, this.a.S1());
            y45.i(tp3VarS10, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divGalleryTemplate != null ? divGalleryTemplate.I : null, this.a.x1());
            y45.i(tp3VarS11, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divGalleryTemplate != null ? divGalleryTemplate.J : null, this.a.x1());
            y45.i(tp3VarS12, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var2 = divGalleryTemplate != null ? divGalleryTemplate.K : null;
            e74 e74Var2 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivGalleryJsonParser.A;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var2, e74Var2, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divGalleryTemplate != null ? divGalleryTemplate.L : null, this.a.Z8());
            y45.i(tp3VarZ9, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "variables", zC, divGalleryTemplate != null ? divGalleryTemplate.M : null, this.a.f9());
            y45.i(tp3VarZ10, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, "visibility", DivGalleryJsonParser.s, zC, divGalleryTemplate != null ? divGalleryTemplate.N : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU8, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divGalleryTemplate != null ? divGalleryTemplate.O : null, this.a.r9());
            y45.i(tp3VarS13, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divGalleryTemplate != null ? divGalleryTemplate.P : null, this.a.r9());
            y45.i(tp3VarZ11, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "width", zC, divGalleryTemplate != null ? divGalleryTemplate.Q : null, this.a.W6());
            y45.i(tp3VarS14, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivGalleryTemplate(tp3VarS, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ, tp3VarZ2, tp3VarS2, tp3VarV2, tp3VarV3, tp3VarU3, tp3VarV4, tp3VarV5, tp3VarZ3, tp3VarZ4, tp3VarS3, tp3VarZ5, tp3VarS4, tp3VarP, tp3VarS5, tp3VarV6, tp3VarZ6, tp3VarS6, tp3VarS7, tp3VarU4, tp3VarS8, tp3VarU5, tp3VarT, tp3VarV7, tp3VarU6, tp3VarU7, tp3VarZ7, tp3VarZ8, tp3VarS9, tp3VarS10, tp3VarS11, tp3VarS12, tp3VarX, tp3VarZ9, tp3VarZ10, tp3VarU8, tp3VarS13, tp3VarZ11, tp3VarS14);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivGalleryTemplate divGalleryTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divGalleryTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divGalleryTemplate.a, this.a.I());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divGalleryTemplate.b, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divGalleryTemplate.c, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divGalleryTemplate.d);
            ra5.K(ex7Var, jSONObject, "animators", divGalleryTemplate.e, this.a.r1());
            ra5.K(ex7Var, jSONObject, "background", divGalleryTemplate.f, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divGalleryTemplate.g, this.a.J1());
            ra5.D(ex7Var, jSONObject, "column_count", divGalleryTemplate.h);
            ra5.D(ex7Var, jSONObject, "column_span", divGalleryTemplate.i);
            ra5.E(ex7Var, jSONObject, "cross_content_alignment", divGalleryTemplate.j, DivGallery.CrossContentAlignment.TO_STRING);
            ra5.D(ex7Var, jSONObject, "cross_spacing", divGalleryTemplate.k);
            ra5.D(ex7Var, jSONObject, "default_item", divGalleryTemplate.l);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divGalleryTemplate.m, this.a.N2());
            ra5.K(ex7Var, jSONObject, "extensions", divGalleryTemplate.n, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divGalleryTemplate.o, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divGalleryTemplate.p, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divGalleryTemplate.q, this.a.W6());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divGalleryTemplate.r);
            ra5.I(ex7Var, jSONObject, "item_builder", divGalleryTemplate.s, this.a.b2());
            ra5.D(ex7Var, jSONObject, "item_spacing", divGalleryTemplate.t);
            ra5.K(ex7Var, jSONObject, "items", divGalleryTemplate.u, this.a.K4());
            ra5.I(ex7Var, jSONObject, "layout_provider", divGalleryTemplate.v, this.a.N4());
            ra5.I(ex7Var, jSONObject, "margins", divGalleryTemplate.w, this.a.W2());
            ra5.E(ex7Var, jSONObject, "orientation", divGalleryTemplate.x, DivGallery.Orientation.TO_STRING);
            ra5.I(ex7Var, jSONObject, "paddings", divGalleryTemplate.y, this.a.W2());
            ra5.D(ex7Var, jSONObject, "restrict_parent_scroll", divGalleryTemplate.z);
            ra5.D(ex7Var, jSONObject, "reuse_id", divGalleryTemplate.A);
            ra5.D(ex7Var, jSONObject, "row_span", divGalleryTemplate.B);
            ra5.E(ex7Var, jSONObject, "scroll_mode", divGalleryTemplate.C, DivGallery.ScrollMode.TO_STRING);
            ra5.E(ex7Var, jSONObject, "scrollbar", divGalleryTemplate.D, DivGallery.Scrollbar.TO_STRING);
            ra5.K(ex7Var, jSONObject, "selected_actions", divGalleryTemplate.E, this.a.v0());
            ra5.K(ex7Var, jSONObject, "tooltips", divGalleryTemplate.F, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divGalleryTemplate.G, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divGalleryTemplate.H, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divGalleryTemplate.I, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divGalleryTemplate.J, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divGalleryTemplate.K, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "gallery");
            ra5.K(ex7Var, jSONObject, "variable_triggers", divGalleryTemplate.L, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divGalleryTemplate.M, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divGalleryTemplate.N, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divGalleryTemplate.O, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divGalleryTemplate.P, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divGalleryTemplate.Q, this.a.W6());
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
        public DivGallery a(ex7 ex7Var, DivGalleryTemplate divGalleryTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divGalleryTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divGalleryTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            Expression expressionS = sa5.s(ex7Var, divGalleryTemplate.b, jSONObject, "alignment_horizontal", DivGalleryJsonParser.m, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divGalleryTemplate.c, jSONObject, "alignment_vertical", DivGalleryJsonParser.n, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var = divGalleryTemplate.d;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivGalleryJsonParser.t;
            Expression expression = DivGalleryJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB = sa5.B(ex7Var, divGalleryTemplate.e, jSONObject, "animators", this.a.s1(), this.a.q1());
            List listB2 = sa5.B(ex7Var, divGalleryTemplate.f, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divGalleryTemplate.g, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var2 = divGalleryTemplate.h;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var2, jSONObject, "column_count", zbbVar2, e74Var2, DivGalleryJsonParser.u);
            Expression expressionT2 = sa5.t(ex7Var, divGalleryTemplate.i, jSONObject, "column_span", zbbVar2, e74Var2, DivGalleryJsonParser.v);
            tp3 tp3Var3 = divGalleryTemplate.j;
            zbb zbbVar3 = DivGalleryJsonParser.o;
            e74 e74Var3 = DivGallery.CrossContentAlignment.FROM_STRING;
            Expression expression2 = DivGalleryJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var3, jSONObject, "cross_content_alignment", zbbVar3, e74Var3, expression2);
            Expression expression3 = expressionV == null ? expression2 : expressionV;
            Expression expressionT3 = sa5.t(ex7Var, divGalleryTemplate.k, jSONObject, "cross_spacing", zbbVar2, e74Var2, DivGalleryJsonParser.w);
            tp3 tp3Var4 = divGalleryTemplate.l;
            pnb pnbVar2 = DivGalleryJsonParser.x;
            Expression expression4 = DivGalleryJsonParser.d;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var4, jSONObject, "default_item", zbbVar2, e74Var2, pnbVar2, expression4);
            if (expressionU2 != null) {
                expression4 = expressionU2;
            }
            List listB3 = sa5.B(ex7Var, divGalleryTemplate.m, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB4 = sa5.B(ex7Var, divGalleryTemplate.n, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divGalleryTemplate.o, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB5 = sa5.B(ex7Var, divGalleryTemplate.p, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divGalleryTemplate.q, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivGalleryJsonParser.e;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) sa5.m(ex7Var, divGalleryTemplate.r, jSONObject, TtmlNode.ATTR_ID);
            DivCollectionItemBuilder divCollectionItemBuilder = (DivCollectionItemBuilder) sa5.p(ex7Var, divGalleryTemplate.s, jSONObject, "item_builder", this.a.c2(), this.a.a2());
            tp3 tp3Var5 = divGalleryTemplate.t;
            pnb pnbVar3 = DivGalleryJsonParser.y;
            Expression expression5 = DivGalleryJsonParser.f;
            Expression expressionU3 = sa5.u(ex7Var, tp3Var5, jSONObject, "item_spacing", zbbVar2, e74Var2, pnbVar3, expression5);
            if (expressionU3 != null) {
                expression5 = expressionU3;
            }
            List listB6 = sa5.B(ex7Var, divGalleryTemplate.u, jSONObject, "items", this.a.L4(), this.a.J4());
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divGalleryTemplate.v, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divGalleryTemplate.w, jSONObject, "margins", this.a.X2(), this.a.V2());
            tp3 tp3Var6 = divGalleryTemplate.x;
            zbb zbbVar4 = DivGalleryJsonParser.p;
            e74 e74Var4 = DivGallery.Orientation.FROM_STRING;
            Expression expression6 = DivGalleryJsonParser.g;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var6, jSONObject, "orientation", zbbVar4, e74Var4, expression6);
            Expression expression7 = expressionV2 == null ? expression6 : expressionV2;
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divGalleryTemplate.y, jSONObject, "paddings", this.a.X2(), this.a.V2());
            tp3 tp3Var7 = divGalleryTemplate.z;
            zbb zbbVar5 = acb.a;
            e74 e74Var5 = ParsingConvertersKt.f;
            Expression expression8 = DivGalleryJsonParser.h;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var7, jSONObject, "restrict_parent_scroll", zbbVar5, e74Var5, expression8);
            Expression expression9 = expressionV3 == null ? expression8 : expressionV3;
            Expression expressionR = sa5.r(ex7Var, divGalleryTemplate.A, jSONObject, "reuse_id", acb.c);
            Expression expressionT4 = sa5.t(ex7Var, divGalleryTemplate.B, jSONObject, "row_span", zbbVar2, e74Var2, DivGalleryJsonParser.z);
            tp3 tp3Var8 = divGalleryTemplate.C;
            zbb zbbVar6 = DivGalleryJsonParser.q;
            e74 e74Var6 = DivGallery.ScrollMode.FROM_STRING;
            Expression expression10 = DivGalleryJsonParser.i;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var8, jSONObject, "scroll_mode", zbbVar6, e74Var6, expression10);
            Expression expression11 = expressionV4 == null ? expression10 : expressionV4;
            tp3 tp3Var9 = divGalleryTemplate.D;
            zbb zbbVar7 = DivGalleryJsonParser.r;
            e74 e74Var7 = DivGallery.Scrollbar.FROM_STRING;
            Expression expression12 = DivGalleryJsonParser.j;
            Expression expressionV5 = sa5.v(ex7Var, tp3Var9, jSONObject, "scrollbar", zbbVar7, e74Var7, expression12);
            Expression expression13 = expressionV5 == null ? expression12 : expressionV5;
            List listB7 = sa5.B(ex7Var, divGalleryTemplate.E, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            List listB8 = sa5.B(ex7Var, divGalleryTemplate.F, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divGalleryTemplate.G, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divGalleryTemplate.H, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divGalleryTemplate.I, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divGalleryTemplate.J, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divGalleryTemplate.K, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivGalleryJsonParser.A);
            List listB9 = sa5.B(ex7Var, divGalleryTemplate.L, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB10 = sa5.B(ex7Var, divGalleryTemplate.M, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var10 = divGalleryTemplate.N;
            zbb zbbVar8 = DivGalleryJsonParser.s;
            e74 e74Var8 = DivVisibility.FROM_STRING;
            Expression expression14 = DivGalleryJsonParser.k;
            Expression expressionV6 = sa5.v(ex7Var, tp3Var10, jSONObject, "visibility", zbbVar8, e74Var8, expression14);
            Expression expression15 = expressionV6 == null ? expression14 : expressionV6;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divGalleryTemplate.O, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB11 = sa5.B(ex7Var, divGalleryTemplate.P, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divGalleryTemplate.Q, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivGalleryJsonParser.l;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivGallery(divAccessibility, expressionS, expressionS2, expression, listB, listB2, divBorder, expressionT, expressionT2, expression3, expressionT3, expression4, listB3, listB4, divFocus, listB5, divSize2, str, divCollectionItemBuilder, expression5, listB6, divLayoutProvider, divEdgeInsets, expression7, divEdgeInsets2, expression9, expressionR, expressionT4, expression11, expression13, listB7, listB8, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB9, listB10, expression15, divVisibilityAction, listB11, divSize3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(1.0d));
        c = aVar.a(DivGallery.CrossContentAlignment.START);
        d = aVar.a(0L);
        e = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        f = aVar.a(8L);
        g = aVar.a(DivGallery.Orientation.HORIZONTAL);
        h = aVar.a(Boolean.FALSE);
        i = aVar.a(DivGallery.ScrollMode.DEFAULT);
        j = aVar.a(DivGallery.Scrollbar.NONE);
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
        o = aVar2.a(hi.W(DivGallery.CrossContentAlignment.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivGallery.CrossContentAlignment);
            }
        });
        p = aVar2.a(hi.W(DivGallery.Orientation.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivGallery.Orientation);
            }
        });
        q = aVar2.a(hi.W(DivGallery.ScrollMode.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivGallery.ScrollMode);
            }
        });
        r = aVar2.a(hi.W(DivGallery.Scrollbar.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivGallery.Scrollbar);
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
                return DivGalleryJsonParser.i(((Double) obj).doubleValue());
            }
        };
        u = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGalleryJsonParser.j(((Long) obj).longValue());
            }
        };
        v = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGalleryJsonParser.k(((Long) obj).longValue());
            }
        };
        w = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGalleryJsonParser.l(((Long) obj).longValue());
            }
        };
        x = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGalleryJsonParser.m(((Long) obj).longValue());
            }
        };
        y = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGalleryJsonParser.n(((Long) obj).longValue());
            }
        };
        z = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivGalleryJsonParser.o(((Long) obj).longValue());
            }
        };
        A = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivGalleryJsonParser.p(list);
            }
        };
    }

    public static final boolean i(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean j(long j2) {
        return j2 > 0;
    }

    public static final boolean k(long j2) {
        return j2 >= 0;
    }

    public static final boolean l(long j2) {
        return j2 >= 0;
    }

    public static final boolean m(long j2) {
        return j2 >= 0;
    }

    public static final boolean n(long j2) {
        return j2 >= 0;
    }

    public static final boolean o(long j2) {
        return j2 >= 0;
    }

    public static final boolean p(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
