package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSliderJsonParser;
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

public abstract class DivSliderJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final DivSize.d c;
    public static final Expression d;
    public static final Expression e;
    public static final Expression f;
    public static final Expression g;
    public static final DivSize.c h;
    public static final zbb i;
    public static final zbb j;
    public static final zbb k;
    public static final pnb l;
    public static final pnb m;
    public static final pnb n;
    public static final hm5 o;

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
        public DivSlider a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivSliderJsonParser.i, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivSliderJsonParser.j, DivAlignmentVertical.FROM_STRING);
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivSliderJsonParser.l;
            Expression expression = DivSliderJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            List listR2 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar2, e74Var2, DivSliderJsonParser.m);
            List listR3 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            List listR4 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR5 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivSliderJsonParser.c;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            zbb zbbVar3 = acb.a;
            e74 e74Var3 = ParsingConvertersKt.f;
            Expression expression2 = DivSliderJsonParser.d;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "is_enabled", zbbVar3, e74Var3, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            Expression expression3 = DivSliderJsonParser.e;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "max_value", zbbVar2, e74Var2, expression3);
            if (expressionL2 != null) {
                expression3 = expressionL2;
            }
            Expression expression4 = DivSliderJsonParser.f;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "min_value", zbbVar2, e74Var2, expression4);
            if (expressionL3 != null) {
                expression4 = expressionL3;
            }
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            List listR6 = tb5.r(ex7Var, jSONObject, "ranges", this.a.e7());
            Expression expressionH = pa5.h(ex7Var, jSONObject, "reuse_id", acb.c);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar2, e74Var2, DivSliderJsonParser.n);
            DivAccessibility divAccessibility2 = (DivAccessibility) tb5.n(ex7Var, jSONObject, "secondary_value_accessibility", this.a.H());
            List listR7 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            DivDrawable divDrawable = (DivDrawable) tb5.n(ex7Var, jSONObject, "thumb_secondary_style", this.a.S2());
            DivSlider.TextStyle textStyle = (DivSlider.TextStyle) tb5.n(ex7Var, jSONObject, "thumb_secondary_text_style", this.a.h7());
            String str2 = (String) tb5.k(ex7Var, jSONObject, "thumb_secondary_value_variable");
            Object objG = tb5.g(ex7Var, jSONObject, "thumb_style", this.a.S2());
            y45.i(objG, "read(context, data, \"thu…DrawableJsonEntityParser)");
            DivDrawable divDrawable2 = (DivDrawable) objG;
            DivSlider.TextStyle textStyle2 = (DivSlider.TextStyle) tb5.n(ex7Var, jSONObject, "thumb_text_style", this.a.h7());
            String str3 = (String) tb5.k(ex7Var, jSONObject, "thumb_value_variable");
            DivDrawable divDrawable3 = (DivDrawable) tb5.n(ex7Var, jSONObject, "tick_mark_active_style", this.a.S2());
            DivDrawable divDrawable4 = (DivDrawable) tb5.n(ex7Var, jSONObject, "tick_mark_inactive_style", this.a.S2());
            List listR8 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            Object objG2 = tb5.g(ex7Var, jSONObject, "track_active_style", this.a.S2());
            y45.i(objG2, "read(context, data, \"tra…DrawableJsonEntityParser)");
            DivDrawable divDrawable5 = (DivDrawable) objG2;
            Object objG3 = tb5.g(ex7Var, jSONObject, "track_inactive_style", this.a.S2());
            y45.i(objG3, "read(context, data, \"tra…DrawableJsonEntityParser)");
            DivDrawable divDrawable6 = (DivDrawable) objG3;
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivSliderJsonParser.o);
            List listR9 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR10 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            zbb zbbVar4 = DivSliderJsonParser.k;
            e74 e74Var4 = DivVisibility.FROM_STRING;
            Expression expression5 = DivSliderJsonParser.g;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar4, e74Var4, expression5);
            if (expressionL4 == null) {
                expressionL4 = expression5;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR11 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivSliderJsonParser.h;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivSlider(divAccessibility, expressionI, expressionI2, expression, listR, listR2, divBorder, expressionJ, listR3, listR4, divFocus, listR5, divSize2, str, expression2, divLayoutProvider, divEdgeInsets, expression3, expression4, divEdgeInsets2, listR6, expressionH, expressionJ2, divAccessibility2, listR7, divDrawable, textStyle, str2, divDrawable2, textStyle2, str3, divDrawable3, divDrawable4, listR8, divDrawable5, divDrawable6, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR9, listR10, expressionL4, divVisibilityAction, listR11, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSlider divSlider) {
            y45.j(ex7Var, "context");
            y45.j(divSlider, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divSlider.r(), this.a.H());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divSlider.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divSlider.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divSlider.p());
            tb5.z(ex7Var, jSONObject, "animators", divSlider.A(), this.a.q1());
            tb5.z(ex7Var, jSONObject, "background", divSlider.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divSlider.B(), this.a.I1());
            pa5.p(ex7Var, jSONObject, "column_span", divSlider.b());
            tb5.z(ex7Var, jSONObject, "disappear_actions", divSlider.k(), this.a.M2());
            tb5.z(ex7Var, jSONObject, "extensions", divSlider.getExtensions(), this.a.Y2());
            tb5.x(ex7Var, jSONObject, "focus", divSlider.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divSlider.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divSlider.getHeight(), this.a.V6());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divSlider.getId());
            pa5.p(ex7Var, jSONObject, "is_enabled", divSlider.o);
            tb5.x(ex7Var, jSONObject, "layout_provider", divSlider.v(), this.a.M4());
            tb5.x(ex7Var, jSONObject, "margins", divSlider.d(), this.a.V2());
            pa5.p(ex7Var, jSONObject, "max_value", divSlider.r);
            pa5.p(ex7Var, jSONObject, "min_value", divSlider.s);
            tb5.x(ex7Var, jSONObject, "paddings", divSlider.t(), this.a.V2());
            tb5.z(ex7Var, jSONObject, "ranges", divSlider.u, this.a.e7());
            pa5.p(ex7Var, jSONObject, "reuse_id", divSlider.f());
            pa5.p(ex7Var, jSONObject, "row_span", divSlider.e());
            tb5.x(ex7Var, jSONObject, "secondary_value_accessibility", divSlider.x, this.a.H());
            tb5.z(ex7Var, jSONObject, "selected_actions", divSlider.u(), this.a.u0());
            tb5.x(ex7Var, jSONObject, "thumb_secondary_style", divSlider.z, this.a.S2());
            tb5.x(ex7Var, jSONObject, "thumb_secondary_text_style", divSlider.A, this.a.h7());
            tb5.v(ex7Var, jSONObject, "thumb_secondary_value_variable", divSlider.B);
            tb5.x(ex7Var, jSONObject, "thumb_style", divSlider.C, this.a.S2());
            tb5.x(ex7Var, jSONObject, "thumb_text_style", divSlider.D, this.a.h7());
            tb5.v(ex7Var, jSONObject, "thumb_value_variable", divSlider.E);
            tb5.x(ex7Var, jSONObject, "tick_mark_active_style", divSlider.F, this.a.S2());
            tb5.x(ex7Var, jSONObject, "tick_mark_inactive_style", divSlider.G, this.a.S2());
            tb5.z(ex7Var, jSONObject, "tooltips", divSlider.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "track_active_style", divSlider.I, this.a.S2());
            tb5.x(ex7Var, jSONObject, "track_inactive_style", divSlider.J, this.a.S2());
            tb5.x(ex7Var, jSONObject, "transform", divSlider.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divSlider.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divSlider.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divSlider.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divSlider.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "slider");
            tb5.z(ex7Var, jSONObject, "variable_triggers", divSlider.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divSlider.c(), this.a.e9());
            pa5.q(ex7Var, jSONObject, "visibility", divSlider.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divSlider.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divSlider.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divSlider.getWidth(), this.a.V6());
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
        public DivSliderTemplate c(ex7 ex7Var, DivSliderTemplate divSliderTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divSliderTemplate != null ? divSliderTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivSliderJsonParser.i, zC, divSliderTemplate != null ? divSliderTemplate.b : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivSliderJsonParser.j, zC, divSliderTemplate != null ? divSliderTemplate.c : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divSliderTemplate != null ? divSliderTemplate.d : null, ParsingConvertersKt.g, DivSliderJsonParser.l);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "animators", zC, divSliderTemplate != null ? divSliderTemplate.e : null, this.a.r1());
            y45.i(tp3VarZ, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "background", zC, divSliderTemplate != null ? divSliderTemplate.f : null, this.a.D1());
            y45.i(tp3VarZ2, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "border", zC, divSliderTemplate != null ? divSliderTemplate.g : null, this.a.J1());
            y45.i(tp3VarS2, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divSliderTemplate != null ? divSliderTemplate.h : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar, zC, tp3Var, e74Var, DivSliderJsonParser.m);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divSliderTemplate != null ? divSliderTemplate.i : null, this.a.N2());
            y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divSliderTemplate != null ? divSliderTemplate.j : null, this.a.Z2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "focus", zC, divSliderTemplate != null ? divSliderTemplate.k : null, this.a.x3());
            y45.i(tp3VarS3, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "functions", zC, divSliderTemplate != null ? divSliderTemplate.l : null, this.a.G3());
            y45.i(tp3VarZ5, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "height", zC, divSliderTemplate != null ? divSliderTemplate.m : null, this.a.W6());
            y45.i(tp3VarS4, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divSliderTemplate != null ? divSliderTemplate.n : null);
            y45.i(tp3VarP, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "is_enabled", acb.a, zC, divSliderTemplate != null ? divSliderTemplate.o : null, ParsingConvertersKt.f);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…sEnabled, ANY_TO_BOOLEAN)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divSliderTemplate != null ? divSliderTemplate.p : null, this.a.N4());
            y45.i(tp3VarS5, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "margins", zC, divSliderTemplate != null ? divSliderTemplate.q : null, this.a.W2());
            y45.i(tp3VarS6, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "max_value", zbbVar, zC, divSliderTemplate != null ? divSliderTemplate.r : null, e74Var);
            y45.i(tp3VarU4, "readOptionalFieldWithExp….maxValue, NUMBER_TO_INT)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "min_value", zbbVar, zC, divSliderTemplate != null ? divSliderTemplate.s : null, e74Var);
            y45.i(tp3VarU5, "readOptionalFieldWithExp….minValue, NUMBER_TO_INT)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divSliderTemplate != null ? divSliderTemplate.t : null, this.a.W2());
            y45.i(tp3VarS7, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "ranges", zC, divSliderTemplate != null ? divSliderTemplate.u : null, this.a.f7());
            y45.i(tp3VarZ6, "readOptionalListField(co…rRangeJsonTemplateParser)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "reuse_id", acb.c, zC, divSliderTemplate != null ? divSliderTemplate.v : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar, zC, divSliderTemplate != null ? divSliderTemplate.w : null, e74Var, DivSliderJsonParser.n);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "secondary_value_accessibility", zC, divSliderTemplate != null ? divSliderTemplate.x : null, this.a.I());
            y45.i(tp3VarS8, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divSliderTemplate != null ? divSliderTemplate.y : null, this.a.v0());
            y45.i(tp3VarZ7, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "thumb_secondary_style", zC, divSliderTemplate != null ? divSliderTemplate.z : null, this.a.T2());
            y45.i(tp3VarS9, "readOptionalField(contex…awableJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "thumb_secondary_text_style", zC, divSliderTemplate != null ? divSliderTemplate.A : null, this.a.i7());
            y45.i(tp3VarS10, "readOptionalField(contex…tStyleJsonTemplateParser)");
            tp3 tp3VarP2 = ra5.p(ex7VarC, jSONObject, "thumb_secondary_value_variable", zC, divSliderTemplate != null ? divSliderTemplate.B : null);
            y45.i(tp3VarP2, "readOptionalField(contex…mbSecondaryValueVariable)");
            tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, "thumb_style", zC, divSliderTemplate != null ? divSliderTemplate.C : null, this.a.T2());
            y45.i(tp3VarF, "readField(context, data,…awableJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "thumb_text_style", zC, divSliderTemplate != null ? divSliderTemplate.D : null, this.a.i7());
            y45.i(tp3VarS11, "readOptionalField(contex…tStyleJsonTemplateParser)");
            tp3 tp3VarP3 = ra5.p(ex7VarC, jSONObject, "thumb_value_variable", zC, divSliderTemplate != null ? divSliderTemplate.E : null);
            y45.i(tp3VarP3, "readOptionalField(contex…rent?.thumbValueVariable)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "tick_mark_active_style", zC, divSliderTemplate != null ? divSliderTemplate.F : null, this.a.T2());
            y45.i(tp3VarS12, "readOptionalField(contex…awableJsonTemplateParser)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "tick_mark_inactive_style", zC, divSliderTemplate != null ? divSliderTemplate.G : null, this.a.T2());
            y45.i(tp3VarS13, "readOptionalField(contex…awableJsonTemplateParser)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divSliderTemplate != null ? divSliderTemplate.H : null, this.a.K8());
            y45.i(tp3VarZ8, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarF2 = ra5.f(ex7VarC, jSONObject, "track_active_style", zC, divSliderTemplate != null ? divSliderTemplate.I : null, this.a.T2());
            y45.i(tp3VarF2, "readField(context, data,…awableJsonTemplateParser)");
            tp3 tp3VarF3 = ra5.f(ex7VarC, jSONObject, "track_inactive_style", zC, divSliderTemplate != null ? divSliderTemplate.J : null, this.a.T2());
            y45.i(tp3VarF3, "readField(context, data,…awableJsonTemplateParser)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "transform", zC, divSliderTemplate != null ? divSliderTemplate.K : null, this.a.W8());
            y45.i(tp3VarS14, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS15 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divSliderTemplate != null ? divSliderTemplate.L : null, this.a.S1());
            y45.i(tp3VarS15, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS16 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divSliderTemplate != null ? divSliderTemplate.M : null, this.a.x1());
            y45.i(tp3VarS16, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS17 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divSliderTemplate != null ? divSliderTemplate.N : null, this.a.x1());
            y45.i(tp3VarS17, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var2 = divSliderTemplate != null ? divSliderTemplate.O : null;
            e74 e74Var2 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivSliderJsonParser.o;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var2, e74Var2, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divSliderTemplate != null ? divSliderTemplate.P : null, this.a.Z8());
            y45.i(tp3VarZ9, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "variables", zC, divSliderTemplate != null ? divSliderTemplate.Q : null, this.a.f9());
            y45.i(tp3VarZ10, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "visibility", DivSliderJsonParser.k, zC, divSliderTemplate != null ? divSliderTemplate.R : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS18 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divSliderTemplate != null ? divSliderTemplate.S : null, this.a.r9());
            y45.i(tp3VarS18, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divSliderTemplate != null ? divSliderTemplate.T : null, this.a.r9());
            y45.i(tp3VarZ11, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS19 = ra5.s(ex7VarC, jSONObject, "width", zC, divSliderTemplate != null ? divSliderTemplate.U : null, this.a.W6());
            y45.i(tp3VarS19, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivSliderTemplate(tp3VarS, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ, tp3VarZ2, tp3VarS2, tp3VarV2, tp3VarZ3, tp3VarZ4, tp3VarS3, tp3VarZ5, tp3VarS4, tp3VarP, tp3VarU3, tp3VarS5, tp3VarS6, tp3VarU4, tp3VarU5, tp3VarS7, tp3VarZ6, tp3VarT, tp3VarV3, tp3VarS8, tp3VarZ7, tp3VarS9, tp3VarS10, tp3VarP2, tp3VarF, tp3VarS11, tp3VarP3, tp3VarS12, tp3VarS13, tp3VarZ8, tp3VarF2, tp3VarF3, tp3VarS14, tp3VarS15, tp3VarS16, tp3VarS17, tp3VarX, tp3VarZ9, tp3VarZ10, tp3VarU6, tp3VarS18, tp3VarZ11, tp3VarS19);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSliderTemplate divSliderTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divSliderTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divSliderTemplate.a, this.a.I());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divSliderTemplate.b, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divSliderTemplate.c, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divSliderTemplate.d);
            ra5.K(ex7Var, jSONObject, "animators", divSliderTemplate.e, this.a.r1());
            ra5.K(ex7Var, jSONObject, "background", divSliderTemplate.f, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divSliderTemplate.g, this.a.J1());
            ra5.D(ex7Var, jSONObject, "column_span", divSliderTemplate.h);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divSliderTemplate.i, this.a.N2());
            ra5.K(ex7Var, jSONObject, "extensions", divSliderTemplate.j, this.a.Z2());
            ra5.I(ex7Var, jSONObject, "focus", divSliderTemplate.k, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divSliderTemplate.l, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divSliderTemplate.m, this.a.W6());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divSliderTemplate.n);
            ra5.D(ex7Var, jSONObject, "is_enabled", divSliderTemplate.o);
            ra5.I(ex7Var, jSONObject, "layout_provider", divSliderTemplate.p, this.a.N4());
            ra5.I(ex7Var, jSONObject, "margins", divSliderTemplate.q, this.a.W2());
            ra5.D(ex7Var, jSONObject, "max_value", divSliderTemplate.r);
            ra5.D(ex7Var, jSONObject, "min_value", divSliderTemplate.s);
            ra5.I(ex7Var, jSONObject, "paddings", divSliderTemplate.t, this.a.W2());
            ra5.K(ex7Var, jSONObject, "ranges", divSliderTemplate.u, this.a.f7());
            ra5.D(ex7Var, jSONObject, "reuse_id", divSliderTemplate.v);
            ra5.D(ex7Var, jSONObject, "row_span", divSliderTemplate.w);
            ra5.I(ex7Var, jSONObject, "secondary_value_accessibility", divSliderTemplate.x, this.a.I());
            ra5.K(ex7Var, jSONObject, "selected_actions", divSliderTemplate.y, this.a.v0());
            ra5.I(ex7Var, jSONObject, "thumb_secondary_style", divSliderTemplate.z, this.a.T2());
            ra5.I(ex7Var, jSONObject, "thumb_secondary_text_style", divSliderTemplate.A, this.a.i7());
            ra5.G(ex7Var, jSONObject, "thumb_secondary_value_variable", divSliderTemplate.B);
            ra5.I(ex7Var, jSONObject, "thumb_style", divSliderTemplate.C, this.a.T2());
            ra5.I(ex7Var, jSONObject, "thumb_text_style", divSliderTemplate.D, this.a.i7());
            ra5.G(ex7Var, jSONObject, "thumb_value_variable", divSliderTemplate.E);
            ra5.I(ex7Var, jSONObject, "tick_mark_active_style", divSliderTemplate.F, this.a.T2());
            ra5.I(ex7Var, jSONObject, "tick_mark_inactive_style", divSliderTemplate.G, this.a.T2());
            ra5.K(ex7Var, jSONObject, "tooltips", divSliderTemplate.H, this.a.K8());
            ra5.I(ex7Var, jSONObject, "track_active_style", divSliderTemplate.I, this.a.T2());
            ra5.I(ex7Var, jSONObject, "track_inactive_style", divSliderTemplate.J, this.a.T2());
            ra5.I(ex7Var, jSONObject, "transform", divSliderTemplate.K, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divSliderTemplate.L, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divSliderTemplate.M, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divSliderTemplate.N, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divSliderTemplate.O, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "slider");
            ra5.K(ex7Var, jSONObject, "variable_triggers", divSliderTemplate.P, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divSliderTemplate.Q, this.a.f9());
            ra5.E(ex7Var, jSONObject, "visibility", divSliderTemplate.R, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divSliderTemplate.S, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divSliderTemplate.T, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divSliderTemplate.U, this.a.W6());
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
        public DivSlider a(ex7 ex7Var, DivSliderTemplate divSliderTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divSliderTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divSliderTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            Expression expressionS = sa5.s(ex7Var, divSliderTemplate.b, jSONObject, "alignment_horizontal", DivSliderJsonParser.i, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divSliderTemplate.c, jSONObject, "alignment_vertical", DivSliderJsonParser.j, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var = divSliderTemplate.d;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivSliderJsonParser.l;
            Expression expression = DivSliderJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB = sa5.B(ex7Var, divSliderTemplate.e, jSONObject, "animators", this.a.s1(), this.a.q1());
            List listB2 = sa5.B(ex7Var, divSliderTemplate.f, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divSliderTemplate.g, jSONObject, "border", this.a.K1(), this.a.I1());
            tp3 tp3Var2 = divSliderTemplate.h;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var2, jSONObject, "column_span", zbbVar2, e74Var2, DivSliderJsonParser.m);
            List listB3 = sa5.B(ex7Var, divSliderTemplate.i, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            List listB4 = sa5.B(ex7Var, divSliderTemplate.j, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divSliderTemplate.k, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB5 = sa5.B(ex7Var, divSliderTemplate.l, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divSliderTemplate.m, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivSliderJsonParser.c;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            String str = (String) sa5.m(ex7Var, divSliderTemplate.n, jSONObject, TtmlNode.ATTR_ID);
            tp3 tp3Var3 = divSliderTemplate.o;
            zbb zbbVar3 = acb.a;
            e74 e74Var3 = ParsingConvertersKt.f;
            Expression expression2 = DivSliderJsonParser.d;
            Expression expressionV = sa5.v(ex7Var, tp3Var3, jSONObject, "is_enabled", zbbVar3, e74Var3, expression2);
            if (expressionV != null) {
                expression2 = expressionV;
            }
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divSliderTemplate.p, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divSliderTemplate.q, jSONObject, "margins", this.a.X2(), this.a.V2());
            tp3 tp3Var4 = divSliderTemplate.r;
            Expression expression3 = DivSliderJsonParser.e;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var4, jSONObject, "max_value", zbbVar2, e74Var2, expression3);
            if (expressionV2 != null) {
                expression3 = expressionV2;
            }
            tp3 tp3Var5 = divSliderTemplate.s;
            Expression expression4 = DivSliderJsonParser.f;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var5, jSONObject, "min_value", zbbVar2, e74Var2, expression4);
            if (expressionV3 != null) {
                expression4 = expressionV3;
            }
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divSliderTemplate.t, jSONObject, "paddings", this.a.X2(), this.a.V2());
            List listB6 = sa5.B(ex7Var, divSliderTemplate.u, jSONObject, "ranges", this.a.g7(), this.a.e7());
            Expression expressionR = sa5.r(ex7Var, divSliderTemplate.v, jSONObject, "reuse_id", acb.c);
            Expression expressionT2 = sa5.t(ex7Var, divSliderTemplate.w, jSONObject, "row_span", zbbVar2, e74Var2, DivSliderJsonParser.n);
            DivAccessibility divAccessibility2 = (DivAccessibility) sa5.p(ex7Var, divSliderTemplate.x, jSONObject, "secondary_value_accessibility", this.a.J(), this.a.H());
            List listB7 = sa5.B(ex7Var, divSliderTemplate.y, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            DivDrawable divDrawable = (DivDrawable) sa5.p(ex7Var, divSliderTemplate.z, jSONObject, "thumb_secondary_style", this.a.U2(), this.a.S2());
            DivSlider.TextStyle textStyle = (DivSlider.TextStyle) sa5.p(ex7Var, divSliderTemplate.A, jSONObject, "thumb_secondary_text_style", this.a.j7(), this.a.h7());
            String str2 = (String) sa5.m(ex7Var, divSliderTemplate.B, jSONObject, "thumb_secondary_value_variable");
            Object objD = sa5.d(ex7Var, divSliderTemplate.C, jSONObject, "thumb_style", this.a.U2(), this.a.S2());
            y45.i(objD, "resolve(context, templat…DrawableJsonEntityParser)");
            DivDrawable divDrawable2 = (DivDrawable) objD;
            DivSlider.TextStyle textStyle2 = (DivSlider.TextStyle) sa5.p(ex7Var, divSliderTemplate.D, jSONObject, "thumb_text_style", this.a.j7(), this.a.h7());
            String str3 = (String) sa5.m(ex7Var, divSliderTemplate.E, jSONObject, "thumb_value_variable");
            DivDrawable divDrawable3 = (DivDrawable) sa5.p(ex7Var, divSliderTemplate.F, jSONObject, "tick_mark_active_style", this.a.U2(), this.a.S2());
            DivDrawable divDrawable4 = (DivDrawable) sa5.p(ex7Var, divSliderTemplate.G, jSONObject, "tick_mark_inactive_style", this.a.U2(), this.a.S2());
            List listB8 = sa5.B(ex7Var, divSliderTemplate.H, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            Object objD2 = sa5.d(ex7Var, divSliderTemplate.I, jSONObject, "track_active_style", this.a.U2(), this.a.S2());
            y45.i(objD2, "resolve(context, templat…DrawableJsonEntityParser)");
            DivDrawable divDrawable5 = (DivDrawable) objD2;
            Object objD3 = sa5.d(ex7Var, divSliderTemplate.J, jSONObject, "track_inactive_style", this.a.U2(), this.a.S2());
            y45.i(objD3, "resolve(context, templat…DrawableJsonEntityParser)");
            DivDrawable divDrawable6 = (DivDrawable) objD3;
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divSliderTemplate.K, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divSliderTemplate.L, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divSliderTemplate.M, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divSliderTemplate.N, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divSliderTemplate.O, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivSliderJsonParser.o);
            List listB9 = sa5.B(ex7Var, divSliderTemplate.P, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB10 = sa5.B(ex7Var, divSliderTemplate.Q, jSONObject, "variables", this.a.g9(), this.a.e9());
            tp3 tp3Var6 = divSliderTemplate.R;
            zbb zbbVar4 = DivSliderJsonParser.k;
            e74 e74Var4 = DivVisibility.FROM_STRING;
            Expression expression5 = DivSliderJsonParser.g;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var6, jSONObject, "visibility", zbbVar4, e74Var4, expression5);
            Expression expression6 = expressionV4 == null ? expression5 : expressionV4;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divSliderTemplate.S, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB11 = sa5.B(ex7Var, divSliderTemplate.T, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divSliderTemplate.U, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivSliderJsonParser.h;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivSlider(divAccessibility, expressionS, expressionS2, expression, listB, listB2, divBorder, expressionT, listB3, listB4, divFocus, listB5, divSize2, str, expression2, divLayoutProvider, divEdgeInsets, expression3, expression4, divEdgeInsets2, listB6, expressionR, expressionT2, divAccessibility2, listB7, divDrawable, textStyle, str2, divDrawable2, textStyle2, str3, divDrawable3, divDrawable4, listB8, divDrawable5, divDrawable6, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB9, listB10, expression6, divVisibilityAction, listB11, divSize3);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(1.0d));
        c = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        d = aVar.a(Boolean.TRUE);
        e = aVar.a(100L);
        f = aVar.a(0L);
        g = aVar.a(DivVisibility.VISIBLE);
        h = new DivSize.c(new DivMatchParentSize(null, 1, null));
        zbb.a aVar2 = zbb.a;
        i = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        j = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        k = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        l = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSliderJsonParser.e(((Double) obj).doubleValue());
            }
        };
        m = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSliderJsonParser.f(((Long) obj).longValue());
            }
        };
        n = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSliderJsonParser.g(((Long) obj).longValue());
            }
        };
        o = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivSliderJsonParser.h(list);
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
