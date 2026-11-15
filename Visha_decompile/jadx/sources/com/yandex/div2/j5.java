package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.y45;
import org.json.JSONObject;

public final class j5 implements lga {
    public final JsonParserComponent a;

    public j5(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivVideoSource a(ex7 ex7Var, DivVideoSourceTemplate divVideoSourceTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divVideoSourceTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionS = sa5.s(ex7Var, divVideoSourceTemplate.a, jSONObject, "bitrate", acb.b, ParsingConvertersKt.h);
        Expression expressionG = sa5.g(ex7Var, divVideoSourceTemplate.b, jSONObject, "mime_type", acb.c);
        y45.i(expressionG, "resolveExpression(contex…ype\", TYPE_HELPER_STRING)");
        DivVideoSource.Resolution resolution = (DivVideoSource.Resolution) sa5.p(ex7Var, divVideoSourceTemplate.c, jSONObject, "resolution", this.a.p9(), this.a.n9());
        Expression expressionH = sa5.h(ex7Var, divVideoSourceTemplate.d, jSONObject, "url", acb.e, ParsingConvertersKt.e);
        y45.i(expressionH, "resolveExpression(contex…E_HELPER_URI, ANY_TO_URI)");
        return new DivVideoSource(expressionS, expressionG, resolution, expressionH);
    }
}
