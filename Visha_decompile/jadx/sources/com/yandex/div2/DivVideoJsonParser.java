package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivVideoJsonParser;
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

public abstract class DivVideoJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final DivSize.d d;
    public static final Expression e;
    public static final Expression f;
    public static final Expression g;
    public static final Expression h;
    public static final Expression i;
    public static final DivSize.c j;
    public static final zbb k;
    public static final zbb l;
    public static final zbb m;
    public static final zbb n;
    public static final pnb o;
    public static final pnb p;
    public static final pnb q;
    public static final hm5 r;
    public static final hm5 s;

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
        public DivVideo a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.H());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_horizontal", DivVideoJsonParser.k, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivVideoJsonParser.l, DivAlignmentVertical.FROM_STRING);
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivVideoJsonParser.o;
            Expression expression = DivVideoJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR = tb5.r(ex7Var, jSONObject, "animators", this.a.q1());
            DivAspect divAspect = (DivAspect) tb5.n(ex7Var, jSONObject, "aspect", this.a.z1());
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = DivVideoJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "autostart", zbbVar2, e74Var2, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            List listR2 = tb5.r(ex7Var, jSONObject, "background", this.a.C1());
            DivBorder divBorder = (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1());
            List listR3 = tb5.r(ex7Var, jSONObject, "buffering_actions", this.a.u0());
            zbb zbbVar3 = acb.b;
            e74 e74Var3 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "column_span", zbbVar3, e74Var3, DivVideoJsonParser.p);
            List listR4 = tb5.r(ex7Var, jSONObject, "disappear_actions", this.a.M2());
            String str = (String) tb5.k(ex7Var, jSONObject, "elapsed_time_variable");
            List listR5 = tb5.r(ex7Var, jSONObject, "end_actions", this.a.u0());
            List listR6 = tb5.r(ex7Var, jSONObject, "extensions", this.a.Y2());
            List listR7 = tb5.r(ex7Var, jSONObject, "fatal_actions", this.a.u0());
            DivFocus divFocus = (DivFocus) tb5.n(ex7Var, jSONObject, "focus", this.a.w3());
            List listR8 = tb5.r(ex7Var, jSONObject, "functions", this.a.F3());
            DivSize divSize = (DivSize) tb5.n(ex7Var, jSONObject, "height", this.a.V6());
            if (divSize == null) {
                divSize = DivVideoJsonParser.d;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            String str2 = (String) tb5.k(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) tb5.n(ex7Var, jSONObject, "layout_provider", this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            Expression expression3 = DivVideoJsonParser.e;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "muted", zbbVar2, e74Var2, expression3);
            if (expressionL2 != null) {
                expression3 = expressionL2;
            }
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            List listR9 = tb5.r(ex7Var, jSONObject, "pause_actions", this.a.u0());
            JSONObject jSONObject2 = (JSONObject) tb5.k(ex7Var, jSONObject, "player_settings_payload");
            Expression expression4 = DivVideoJsonParser.f;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "preload_required", zbbVar2, e74Var2, expression4);
            if (expressionL3 != null) {
                expression4 = expressionL3;
            }
            zbb zbbVar4 = acb.c;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "preview", zbbVar4);
            Expression expression5 = DivVideoJsonParser.g;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "repeatable", zbbVar2, e74Var2, expression5);
            if (expressionL4 != null) {
                expression5 = expressionL4;
            }
            List listR10 = tb5.r(ex7Var, jSONObject, "resume_actions", this.a.u0());
            Expression expressionH2 = pa5.h(ex7Var, jSONObject, "reuse_id", zbbVar4);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "row_span", zbbVar3, e74Var3, DivVideoJsonParser.q);
            zbb zbbVar5 = DivVideoJsonParser.m;
            e74 e74Var4 = DivVideoScale.FROM_STRING;
            Expression expression6 = DivVideoJsonParser.h;
            Expression expressionL5 = pa5.l(ex7Var, jSONObject, "scale", zbbVar5, e74Var4, expression6);
            Expression expression7 = expressionL5 == null ? expression6 : expressionL5;
            List listR11 = tb5.r(ex7Var, jSONObject, "selected_actions", this.a.u0());
            List listR12 = tb5.r(ex7Var, jSONObject, "tooltips", this.a.J8());
            DivTransform divTransform = (DivTransform) tb5.n(ex7Var, jSONObject, "transform", this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) tb5.n(ex7Var, jSONObject, "transition_change", this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_in", this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) tb5.n(ex7Var, jSONObject, "transition_out", this.a.w1());
            List listP = tb5.p(ex7Var, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivVideoJsonParser.r);
            List listR13 = tb5.r(ex7Var, jSONObject, "variable_triggers", this.a.Y8());
            List listR14 = tb5.r(ex7Var, jSONObject, "variables", this.a.e9());
            List listJ = tb5.j(ex7Var, jSONObject, "video_sources", this.a.k9(), DivVideoJsonParser.s);
            y45.i(listJ, "readList(context, data, … VIDEO_SOURCES_VALIDATOR)");
            zbb zbbVar6 = DivVideoJsonParser.n;
            e74 e74Var5 = DivVisibility.FROM_STRING;
            Expression expression8 = DivVideoJsonParser.i;
            Expression expressionL6 = pa5.l(ex7Var, jSONObject, "visibility", zbbVar6, e74Var5, expression8);
            if (expressionL6 == null) {
                expressionL6 = expression8;
            }
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) tb5.n(ex7Var, jSONObject, "visibility_action", this.a.q9());
            List listR15 = tb5.r(ex7Var, jSONObject, "visibility_actions", this.a.q9());
            DivSize divSize3 = (DivSize) tb5.n(ex7Var, jSONObject, "width", this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivVideoJsonParser.j;
            }
            y45.i(divSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivVideo(divAccessibility, expressionI, expressionI2, expression, listR, divAspect, expression2, listR2, divBorder, listR3, expressionJ, listR4, str, listR5, listR6, listR7, divFocus, listR8, divSize2, str2, divLayoutProvider, divEdgeInsets, expression3, divEdgeInsets2, listR9, jSONObject2, expression4, expressionH, expression5, listR10, expressionH2, expressionJ2, expression7, listR11, listR12, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listP, listR13, listR14, listJ, expressionL6, divVisibilityAction, listR15, divSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivVideo divVideo) {
            y45.j(ex7Var, "context");
            y45.j(divVideo, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", divVideo.r(), this.a.H());
            pa5.q(ex7Var, jSONObject, "alignment_horizontal", divVideo.g(), DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "alignment_vertical", divVideo.o(), DivAlignmentVertical.TO_STRING);
            pa5.p(ex7Var, jSONObject, "alpha", divVideo.p());
            tb5.z(ex7Var, jSONObject, "animators", divVideo.A(), this.a.q1());
            tb5.x(ex7Var, jSONObject, "aspect", divVideo.f, this.a.z1());
            pa5.p(ex7Var, jSONObject, "autostart", divVideo.g);
            tb5.z(ex7Var, jSONObject, "background", divVideo.getBackground(), this.a.C1());
            tb5.x(ex7Var, jSONObject, "border", divVideo.B(), this.a.I1());
            tb5.z(ex7Var, jSONObject, "buffering_actions", divVideo.j, this.a.u0());
            pa5.p(ex7Var, jSONObject, "column_span", divVideo.b());
            tb5.z(ex7Var, jSONObject, "disappear_actions", divVideo.k(), this.a.M2());
            tb5.v(ex7Var, jSONObject, "elapsed_time_variable", divVideo.m);
            tb5.z(ex7Var, jSONObject, "end_actions", divVideo.n, this.a.u0());
            tb5.z(ex7Var, jSONObject, "extensions", divVideo.getExtensions(), this.a.Y2());
            tb5.z(ex7Var, jSONObject, "fatal_actions", divVideo.p, this.a.u0());
            tb5.x(ex7Var, jSONObject, "focus", divVideo.q(), this.a.w3());
            tb5.z(ex7Var, jSONObject, "functions", divVideo.y(), this.a.F3());
            tb5.x(ex7Var, jSONObject, "height", divVideo.getHeight(), this.a.V6());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divVideo.getId());
            tb5.x(ex7Var, jSONObject, "layout_provider", divVideo.v(), this.a.M4());
            tb5.x(ex7Var, jSONObject, "margins", divVideo.d(), this.a.V2());
            pa5.p(ex7Var, jSONObject, "muted", divVideo.w);
            tb5.x(ex7Var, jSONObject, "paddings", divVideo.t(), this.a.V2());
            tb5.z(ex7Var, jSONObject, "pause_actions", divVideo.y, this.a.u0());
            tb5.v(ex7Var, jSONObject, "player_settings_payload", divVideo.z);
            pa5.p(ex7Var, jSONObject, "preload_required", divVideo.A);
            pa5.p(ex7Var, jSONObject, "preview", divVideo.B);
            pa5.p(ex7Var, jSONObject, "repeatable", divVideo.C);
            tb5.z(ex7Var, jSONObject, "resume_actions", divVideo.D, this.a.u0());
            pa5.p(ex7Var, jSONObject, "reuse_id", divVideo.f());
            pa5.p(ex7Var, jSONObject, "row_span", divVideo.e());
            pa5.q(ex7Var, jSONObject, "scale", divVideo.G, DivVideoScale.TO_STRING);
            tb5.z(ex7Var, jSONObject, "selected_actions", divVideo.u(), this.a.u0());
            tb5.z(ex7Var, jSONObject, "tooltips", divVideo.h(), this.a.J8());
            tb5.x(ex7Var, jSONObject, "transform", divVideo.m(), this.a.V8());
            tb5.x(ex7Var, jSONObject, "transition_change", divVideo.j(), this.a.R1());
            tb5.x(ex7Var, jSONObject, "transition_in", divVideo.z(), this.a.w1());
            tb5.x(ex7Var, jSONObject, "transition_out", divVideo.i(), this.a.w1());
            tb5.y(ex7Var, jSONObject, "transition_triggers", divVideo.n(), DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "video");
            tb5.z(ex7Var, jSONObject, "variable_triggers", divVideo.w(), this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divVideo.c(), this.a.e9());
            tb5.z(ex7Var, jSONObject, "video_sources", divVideo.Q, this.a.k9());
            pa5.q(ex7Var, jSONObject, "visibility", divVideo.getVisibility(), DivVisibility.TO_STRING);
            tb5.x(ex7Var, jSONObject, "visibility_action", divVideo.x(), this.a.q9());
            tb5.z(ex7Var, jSONObject, "visibility_actions", divVideo.a(), this.a.q9());
            tb5.x(ex7Var, jSONObject, "width", divVideo.getWidth(), this.a.V6());
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
        public DivVideoTemplate c(ex7 ex7Var, DivVideoTemplate divVideoTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, divVideoTemplate != null ? divVideoTemplate.a : null, this.a.I());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_horizontal", DivVideoJsonParser.k, zC, divVideoTemplate != null ? divVideoTemplate.b : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivVideoJsonParser.l, zC, divVideoTemplate != null ? divVideoTemplate.c : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divVideoTemplate != null ? divVideoTemplate.d : null, ParsingConvertersKt.g, DivVideoJsonParser.o);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "animators", zC, divVideoTemplate != null ? divVideoTemplate.e : null, this.a.r1());
            y45.i(tp3VarZ, "readOptionalListField(co…imatorJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "aspect", zC, divVideoTemplate != null ? divVideoTemplate.f : null, this.a.A1());
            y45.i(tp3VarS2, "readOptionalField(contex…AspectJsonTemplateParser)");
            zbb zbbVar = acb.a;
            tp3 tp3Var = divVideoTemplate != null ? divVideoTemplate.g : null;
            e74 e74Var = ParsingConvertersKt.f;
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "autostart", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…utostart, ANY_TO_BOOLEAN)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "background", zC, divVideoTemplate != null ? divVideoTemplate.h : null, this.a.D1());
            y45.i(tp3VarZ2, "readOptionalListField(co…groundJsonTemplateParser)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "border", zC, divVideoTemplate != null ? divVideoTemplate.i : null, this.a.J1());
            y45.i(tp3VarS3, "readOptionalField(contex…BorderJsonTemplateParser)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "buffering_actions", zC, divVideoTemplate != null ? divVideoTemplate.j : null, this.a.v0());
            y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
            zbb zbbVar2 = acb.b;
            tp3 tp3Var2 = divVideoTemplate != null ? divVideoTemplate.k : null;
            e74 e74Var2 = ParsingConvertersKt.h;
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "column_span", zbbVar2, zC, tp3Var2, e74Var2, DivVideoJsonParser.p);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, COLUMN_SPAN_VALIDATOR)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "disappear_actions", zC, divVideoTemplate != null ? divVideoTemplate.l : null, this.a.N2());
            y45.i(tp3VarZ4, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, "elapsed_time_variable", zC, divVideoTemplate != null ? divVideoTemplate.m : null);
            y45.i(tp3VarP, "readOptionalField(contex…ent?.elapsedTimeVariable)");
            tp3 tp3VarZ5 = ra5.z(ex7VarC, jSONObject, "end_actions", zC, divVideoTemplate != null ? divVideoTemplate.n : null, this.a.v0());
            y45.i(tp3VarZ5, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ6 = ra5.z(ex7VarC, jSONObject, "extensions", zC, divVideoTemplate != null ? divVideoTemplate.o : null, this.a.Z2());
            y45.i(tp3VarZ6, "readOptionalListField(co…ensionJsonTemplateParser)");
            tp3 tp3VarZ7 = ra5.z(ex7VarC, jSONObject, "fatal_actions", zC, divVideoTemplate != null ? divVideoTemplate.p : null, this.a.v0());
            y45.i(tp3VarZ7, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "focus", zC, divVideoTemplate != null ? divVideoTemplate.q : null, this.a.x3());
            y45.i(tp3VarS4, "readOptionalField(contex…vFocusJsonTemplateParser)");
            tp3 tp3VarZ8 = ra5.z(ex7VarC, jSONObject, "functions", zC, divVideoTemplate != null ? divVideoTemplate.r : null, this.a.G3());
            y45.i(tp3VarZ8, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarS5 = ra5.s(ex7VarC, jSONObject, "height", zC, divVideoTemplate != null ? divVideoTemplate.s : null, this.a.W6());
            y45.i(tp3VarS5, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            tp3 tp3VarP2 = ra5.p(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divVideoTemplate != null ? divVideoTemplate.t : null);
            y45.i(tp3VarP2, "readOptionalField(contex…llowOverride, parent?.id)");
            tp3 tp3VarS6 = ra5.s(ex7VarC, jSONObject, "layout_provider", zC, divVideoTemplate != null ? divVideoTemplate.u : null, this.a.N4());
            y45.i(tp3VarS6, "readOptionalField(contex…oviderJsonTemplateParser)");
            tp3 tp3VarS7 = ra5.s(ex7VarC, jSONObject, "margins", zC, divVideoTemplate != null ? divVideoTemplate.v : null, this.a.W2());
            y45.i(tp3VarS7, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "muted", zbbVar, zC, divVideoTemplate != null ? divVideoTemplate.w : null, e74Var);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…t?.muted, ANY_TO_BOOLEAN)");
            tp3 tp3VarS8 = ra5.s(ex7VarC, jSONObject, "paddings", zC, divVideoTemplate != null ? divVideoTemplate.x : null, this.a.W2());
            y45.i(tp3VarS8, "readOptionalField(contex…InsetsJsonTemplateParser)");
            tp3 tp3VarZ9 = ra5.z(ex7VarC, jSONObject, "pause_actions", zC, divVideoTemplate != null ? divVideoTemplate.y : null, this.a.v0());
            y45.i(tp3VarZ9, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarP3 = ra5.p(ex7VarC, jSONObject, "player_settings_payload", zC, divVideoTemplate != null ? divVideoTemplate.z : null);
            y45.i(tp3VarP3, "readOptionalField(contex…t?.playerSettingsPayload)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "preload_required", zbbVar, zC, divVideoTemplate != null ? divVideoTemplate.A : null, e74Var);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…Required, ANY_TO_BOOLEAN)");
            zbb zbbVar3 = acb.c;
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "preview", zbbVar3, zC, divVideoTemplate != null ? divVideoTemplate.B : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.preview)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "repeatable", zbbVar, zC, divVideoTemplate != null ? divVideoTemplate.C : null, e74Var);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…peatable, ANY_TO_BOOLEAN)");
            tp3 tp3VarZ10 = ra5.z(ex7VarC, jSONObject, "resume_actions", zC, divVideoTemplate != null ? divVideoTemplate.D : null, this.a.v0());
            y45.i(tp3VarZ10, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, "reuse_id", zbbVar3, zC, divVideoTemplate != null ? divVideoTemplate.E : null);
            y45.i(tp3VarT2, "readOptionalFieldWithExp…verride, parent?.reuseId)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "row_span", zbbVar2, zC, divVideoTemplate != null ? divVideoTemplate.F : null, e74Var2, DivVideoJsonParser.q);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_INT, ROW_SPAN_VALIDATOR)");
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, "scale", DivVideoJsonParser.m, zC, divVideoTemplate != null ? divVideoTemplate.G : null, DivVideoScale.FROM_STRING);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…ivVideoScale.FROM_STRING)");
            tp3 tp3VarZ11 = ra5.z(ex7VarC, jSONObject, "selected_actions", zC, divVideoTemplate != null ? divVideoTemplate.H : null, this.a.v0());
            y45.i(tp3VarZ11, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ12 = ra5.z(ex7VarC, jSONObject, "tooltips", zC, divVideoTemplate != null ? divVideoTemplate.I : null, this.a.K8());
            y45.i(tp3VarZ12, "readOptionalListField(co…ooltipJsonTemplateParser)");
            tp3 tp3VarS9 = ra5.s(ex7VarC, jSONObject, "transform", zC, divVideoTemplate != null ? divVideoTemplate.J : null, this.a.W8());
            y45.i(tp3VarS9, "readOptionalField(contex…nsformJsonTemplateParser)");
            tp3 tp3VarS10 = ra5.s(ex7VarC, jSONObject, "transition_change", zC, divVideoTemplate != null ? divVideoTemplate.K : null, this.a.S1());
            y45.i(tp3VarS10, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS11 = ra5.s(ex7VarC, jSONObject, "transition_in", zC, divVideoTemplate != null ? divVideoTemplate.L : null, this.a.x1());
            y45.i(tp3VarS11, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3VarS12 = ra5.s(ex7VarC, jSONObject, "transition_out", zC, divVideoTemplate != null ? divVideoTemplate.M : null, this.a.x1());
            y45.i(tp3VarS12, "readOptionalField(contex…sitionJsonTemplateParser)");
            tp3 tp3Var3 = divVideoTemplate != null ? divVideoTemplate.N : null;
            e74 e74Var3 = DivTransitionTrigger.FROM_STRING;
            hm5 hm5Var = DivVideoJsonParser.r;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarX = ra5.x(ex7VarC, jSONObject, "transition_triggers", zC, tp3Var3, e74Var3, hm5Var);
            y45.i(tp3VarX, "readOptionalListField(co…RIGGERS_VALIDATOR.cast())");
            tp3 tp3VarZ13 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divVideoTemplate != null ? divVideoTemplate.O : null, this.a.Z8());
            y45.i(tp3VarZ13, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ14 = ra5.z(ex7VarC, jSONObject, "variables", zC, divVideoTemplate != null ? divVideoTemplate.P : null, this.a.f9());
            y45.i(tp3VarZ14, "readOptionalListField(co…riableJsonTemplateParser)");
            tp3 tp3Var4 = divVideoTemplate != null ? divVideoTemplate.Q : null;
            yi5 yi5VarL9 = this.a.l9();
            hm5 hm5Var2 = DivVideoJsonParser.s;
            y45.h(hm5Var2, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarM = ra5.m(ex7VarC, jSONObject, "video_sources", zC, tp3Var4, yi5VarL9, hm5Var2);
            y45.i(tp3VarM, "readListField(context, d…SOURCES_VALIDATOR.cast())");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, "visibility", DivVideoJsonParser.n, zC, divVideoTemplate != null ? divVideoTemplate.R : null, DivVisibility.FROM_STRING);
            y45.i(tp3VarU8, "readOptionalFieldWithExp…ivVisibility.FROM_STRING)");
            tp3 tp3VarS13 = ra5.s(ex7VarC, jSONObject, "visibility_action", zC, divVideoTemplate != null ? divVideoTemplate.S : null, this.a.r9());
            y45.i(tp3VarS13, "readOptionalField(contex…ActionJsonTemplateParser)");
            tp3 tp3VarZ15 = ra5.z(ex7VarC, jSONObject, "visibility_actions", zC, divVideoTemplate != null ? divVideoTemplate.T : null, this.a.r9());
            y45.i(tp3VarZ15, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarS14 = ra5.s(ex7VarC, jSONObject, "width", zC, divVideoTemplate != null ? divVideoTemplate.U : null, this.a.W6());
            y45.i(tp3VarS14, "readOptionalField(contex…ivSizeJsonTemplateParser)");
            return new DivVideoTemplate(tp3VarS, tp3VarU, tp3VarU2, tp3VarV, tp3VarZ, tp3VarS2, tp3VarU3, tp3VarZ2, tp3VarS3, tp3VarZ3, tp3VarV2, tp3VarZ4, tp3VarP, tp3VarZ5, tp3VarZ6, tp3VarZ7, tp3VarS4, tp3VarZ8, tp3VarS5, tp3VarP2, tp3VarS6, tp3VarS7, tp3VarU4, tp3VarS8, tp3VarZ9, tp3VarP3, tp3VarU5, tp3VarT, tp3VarU6, tp3VarZ10, tp3VarT2, tp3VarV3, tp3VarU7, tp3VarZ11, tp3VarZ12, tp3VarS9, tp3VarS10, tp3VarS11, tp3VarS12, tp3VarX, tp3VarZ13, tp3VarZ14, tp3VarM, tp3VarU8, tp3VarS13, tp3VarZ15, tp3VarS14);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivVideoTemplate divVideoTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divVideoTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", divVideoTemplate.a, this.a.I());
            ra5.E(ex7Var, jSONObject, "alignment_horizontal", divVideoTemplate.b, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "alignment_vertical", divVideoTemplate.c, DivAlignmentVertical.TO_STRING);
            ra5.D(ex7Var, jSONObject, "alpha", divVideoTemplate.d);
            ra5.K(ex7Var, jSONObject, "animators", divVideoTemplate.e, this.a.r1());
            ra5.I(ex7Var, jSONObject, "aspect", divVideoTemplate.f, this.a.A1());
            ra5.D(ex7Var, jSONObject, "autostart", divVideoTemplate.g);
            ra5.K(ex7Var, jSONObject, "background", divVideoTemplate.h, this.a.D1());
            ra5.I(ex7Var, jSONObject, "border", divVideoTemplate.i, this.a.J1());
            ra5.K(ex7Var, jSONObject, "buffering_actions", divVideoTemplate.j, this.a.v0());
            ra5.D(ex7Var, jSONObject, "column_span", divVideoTemplate.k);
            ra5.K(ex7Var, jSONObject, "disappear_actions", divVideoTemplate.l, this.a.N2());
            ra5.G(ex7Var, jSONObject, "elapsed_time_variable", divVideoTemplate.m);
            ra5.K(ex7Var, jSONObject, "end_actions", divVideoTemplate.n, this.a.v0());
            ra5.K(ex7Var, jSONObject, "extensions", divVideoTemplate.o, this.a.Z2());
            ra5.K(ex7Var, jSONObject, "fatal_actions", divVideoTemplate.p, this.a.v0());
            ra5.I(ex7Var, jSONObject, "focus", divVideoTemplate.q, this.a.x3());
            ra5.K(ex7Var, jSONObject, "functions", divVideoTemplate.r, this.a.G3());
            ra5.I(ex7Var, jSONObject, "height", divVideoTemplate.s, this.a.W6());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divVideoTemplate.t);
            ra5.I(ex7Var, jSONObject, "layout_provider", divVideoTemplate.u, this.a.N4());
            ra5.I(ex7Var, jSONObject, "margins", divVideoTemplate.v, this.a.W2());
            ra5.D(ex7Var, jSONObject, "muted", divVideoTemplate.w);
            ra5.I(ex7Var, jSONObject, "paddings", divVideoTemplate.x, this.a.W2());
            ra5.K(ex7Var, jSONObject, "pause_actions", divVideoTemplate.y, this.a.v0());
            ra5.G(ex7Var, jSONObject, "player_settings_payload", divVideoTemplate.z);
            ra5.D(ex7Var, jSONObject, "preload_required", divVideoTemplate.A);
            ra5.D(ex7Var, jSONObject, "preview", divVideoTemplate.B);
            ra5.D(ex7Var, jSONObject, "repeatable", divVideoTemplate.C);
            ra5.K(ex7Var, jSONObject, "resume_actions", divVideoTemplate.D, this.a.v0());
            ra5.D(ex7Var, jSONObject, "reuse_id", divVideoTemplate.E);
            ra5.D(ex7Var, jSONObject, "row_span", divVideoTemplate.F);
            ra5.E(ex7Var, jSONObject, "scale", divVideoTemplate.G, DivVideoScale.TO_STRING);
            ra5.K(ex7Var, jSONObject, "selected_actions", divVideoTemplate.H, this.a.v0());
            ra5.K(ex7Var, jSONObject, "tooltips", divVideoTemplate.I, this.a.K8());
            ra5.I(ex7Var, jSONObject, "transform", divVideoTemplate.J, this.a.W8());
            ra5.I(ex7Var, jSONObject, "transition_change", divVideoTemplate.K, this.a.S1());
            ra5.I(ex7Var, jSONObject, "transition_in", divVideoTemplate.L, this.a.x1());
            ra5.I(ex7Var, jSONObject, "transition_out", divVideoTemplate.M, this.a.x1());
            ra5.J(ex7Var, jSONObject, "transition_triggers", divVideoTemplate.N, DivTransitionTrigger.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "video");
            ra5.K(ex7Var, jSONObject, "variable_triggers", divVideoTemplate.O, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divVideoTemplate.P, this.a.f9());
            ra5.K(ex7Var, jSONObject, "video_sources", divVideoTemplate.Q, this.a.l9());
            ra5.E(ex7Var, jSONObject, "visibility", divVideoTemplate.R, DivVisibility.TO_STRING);
            ra5.I(ex7Var, jSONObject, "visibility_action", divVideoTemplate.S, this.a.r9());
            ra5.K(ex7Var, jSONObject, "visibility_actions", divVideoTemplate.T, this.a.r9());
            ra5.I(ex7Var, jSONObject, "width", divVideoTemplate.U, this.a.W6());
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
        public DivVideo a(ex7 ex7Var, DivVideoTemplate divVideoTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divVideoTemplate, "template");
            y45.j(jSONObject, "data");
            DivAccessibility divAccessibility = (DivAccessibility) sa5.p(ex7Var, divVideoTemplate.a, jSONObject, "accessibility", this.a.J(), this.a.H());
            Expression expressionS = sa5.s(ex7Var, divVideoTemplate.b, jSONObject, "alignment_horizontal", DivVideoJsonParser.k, DivAlignmentHorizontal.FROM_STRING);
            Expression expressionS2 = sa5.s(ex7Var, divVideoTemplate.c, jSONObject, "alignment_vertical", DivVideoJsonParser.l, DivAlignmentVertical.FROM_STRING);
            tp3 tp3Var = divVideoTemplate.d;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivVideoJsonParser.o;
            Expression expression = DivVideoJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB = sa5.B(ex7Var, divVideoTemplate.e, jSONObject, "animators", this.a.s1(), this.a.q1());
            DivAspect divAspect = (DivAspect) sa5.p(ex7Var, divVideoTemplate.f, jSONObject, "aspect", this.a.B1(), this.a.z1());
            tp3 tp3Var2 = divVideoTemplate.g;
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = DivVideoJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var2, jSONObject, "autostart", zbbVar2, e74Var2, expression2);
            if (expressionV != null) {
                expression2 = expressionV;
            }
            List listB2 = sa5.B(ex7Var, divVideoTemplate.h, jSONObject, "background", this.a.E1(), this.a.C1());
            DivBorder divBorder = (DivBorder) sa5.p(ex7Var, divVideoTemplate.i, jSONObject, "border", this.a.K1(), this.a.I1());
            List listB3 = sa5.B(ex7Var, divVideoTemplate.j, jSONObject, "buffering_actions", this.a.w0(), this.a.u0());
            tp3 tp3Var3 = divVideoTemplate.k;
            zbb zbbVar3 = acb.b;
            e74 e74Var3 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var3, jSONObject, "column_span", zbbVar3, e74Var3, DivVideoJsonParser.p);
            List listB4 = sa5.B(ex7Var, divVideoTemplate.l, jSONObject, "disappear_actions", this.a.O2(), this.a.M2());
            String str = (String) sa5.m(ex7Var, divVideoTemplate.m, jSONObject, "elapsed_time_variable");
            List listB5 = sa5.B(ex7Var, divVideoTemplate.n, jSONObject, "end_actions", this.a.w0(), this.a.u0());
            List listB6 = sa5.B(ex7Var, divVideoTemplate.o, jSONObject, "extensions", this.a.a3(), this.a.Y2());
            List listB7 = sa5.B(ex7Var, divVideoTemplate.p, jSONObject, "fatal_actions", this.a.w0(), this.a.u0());
            DivFocus divFocus = (DivFocus) sa5.p(ex7Var, divVideoTemplate.q, jSONObject, "focus", this.a.y3(), this.a.w3());
            List listB8 = sa5.B(ex7Var, divVideoTemplate.r, jSONObject, "functions", this.a.H3(), this.a.F3());
            DivSize divSize = (DivSize) sa5.p(ex7Var, divVideoTemplate.s, jSONObject, "height", this.a.X6(), this.a.V6());
            if (divSize == null) {
                divSize = DivVideoJsonParser.d;
            }
            DivSize divSize2 = divSize;
            y45.i(divSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            String str2 = (String) sa5.m(ex7Var, divVideoTemplate.t, jSONObject, TtmlNode.ATTR_ID);
            DivLayoutProvider divLayoutProvider = (DivLayoutProvider) sa5.p(ex7Var, divVideoTemplate.u, jSONObject, "layout_provider", this.a.O4(), this.a.M4());
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, divVideoTemplate.v, jSONObject, "margins", this.a.X2(), this.a.V2());
            tp3 tp3Var4 = divVideoTemplate.w;
            Expression expression3 = DivVideoJsonParser.e;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var4, jSONObject, "muted", zbbVar2, e74Var2, expression3);
            if (expressionV2 != null) {
                expression3 = expressionV2;
            }
            DivEdgeInsets divEdgeInsets2 = (DivEdgeInsets) sa5.p(ex7Var, divVideoTemplate.x, jSONObject, "paddings", this.a.X2(), this.a.V2());
            List listB9 = sa5.B(ex7Var, divVideoTemplate.y, jSONObject, "pause_actions", this.a.w0(), this.a.u0());
            JSONObject jSONObject2 = (JSONObject) sa5.m(ex7Var, divVideoTemplate.z, jSONObject, "player_settings_payload");
            tp3 tp3Var5 = divVideoTemplate.A;
            Expression expression4 = DivVideoJsonParser.f;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var5, jSONObject, "preload_required", zbbVar2, e74Var2, expression4);
            if (expressionV3 != null) {
                expression4 = expressionV3;
            }
            tp3 tp3Var6 = divVideoTemplate.B;
            zbb zbbVar4 = acb.c;
            Expression expressionR = sa5.r(ex7Var, tp3Var6, jSONObject, "preview", zbbVar4);
            tp3 tp3Var7 = divVideoTemplate.C;
            Expression expression5 = DivVideoJsonParser.g;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var7, jSONObject, "repeatable", zbbVar2, e74Var2, expression5);
            if (expressionV4 != null) {
                expression5 = expressionV4;
            }
            List listB10 = sa5.B(ex7Var, divVideoTemplate.D, jSONObject, "resume_actions", this.a.w0(), this.a.u0());
            Expression expressionR2 = sa5.r(ex7Var, divVideoTemplate.E, jSONObject, "reuse_id", zbbVar4);
            Expression expressionT2 = sa5.t(ex7Var, divVideoTemplate.F, jSONObject, "row_span", zbbVar3, e74Var3, DivVideoJsonParser.q);
            tp3 tp3Var8 = divVideoTemplate.G;
            zbb zbbVar5 = DivVideoJsonParser.m;
            e74 e74Var4 = DivVideoScale.FROM_STRING;
            Expression expression6 = DivVideoJsonParser.h;
            Expression expressionV5 = sa5.v(ex7Var, tp3Var8, jSONObject, "scale", zbbVar5, e74Var4, expression6);
            Expression expression7 = expressionV5 == null ? expression6 : expressionV5;
            List listB11 = sa5.B(ex7Var, divVideoTemplate.H, jSONObject, "selected_actions", this.a.w0(), this.a.u0());
            List listB12 = sa5.B(ex7Var, divVideoTemplate.I, jSONObject, "tooltips", this.a.L8(), this.a.J8());
            DivTransform divTransform = (DivTransform) sa5.p(ex7Var, divVideoTemplate.J, jSONObject, "transform", this.a.X8(), this.a.V8());
            DivChangeTransition divChangeTransition = (DivChangeTransition) sa5.p(ex7Var, divVideoTemplate.K, jSONObject, "transition_change", this.a.T1(), this.a.R1());
            DivAppearanceTransition divAppearanceTransition = (DivAppearanceTransition) sa5.p(ex7Var, divVideoTemplate.L, jSONObject, "transition_in", this.a.y1(), this.a.w1());
            DivAppearanceTransition divAppearanceTransition2 = (DivAppearanceTransition) sa5.p(ex7Var, divVideoTemplate.M, jSONObject, "transition_out", this.a.y1(), this.a.w1());
            List listZ = sa5.z(ex7Var, divVideoTemplate.N, jSONObject, "transition_triggers", DivTransitionTrigger.FROM_STRING, DivVideoJsonParser.r);
            List listB13 = sa5.B(ex7Var, divVideoTemplate.O, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8());
            List listB14 = sa5.B(ex7Var, divVideoTemplate.P, jSONObject, "variables", this.a.g9(), this.a.e9());
            List listL = sa5.l(ex7Var, divVideoTemplate.Q, jSONObject, "video_sources", this.a.m9(), this.a.k9(), DivVideoJsonParser.s);
            y45.i(listL, "resolveList(context, tem… VIDEO_SOURCES_VALIDATOR)");
            tp3 tp3Var9 = divVideoTemplate.R;
            zbb zbbVar6 = DivVideoJsonParser.n;
            e74 e74Var5 = DivVisibility.FROM_STRING;
            Expression expression8 = DivVideoJsonParser.i;
            Expression expressionV6 = sa5.v(ex7Var, tp3Var9, jSONObject, "visibility", zbbVar6, e74Var5, expression8);
            Expression expression9 = expressionV6 == null ? expression8 : expressionV6;
            DivVisibilityAction divVisibilityAction = (DivVisibilityAction) sa5.p(ex7Var, divVideoTemplate.S, jSONObject, "visibility_action", this.a.s9(), this.a.q9());
            List listB15 = sa5.B(ex7Var, divVideoTemplate.T, jSONObject, "visibility_actions", this.a.s9(), this.a.q9());
            DivSize divSize3 = (DivSize) sa5.p(ex7Var, divVideoTemplate.U, jSONObject, "width", this.a.X6(), this.a.V6());
            if (divSize3 == null) {
                divSize3 = DivVideoJsonParser.j;
            }
            y45.i(divSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivVideo(divAccessibility, expressionS, expressionS2, expression, listB, divAspect, expression2, listB2, divBorder, listB3, expressionT, listB4, str, listB5, listB6, listB7, divFocus, listB8, divSize2, str2, divLayoutProvider, divEdgeInsets, expression3, divEdgeInsets2, listB9, jSONObject2, expression4, expressionR, expression5, listB10, expressionR2, expressionT2, expression7, listB11, listB12, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, listZ, listB13, listB14, listL, expression9, divVisibilityAction, listB15, divSize3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(1.0d));
        Boolean bool = Boolean.FALSE;
        c = aVar.a(bool);
        d = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        e = aVar.a(bool);
        f = aVar.a(bool);
        g = aVar.a(bool);
        h = aVar.a(DivVideoScale.FIT);
        i = aVar.a(DivVisibility.VISIBLE);
        j = new DivSize.c(new DivMatchParentSize(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0));
        zbb.a aVar2 = zbb.a;
        k = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        l = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        m = aVar2.a(hi.W(DivVideoScale.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVideoScale);
            }
        });
        n = aVar2.a(hi.W(DivVisibility.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivVisibility);
            }
        });
        o = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivVideoJsonParser.f(((Double) obj).doubleValue());
            }
        };
        p = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivVideoJsonParser.g(((Long) obj).longValue());
            }
        };
        q = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivVideoJsonParser.h(((Long) obj).longValue());
            }
        };
        r = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivVideoJsonParser.i(list);
            }
        };
        s = new hm5() {
            @Override
            public final boolean a(List list) {
                return DivVideoJsonParser.j(list);
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

    public static final boolean i(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }

    public static final boolean j(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
