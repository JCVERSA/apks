package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivVideoSourceTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class su2 implements pd9, gfa {
    public final JsonParserComponent a;

    public su2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivVideoSourceTemplate c(ex7 ex7Var, DivVideoSourceTemplate divVideoSourceTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "bitrate", acb.b, zC, divVideoSourceTemplate != null ? divVideoSourceTemplate.a : null, ParsingConvertersKt.h);
        y45.i(tp3VarU, "readOptionalFieldWithExp…?.bitrate, NUMBER_TO_INT)");
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "mime_type", acb.c, zC, divVideoSourceTemplate != null ? divVideoSourceTemplate.b : null);
        y45.i(tp3VarH, "readFieldWithExpression(…erride, parent?.mimeType)");
        tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "resolution", zC, divVideoSourceTemplate != null ? divVideoSourceTemplate.c : null, this.a.o9());
        y45.i(tp3VarS, "readOptionalField(contex…lutionJsonTemplateParser)");
        tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "url", acb.e, zC, divVideoSourceTemplate != null ? divVideoSourceTemplate.d : null, ParsingConvertersKt.e);
        y45.i(tp3VarI, "readFieldWithExpression(… parent?.url, ANY_TO_URI)");
        return new DivVideoSourceTemplate(tp3VarU, tp3VarH, tp3VarS, tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivVideoSourceTemplate divVideoSourceTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divVideoSourceTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "bitrate", divVideoSourceTemplate.a);
        ra5.D(ex7Var, jSONObject, "mime_type", divVideoSourceTemplate.b);
        ra5.I(ex7Var, jSONObject, "resolution", divVideoSourceTemplate.c, this.a.o9());
        tb5.v(ex7Var, jSONObject, "type", "video_source");
        ra5.E(ex7Var, jSONObject, "url", divVideoSourceTemplate.d, ParsingConvertersKt.c);
        return jSONObject;
    }
}
