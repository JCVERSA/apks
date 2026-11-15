package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivTextImageJsonParser;
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

public abstract class DivTextImageJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final DivFixedSize c;
    public static final Expression d;
    public static final Expression e;
    public static final Expression f;
    public static final DivFixedSize g;
    public static final zbb h;
    public static final zbb i;
    public static final zbb j;
    public static final pnb k;

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
        public DivText.Image a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivText.Image.Accessibility accessibility = (DivText.Image.Accessibility) tb5.n(ex7Var, jSONObject, "accessibility", this.a.d8());
            zbb zbbVar = DivTextImageJsonParser.h;
            e74 e74Var = DivTextAlignmentVertical.FROM_STRING;
            Expression expression = DivTextImageJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "alignment_vertical", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            DivFixedSize divFixedSize = (DivFixedSize) tb5.n(ex7Var, jSONObject, "height", this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = DivTextImageJsonParser.c;
            }
            DivFixedSize divFixedSize2 = divFixedSize;
            y45.i(divFixedSize2, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            zbb zbbVar2 = DivTextImageJsonParser.i;
            e74 e74Var2 = DivText.Image.IndexingDirection.FROM_STRING;
            Expression expression2 = DivTextImageJsonParser.d;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "indexing_direction", zbbVar2, e74Var2, expression2);
            if (expressionL2 != null) {
                expression2 = expressionL2;
            }
            zbb zbbVar3 = acb.a;
            e74 e74Var3 = ParsingConvertersKt.f;
            Expression expression3 = DivTextImageJsonParser.e;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "preload_required", zbbVar3, e74Var3, expression3);
            if (expressionL3 != null) {
                expression3 = expressionL3;
            }
            Expression expressionF = pa5.f(ex7Var, jSONObject, TtmlNode.START, acb.b, ParsingConvertersKt.h, DivTextImageJsonParser.k);
            y45.i(expressionF, "readExpression(context, …_TO_INT, START_VALIDATOR)");
            Expression expressionI = pa5.i(ex7Var, jSONObject, "tint_color", acb.f, ParsingConvertersKt.b);
            zbb zbbVar4 = DivTextImageJsonParser.j;
            e74 e74Var4 = DivBlendMode.FROM_STRING;
            Expression expression4 = DivTextImageJsonParser.f;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "tint_mode", zbbVar4, e74Var4, expression4);
            if (expressionL4 != null) {
                expression4 = expressionL4;
            }
            Expression expressionE = pa5.e(ex7Var, jSONObject, "url", acb.e, ParsingConvertersKt.e);
            y45.i(expressionE, "readExpression(context, …E_HELPER_URI, ANY_TO_URI)");
            DivFixedSize divFixedSize3 = (DivFixedSize) tb5.n(ex7Var, jSONObject, "width", this.a.t3());
            if (divFixedSize3 == null) {
                divFixedSize3 = DivTextImageJsonParser.g;
            }
            y45.i(divFixedSize3, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivText.Image(accessibility, expression, divFixedSize2, expression2, expression3, expressionF, expressionI, expression4, expressionE, divFixedSize3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivText.Image image) {
            y45.j(ex7Var, "context");
            y45.j(image, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "accessibility", image.a, this.a.d8());
            pa5.q(ex7Var, jSONObject, "alignment_vertical", image.b, DivTextAlignmentVertical.TO_STRING);
            tb5.x(ex7Var, jSONObject, "height", image.c, this.a.t3());
            pa5.q(ex7Var, jSONObject, "indexing_direction", image.d, DivText.Image.IndexingDirection.TO_STRING);
            pa5.p(ex7Var, jSONObject, "preload_required", image.e);
            pa5.p(ex7Var, jSONObject, TtmlNode.START, image.f);
            pa5.q(ex7Var, jSONObject, "tint_color", image.g, ParsingConvertersKt.a);
            pa5.q(ex7Var, jSONObject, "tint_mode", image.h, DivBlendMode.TO_STRING);
            pa5.q(ex7Var, jSONObject, "url", image.i, ParsingConvertersKt.c);
            tb5.x(ex7Var, jSONObject, "width", image.j, this.a.t3());
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
        public DivTextTemplate.ImageTemplate c(ex7 ex7Var, DivTextTemplate.ImageTemplate imageTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "accessibility", zC, imageTemplate != null ? imageTemplate.a : null, this.a.e8());
            y45.i(tp3VarS, "readOptionalField(contex…bilityJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "alignment_vertical", DivTextImageJsonParser.h, zC, imageTemplate != null ? imageTemplate.b : null, DivTextAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "height", zC, imageTemplate != null ? imageTemplate.c : null, this.a.u3());
            y45.i(tp3VarS2, "readOptionalField(contex…edSizeJsonTemplateParser)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "indexing_direction", DivTextImageJsonParser.i, zC, imageTemplate != null ? imageTemplate.d : null, DivText.Image.IndexingDirection.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…ingDirection.FROM_STRING)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "preload_required", acb.a, zC, imageTemplate != null ? imageTemplate.e : null, ParsingConvertersKt.f);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…Required, ANY_TO_BOOLEAN)");
            tp3 tp3VarJ = ra5.j(ex7VarC, jSONObject, TtmlNode.START, acb.b, zC, imageTemplate != null ? imageTemplate.f : null, ParsingConvertersKt.h, DivTextImageJsonParser.k);
            y45.i(tp3VarJ, "readFieldWithExpression(…_TO_INT, START_VALIDATOR)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "tint_color", acb.f, zC, imageTemplate != null ? imageTemplate.g : null, ParsingConvertersKt.b);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "tint_mode", DivTextImageJsonParser.j, zC, imageTemplate != null ? imageTemplate.h : null, DivBlendMode.FROM_STRING);
            y45.i(tp3VarU5, "readOptionalFieldWithExp…DivBlendMode.FROM_STRING)");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "url", acb.e, zC, imageTemplate != null ? imageTemplate.i : null, ParsingConvertersKt.e);
            y45.i(tp3VarI, "readFieldWithExpression(… parent?.url, ANY_TO_URI)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "width", zC, imageTemplate != null ? imageTemplate.j : null, this.a.u3());
            y45.i(tp3VarS3, "readOptionalField(contex…edSizeJsonTemplateParser)");
            return new DivTextTemplate.ImageTemplate(tp3VarS, tp3VarU, tp3VarS2, tp3VarU2, tp3VarU3, tp3VarJ, tp3VarU4, tp3VarU5, tp3VarI, tp3VarS3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextTemplate.ImageTemplate imageTemplate) {
            y45.j(ex7Var, "context");
            y45.j(imageTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "accessibility", imageTemplate.a, this.a.e8());
            ra5.E(ex7Var, jSONObject, "alignment_vertical", imageTemplate.b, DivTextAlignmentVertical.TO_STRING);
            ra5.I(ex7Var, jSONObject, "height", imageTemplate.c, this.a.u3());
            ra5.E(ex7Var, jSONObject, "indexing_direction", imageTemplate.d, DivText.Image.IndexingDirection.TO_STRING);
            ra5.D(ex7Var, jSONObject, "preload_required", imageTemplate.e);
            ra5.D(ex7Var, jSONObject, TtmlNode.START, imageTemplate.f);
            ra5.E(ex7Var, jSONObject, "tint_color", imageTemplate.g, ParsingConvertersKt.a);
            ra5.E(ex7Var, jSONObject, "tint_mode", imageTemplate.h, DivBlendMode.TO_STRING);
            ra5.E(ex7Var, jSONObject, "url", imageTemplate.i, ParsingConvertersKt.c);
            ra5.I(ex7Var, jSONObject, "width", imageTemplate.j, this.a.u3());
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
        public DivText.Image a(ex7 ex7Var, DivTextTemplate.ImageTemplate imageTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(imageTemplate, "template");
            y45.j(jSONObject, "data");
            DivText.Image.Accessibility accessibility = (DivText.Image.Accessibility) sa5.p(ex7Var, imageTemplate.a, jSONObject, "accessibility", this.a.f8(), this.a.d8());
            tp3 tp3Var = imageTemplate.b;
            zbb zbbVar = DivTextImageJsonParser.h;
            e74 e74Var = DivTextAlignmentVertical.FROM_STRING;
            Expression expression = DivTextImageJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "alignment_vertical", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            DivFixedSize divFixedSize = (DivFixedSize) sa5.p(ex7Var, imageTemplate.c, jSONObject, "height", this.a.v3(), this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = DivTextImageJsonParser.c;
            }
            DivFixedSize divFixedSize2 = divFixedSize;
            y45.i(divFixedSize2, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            tp3 tp3Var2 = imageTemplate.d;
            zbb zbbVar2 = DivTextImageJsonParser.i;
            e74 e74Var2 = DivText.Image.IndexingDirection.FROM_STRING;
            Expression expression2 = DivTextImageJsonParser.d;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var2, jSONObject, "indexing_direction", zbbVar2, e74Var2, expression2);
            if (expressionV2 != null) {
                expression2 = expressionV2;
            }
            tp3 tp3Var3 = imageTemplate.e;
            zbb zbbVar3 = acb.a;
            e74 e74Var3 = ParsingConvertersKt.f;
            Expression expression3 = DivTextImageJsonParser.e;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var3, jSONObject, "preload_required", zbbVar3, e74Var3, expression3);
            if (expressionV3 != null) {
                expression3 = expressionV3;
            }
            Expression expressionI = sa5.i(ex7Var, imageTemplate.f, jSONObject, TtmlNode.START, acb.b, ParsingConvertersKt.h, DivTextImageJsonParser.k);
            y45.i(expressionI, "resolveExpression(contex…_TO_INT, START_VALIDATOR)");
            Expression expressionS = sa5.s(ex7Var, imageTemplate.g, jSONObject, "tint_color", acb.f, ParsingConvertersKt.b);
            tp3 tp3Var4 = imageTemplate.h;
            zbb zbbVar4 = DivTextImageJsonParser.j;
            e74 e74Var4 = DivBlendMode.FROM_STRING;
            Expression expression4 = DivTextImageJsonParser.f;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var4, jSONObject, "tint_mode", zbbVar4, e74Var4, expression4);
            if (expressionV4 != null) {
                expression4 = expressionV4;
            }
            Expression expressionH = sa5.h(ex7Var, imageTemplate.i, jSONObject, "url", acb.e, ParsingConvertersKt.e);
            y45.i(expressionH, "resolveExpression(contex…E_HELPER_URI, ANY_TO_URI)");
            DivFixedSize divFixedSize3 = (DivFixedSize) sa5.p(ex7Var, imageTemplate.j, jSONObject, "width", this.a.v3(), this.a.t3());
            if (divFixedSize3 == null) {
                divFixedSize3 = DivTextImageJsonParser.g;
            }
            y45.i(divFixedSize3, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivText.Image(accessibility, expression, divFixedSize2, expression2, expression3, expressionI, expressionS, expression4, expressionH, divFixedSize3);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(DivTextAlignmentVertical.CENTER);
        c = new DivFixedSize(null, aVar.a(20L), 1, null);
        d = aVar.a(DivText.Image.IndexingDirection.NORMAL);
        e = aVar.a(Boolean.FALSE);
        f = aVar.a(DivBlendMode.SOURCE_IN);
        g = new DivFixedSize(null, aVar.a(20L), 1, null);
        zbb.a aVar2 = zbb.a;
        h = aVar2.a(hi.W(DivTextAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivTextAlignmentVertical);
            }
        });
        i = aVar2.a(hi.W(DivText.Image.IndexingDirection.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivText.Image.IndexingDirection);
            }
        });
        j = aVar2.a(hi.W(DivBlendMode.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivBlendMode);
            }
        });
        k = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivTextImageJsonParser.b(((Long) obj).longValue());
            }
        };
    }

    public static final boolean b(long j2) {
        return j2 >= 0;
    }
}
