package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.provider.FontsContractCompat;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSliderTextStyleJsonParser;
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

public abstract class DivSliderTextStyleJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final zbb f;
    public static final zbb g;
    public static final pnb h;
    public static final pnb i;

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
        public DivSlider.TextStyle a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionH = pa5.h(ex7Var, jSONObject, "font_family", acb.c);
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivSliderTextStyleJsonParser.h;
            Expression expression = DivSliderTextStyleJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "font_size", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            zbb zbbVar2 = DivSliderTextStyleJsonParser.f;
            e74 e74Var2 = DivSizeUnit.FROM_STRING;
            Expression expression2 = DivSliderTextStyleJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "font_size_unit", zbbVar2, e74Var2, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            Expression expressionH2 = pa5.h(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h);
            zbb zbbVar3 = DivSliderTextStyleJsonParser.g;
            e74 e74Var3 = DivFontWeight.FROM_STRING;
            Expression expression3 = DivSliderTextStyleJsonParser.d;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, zbbVar3, e74Var3, expression3);
            if (expressionL2 != null) {
                expression3 = expressionL2;
            }
            Expression expressionJ = pa5.j(ex7Var, jSONObject, "font_weight_value", zbbVar, e74Var, DivSliderTextStyleJsonParser.i);
            DivPoint divPoint = (DivPoint) tb5.n(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, this.a.W5());
            zbb zbbVar4 = acb.f;
            e74 e74Var4 = ParsingConvertersKt.b;
            Expression expression4 = DivSliderTextStyleJsonParser.e;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "text_color", zbbVar4, e74Var4, expression4);
            if (expressionL3 != null) {
                expression4 = expressionL3;
            }
            return new DivSlider.TextStyle(expressionH, expression, expression2, expressionH2, expression3, expressionJ, divPoint, expression4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSlider.TextStyle textStyle) {
            y45.j(ex7Var, "context");
            y45.j(textStyle, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "font_family", textStyle.a);
            pa5.p(ex7Var, jSONObject, "font_size", textStyle.b);
            pa5.q(ex7Var, jSONObject, "font_size_unit", textStyle.c, DivSizeUnit.TO_STRING);
            pa5.p(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, textStyle.d);
            pa5.q(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, textStyle.e, DivFontWeight.TO_STRING);
            pa5.p(ex7Var, jSONObject, "font_weight_value", textStyle.f);
            tb5.x(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, textStyle.g, this.a.W5());
            pa5.q(ex7Var, jSONObject, "text_color", textStyle.h, ParsingConvertersKt.a);
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
        public DivSliderTemplate.TextStyleTemplate c(ex7 ex7Var, DivSliderTemplate.TextStyleTemplate textStyleTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "font_family", acb.c, zC, textStyleTemplate != null ? textStyleTemplate.a : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…ride, parent?.fontFamily)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = textStyleTemplate != null ? textStyleTemplate.b : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "font_size", zbbVar, zC, tp3Var, e74Var, DivSliderTextStyleJsonParser.h);
            y45.i(tp3VarV, "readOptionalFieldWithExp…INT, FONT_SIZE_VALIDATOR)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "font_size_unit", DivSliderTextStyleJsonParser.f, zC, textStyleTemplate != null ? textStyleTemplate.c : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h, zC, textStyleTemplate != null ? textStyleTemplate.d : null);
            y45.i(tp3VarT2, "readOptionalFieldWithExp…t?.fontVariationSettings)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, FontsContractCompat.Columns.WEIGHT, DivSliderTextStyleJsonParser.g, zC, textStyleTemplate != null ? textStyleTemplate.e : null, DivFontWeight.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…ivFontWeight.FROM_STRING)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "font_weight_value", zbbVar, zC, textStyleTemplate != null ? textStyleTemplate.f : null, e74Var, DivSliderTextStyleJsonParser.i);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T_WEIGHT_VALUE_VALIDATOR)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, zC, textStyleTemplate != null ? textStyleTemplate.g : null, this.a.X5());
            y45.i(tp3VarS, "readOptionalField(contex…vPointJsonTemplateParser)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "text_color", acb.f, zC, textStyleTemplate != null ? textStyleTemplate.h : null, ParsingConvertersKt.b);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            return new DivSliderTemplate.TextStyleTemplate(tp3VarT, tp3VarV, tp3VarU, tp3VarT2, tp3VarU2, tp3VarV2, tp3VarS, tp3VarU3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSliderTemplate.TextStyleTemplate textStyleTemplate) {
            y45.j(ex7Var, "context");
            y45.j(textStyleTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "font_family", textStyleTemplate.a);
            ra5.D(ex7Var, jSONObject, "font_size", textStyleTemplate.b);
            ra5.E(ex7Var, jSONObject, "font_size_unit", textStyleTemplate.c, DivSizeUnit.TO_STRING);
            ra5.D(ex7Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, textStyleTemplate.d);
            ra5.E(ex7Var, jSONObject, FontsContractCompat.Columns.WEIGHT, textStyleTemplate.e, DivFontWeight.TO_STRING);
            ra5.D(ex7Var, jSONObject, "font_weight_value", textStyleTemplate.f);
            ra5.I(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, textStyleTemplate.g, this.a.X5());
            ra5.E(ex7Var, jSONObject, "text_color", textStyleTemplate.h, ParsingConvertersKt.a);
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
        public DivSlider.TextStyle a(ex7 ex7Var, DivSliderTemplate.TextStyleTemplate textStyleTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(textStyleTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionR = sa5.r(ex7Var, textStyleTemplate.a, jSONObject, "font_family", acb.c);
            tp3 tp3Var = textStyleTemplate.b;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivSliderTextStyleJsonParser.h;
            Expression expression = DivSliderTextStyleJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "font_size", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            tp3 tp3Var2 = textStyleTemplate.c;
            zbb zbbVar2 = DivSliderTextStyleJsonParser.f;
            e74 e74Var2 = DivSizeUnit.FROM_STRING;
            Expression expression2 = DivSliderTextStyleJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var2, jSONObject, "font_size_unit", zbbVar2, e74Var2, expression2);
            if (expressionV != null) {
                expression2 = expressionV;
            }
            Expression expressionR2 = sa5.r(ex7Var, textStyleTemplate.d, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, acb.h);
            tp3 tp3Var3 = textStyleTemplate.e;
            zbb zbbVar3 = DivSliderTextStyleJsonParser.g;
            e74 e74Var3 = DivFontWeight.FROM_STRING;
            Expression expression3 = DivSliderTextStyleJsonParser.d;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var3, jSONObject, FontsContractCompat.Columns.WEIGHT, zbbVar3, e74Var3, expression3);
            if (expressionV2 != null) {
                expression3 = expressionV2;
            }
            Expression expressionT = sa5.t(ex7Var, textStyleTemplate.f, jSONObject, "font_weight_value", zbbVar, e74Var, DivSliderTextStyleJsonParser.i);
            DivPoint divPoint = (DivPoint) sa5.p(ex7Var, textStyleTemplate.g, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, this.a.Y5(), this.a.W5());
            tp3 tp3Var4 = textStyleTemplate.h;
            zbb zbbVar4 = acb.f;
            e74 e74Var4 = ParsingConvertersKt.b;
            Expression expression4 = DivSliderTextStyleJsonParser.e;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var4, jSONObject, "text_color", zbbVar4, e74Var4, expression4);
            return new DivSlider.TextStyle(expressionR, expression, expression2, expressionR2, expression3, expressionT, divPoint, expressionV3 == null ? expression4 : expressionV3);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(12L);
        c = aVar.a(DivSizeUnit.SP);
        d = aVar.a(DivFontWeight.REGULAR);
        e = aVar.a(-16777216);
        zbb.a aVar2 = zbb.a;
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
        h = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSliderTextStyleJsonParser.c(((Long) obj).longValue());
            }
        };
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivSliderTextStyleJsonParser.d(((Long) obj).longValue());
            }
        };
    }

    public static final boolean c(long j) {
        return j >= 0;
    }

    public static final boolean d(long j) {
        return j > 0;
    }
}
