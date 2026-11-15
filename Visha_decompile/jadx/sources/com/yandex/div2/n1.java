package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.n1;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.lga;
import defpackage.nx7;
import defpackage.pd9;
import defpackage.pnb;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class n1 {
    public static final a a = new a(null);
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return n1.b((String) obj);
        }
    };

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
        public DivFunction a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            List listI = tb5.i(ex7Var, jSONObject, "arguments", this.a.C3());
            y45.i(listI, "readList(context, data, …ArgumentJsonEntityParser)");
            Object objD = tb5.d(ex7Var, jSONObject, TtmlNode.TAG_BODY);
            y45.i(objD, "read(context, data, \"body\")");
            Object objH = tb5.h(ex7Var, jSONObject, "name", n1.b);
            y45.i(objH, "read(context, data, \"name\", NAME_VALIDATOR)");
            Object objE = tb5.e(ex7Var, jSONObject, "return_type", DivEvaluableType.FROM_STRING);
            y45.i(objE, "read(context, data, \"ret…valuableType.FROM_STRING)");
            return new DivFunction(listI, (String) objD, (String) objH, (DivEvaluableType) objE);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivFunction divFunction) {
            y45.j(ex7Var, "context");
            y45.j(divFunction, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.z(ex7Var, jSONObject, "arguments", divFunction.a, this.a.C3());
            tb5.v(ex7Var, jSONObject, TtmlNode.TAG_BODY, divFunction.b);
            tb5.v(ex7Var, jSONObject, "name", divFunction.c);
            tb5.w(ex7Var, jSONObject, "return_type", divFunction.d, DivEvaluableType.TO_STRING);
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
        public DivFunctionTemplate c(ex7 ex7Var, DivFunctionTemplate divFunctionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarL = ra5.l(ex7VarC, jSONObject, "arguments", zC, divFunctionTemplate != null ? divFunctionTemplate.a : null, this.a.D3());
            y45.i(tp3VarL, "readListField(context, d…gumentJsonTemplateParser)");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, TtmlNode.TAG_BODY, zC, divFunctionTemplate != null ? divFunctionTemplate.b : null);
            y45.i(tp3VarC, "readField(context, data,…owOverride, parent?.body)");
            tp3 tp3VarG = ra5.g(ex7VarC, jSONObject, "name", zC, divFunctionTemplate != null ? divFunctionTemplate.c : null, n1.b);
            y45.i(tp3VarG, "readField(context, data,…nt?.name, NAME_VALIDATOR)");
            tp3 tp3VarD = ra5.d(ex7VarC, jSONObject, "return_type", zC, divFunctionTemplate != null ? divFunctionTemplate.d : null, DivEvaluableType.FROM_STRING);
            y45.i(tp3VarD, "readField(context, data,…valuableType.FROM_STRING)");
            return new DivFunctionTemplate(tp3VarL, tp3VarC, tp3VarG, tp3VarD);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivFunctionTemplate divFunctionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divFunctionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.K(ex7Var, jSONObject, "arguments", divFunctionTemplate.a, this.a.D3());
            ra5.G(ex7Var, jSONObject, TtmlNode.TAG_BODY, divFunctionTemplate.b);
            ra5.G(ex7Var, jSONObject, "name", divFunctionTemplate.c);
            ra5.H(ex7Var, jSONObject, "return_type", divFunctionTemplate.d, DivEvaluableType.TO_STRING);
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
        public DivFunction a(ex7 ex7Var, DivFunctionTemplate divFunctionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divFunctionTemplate, "template");
            y45.j(jSONObject, "data");
            List listK = sa5.k(ex7Var, divFunctionTemplate.a, jSONObject, "arguments", this.a.E3(), this.a.C3());
            y45.i(listK, "resolveList(context, tem…ArgumentJsonEntityParser)");
            Object objA = sa5.a(ex7Var, divFunctionTemplate.b, jSONObject, TtmlNode.TAG_BODY);
            y45.i(objA, "resolve(context, template.body, data, \"body\")");
            Object objE = sa5.e(ex7Var, divFunctionTemplate.c, jSONObject, "name", n1.b);
            y45.i(objE, "resolve(context, templat…, \"name\", NAME_VALIDATOR)");
            Object objB = sa5.b(ex7Var, divFunctionTemplate.d, jSONObject, "return_type", DivEvaluableType.FROM_STRING);
            y45.i(objB, "resolve(context, templat…valuableType.FROM_STRING)");
            return new DivFunction(listK, (String) objA, (String) objE, (DivEvaluableType) objB);
        }
    }

    public static final boolean b(String str) {
        y45.j(str, "it");
        return nx7.a(str, "^[a-zA-Z_][a-zA-Z0-9_]*$");
    }
}
