package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivPatchJsonParser;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hb0;
import defpackage.hi;
import defpackage.hm5;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zbb;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivPatchJsonParser {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(DivPatch.Mode.PARTIAL);
    public static final zbb c = zbb.a.a(hi.W(DivPatch.Mode.values()), new e74() {
        @Override
        public final Boolean invoke(Object obj) {
            y45.j(obj, "it");
            return Boolean.valueOf(obj instanceof DivPatch.Mode);
        }
    });
    public static final hm5 d = new hm5() {
        @Override
        public final boolean a(List list) {
            return DivPatchJsonParser.b(list);
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
        public DivPatch a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            List listJ = tb5.j(ex7Var, jSONObject, "changes", this.a.C5(), DivPatchJsonParser.d);
            y45.i(listJ, "readList(context, data, …arser, CHANGES_VALIDATOR)");
            zbb zbbVar = DivPatchJsonParser.c;
            e74 e74Var = DivPatch.Mode.FROM_STRING;
            Expression expression = DivPatchJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, hb0.KEY_NAME_MODE, zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            return new DivPatch(listJ, expression, tb5.r(ex7Var, jSONObject, "on_applied_actions", this.a.u0()), tb5.r(ex7Var, jSONObject, "on_failed_actions", this.a.u0()));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivPatch divPatch) {
            y45.j(ex7Var, "context");
            y45.j(divPatch, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.z(ex7Var, jSONObject, "changes", divPatch.a, this.a.C5());
            pa5.q(ex7Var, jSONObject, hb0.KEY_NAME_MODE, divPatch.b, DivPatch.Mode.TO_STRING);
            tb5.z(ex7Var, jSONObject, "on_applied_actions", divPatch.c, this.a.u0());
            tb5.z(ex7Var, jSONObject, "on_failed_actions", divPatch.d, this.a.u0());
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
        public DivPatchTemplate c(ex7 ex7Var, DivPatchTemplate divPatchTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3Var = divPatchTemplate != null ? divPatchTemplate.a : null;
            yi5 yi5VarD5 = this.a.D5();
            hm5 hm5Var = DivPatchJsonParser.d;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarM = ra5.m(ex7VarC, jSONObject, "changes", zC, tp3Var, yi5VarD5, hm5Var);
            y45.i(tp3VarM, "readListField(context, d…CHANGES_VALIDATOR.cast())");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, hb0.KEY_NAME_MODE, DivPatchJsonParser.c, zC, divPatchTemplate != null ? divPatchTemplate.b : null, DivPatch.Mode.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ivPatch.Mode.FROM_STRING)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "on_applied_actions", zC, divPatchTemplate != null ? divPatchTemplate.c : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "on_failed_actions", zC, divPatchTemplate != null ? divPatchTemplate.d : null, this.a.v0());
            y45.i(tp3VarZ2, "readOptionalListField(co…ActionJsonTemplateParser)");
            return new DivPatchTemplate(tp3VarM, tp3VarU, tp3VarZ, tp3VarZ2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivPatchTemplate divPatchTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divPatchTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.K(ex7Var, jSONObject, "changes", divPatchTemplate.a, this.a.D5());
            ra5.E(ex7Var, jSONObject, hb0.KEY_NAME_MODE, divPatchTemplate.b, DivPatch.Mode.TO_STRING);
            ra5.K(ex7Var, jSONObject, "on_applied_actions", divPatchTemplate.c, this.a.v0());
            ra5.K(ex7Var, jSONObject, "on_failed_actions", divPatchTemplate.d, this.a.v0());
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
        public DivPatch a(ex7 ex7Var, DivPatchTemplate divPatchTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divPatchTemplate, "template");
            y45.j(jSONObject, "data");
            List listL = sa5.l(ex7Var, divPatchTemplate.a, jSONObject, "changes", this.a.E5(), this.a.C5(), DivPatchJsonParser.d);
            y45.i(listL, "resolveList(context, tem…arser, CHANGES_VALIDATOR)");
            tp3 tp3Var = divPatchTemplate.b;
            zbb zbbVar = DivPatchJsonParser.c;
            e74 e74Var = DivPatch.Mode.FROM_STRING;
            Expression expression = DivPatchJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, hb0.KEY_NAME_MODE, zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            return new DivPatch(listL, expression, sa5.B(ex7Var, divPatchTemplate.c, jSONObject, "on_applied_actions", this.a.w0(), this.a.u0()), sa5.B(ex7Var, divPatchTemplate.d, jSONObject, "on_failed_actions", this.a.w0(), this.a.u0()));
        }
    }

    public static final boolean b(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
