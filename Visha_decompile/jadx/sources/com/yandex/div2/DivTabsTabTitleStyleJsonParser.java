package com.yandex.div2;

import androidx.core.provider.FontsContractCompat;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivTabsTabTitleStyleJsonParser;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hi;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivTabsTabTitleStyleJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final Expression f;
    public static final Expression g;
    public static final Expression h;
    public static final Expression i;
    public static final Expression j;
    public static final Expression k;
    public static final DivEdgeInsets l;
    public static final zbb m;
    public static final zbb n;
    public static final zbb o;
    public static final zbb p;
    public static final zbb q;
    public static final pnb r;
    public static final pnb s;
    public static final pnb t;
    public static final pnb u;
    public static final pnb v;

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
        public DivTabs.TabTitleStyle a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.f;
            e74 e74Var = ParsingConvertersKt.b;
            Expression expression = DivTabsTabTitleStyleJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "active_background_color", zbbVar, e74Var, expression);
            Expression expression2 = expressionL == null ? expression : expressionL;
            zbb zbbVar2 = acb.h;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "active_font_variation_settings", zbbVar2);
            zbb zbbVar3 = DivTabsTabTitleStyleJsonParser.m;
            e74 e74Var2 = DivFontWeight.FROM_STRING;
            Expression expressionI = pa5.i(ex7Var, jSONObject, "active_font_weight", zbbVar3, e74Var2);
            Expression expression3 = DivTabsTabTitleStyleJsonParser.c;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "active_text_color", zbbVar, e74Var, expression3);
            Expression expression4 = expressionL2 == null ? expression3 : expressionL2;
            zbb zbbVar4 = acb.b;
            e74 e74Var3 = ParsingConvertersKt.h;
            pnb pnbVar = DivTabsTabTitleStyleJsonParser.r;
            Expression expression5 = DivTabsTabTitleStyleJsonParser.d;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "animation_duration", zbbVar4, e74Var3, pnbVar, expression5);
            if (expressionK != null) {
                expression5 = expressionK;
            }
            zbb zbbVar5 = DivTabsTabTitleStyleJsonParser.n;
            e74 e74Var4 = DivTabs.TabTitleStyle.AnimationType.FROM_STRING;
            Expression expression6 = DivTabsTabTitleStyleJsonParser.e;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "animation_type", zbbVar5, e74Var4, expression6);
            Expression expression7 = expressionL3 == null ? expression6 : expressionL3;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "corner_radius", zbbVar4, e74Var3, DivTabsTabTitleStyleJsonParser.s);
            DivCornersRadius divCornersRadius = (DivCornersRadius) tb5.n(ex7Var, jSONObject, "corners_radius", this.a.p2());
            Expression expressionH2 = pa5.h(ex7Var, jSONObject, "font_family", acb.c);
            pnb pnbVar2 = DivTabsTabTitleStyleJsonParser.t;
            Expression expression8 = DivTabsTabTitleStyleJsonParser.f;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "font_size", zbbVar4, e74Var3, pnbVar2, expression8);
            if (expressionK2 != null) {
                expression8 = expressionK2;
            }
            zbb zbbVar6 = DivTabsTabTitleStyleJsonParser.o;
            e74 e74Var5 = DivSizeUnit.FROM_STRING;
            Expression expression9 = DivTabsTabTitleStyleJsonParser.g;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "font_size_unit", zbbVar6, e74Var5, expression9);
            Expression expression10 = expressionL4 == null ? expression9 : expressionL4;
            zbb zbbVar7 = DivTabsTabTitleStyleJsonParser.p;
            Expression expression11 = DivTabsTabTitleStyleJsonParser.h;
            Expression expressionL5 = pa5.l(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, zbbVar7, e74Var2, expression11);
            Expression expression12 = expressionL5 == null ? expression11 : expressionL5;
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "inactive_background_color", zbbVar, e74Var);
            Expression expressionH3 = pa5.h(ex7Var, jSONObject, "inactive_font_variation_settings", zbbVar2);
            Expression expressionI3 = pa5.i(ex7Var, jSONObject, "inactive_font_weight", DivTabsTabTitleStyleJsonParser.q, e74Var2);
            Expression expression13 = DivTabsTabTitleStyleJsonParser.i;
            Expression expressionL6 = pa5.l(ex7Var, jSONObject, "inactive_text_color", zbbVar, e74Var, expression13);
            Expression expression14 = expressionL6 == null ? expression13 : expressionL6;
            pnb pnbVar3 = DivTabsTabTitleStyleJsonParser.u;
            Expression expression15 = DivTabsTabTitleStyleJsonParser.j;
            Expression expressionK3 = pa5.k(ex7Var, jSONObject, "item_spacing", zbbVar4, e74Var3, pnbVar3, expression15);
            Expression expression16 = expressionK3 == null ? expression15 : expressionK3;
            zbb zbbVar8 = acb.d;
            e74 e74Var6 = ParsingConvertersKt.g;
            Expression expression17 = DivTabsTabTitleStyleJsonParser.k;
            Expression expressionL7 = pa5.l(ex7Var, jSONObject, "letter_spacing", zbbVar8, e74Var6, expression17);
            Expression expression18 = expressionL7 == null ? expression17 : expressionL7;
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "line_height", zbbVar4, e74Var3, DivTabsTabTitleStyleJsonParser.v);
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "paddings", this.a.V2());
            if (divEdgeInsets == null) {
                divEdgeInsets = DivTabsTabTitleStyleJsonParser.l;
            }
            y45.i(divEdgeInsets, "JsonPropertyParser.readO…?: PADDINGS_DEFAULT_VALUE");
            return new DivTabs.TabTitleStyle(expression2, expressionH, expressionI, expression4, expression5, expression7, expressionJ, divCornersRadius, expressionH2, expression8, expression10, expression12, expressionI2, expressionH3, expressionI3, expression14, expression16, expression18, expressionJ2, divEdgeInsets);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTabs.TabTitleStyle tabTitleStyle) {
            y45.j(ex7Var, "context");
            y45.j(tabTitleStyle, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            Expression expression = tabTitleStyle.a;
            e74 e74Var = ParsingConvertersKt.a;
            pa5.q(ex7Var, jSONObject, "active_background_color", expression, e74Var);
            pa5.p(ex7Var, jSONObject, "active_font_variation_settings", tabTitleStyle.b);
            Expression expression2 = tabTitleStyle.c;
            e74 e74Var2 = DivFontWeight.TO_STRING;
            pa5.q(ex7Var, jSONObject, "active_font_weight", expression2, e74Var2);
            pa5.q(ex7Var, jSONObject, "active_text_color", tabTitleStyle.d, e74Var);
            pa5.p(ex7Var, jSONObject, "animation_duration", tabTitleStyle.e);
            pa5.q(ex7Var, jSONObject, "animation_type", tabTitleStyle.f, DivTabs.TabTitleStyle.AnimationType.TO_STRING);
            pa5.p(ex7Var, jSONObject, "corner_radius", tabTitleStyle.g);
            tb5.x(ex7Var, jSONObject, "corners_radius", tabTitleStyle.h, this.a.p2());
            pa5.p(ex7Var, jSONObject, "font_family", tabTitleStyle.i);
            pa5.p(ex7Var, jSONObject, "font_size", tabTitleStyle.j);
            pa5.q(ex7Var, jSONObject, "font_size_unit", tabTitleStyle.k, DivSizeUnit.TO_STRING);
            pa5.q(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, tabTitleStyle.l, e74Var2);
            pa5.q(ex7Var, jSONObject, "inactive_background_color", tabTitleStyle.m, e74Var);
            pa5.p(ex7Var, jSONObject, "inactive_font_variation_settings", tabTitleStyle.n);
            pa5.q(ex7Var, jSONObject, "inactive_font_weight", tabTitleStyle.o, e74Var2);
            pa5.q(ex7Var, jSONObject, "inactive_text_color", tabTitleStyle.p, e74Var);
            pa5.p(ex7Var, jSONObject, "item_spacing", tabTitleStyle.q);
            pa5.p(ex7Var, jSONObject, "letter_spacing", tabTitleStyle.r);
            pa5.p(ex7Var, jSONObject, "line_height", tabTitleStyle.s);
            tb5.x(ex7Var, jSONObject, "paddings", tabTitleStyle.t, this.a.V2());
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
        public DivTabsTemplate.TabTitleStyleTemplate c(ex7 ex7Var, DivTabsTemplate.TabTitleStyleTemplate tabTitleStyleTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.f;
            tp3 tp3Var = tabTitleStyleTemplate != null ? tabTitleStyleTemplate.a : null;
            e74 e74Var = ParsingConvertersKt.b;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "active_background_color", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            zbb zbbVar2 = acb.h;
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "active_font_variation_settings", zbbVar2, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.b : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…iveFontVariationSettings)");
            zbb zbbVar3 = DivTabsTabTitleStyleJsonParser.m;
            tp3 tp3Var2 = tabTitleStyleTemplate != null ? tabTitleStyleTemplate.c : null;
            e74 e74Var2 = DivFontWeight.FROM_STRING;
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "active_font_weight", zbbVar3, zC, tp3Var2, e74Var2);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…ivFontWeight.FROM_STRING)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "active_text_color", zbbVar, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.d : null, e74Var);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            zbb zbbVar4 = acb.b;
            tp3 tp3Var3 = tabTitleStyleTemplate != null ? tabTitleStyleTemplate.e : null;
            e74 e74Var3 = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "animation_duration", zbbVar4, zC, tp3Var3, e74Var3, DivTabsTabTitleStyleJsonParser.r);
            y45.i(tp3VarV, "readOptionalFieldWithExp…ATION_DURATION_VALIDATOR)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "animation_type", DivTabsTabTitleStyleJsonParser.n, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.f : null, DivTabs.TabTitleStyle.AnimationType.FROM_STRING);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…nimationType.FROM_STRING)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "corner_radius", zbbVar4, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.g : null, e74Var3, DivTabsTabTitleStyleJsonParser.s);
            y45.i(tp3VarV2, "readOptionalFieldWithExp… CORNER_RADIUS_VALIDATOR)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "corners_radius", zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.h : null, this.a.q2());
            y45.i(tp3VarS, "readOptionalField(contex…RadiusJsonTemplateParser)");
            tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, "font_family", acb.c, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.i : null);
            y45.i(tp3VarT2, "readOptionalFieldWithExp…ride, parent?.fontFamily)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "font_size", zbbVar4, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.j : null, e74Var3, DivTabsTabTitleStyleJsonParser.t);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…INT, FONT_SIZE_VALIDATOR)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "font_size_unit", DivTabsTabTitleStyleJsonParser.o, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.k : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU5, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, FontsContractCompat.Columns.WEIGHT, DivTabsTabTitleStyleJsonParser.p, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.l : null, e74Var2);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…ivFontWeight.FROM_STRING)");
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, "inactive_background_color", zbbVar, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.m : null, e74Var);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarT3 = ra5.t(ex7VarC, jSONObject, "inactive_font_variation_settings", zbbVar2, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.n : null);
            y45.i(tp3VarT3, "readOptionalFieldWithExp…iveFontVariationSettings)");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, "inactive_font_weight", DivTabsTabTitleStyleJsonParser.q, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.o : null, e74Var2);
            y45.i(tp3VarU8, "readOptionalFieldWithExp…ivFontWeight.FROM_STRING)");
            tp3 tp3VarU9 = ra5.u(ex7VarC, jSONObject, "inactive_text_color", zbbVar, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.p : null, e74Var);
            y45.i(tp3VarU9, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "item_spacing", zbbVar4, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.q : null, e74Var3, DivTabsTabTitleStyleJsonParser.u);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…, ITEM_SPACING_VALIDATOR)");
            tp3 tp3VarU10 = ra5.u(ex7VarC, jSONObject, "letter_spacing", acb.d, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.r : null, ParsingConvertersKt.g);
            y45.i(tp3VarU10, "readOptionalFieldWithExp…pacing, NUMBER_TO_DOUBLE)");
            tp3 tp3VarV5 = ra5.v(ex7VarC, jSONObject, "line_height", zbbVar4, zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.s : null, e74Var3, DivTabsTabTitleStyleJsonParser.v);
            y45.i(tp3VarV5, "readOptionalFieldWithExp…T, LINE_HEIGHT_VALIDATOR)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "paddings", zC, tabTitleStyleTemplate != null ? tabTitleStyleTemplate.t : null, this.a.W2());
            y45.i(tp3VarS2, "readOptionalField(contex…InsetsJsonTemplateParser)");
            return new DivTabsTemplate.TabTitleStyleTemplate(tp3VarU, tp3VarT, tp3VarU2, tp3VarU3, tp3VarV, tp3VarU4, tp3VarV2, tp3VarS, tp3VarT2, tp3VarV3, tp3VarU5, tp3VarU6, tp3VarU7, tp3VarT3, tp3VarU8, tp3VarU9, tp3VarV4, tp3VarU10, tp3VarV5, tp3VarS2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTabsTemplate.TabTitleStyleTemplate tabTitleStyleTemplate) {
            y45.j(ex7Var, "context");
            y45.j(tabTitleStyleTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tp3 tp3Var = tabTitleStyleTemplate.a;
            e74 e74Var = ParsingConvertersKt.a;
            ra5.E(ex7Var, jSONObject, "active_background_color", tp3Var, e74Var);
            ra5.D(ex7Var, jSONObject, "active_font_variation_settings", tabTitleStyleTemplate.b);
            tp3 tp3Var2 = tabTitleStyleTemplate.c;
            e74 e74Var2 = DivFontWeight.TO_STRING;
            ra5.E(ex7Var, jSONObject, "active_font_weight", tp3Var2, e74Var2);
            ra5.E(ex7Var, jSONObject, "active_text_color", tabTitleStyleTemplate.d, e74Var);
            ra5.D(ex7Var, jSONObject, "animation_duration", tabTitleStyleTemplate.e);
            ra5.E(ex7Var, jSONObject, "animation_type", tabTitleStyleTemplate.f, DivTabs.TabTitleStyle.AnimationType.TO_STRING);
            ra5.D(ex7Var, jSONObject, "corner_radius", tabTitleStyleTemplate.g);
            ra5.I(ex7Var, jSONObject, "corners_radius", tabTitleStyleTemplate.h, this.a.q2());
            ra5.D(ex7Var, jSONObject, "font_family", tabTitleStyleTemplate.i);
            ra5.D(ex7Var, jSONObject, "font_size", tabTitleStyleTemplate.j);
            ra5.E(ex7Var, jSONObject, "font_size_unit", tabTitleStyleTemplate.k, DivSizeUnit.TO_STRING);
            ra5.E(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, tabTitleStyleTemplate.l, e74Var2);
            ra5.E(ex7Var, jSONObject, "inactive_background_color", tabTitleStyleTemplate.m, e74Var);
            ra5.D(ex7Var, jSONObject, "inactive_font_variation_settings", tabTitleStyleTemplate.n);
            ra5.E(ex7Var, jSONObject, "inactive_font_weight", tabTitleStyleTemplate.o, e74Var2);
            ra5.E(ex7Var, jSONObject, "inactive_text_color", tabTitleStyleTemplate.p, e74Var);
            ra5.D(ex7Var, jSONObject, "item_spacing", tabTitleStyleTemplate.q);
            ra5.D(ex7Var, jSONObject, "letter_spacing", tabTitleStyleTemplate.r);
            ra5.D(ex7Var, jSONObject, "line_height", tabTitleStyleTemplate.s);
            ra5.I(ex7Var, jSONObject, "paddings", tabTitleStyleTemplate.t, this.a.W2());
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
        public DivTabs.TabTitleStyle a(ex7 ex7Var, DivTabsTemplate.TabTitleStyleTemplate tabTitleStyleTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(tabTitleStyleTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = tabTitleStyleTemplate.a;
            zbb zbbVar = acb.f;
            e74 e74Var = ParsingConvertersKt.b;
            Expression expression = DivTabsTabTitleStyleJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "active_background_color", zbbVar, e74Var, expression);
            Expression expression2 = expressionV == null ? expression : expressionV;
            tp3 tp3Var2 = tabTitleStyleTemplate.b;
            zbb zbbVar2 = acb.h;
            Expression expressionR = sa5.r(ex7Var, tp3Var2, jSONObject, "active_font_variation_settings", zbbVar2);
            tp3 tp3Var3 = tabTitleStyleTemplate.c;
            zbb zbbVar3 = DivTabsTabTitleStyleJsonParser.m;
            e74 e74Var2 = DivFontWeight.FROM_STRING;
            Expression expressionS = sa5.s(ex7Var, tp3Var3, jSONObject, "active_font_weight", zbbVar3, e74Var2);
            tp3 tp3Var4 = tabTitleStyleTemplate.d;
            Expression expression3 = DivTabsTabTitleStyleJsonParser.c;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var4, jSONObject, "active_text_color", zbbVar, e74Var, expression3);
            Expression expression4 = expressionV2 == null ? expression3 : expressionV2;
            tp3 tp3Var5 = tabTitleStyleTemplate.e;
            zbb zbbVar4 = acb.b;
            e74 e74Var3 = ParsingConvertersKt.h;
            pnb pnbVar = DivTabsTabTitleStyleJsonParser.r;
            Expression expression5 = DivTabsTabTitleStyleJsonParser.d;
            Expression expressionU = sa5.u(ex7Var, tp3Var5, jSONObject, "animation_duration", zbbVar4, e74Var3, pnbVar, expression5);
            if (expressionU != null) {
                expression5 = expressionU;
            }
            tp3 tp3Var6 = tabTitleStyleTemplate.f;
            zbb zbbVar5 = DivTabsTabTitleStyleJsonParser.n;
            e74 e74Var4 = DivTabs.TabTitleStyle.AnimationType.FROM_STRING;
            Expression expression6 = DivTabsTabTitleStyleJsonParser.e;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var6, jSONObject, "animation_type", zbbVar5, e74Var4, expression6);
            Expression expression7 = expressionV3 == null ? expression6 : expressionV3;
            Expression expressionT = sa5.t(ex7Var, tabTitleStyleTemplate.g, jSONObject, "corner_radius", zbbVar4, e74Var3, DivTabsTabTitleStyleJsonParser.s);
            DivCornersRadius divCornersRadius = (DivCornersRadius) sa5.p(ex7Var, tabTitleStyleTemplate.h, jSONObject, "corners_radius", this.a.r2(), this.a.p2());
            Expression expressionR2 = sa5.r(ex7Var, tabTitleStyleTemplate.i, jSONObject, "font_family", acb.c);
            tp3 tp3Var7 = tabTitleStyleTemplate.j;
            pnb pnbVar2 = DivTabsTabTitleStyleJsonParser.t;
            Expression expression8 = DivTabsTabTitleStyleJsonParser.f;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var7, jSONObject, "font_size", zbbVar4, e74Var3, pnbVar2, expression8);
            if (expressionU2 != null) {
                expression8 = expressionU2;
            }
            tp3 tp3Var8 = tabTitleStyleTemplate.k;
            zbb zbbVar6 = DivTabsTabTitleStyleJsonParser.o;
            e74 e74Var5 = DivSizeUnit.FROM_STRING;
            Expression expression9 = DivTabsTabTitleStyleJsonParser.g;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var8, jSONObject, "font_size_unit", zbbVar6, e74Var5, expression9);
            Expression expression10 = expressionV4 == null ? expression9 : expressionV4;
            tp3 tp3Var9 = tabTitleStyleTemplate.l;
            zbb zbbVar7 = DivTabsTabTitleStyleJsonParser.p;
            Expression expression11 = DivTabsTabTitleStyleJsonParser.h;
            Expression expressionV5 = sa5.v(ex7Var, tp3Var9, jSONObject, FontsContractCompat.Columns.WEIGHT, zbbVar7, e74Var2, expression11);
            Expression expression12 = expressionV5 == null ? expression11 : expressionV5;
            Expression expressionS2 = sa5.s(ex7Var, tabTitleStyleTemplate.m, jSONObject, "inactive_background_color", zbbVar, e74Var);
            Expression expressionR3 = sa5.r(ex7Var, tabTitleStyleTemplate.n, jSONObject, "inactive_font_variation_settings", zbbVar2);
            Expression expressionS3 = sa5.s(ex7Var, tabTitleStyleTemplate.o, jSONObject, "inactive_font_weight", DivTabsTabTitleStyleJsonParser.q, e74Var2);
            tp3 tp3Var10 = tabTitleStyleTemplate.p;
            Expression expression13 = DivTabsTabTitleStyleJsonParser.i;
            Expression expressionV6 = sa5.v(ex7Var, tp3Var10, jSONObject, "inactive_text_color", zbbVar, e74Var, expression13);
            Expression expression14 = expressionV6 == null ? expression13 : expressionV6;
            tp3 tp3Var11 = tabTitleStyleTemplate.q;
            pnb pnbVar3 = DivTabsTabTitleStyleJsonParser.u;
            Expression expression15 = DivTabsTabTitleStyleJsonParser.j;
            Expression expressionU3 = sa5.u(ex7Var, tp3Var11, jSONObject, "item_spacing", zbbVar4, e74Var3, pnbVar3, expression15);
            Expression expression16 = expressionU3 == null ? expression15 : expressionU3;
            tp3 tp3Var12 = tabTitleStyleTemplate.r;
            zbb zbbVar8 = acb.d;
            e74 e74Var6 = ParsingConvertersKt.g;
            Expression expression17 = DivTabsTabTitleStyleJsonParser.k;
            Expression expressionV7 = sa5.v(ex7Var, tp3Var12, jSONObject, "letter_spacing", zbbVar8, e74Var6, expression17);
            Expression expression18 = expressionV7 == null ? expression17 : expressionV7;
            Expression expressionT2 = sa5.t(ex7Var, tabTitleStyleTemplate.s, jSONObject, "line_height", zbbVar4, e74Var3, DivTabsTabTitleStyleJsonParser.v);
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, tabTitleStyleTemplate.t, jSONObject, "paddings", this.a.X2(), this.a.V2());
            if (divEdgeInsets == null) {
                divEdgeInsets = DivTabsTabTitleStyleJsonParser.l;
            }
            y45.i(divEdgeInsets, "JsonFieldResolver.resolv…?: PADDINGS_DEFAULT_VALUE");
            return new DivTabs.TabTitleStyle(expression2, expressionR, expressionS, expression4, expression5, expression7, expressionT, divCornersRadius, expressionR2, expression8, expression10, expression12, expressionS2, expressionR3, expressionS3, expression14, expression16, expression18, expressionT2, divEdgeInsets);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(-9120);
        c = aVar.a(-872415232);
        d = aVar.a(300L);
        e = aVar.a(DivTabs.TabTitleStyle.AnimationType.SLIDE);
        f = aVar.a(12L);
        g = aVar.a(DivSizeUnit.SP);
        h = aVar.a(DivFontWeight.REGULAR);
        i = aVar.a(Integer.MIN_VALUE);
        j = aVar.a(0L);
        k = aVar.a(Double.valueOf(0.0d));
        l = new DivEdgeInsets(aVar.a(6L), null, aVar.a(8L), aVar.a(8L), null, aVar.a(6L), null, 82, null);
        zbb.a aVar2 = zbb.a;
        m = aVar2.a(hi.W(DivFontWeight.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivFontWeight);
            }
        });
        n = aVar2.a(hi.W(DivTabs.TabTitleStyle.AnimationType.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivTabs.TabTitleStyle.AnimationType);
            }
        });
        o = aVar2.a(hi.W(DivSizeUnit.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivSizeUnit);
            }
        });
        p = aVar2.a(hi.W(DivFontWeight.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivFontWeight);
            }
        });
        q = aVar2.a(hi.W(DivFontWeight.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivFontWeight);
            }
        });
        r = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTabsTabTitleStyleJsonParser.f(((Long) obj).longValue());
            }
        };
        s = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTabsTabTitleStyleJsonParser.g(((Long) obj).longValue());
            }
        };
        t = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTabsTabTitleStyleJsonParser.h(((Long) obj).longValue());
            }
        };
        u = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTabsTabTitleStyleJsonParser.i(((Long) obj).longValue());
            }
        };
        v = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTabsTabTitleStyleJsonParser.j(((Long) obj).longValue());
            }
        };
    }

    public static final boolean f(long j2) {
        return j2 >= 0;
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

    public static final boolean j(long j2) {
        return j2 >= 0;
    }
}
