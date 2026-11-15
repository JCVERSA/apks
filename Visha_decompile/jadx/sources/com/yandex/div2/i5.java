package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class i5 implements pd9, w92 {
    public final JsonParserComponent a;

    public i5(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivVideoSource a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionI = pa5.i(ex7Var, jSONObject, "bitrate", acb.b, ParsingConvertersKt.h);
        Expression expressionD = pa5.d(ex7Var, jSONObject, "mime_type", acb.c);
        y45.i(expressionD, "readExpression(context, …ype\", TYPE_HELPER_STRING)");
        DivVideoSource.Resolution resolution = (DivVideoSource.Resolution) tb5.n(ex7Var, jSONObject, "resolution", this.a.n9());
        Expression expressionE = pa5.e(ex7Var, jSONObject, "url", acb.e, ParsingConvertersKt.e);
        y45.i(expressionE, "readExpression(context, …E_HELPER_URI, ANY_TO_URI)");
        return new DivVideoSource(expressionI, expressionD, resolution, expressionE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivVideoSource divVideoSource) {
        y45.j(ex7Var, "context");
        y45.j(divVideoSource, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "bitrate", divVideoSource.a);
        pa5.p(ex7Var, jSONObject, "mime_type", divVideoSource.b);
        tb5.x(ex7Var, jSONObject, "resolution", divVideoSource.c, this.a.n9());
        tb5.v(ex7Var, jSONObject, "type", "video_source");
        pa5.q(ex7Var, jSONObject, "url", divVideoSource.d, ParsingConvertersKt.c);
        return jSONObject;
    }
}
