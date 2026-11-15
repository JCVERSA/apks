package com.yandex.div2;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivTextRangeJsonParser;
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
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivTextRangeJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final zbb e;
    public static final zbb f;
    public static final zbb g;
    public static final zbb h;
    public static final zbb i;
    public static final pnb j;
    public static final pnb k;
    public static final pnb l;
    public static final pnb m;
    public static final pnb n;
    public static final pnb o;

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
        public DivText.Range a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            List listR = tb5.r(ex7Var, jSONObject, "actions", this.a.u0());
            Expression expressionI = pa5.i(ex7Var, jSONObject, "alignment_vertical", DivTextRangeJsonParser.e, DivTextAlignmentVertical.FROM_STRING);
            DivTextRangeBackground divTextRangeBackground = (DivTextRangeBackground) tb5.n(ex7Var, jSONObject, "background", this.a.m8());
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            Expression expression = DivTextRangeJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "baseline_offset", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            DivTextRangeBorder divTextRangeBorder = (DivTextRangeBorder) tb5.n(ex7Var, jSONObject, "border", this.a.p8());
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionJ = pa5.j(ex7Var, jSONObject, TtmlNode.END, zbbVar2, e74Var2, DivTextRangeJsonParser.j);
            zbb zbbVar3 = acb.c;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "font_family", zbbVar3);
            Expression expressionH2 = pa5.h(ex7Var, jSONObject, "font_feature_settings", zbbVar3);
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, "font_size", zbbVar2, e74Var2, DivTextRangeJsonParser.k);
            zbb zbbVar4 = DivTextRangeJsonParser.f;
            e74 e74Var3 = DivSizeUnit.FROM_STRING;
            Expression expression2 = DivTextRangeJsonParser.c;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "font_size_unit", zbbVar4, e74Var3, expression2);
            if (expressionL2 != null) {
                expression2 = expressionL2;
            }
            Expression expressionH3 = pa5.h(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h);
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, DivTextRangeJsonParser.g, DivFontWeight.FROM_STRING);
            Expression expressionJ3 = pa5.j(ex7Var, jSONObject, "font_weight_value", zbbVar2, e74Var2, DivTextRangeJsonParser.l);
            Expression expressionI3 = pa5.i(ex7Var, jSONObject, "letter_spacing", zbbVar, e74Var);
            Expression expressionJ4 = pa5.j(ex7Var, jSONObject, "line_height", zbbVar2, e74Var2, DivTextRangeJsonParser.m);
            DivTextRangeMask divTextRangeMask = (DivTextRangeMask) tb5.n(ex7Var, jSONObject, "mask", this.a.x8());
            pnb pnbVar = DivTextRangeJsonParser.n;
            Expression expression3 = DivTextRangeJsonParser.d;
            Expression expressionK = pa5.k(ex7Var, jSONObject, TtmlNode.START, zbbVar2, e74Var2, pnbVar, expression3);
            Expression expression4 = expressionK == null ? expression3 : expressionK;
            zbb zbbVar5 = DivTextRangeJsonParser.h;
            e74 e74Var4 = DivLineStyle.FROM_STRING;
            return new DivText.Range(listR, expressionI, divTextRangeBackground, expression, divTextRangeBorder, expressionJ, expressionH, expressionH2, expressionJ2, expression2, expressionH3, expressionI2, expressionJ3, expressionI3, expressionJ4, divTextRangeMask, expression4, pa5.i(ex7Var, jSONObject, "strike", zbbVar5, e74Var4), pa5.i(ex7Var, jSONObject, "text_color", acb.f, ParsingConvertersKt.b), (DivShadow) tb5.n(ex7Var, jSONObject, "text_shadow", this.a.M6()), pa5.j(ex7Var, jSONObject, "top_offset", zbbVar2, e74Var2, DivTextRangeJsonParser.o), pa5.i(ex7Var, jSONObject, TtmlNode.UNDERLINE, DivTextRangeJsonParser.i, e74Var4));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivText.Range range) {
            y45.j(ex7Var, "context");
            y45.j(range, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.z(ex7Var, jSONObject, "actions", range.a, this.a.u0());
            pa5.q(ex7Var, jSONObject, "alignment_vertical", range.b, DivTextAlignmentVertical.TO_STRING);
            tb5.x(ex7Var, jSONObject, "background", range.c, this.a.m8());
            pa5.p(ex7Var, jSONObject, "baseline_offset", range.d);
            tb5.x(ex7Var, jSONObject, "border", range.e, this.a.p8());
            pa5.p(ex7Var, jSONObject, TtmlNode.END, range.f);
            pa5.p(ex7Var, jSONObject, "font_family", range.g);
            pa5.p(ex7Var, jSONObject, "font_feature_settings", range.h);
            pa5.p(ex7Var, jSONObject, "font_size", range.i);
            pa5.q(ex7Var, jSONObject, "font_size_unit", range.j, DivSizeUnit.TO_STRING);
            pa5.p(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, range.k);
            pa5.q(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, range.l, DivFontWeight.TO_STRING);
            pa5.p(ex7Var, jSONObject, "font_weight_value", range.m);
            pa5.p(ex7Var, jSONObject, "letter_spacing", range.n);
            pa5.p(ex7Var, jSONObject, "line_height", range.o);
            tb5.x(ex7Var, jSONObject, "mask", range.p, this.a.x8());
            pa5.p(ex7Var, jSONObject, TtmlNode.START, range.q);
            Expression expression = range.r;
            e74 e74Var = DivLineStyle.TO_STRING;
            pa5.q(ex7Var, jSONObject, "strike", expression, e74Var);
            pa5.q(ex7Var, jSONObject, "text_color", range.s, ParsingConvertersKt.a);
            tb5.x(ex7Var, jSONObject, "text_shadow", range.t, this.a.M6());
            pa5.p(ex7Var, jSONObject, "top_offset", range.u);
            pa5.q(ex7Var, jSONObject, TtmlNode.UNDERLINE, range.v, e74Var);
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
        public DivTextTemplate.RangeTemplate c(ex7 ex7Var, DivTextTemplate.RangeTemplate rangeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "actions", zC, rangeTemplate != null ? rangeTemplate.a : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivTextRangeJsonParser.e, zC, rangeTemplate != null ? rangeTemplate.b : null, DivTextAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "background", zC, rangeTemplate != null ? rangeTemplate.c : null, this.a.n8());
            y45.i(tp3VarS, "readOptionalField(contex…groundJsonTemplateParser)");
            zbb zbbVar = acb.d;
            tp3 tp3Var = rangeTemplate != null ? rangeTemplate.d : null;
            e74 e74Var = ParsingConvertersKt.g;
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "baseline_offset", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…Offset, NUMBER_TO_DOUBLE)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "border", zC, rangeTemplate != null ? rangeTemplate.e : null, this.a.q8());
            y45.i(tp3VarS2, "readOptionalField(contex…BorderJsonTemplateParser)");
            zbb zbbVar2 = acb.b;
            tp3 tp3Var2 = rangeTemplate != null ? rangeTemplate.f : null;
            e74 e74Var2 = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, TtmlNode.END, zbbVar2, zC, tp3Var2, e74Var2, DivTextRangeJsonParser.j);
            y45.i(tp3VarV, "readOptionalFieldWithExp…ER_TO_INT, END_VALIDATOR)");
            zbb zbbVar3 = acb.c;
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "font_family", zbbVar3, zC, rangeTemplate != null ? rangeTemplate.g : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…ride, parent?.fontFamily)");
            tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, "font_feature_settings", zbbVar3, zC, rangeTemplate != null ? rangeTemplate.h : null);
            y45.i(tp3VarT2, "readOptionalFieldWithExp…ent?.fontFeatureSettings)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "font_size", zbbVar2, zC, rangeTemplate != null ? rangeTemplate.i : null, e74Var2, DivTextRangeJsonParser.k);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…INT, FONT_SIZE_VALIDATOR)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "font_size_unit", DivTextRangeJsonParser.f, zC, rangeTemplate != null ? rangeTemplate.j : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU3, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            tp3 tp3VarT3 = ra5.t(ex7VarC, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h, zC, rangeTemplate != null ? rangeTemplate.k : null);
            y45.i(tp3VarT3, "readOptionalFieldWithExp…t?.fontVariationSettings)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, FontsContractCompat.Columns.WEIGHT, DivTextRangeJsonParser.g, zC, rangeTemplate != null ? rangeTemplate.l : null, DivFontWeight.FROM_STRING);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…ivFontWeight.FROM_STRING)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "font_weight_value", zbbVar2, zC, rangeTemplate != null ? rangeTemplate.m : null, e74Var2, DivTextRangeJsonParser.l);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…T_WEIGHT_VALUE_VALIDATOR)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "letter_spacing", zbbVar, zC, rangeTemplate != null ? rangeTemplate.n : null, e74Var);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…pacing, NUMBER_TO_DOUBLE)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "line_height", zbbVar2, zC, rangeTemplate != null ? rangeTemplate.o : null, e74Var2, DivTextRangeJsonParser.m);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…T, LINE_HEIGHT_VALIDATOR)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "mask", zC, rangeTemplate != null ? rangeTemplate.p : null, this.a.y8());
            y45.i(tp3VarS3, "readOptionalField(contex…geMaskJsonTemplateParser)");
            tp3 tp3VarV5 = ra5.v(ex7VarC, jSONObject, TtmlNode.START, zbbVar2, zC, rangeTemplate != null ? rangeTemplate.q : null, e74Var2, DivTextRangeJsonParser.n);
            y45.i(tp3VarV5, "readOptionalFieldWithExp…_TO_INT, START_VALIDATOR)");
            zbb zbbVar4 = DivTextRangeJsonParser.h;
            tp3 tp3Var3 = rangeTemplate != null ? rangeTemplate.r : null;
            e74 e74Var3 = DivLineStyle.FROM_STRING;
            tp3 tp3VarU6 = ra5.u(ex7VarC, jSONObject, "strike", zbbVar4, zC, tp3Var3, e74Var3);
            y45.i(tp3VarU6, "readOptionalFieldWithExp…DivLineStyle.FROM_STRING)");
            tp3 tp3VarU7 = ra5.u(ex7VarC, jSONObject, "text_color", acb.f, zC, rangeTemplate != null ? rangeTemplate.s : null, ParsingConvertersKt.b);
            y45.i(tp3VarU7, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarS4 = ra5.s(ex7VarC, jSONObject, "text_shadow", zC, rangeTemplate != null ? rangeTemplate.t : null, this.a.N6());
            y45.i(tp3VarS4, "readOptionalField(contex…ShadowJsonTemplateParser)");
            tp3 tp3VarV6 = ra5.v(ex7VarC, jSONObject, "top_offset", zbbVar2, zC, rangeTemplate != null ? rangeTemplate.u : null, e74Var2, DivTextRangeJsonParser.o);
            y45.i(tp3VarV6, "readOptionalFieldWithExp…NT, TOP_OFFSET_VALIDATOR)");
            tp3 tp3VarU8 = ra5.u(ex7VarC, jSONObject, TtmlNode.UNDERLINE, DivTextRangeJsonParser.i, zC, rangeTemplate != null ? rangeTemplate.v : null, e74Var3);
            y45.i(tp3VarU8, "readOptionalFieldWithExp…DivLineStyle.FROM_STRING)");
            return new DivTextTemplate.RangeTemplate(tp3VarZ, tp3VarU, tp3VarS, tp3VarU2, tp3VarS2, tp3VarV, tp3VarT, tp3VarT2, tp3VarV2, tp3VarU3, tp3VarT3, tp3VarU4, tp3VarV3, tp3VarU5, tp3VarV4, tp3VarS3, tp3VarV5, tp3VarU6, tp3VarU7, tp3VarS4, tp3VarV6, tp3VarU8);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextTemplate.RangeTemplate rangeTemplate) {
            y45.j(ex7Var, "context");
            y45.j(rangeTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.K(ex7Var, jSONObject, "actions", rangeTemplate.a, this.a.v0());
            ra5.E(ex7Var, jSONObject, "alignment_vertical", rangeTemplate.b, DivTextAlignmentVertical.TO_STRING);
            ra5.I(ex7Var, jSONObject, "background", rangeTemplate.c, this.a.n8());
            ra5.D(ex7Var, jSONObject, "baseline_offset", rangeTemplate.d);
            ra5.I(ex7Var, jSONObject, "border", rangeTemplate.e, this.a.q8());
            ra5.D(ex7Var, jSONObject, TtmlNode.END, rangeTemplate.f);
            ra5.D(ex7Var, jSONObject, "font_family", rangeTemplate.g);
            ra5.D(ex7Var, jSONObject, "font_feature_settings", rangeTemplate.h);
            ra5.D(ex7Var, jSONObject, "font_size", rangeTemplate.i);
            ra5.E(ex7Var, jSONObject, "font_size_unit", rangeTemplate.j, DivSizeUnit.TO_STRING);
            ra5.D(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, rangeTemplate.k);
            ra5.E(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, rangeTemplate.l, DivFontWeight.TO_STRING);
            ra5.D(ex7Var, jSONObject, "font_weight_value", rangeTemplate.m);
            ra5.D(ex7Var, jSONObject, "letter_spacing", rangeTemplate.n);
            ra5.D(ex7Var, jSONObject, "line_height", rangeTemplate.o);
            ra5.I(ex7Var, jSONObject, "mask", rangeTemplate.p, this.a.y8());
            ra5.D(ex7Var, jSONObject, TtmlNode.START, rangeTemplate.q);
            tp3 tp3Var = rangeTemplate.r;
            e74 e74Var = DivLineStyle.TO_STRING;
            ra5.E(ex7Var, jSONObject, "strike", tp3Var, e74Var);
            ra5.E(ex7Var, jSONObject, "text_color", rangeTemplate.s, ParsingConvertersKt.a);
            ra5.I(ex7Var, jSONObject, "text_shadow", rangeTemplate.t, this.a.N6());
            ra5.D(ex7Var, jSONObject, "top_offset", rangeTemplate.u);
            ra5.E(ex7Var, jSONObject, TtmlNode.UNDERLINE, rangeTemplate.v, e74Var);
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
        public DivText.Range a(ex7 ex7Var, DivTextTemplate.RangeTemplate rangeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(rangeTemplate, "template");
            y45.j(jSONObject, "data");
            List listB = sa5.B(ex7Var, rangeTemplate.a, jSONObject, "actions", this.a.w0(), this.a.u0());
            Expression expressionS = sa5.s(ex7Var, rangeTemplate.b, jSONObject, "alignment_vertical", DivTextRangeJsonParser.e, DivTextAlignmentVertical.FROM_STRING);
            DivTextRangeBackground divTextRangeBackground = (DivTextRangeBackground) sa5.p(ex7Var, rangeTemplate.c, jSONObject, "background", this.a.o8(), this.a.m8());
            tp3 tp3Var = rangeTemplate.d;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            Expression expression = DivTextRangeJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "baseline_offset", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            DivTextRangeBorder divTextRangeBorder = (DivTextRangeBorder) sa5.p(ex7Var, rangeTemplate.e, jSONObject, "border", this.a.r8(), this.a.p8());
            tp3 tp3Var2 = rangeTemplate.f;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expressionT = sa5.t(ex7Var, tp3Var2, jSONObject, TtmlNode.END, zbbVar2, e74Var2, DivTextRangeJsonParser.j);
            tp3 tp3Var3 = rangeTemplate.g;
            zbb zbbVar3 = acb.c;
            Expression expressionR = sa5.r(ex7Var, tp3Var3, jSONObject, "font_family", zbbVar3);
            Expression expressionR2 = sa5.r(ex7Var, rangeTemplate.h, jSONObject, "font_feature_settings", zbbVar3);
            Expression expressionT2 = sa5.t(ex7Var, rangeTemplate.i, jSONObject, "font_size", zbbVar2, e74Var2, DivTextRangeJsonParser.k);
            tp3 tp3Var4 = rangeTemplate.j;
            zbb zbbVar4 = DivTextRangeJsonParser.f;
            e74 e74Var3 = DivSizeUnit.FROM_STRING;
            Expression expression2 = DivTextRangeJsonParser.c;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var4, jSONObject, "font_size_unit", zbbVar4, e74Var3, expression2);
            if (expressionV2 != null) {
                expression2 = expressionV2;
            }
            Expression expressionR3 = sa5.r(ex7Var, rangeTemplate.k, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h);
            Expression expressionS2 = sa5.s(ex7Var, rangeTemplate.l, jSONObject, FontsContractCompat.Columns.WEIGHT, DivTextRangeJsonParser.g, DivFontWeight.FROM_STRING);
            Expression expressionT3 = sa5.t(ex7Var, rangeTemplate.m, jSONObject, "font_weight_value", zbbVar2, e74Var2, DivTextRangeJsonParser.l);
            Expression expressionS3 = sa5.s(ex7Var, rangeTemplate.n, jSONObject, "letter_spacing", zbbVar, e74Var);
            Expression expressionT4 = sa5.t(ex7Var, rangeTemplate.o, jSONObject, "line_height", zbbVar2, e74Var2, DivTextRangeJsonParser.m);
            DivTextRangeMask divTextRangeMask = (DivTextRangeMask) sa5.p(ex7Var, rangeTemplate.p, jSONObject, "mask", this.a.z8(), this.a.x8());
            tp3 tp3Var5 = rangeTemplate.q;
            pnb pnbVar = DivTextRangeJsonParser.n;
            Expression expression3 = DivTextRangeJsonParser.d;
            Expression expressionU = sa5.u(ex7Var, tp3Var5, jSONObject, TtmlNode.START, zbbVar2, e74Var2, pnbVar, expression3);
            Expression expression4 = expressionU == null ? expression3 : expressionU;
            tp3 tp3Var6 = rangeTemplate.r;
            zbb zbbVar5 = DivTextRangeJsonParser.h;
            e74 e74Var4 = DivLineStyle.FROM_STRING;
            return new DivText.Range(listB, expressionS, divTextRangeBackground, expression, divTextRangeBorder, expressionT, expressionR, expressionR2, expressionT2, expression2, expressionR3, expressionS2, expressionT3, expressionS3, expressionT4, divTextRangeMask, expression4, sa5.s(ex7Var, tp3Var6, jSONObject, "strike", zbbVar5, e74Var4), sa5.s(ex7Var, rangeTemplate.s, jSONObject, "text_color", acb.f, ParsingConvertersKt.b), (DivShadow) sa5.p(ex7Var, rangeTemplate.t, jSONObject, "text_shadow", this.a.O6(), this.a.M6()), sa5.t(ex7Var, rangeTemplate.u, jSONObject, "top_offset", zbbVar2, e74Var2, DivTextRangeJsonParser.o), sa5.s(ex7Var, rangeTemplate.v, jSONObject, TtmlNode.UNDERLINE, DivTextRangeJsonParser.i, e74Var4));
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(0.0d));
        c = aVar.a(DivSizeUnit.SP);
        d = aVar.a(0L);
        zbb.a aVar2 = zbb.a;
        e = aVar2.a(hi.W(DivTextAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivTextAlignmentVertical);
            }
        });
        f = aVar2.a(hi.W(DivSizeUnit.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivSizeUnit);
            }
        });
        g = aVar2.a(hi.W(DivFontWeight.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivFontWeight);
            }
        });
        h = aVar2.a(hi.W(DivLineStyle.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivLineStyle);
            }
        });
        i = aVar2.a(hi.W(DivLineStyle.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivLineStyle);
            }
        });
        j = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextRangeJsonParser.g(((Long) obj).longValue());
            }
        };
        k = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextRangeJsonParser.h(((Long) obj).longValue());
            }
        };
        l = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextRangeJsonParser.i(((Long) obj).longValue());
            }
        };
        m = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextRangeJsonParser.j(((Long) obj).longValue());
            }
        };
        n = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextRangeJsonParser.k(((Long) obj).longValue());
            }
        };
        o = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextRangeJsonParser.l(((Long) obj).longValue());
            }
        };
    }

    public static final boolean g(long j2) {
        return j2 > 0;
    }

    public static final boolean h(long j2) {
        return j2 >= 0;
    }

    public static final boolean i(long j2) {
        return j2 > 0;
    }

    public static final boolean j(long j2) {
        return j2 >= 0;
    }

    public static final boolean k(long j2) {
        return j2 >= 0;
    }

    public static final boolean l(long j2) {
        return j2 >= 0;
    }
}
