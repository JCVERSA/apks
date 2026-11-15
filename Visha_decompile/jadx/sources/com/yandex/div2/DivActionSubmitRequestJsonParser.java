package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hi;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
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

public abstract class DivActionSubmitRequestJsonParser {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(DivActionSubmit.Request.Method.POST);
    public static final zbb c = zbb.a.a(hi.W(DivActionSubmit.Request.Method.values()), new e74() {
        @Override
        public final Boolean invoke(Object obj) {
            y45.j(obj, "it");
            return Boolean.valueOf(obj instanceof DivActionSubmit.Request.Method);
        }
    });

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
        public DivActionSubmit.Request a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            List listR = tb5.r(ex7Var, jSONObject, "headers", this.a.Y0());
            zbb zbbVar = DivActionSubmitRequestJsonParser.c;
            e74 e74Var = DivActionSubmit.Request.Method.FROM_STRING;
            Expression expression = DivActionSubmitRequestJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "method", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            Expression expressionE = pa5.e(ex7Var, jSONObject, "url", acb.e, ParsingConvertersKt.e);
            y45.i(expressionE, "readExpression(context, …E_HELPER_URI, ANY_TO_URI)");
            return new DivActionSubmit.Request(listR, expression, expressionE);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionSubmit.Request request) {
            y45.j(ex7Var, "context");
            y45.j(request, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.z(ex7Var, jSONObject, "headers", request.a, this.a.Y0());
            pa5.q(ex7Var, jSONObject, "method", request.b, DivActionSubmit.Request.Method.TO_STRING);
            pa5.q(ex7Var, jSONObject, "url", request.c, ParsingConvertersKt.c);
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
        public DivActionSubmitTemplate.RequestTemplate c(ex7 ex7Var, DivActionSubmitTemplate.RequestTemplate requestTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "headers", zC, requestTemplate != null ? requestTemplate.a : null, this.a.Z0());
            y45.i(tp3VarZ, "readOptionalListField(co…HeaderJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "method", DivActionSubmitRequestJsonParser.c, zC, requestTemplate != null ? requestTemplate.b : null, DivActionSubmit.Request.Method.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…quest.Method.FROM_STRING)");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "url", acb.e, zC, requestTemplate != null ? requestTemplate.c : null, ParsingConvertersKt.e);
            y45.i(tp3VarI, "readFieldWithExpression(… parent?.url, ANY_TO_URI)");
            return new DivActionSubmitTemplate.RequestTemplate(tp3VarZ, tp3VarU, tp3VarI);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionSubmitTemplate.RequestTemplate requestTemplate) {
            y45.j(ex7Var, "context");
            y45.j(requestTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.K(ex7Var, jSONObject, "headers", requestTemplate.a, this.a.Z0());
            ra5.E(ex7Var, jSONObject, "method", requestTemplate.b, DivActionSubmit.Request.Method.TO_STRING);
            ra5.E(ex7Var, jSONObject, "url", requestTemplate.c, ParsingConvertersKt.c);
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
        public DivActionSubmit.Request a(ex7 ex7Var, DivActionSubmitTemplate.RequestTemplate requestTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(requestTemplate, "template");
            y45.j(jSONObject, "data");
            List listB = sa5.B(ex7Var, requestTemplate.a, jSONObject, "headers", this.a.a1(), this.a.Y0());
            tp3 tp3Var = requestTemplate.b;
            zbb zbbVar = DivActionSubmitRequestJsonParser.c;
            e74 e74Var = DivActionSubmit.Request.Method.FROM_STRING;
            Expression expression = DivActionSubmitRequestJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "method", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            Expression expressionH = sa5.h(ex7Var, requestTemplate.c, jSONObject, "url", acb.e, ParsingConvertersKt.e);
            y45.i(expressionH, "resolveExpression(contex…E_HELPER_URI, ANY_TO_URI)");
            return new DivActionSubmit.Request(listB, expression, expressionH);
        }
    }
}
