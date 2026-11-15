package com.yandex.div2;

import com.hisavana.common.tracking.TrackingKey;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class f4 {
    public static final a a = new a(null);
    public static final DivFixedSize b;
    public static final DivFixedSize c;

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
        public DivTabs.TabTitleDelimiter a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivFixedSize divFixedSize = (DivFixedSize) tb5.n(ex7Var, jSONObject, "height", this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = f4.b;
            }
            y45.i(divFixedSize, "JsonPropertyParser.readO…) ?: HEIGHT_DEFAULT_VALUE");
            Expression expressionE = pa5.e(ex7Var, jSONObject, TrackingKey.IMAGE_URL, acb.e, ParsingConvertersKt.e);
            y45.i(expressionE, "readExpression(context, …E_HELPER_URI, ANY_TO_URI)");
            DivFixedSize divFixedSize2 = (DivFixedSize) tb5.n(ex7Var, jSONObject, "width", this.a.t3());
            if (divFixedSize2 == null) {
                divFixedSize2 = f4.c;
            }
            y45.i(divFixedSize2, "JsonPropertyParser.readO…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivTabs.TabTitleDelimiter(divFixedSize, expressionE, divFixedSize2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTabs.TabTitleDelimiter tabTitleDelimiter) {
            y45.j(ex7Var, "context");
            y45.j(tabTitleDelimiter, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "height", tabTitleDelimiter.a, this.a.t3());
            pa5.q(ex7Var, jSONObject, TrackingKey.IMAGE_URL, tabTitleDelimiter.b, ParsingConvertersKt.c);
            tb5.x(ex7Var, jSONObject, "width", tabTitleDelimiter.c, this.a.t3());
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
        public DivTabsTemplate.TabTitleDelimiterTemplate c(ex7 ex7Var, DivTabsTemplate.TabTitleDelimiterTemplate tabTitleDelimiterTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "height", zC, tabTitleDelimiterTemplate != null ? tabTitleDelimiterTemplate.a : null, this.a.u3());
            y45.i(tp3VarS, "readOptionalField(contex…edSizeJsonTemplateParser)");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, TrackingKey.IMAGE_URL, acb.e, zC, tabTitleDelimiterTemplate != null ? tabTitleDelimiterTemplate.b : null, ParsingConvertersKt.e);
            y45.i(tp3VarI, "readFieldWithExpression(…nt?.imageUrl, ANY_TO_URI)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "width", zC, tabTitleDelimiterTemplate != null ? tabTitleDelimiterTemplate.c : null, this.a.u3());
            y45.i(tp3VarS2, "readOptionalField(contex…edSizeJsonTemplateParser)");
            return new DivTabsTemplate.TabTitleDelimiterTemplate(tp3VarS, tp3VarI, tp3VarS2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTabsTemplate.TabTitleDelimiterTemplate tabTitleDelimiterTemplate) {
            y45.j(ex7Var, "context");
            y45.j(tabTitleDelimiterTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "height", tabTitleDelimiterTemplate.a, this.a.u3());
            ra5.E(ex7Var, jSONObject, TrackingKey.IMAGE_URL, tabTitleDelimiterTemplate.b, ParsingConvertersKt.c);
            ra5.I(ex7Var, jSONObject, "width", tabTitleDelimiterTemplate.c, this.a.u3());
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
        public DivTabs.TabTitleDelimiter a(ex7 ex7Var, DivTabsTemplate.TabTitleDelimiterTemplate tabTitleDelimiterTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(tabTitleDelimiterTemplate, "template");
            y45.j(jSONObject, "data");
            DivFixedSize divFixedSize = (DivFixedSize) sa5.p(ex7Var, tabTitleDelimiterTemplate.a, jSONObject, "height", this.a.v3(), this.a.t3());
            if (divFixedSize == null) {
                divFixedSize = f4.b;
            }
            y45.i(divFixedSize, "JsonFieldResolver.resolv…) ?: HEIGHT_DEFAULT_VALUE");
            Expression expressionH = sa5.h(ex7Var, tabTitleDelimiterTemplate.b, jSONObject, TrackingKey.IMAGE_URL, acb.e, ParsingConvertersKt.e);
            y45.i(expressionH, "resolveExpression(contex…E_HELPER_URI, ANY_TO_URI)");
            DivFixedSize divFixedSize2 = (DivFixedSize) sa5.p(ex7Var, tabTitleDelimiterTemplate.c, jSONObject, "width", this.a.v3(), this.a.t3());
            if (divFixedSize2 == null) {
                divFixedSize2 = f4.c;
            }
            y45.i(divFixedSize2, "JsonFieldResolver.resolv…r) ?: WIDTH_DEFAULT_VALUE");
            return new DivTabs.TabTitleDelimiter(divFixedSize, expressionH, divFixedSize2);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = new DivFixedSize(null, aVar.a(12L), 1, null);
        c = new DivFixedSize(null, aVar.a(12L), 1, null);
    }
}
