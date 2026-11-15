package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivIndicatorJsonParser;
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

public abstract class DivIndicatorJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final DivSize.d f;
    public static final Expression g;
    public static final Expression h;
    public static final DivShape.c i;
    public static final DivFixedSize j;
    public static final Expression k;
    public static final DivSize.c l;
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
        public DivIndicator a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            zbb zbbVar = acb.f;
            e74 e74Var = ParsingConvertersKt.b;
            Expression expression = DivIndicatorJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "active_item_color", zbbVar, e74Var, expression);
            Expression expression2 = expressionL == null ? expression : expressionL;
            zbb zbbVar2 = acb.d;
            e74 e74Var2 = ParsingConvertersKt.g;
            pnb pnbVar = DivIndicatorJsonParser.q;
            Expression expression3 = DivIndicatorJsonParser.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "active_item_size", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionK != null) {
                expression3 = expressionK;
            }
            DivRoundedRectangleShape divRoundedRectangleShape = (DivRoundedRectangleShape) tb5.n(ex7Var, jSONObject, "active_shape", this.a.u6());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivIndicatorJsonParser.m, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivIndicatorJsonParser.n, DivAlignmentVertical.FROM_STRING);
            pnb pnbVar2 = DivIndicatorJsonParser.r;
            Expression expression4 = DivIndicatorJsonParser.d;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "alpha", zbbVar2, e74Var2, pnbVar2, expression4);
            if (expressionK2 != null) {
                expression4 = expressionK2;
            }
            zbb zbbVar3 = DivIndicatorJsonParser.o;
            e74 e74Var3 = DivIndicator.Animation.FROM_STRING;
            Expression expression5 = DivIndicatorJsonParser.e;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "animation", zbbVar3, e74Var3, expression5);
            Expression expression6 = expressionL2 == null ? expression5 : expressionL2;
            List listR = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            List listR2 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar4 = acb.b;
            e74 e74Var4 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar4, e74Var4, DivIndicatorJsonParser.s);
            List listR3 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR4 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR5 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivIndicatorJsonParser.f;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            Expression expression7 = DivIndicatorJsonParser.g;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "inactive_item_color", zbbVar, e74Var, expression7);
            if (expressionL3 != null) {
                expression7 = expressionL3;
            }
            DivRoundedRectangleShape divRoundedRectangleShape2 = (DivRoundedRectangleShape) tb5.n(ex7Var, jSONObject, "inactive_minimum_shape", this.a.u6());
            DivRoundedRectangleShape divRoundedRectangleShape3 = (DivRoundedRectangleShape) tb5.n(ex7Var, jSONObject, "inactive_shape", this.a.u6());
            DivIndicatorItemPlacement divIndicatorItemPlacement = (DivIndicatorItemPlacement) tb5.n(ex7Var, jSONObject, "items_placement", this.a.X3());
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            pnb pnbVar3 = DivIndicatorJsonParser.t;
            Expression expression8 = DivIndicatorJsonParser.h;
            Expression expressionK3 = pa5.k(ex7Var, jSONObject, "minimum_item_size", zbbVar2, e74Var2, pnbVar3, expression8);
            Expression expression9 = expressionK3 == null ? expression8 : expressionK3;
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            String str2 = (String) tb5.k(ex7Var, jSONObject, "pager_id");
            Expression expressionH = pa5.h(ex7Var, jSONObject, "reuse_id", acb.c);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar4, e74Var4, DivIndicatorJsonParser.u);
            List listR6 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            DivShape divShape = (DivShape) tb5.n(ex7Var, jSONObject, "shape", this.a.S6());
            if (divShape == null) {
                divShape = DivIndicatorJsonParser.i;
            }
            DivShape divShape2 = divShape;
            y45.i(divShape2, "JsonPropertyParser.readO…r) ?: SHAPE_DEFAULT_VALUE");
            DivFixedSize divFixedSize = (DivFixedSize) tb5.n(ex7Var, jSONObject, "space_between_centers", this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = DivIndicatorJsonParser.j;
            }
            DivFixedSize divFixedSize2 = divFixedSize;
            y45.i(divFixedSize2, "JsonPropertyParser.readO…EEN_CENTERS_DEFAULT_VALUE");
            List listR7 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivIndicatorJsonParser.v);
            List listR8 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR9 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar5 = DivIndicatorJsonParser.p;
            e74 e74Var5 = DivVisibility.FROM_STRING;
            Expression expression10 = DivIndicatorJsonParser.k;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar5, e74Var5, expression10);
            if (expressionL4 == null) {
                expressionL4 = expression10;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR10 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivIndicatorJsonParser.l;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivIndicator(divAccessibility, expression2, expression3, divRoundedRectangleShape, expressionI, expressionI2, expression4, expression6, listR, listR2, divBorder, expressionJ, listR3, listR4, divFocus, listR5, divSize2, str, expression7, divRoundedRectangleShape2, divRoundedRectangleShape3, divIndicatorItemPlacement, divLayoutProvider, divEdgeInsets, expression9, divEdgeInsets2, str2, expressionH, expressionJ2, listR6, divShape2, divFixedSize2, listR7, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR8, listR9, expressionL4, divVisibilityAction, listR10, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivIndicator divIndicator) {
            y45.j(ex7Var, "context");
            y45.j(divIndicator, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divIndicator.r(), this.a.H());
            Expression expression = divIndicator.b;
            e74 e74Var = ParsingConvertersKt.a;
            pa5.q(ex7Var, jSONObject, "active_item_color", expression, e74Var);
            pa5.p(ex7Var, jSONObject, "active_item_size", divIndicator.c);
            tb5.x(ex7Var, jSONObject, "active_shape", divIndicator.d, this.a.u6());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divIndicator.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divIndicator.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divIndicator.p());
            pa5.q(ex7Var, jSONObject, "animation", divIndicator.h, DivIndicator.Animation.TO_STRING);
            tb5.z(ex7Var, jSONObject, "animators", divIndicator.A(), this.a.q1());
            tb5.z(ex7Var, jSONObject, "background", divIndicator.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divIndicator.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "column_span", divIndicator.b());
            tb5.z(ex7Var, jSONObject, "disappear_actions", divIndicator.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "extensions", divIndicator.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divIndicator.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divIndicator.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divIndicator.getHeight(), this.a.V6());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divIndicator.getId());
            pa5.q(ex7Var, jSONObject, "inactive_item_color", divIndicator.s, e74Var);
            tb5.x(ex7Var, jSONObject, "inactive_minimum_shape", divIndicator.t, this.a.u6());
            tb5.x(ex7Var, jSONObject, "inactive_shape", divIndicator.u, this.a.u6());
            tb5.x(ex7Var, jSONObject, "items_placement", divIndicator.v, this.a.X3());
            tb5.x(ex7Var, jSONObject, "layout_provider", divIndicator.v(), this.a.M4());
            tb5.x(ex7Var, jSONObject, "margins", divIndicator.d(), this.a.V2());
            pa5.p(ex7Var, jSONObject, "minimum_item_size", divIndicator.y);
            tb5.x(ex7Var, jSONObject, "paddings", divIndicator.t(), this.a.V2());
            tb5.v(ex7Var, jSONObject, "pager_id", divIndicator.A);
            pa5.p(ex7Var, jSONObject, "reuse_id", divIndicator.f());
            pa5.p(ex7Var, jSONObject, "row_span", divIndicator.e());
            tb5.z(ex7Var, jSONObject, "selected_actions", divIndicator.u(), this.a.u0());
            tb5.x(ex7Var, jSONObject, "shape", divIndicator.E, this.a.S6());
            tb5.x(ex7Var, jSONObject, "space_between_centers", divIndicator.F, this.a.t3());
            tb5.z(ex7Var, jSONObject, "tooltips", divIndicator.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divIndicator.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divIndicator.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divIndicator.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divIndicator.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divIndicator.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "indicator");
            tb5.z(ex7Var, jSONObject, "variable_triggers", divIndicator.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divIndicator.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divIndicator.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divIndicator.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divIndicator.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divIndicator.getWidth(), this.a.V6());
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
        public DivIndicatorTemplate c(ex7 ex7Var, DivIndicatorTemplate divIndicatorTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divIndicatorTemplate != null ? divIndicatorTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            zbb zbbVar = acb.f;
            tp3 tp3Var = divIndicatorTemplate != null ? divIndicatorTemplate.b : null;
            e74 e74Var = ParsingConvertersKt.b;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "active_item_color", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            zbb zbbVar2 = acb.d;
            tp3 tp3Var2 = divIndicatorTemplate != null ? divIndicatorTemplate.c : null;
            e74 e74Var2 = ParsingConvertersKt.g;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "active_item_size", zbbVar2, zC, tp3Var2, e74Var2, DivIndicatorJsonParser.q);
            y45.i(tp3VarV, "readOptionalFieldWithExp…TIVE_ITEM_SIZE_VALIDATOR)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "active_shape", zC, divIndicatorTemplate != null ? divIndicatorTemplate.d : null, this.a.v6());
            y45.i(tp3VarS2, "readOptionalField(contex…eShapeJsonTemplateParser)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivIndicatorJsonParser.m, zC, divIndicatorTemplate != null ? divIndicatorTemplate.e : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivIndicatorJsonParser.n, zC, divIndicatorTemplate != null ? divIndicatorTemplate.f : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "alpha", zbbVar2, zC, divIndicatorTemplate != null ? divIndicatorTemplate.g : null, e74Var2, DivIndicatorJsonParser.r);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "animation", DivIndicatorJsonParser.o, zC, divIndicatorTemplate != null ? divIndicatorTemplate.h : null, DivIndicator.Animation.FROM_STRING);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…or.Animation.FROM_STRING)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "animators", zC, divIndicatorTemplate != null ? divIndicatorTemplate.i : null, this.a.r1());
            y45.i(tp3VarZ, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "background", zC, divIndicatorTemplate != null ? divIndicatorTemplate.j : null, this.a.D1());
            y45.i(tp3VarZ2, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "border", zC, divIndicatorTemplate != null ? divIndicatorTemplate.k : null, this.a.J1());
            y45.i(tp3VarS3, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar3 = acb.b;
            tp3 tp3Var3 = divIndicatorTemplate != null ? divIndicatorTemplate.l : null;
            e74 e74Var3 = ParsingConvertersKt.h;
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar3, zC, tp3Var3, e74Var3, DivIndicatorJsonParser.s);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divIndicatorTemplate != null ? divIndicatorTemplate.m : null, this.a.N2());
            y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divIndicatorTemplate != null ? divIndicatorTemplate.n : null, this.a.Z2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "focus", zC, divIndicatorTemplate != null ? divIndicatorTemplate.o : null, this.a.x3());
            y45.i(tp3VarS4, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "functions", zC, divIndicatorTemplate != null ? divIndicatorTemplate.p : null, this.a.G3());
            y45.i(tp3VarZ5, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "height", zC, divIndicatorTemplate != null ? divIndicatorTemplate.q : null, this.a.W6());
            y45.i(tp3VarS5, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divIndicatorTemplate != null ? divIndicatorTemplate.r : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "inactive_item_color", zbbVar, zC, divIndicatorTemplate != null ? divIndicatorTemplate.s : null, e74Var);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "inactive_minimum_shape", zC, divIndicatorTemplate != null ? divIndicatorTemplate.t : null, this.a.v6());
            y45.i(tp3VarS6, "readOptionalField(contex…eShapeJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "inactive_shape", zC, divIndicatorTemplate != null ? divIndicatorTemplate.u : null, this.a.v6());
            y45.i(tp3VarS7, "readOptionalField(contex…eShapeJsonTemplateParser)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "items_placement", zC, divIndicatorTemplate != null ? divIndicatorTemplate.v : null, this.a.Y3());
            y45.i(tp3VarS8, "readOptionalField(contex…cementJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divIndicatorTemplate != null ? divIndicatorTemplate.w : null, this.a.N4());
            y45.i(tp3VarS9, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "margins", zC, divIndicatorTemplate != null ? divIndicatorTemplate.x : null, this.a.W2());
            y45.i(tp3VarS10, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "minimum_item_size", zbbVar2, zC, divIndicatorTemplate != null ? divIndicatorTemplate.y : null, e74Var2, DivIndicatorJsonParser.t);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…IMUM_ITEM_SIZE_VALIDATOR)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divIndicatorTemplate != null ? divIndicatorTemplate.z : null, this.a.W2());
            y45.i(tp3VarS11, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarP2 = ra5.p(ex7VarC, jSONObject, "pager_id", zC, divIndicatorTemplate != null ? divIndicatorTemplate.A : null);
            y45.i(tp3VarP2, "readOptionalField(contex…verride, parent?.pagerId)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "reuse_id", acb.c, zC, divIndicatorTemplate != null ? divIndicatorTemplate.B : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV5 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar3, zC, divIndicatorTemplate != null ? divIndicatorTemplate.C : null, e74Var3, DivIndicatorJsonParser.u);
            y45.i(tp3VarV5, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divIndicatorTemplate != null ? divIndicatorTemplate.D : null, this.a.v0());
            y45.i(tp3VarZ6, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "shape", zC, divIndicatorTemplate != null ? divIndicatorTemplate.E : null, this.a.T6());
            y45.i(tp3VarS12, "readOptionalField(contex…vShapeJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "space_between_centers", zC, divIndicatorTemplate != null ? divIndicatorTemplate.F : null, this.a.u3());
            y45.i(tp3VarS13, "readOptionalField(contex…edSizeJsonTemplateParser)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divIndicatorTemplate != null ? divIndicatorTemplate.G : null, this.a.K8());
            y45.i(tp3VarZ7, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "transform", zC, divIndicatorTemplate != null ? divIndicatorTemplate.H : null, this.a.W8());
            y45.i(tp3VarS14, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS15 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divIndicatorTemplate != null ? divIndicatorTemplate.I : null, this.a.S1());
            y45.i(tp3VarS15, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS16 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divIndicatorTemplate != null ? divIndicatorTemplate.J : null, this.a.x1());
            y45.i(tp3VarS16, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS17 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divIndicatorTemplate != null ? divIndicatorTemplate.K : null, this.a.x1());
            y45.i(tp3VarS17, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var4 = divIndicatorTemplate != null ? divIndicatorTemplate.L : null;
            e74 e74Var4 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivIndicatorJsonParser.v;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var4, e74Var4, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divIndicatorTemplate != null ? divIndicatorTemplate.M : null, this.a.Z8());
            y45.i(tp3VarZ8, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "variables", zC, divIndicatorTemplate != null ? divIndicatorTemplate.N : null, this.a.f9());
            y45.i(tp3VarZ9, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "visibility", DivIndicatorJsonParser.p, zC, divIndicatorTemplate != null ? divIndicatorTemplate.O : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS18 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divIndicatorTemplate != null ? divIndicatorTemplate.P : null, this.a.r9());
            y45.i(tp3VarS18, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divIndicatorTemplate != null ? divIndicatorTemplate.Q : null, this.a.r9());
            y45.i(tp3VarZ10, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS19 = ra5.s(ex7VarC, jSONObject, "width", zC, divIndicatorTemplate != null ? divIndicatorTemplate.R : null, this.a.W6());
            y45.i(tp3VarS19, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivIndicatorTemplate(tp3VarS, tp3VarU, tp3VarV, tp3VarS2, tp3VarU2, tp3VarU3, tp3VarV2, tp3VarU4, tp3VarZ, tp3VarZ2, tp3VarS3, tp3VarV3, tp3VarZ3, tp3VarZ4, tp3VarS4, tp3VarZ5, tp3VarS5, tp3VarP, tp3VarU5, tp3VarS6, tp3VarS7, tp3VarS8, tp3VarS9, tp3VarS10, tp3VarV4, tp3VarS11, tp3VarP2, tp3VarT, tp3VarV5, tp3VarZ6, tp3VarS12, tp3VarS13, tp3VarZ7, tp3VarS14, tp3VarS15, tp3VarS16, tp3VarS17, tp3VarX, tp3VarZ8, tp3VarZ9, tp3VarU6, tp3VarS18, tp3VarZ10, tp3VarS19);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivIndicatorTemplate divIndicatorTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divIndicatorTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divIndicatorTemplate.a, this.a.I());
            tp3 tp3Var = divIndicatorTemplate.b;
            e74 e74Var = ParsingConvertersKt.a;
            ra5.E(ex7Var, jSONObject, "active_item_color", tp3Var, e74Var);
            ra5.D(ex7Var, jSONObject, "active_item_size", divIndicatorTemplate.c);
            ra5.I(ex7Var, jSONObject, "active_shape", divIndicatorTemplate.d, this.a.v6());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divIndicatorTemplate.e, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divIndicatorTemplate.f, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divIndicatorTemplate.g);
            ra5.E(ex7Var, jSONObject, "animation", divIndicatorTemplate.h, DivIndicator.Animation.TO_STRING);
            ra5.K(ex7Var, jSONObject, "animators", divIndicatorTemplate.i, this.a.r1());
            ra5.K(ex7Var, jSONObject, "background", divIndicatorTemplate.j, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divIndicatorTemplate.k, this.a.J1());
            ra5.D(ex7Var, jSONObject, "column_span", divIndicatorTemplate.l);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divIndicatorTemplate.m, this.a.N2());
            ra5.K(ex7Var, jSONObject, "extensions", divIndicatorTemplate.n, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divIndicatorTemplate.o, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divIndicatorTemplate.p, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divIndicatorTemplate.q, this.a.W6());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divIndicatorTemplate.r);
            ra5.E(ex7Var, jSONObject, "inactive_item_color", divIndicatorTemplate.s, e74Var);
            ra5.I(ex7Var, jSONObject, "inactive_minimum_shape", divIndicatorTemplate.t, this.a.v6());
            ra5.I(ex7Var, jSONObject, "inactive_shape", divIndicatorTemplate.u, this.a.v6());
            ra5.I(ex7Var, jSONObject, "items_placement", divIndicatorTemplate.v, this.a.Y3());
            ra5.I(ex7Var, jSONObject, "layout_provider", divIndicatorTemplate.w, this.a.N4());
            ra5.I(ex7Var, jSONObject, "margins", divIndicatorTemplate.x, this.a.W2());
            ra5.D(ex7Var, jSONObject, "minimum_item_size", divIndicatorTemplate.y);
            ra5.I(ex7Var, jSONObject, "paddings", divIndicatorTemplate.z, this.a.W2());
            ra5.G(ex7Var, jSONObject, "pager_id", divIndicatorTemplate.A);
            ra5.D(ex7Var, jSONObject, "reuse_id", divIndicatorTemplate.B);
            ra5.D(ex7Var, jSONObject, "row_span", divIndicatorTemplate.C);
            ra5.K(ex7Var, jSONObject, "selected_actions", divIndicatorTemplate.D, this.a.v0());
            ra5.I(ex7Var, jSONObject, "shape", divIndicatorTemplate.E, this.a.T6());
            ra5.I(ex7Var, jSONObject, "space_between_centers", divIndicatorTemplate.F, this.a.u3());
            ra5.K(ex7Var, jSONObject, "tooltips", divIndicatorTemplate.G, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divIndicatorTemplate.H, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divIndicatorTemplate.I, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divIndicatorTemplate.J, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divIndicatorTemplate.K, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divIndicatorTemplate.L, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "indicator");
            ra5.K(ex7Var, jSONObject, "variable_triggers", divIndicatorTemplate.M, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divIndicatorTemplate.N, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divIndicatorTemplate.O, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divIndicatorTemplate.P, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divIndicatorTemplate.Q, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divIndicatorTemplate.R, this.a.W6());
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
        public DivIndicator a(ex7 ex7Var, DivIndicatorTemplate divIndicatorTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divIndicatorTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divIndicatorTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            tp3 tp3Var = divIndicatorTemplate.b;
            zbb zbbVar = acb.f;
            e74 e74Var = ParsingConvertersKt.b;
            Expression expression = DivIndicatorJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "active_item_color", zbbVar, e74Var, expression);
            Expression expression2 = expressionV == null ? expression : expressionV;
            tp3 tp3Var2 = divIndicatorTemplate.c;
            zbb zbbVar2 = acb.d;
            e74 e74Var2 = ParsingConvertersKt.g;
            pnb pnbVar = DivIndicatorJsonParser.q;
            Expression expression3 = DivIndicatorJsonParser.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var2, jSONObject, "active_item_size", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionU != null) {
                expression3 = expressionU;
            }
            DivRoundedRectangleShape divRoundedRectangleShape = (DivRoundedRectangleShape) sa5.p(ex7Var, divIndicatorTemplate.d, jSONObject, "active_shape", this.a.w6(), this.a.u6());
            Expression expressionS = sa5.s(ex7Var, divIndicatorTemplate.e, jSONObject, "alignment_horizontal", DivIndicatorJsonParser.m, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divIndicatorTemplate.f, jSONObject, "alignment_vertical", DivIndicatorJsonParser.n, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var3 = divIndicatorTemplate.g;
            pnb pnbVar2 = DivIndicatorJsonParser.r;
            Expression expression4 = DivIndicatorJsonParser.d;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var3, jSONObject, "alpha", zbbVar2, e74Var2, pnbVar2, expression4);
            if (expressionU2 != null) {
                expression4 = expressionU2;
            }
            tp3 tp3Var4 = divIndicatorTemplate.h;
            zbb zbbVar3 = DivIndicatorJsonParser.o;
            e74 e74Var3 = DivIndicator.Animation.FROM_STRING;
            Expression expression5 = DivIndicatorJsonParser.e;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var4, jSONObject, "animation", zbbVar3, e74Var3, expression5);
            Expression expression6 = expressionV2 == null ? expression5 : expressionV2;
            List listB = sa5.B(ex7Var, divIndicatorTemplate.i, jSONObject, "animators", this.a.s1(), this.a.q1());
            List listB2 = sa5.B(ex7Var, divIndicatorTemplate.j, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divIndicatorTemplate.k, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var5 = divIndicatorTemplate.l;
            zbb zbbVar4 = acb.b;
            e74 e74Var4 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var5, jSONObject, "column_span", zbbVar4, e74Var4, DivIndicatorJsonParser.s);
            List listB3 = sa5.B(ex7Var, divIndicatorTemplate.m, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB4 = sa5.B(ex7Var, divIndicatorTemplate.n, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divIndicatorTemplate.o, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB5 = sa5.B(ex7Var, divIndicatorTemplate.p, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divIndicatorTemplate.q, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivIndicatorJsonParser.f;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) sa5.m(ex7Var, divIndicatorTemplate.r, jSONObject, TtmlNode.ATTR_ID);
            tp3 tp3Var6 = divIndicatorTemplate.s;
            Expression expression7 = DivIndicatorJsonParser.g;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var6, jSONObject, "inactive_item_color", zbbVar, e74Var, expression7);
            if (expressionV3 != null) {
                expression7 = expressionV3;
            }
            DivRoundedRectangleShape divRoundedRectangleShape2 = (DivRoundedRectangleShape) sa5.p(ex7Var, divIndicatorTemplate.t, jSONObject, "inactive_minimum_shape", this.a.w6(), this.a.u6());
            DivRoundedRectangleShape divRoundedRectangleShape3 = (DivRoundedRectangleShape) sa5.p(ex7Var, divIndicatorTemplate.u, jSONObject, "inactive_shape", this.a.w6(), this.a.u6());
            DivIndicatorItemPlacement divIndicatorItemPlacement = (DivIndicatorItemPlacement) sa5.p(ex7Var, divIndicatorTemplate.v, jSONObject, "items_placement", this.a.Z3(), this.a.X3());
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divIndicatorTemplate.w, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divIndicatorTemplate.x, jSONObject, "margins", this.a.X2(), this.a.V2());
            tp3 tp3Var7 = divIndicatorTemplate.y;
            pnb pnbVar3 = DivIndicatorJsonParser.t;
            Expression expression8 = DivIndicatorJsonParser.h;
            Expression expressionU3 = sa5.u(ex7Var, tp3Var7, jSONObject, "minimum_item_size", zbbVar2, e74Var2, pnbVar3, expression8);
            Expression expression9 = expressionU3 == null ? expression8 : expressionU3;
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divIndicatorTemplate.z, jSONObject, "paddings", this.a.X2(), this.a.V2());
            String str2 = (String) sa5.m(ex7Var, divIndicatorTemplate.A, jSONObject, "pager_id");
            Expression expressionR = sa5.r(ex7Var, divIndicatorTemplate.B, jSONObject, "reuse_id", acb.c);
            Expression expressionT2 = sa5.t(ex7Var, divIndicatorTemplate.C, jSONObject, "row_span", zbbVar4, e74Var4, DivIndicatorJsonParser.u);
            List listB6 = sa5.B(ex7Var, divIndicatorTemplate.D, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            DivShape divShape = (DivShape) sa5.p(ex7Var, divIndicatorTemplate.E, jSONObject, "shape", this.a.U6(), this.a.S6());
            if (divShape == null) {
                divShape = DivIndicatorJsonParser.i;
            }
            DivShape divShape2 = divShape;
            y45.i(divShape2, "JsonFieldResolver.resolv…r) ?: SHAPE_DEFAULT_VALUE");
            DivFixedSize divFixedSize = (DivFixedSize) sa5.p(ex7Var, divIndicatorTemplate.F, jSONObject, "space_between_centers", this.a.v3(), this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = DivIndicatorJsonParser.j;
            }
            DivFixedSize divFixedSize2 = divFixedSize;
            y45.i(divFixedSize2, "JsonFieldResolver.resolv…EEN_CENTERS_DEFAULT_VALUE");
            List listB7 = sa5.B(ex7Var, divIndicatorTemplate.G, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divIndicatorTemplate.H, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divIndicatorTemplate.I, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divIndicatorTemplate.J, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divIndicatorTemplate.K, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divIndicatorTemplate.L, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivIndicatorJsonParser.v);
            List listB8 = sa5.B(ex7Var, divIndicatorTemplate.M, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB9 = sa5.B(ex7Var, divIndicatorTemplate.N, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var8 = divIndicatorTemplate.O;
            zbb zbbVar5 = DivIndicatorJsonParser.p;
            e74 e74Var5 = DivVisibility.FROM_STRING;
            Expression expression10 = DivIndicatorJsonParser.k;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var8, jSONObject, "visibility", zbbVar5, e74Var5, expression10);
            Expression expression11 = expressionV4 == null ? expression10 : expressionV4;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divIndicatorTemplate.P, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB10 = sa5.B(ex7Var, divIndicatorTemplate.Q, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divIndicatorTemplate.R, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivIndicatorJsonParser.l;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivIndicator(divAccessibility, expression2, expression3, divRoundedRectangleShape, expressionS, expressionS2, expression4, expression6, listB, listB2, divBorder, expressionT, listB3, listB4, divFocus, listB5, divSize2, str, expression7, divRoundedRectangleShape2, divRoundedRectangleShape3, divIndicatorItemPlacement, divLayoutProvider, divEdgeInsets, expression9, divEdgeInsets2, str2, expressionR, expressionT2, listB6, divShape2, divFixedSize2, listB7, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB8, listB9, expression11, divVisibilityAction, listB10, divSize3);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(16768096);
        c = aVar.a(Double.valueOf(1.3d));
        d = aVar.a(Double.valueOf(1.0d));
        e = aVar.a(DivIndicator.Animation.SCALE);
        f = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        g = aVar.a(865180853);
        h = aVar.a(Double.valueOf(0.5d));
        i = new DivShape.c(new DivRoundedRectangleShape(null, null, null, null, null, 31, null));
        j = new DivFixedSize(null, aVar.a(15L), 1, null);
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
        o = aVar2.a(hi.W(DivIndicator.Animation.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivIndicator.Animation);
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
                return DivIndicatorJsonParser.g(((Double) obj).doubleValue());
            }
        };
        r = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivIndicatorJsonParser.h(((Double) obj).doubleValue());
            }
        };
        s = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivIndicatorJsonParser.i(((Long) obj).longValue());
            }
        };
        t = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivIndicatorJsonParser.j(((Double) obj).doubleValue());
            }
        };
        u = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivIndicatorJsonParser.k(((Long) obj).longValue());
            }
        };
        v = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivIndicatorJsonParser.l(list);
            }
        };
    }

    public static final boolean g(double d2) {
        return d2 > 0.0d;
    }

    public static final boolean h(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean i(long j2) {
        return j2 >= 0;
    }

    public static final boolean j(double d2) {
        return d2 > 0.0d;
    }

    public static final boolean k(long j2) {
        return j2 >= 0;
    }

    public static final boolean l(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
