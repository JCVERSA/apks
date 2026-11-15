package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivTriggerJsonParser;
import defpackage.acb;
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

public abstract class DivTriggerJsonParser {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(DivTrigger.Mode.ON_CONDITION);
    public static final zbb c = zbb.a.a(hi.W(DivTrigger.Mode.values()), new e74() {
        @Override
        public final Boolean invoke(Object obj) {
            y45.j(obj, "it");
            return Boolean.valueOf(obj instanceof DivTrigger.Mode);
        }
    });
    public static final hm5 d = new hm5() {
        @Override
        public final boolean a(List list) {
            return DivTriggerJsonParser.b(list);
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
        public DivTrigger a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            List listJ = tb5.j(ex7Var, jSONObject, "actions", this.a.u0(), DivTriggerJsonParser.d);
            y45.i(listJ, "readList(context, data, …arser, ACTIONS_VALIDATOR)");
            Expression expressionE = pa5.e(ex7Var, jSONObject, "condition", acb.a, ParsingConvertersKt.f);
            y45.i(expressionE, "readExpression(context, …_BOOLEAN, ANY_TO_BOOLEAN)");
            zbb zbbVar = DivTriggerJsonParser.c;
            e74 e74Var = DivTrigger.Mode.FROM_STRING;
            Expression expression = DivTriggerJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, hb0.KEY_NAME_MODE, zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            return new DivTrigger(listJ, expressionE, expression);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTrigger divTrigger) {
            y45.j(ex7Var, "context");
            y45.j(divTrigger, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.z(ex7Var, jSONObject, "actions", divTrigger.a, this.a.u0());
            pa5.p(ex7Var, jSONObject, "condition", divTrigger.b);
            pa5.q(ex7Var, jSONObject, hb0.KEY_NAME_MODE, divTrigger.c, DivTrigger.Mode.TO_STRING);
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
        public DivTriggerTemplate c(ex7 ex7Var, DivTriggerTemplate divTriggerTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3Var = divTriggerTemplate != null ? divTriggerTemplate.a : null;
            yi5 yi5VarV0 = this.a.v0();
            hm5 hm5Var = DivTriggerJsonParser.d;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarM = ra5.m(ex7VarC, jSONObject, "actions", zC, tp3Var, yi5VarV0, hm5Var);
            y45.i(tp3VarM, "readListField(context, d…ACTIONS_VALIDATOR.cast())");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "condition", acb.a, zC, divTriggerTemplate != null ? divTriggerTemplate.b : null, ParsingConvertersKt.f);
            y45.i(tp3VarI, "readFieldWithExpression(…ondition, ANY_TO_BOOLEAN)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, hb0.KEY_NAME_MODE, DivTriggerJsonParser.c, zC, divTriggerTemplate != null ? divTriggerTemplate.c : null, DivTrigger.Mode.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…Trigger.Mode.FROM_STRING)");
            return new DivTriggerTemplate(tp3VarM, tp3VarI, tp3VarU);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTriggerTemplate divTriggerTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divTriggerTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.K(ex7Var, jSONObject, "actions", divTriggerTemplate.a, this.a.v0());
            ra5.D(ex7Var, jSONObject, "condition", divTriggerTemplate.b);
            ra5.E(ex7Var, jSONObject, hb0.KEY_NAME_MODE, divTriggerTemplate.c, DivTrigger.Mode.TO_STRING);
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
        public DivTrigger a(ex7 ex7Var, DivTriggerTemplate divTriggerTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divTriggerTemplate, "template");
            y45.j(jSONObject, "data");
            List listL = sa5.l(ex7Var, divTriggerTemplate.a, jSONObject, "actions", this.a.w0(), this.a.u0(), DivTriggerJsonParser.d);
            y45.i(listL, "resolveList(context, tem…arser, ACTIONS_VALIDATOR)");
            Expression expressionH = sa5.h(ex7Var, divTriggerTemplate.b, jSONObject, "condition", acb.a, ParsingConvertersKt.f);
            y45.i(expressionH, "resolveExpression(contex…_BOOLEAN, ANY_TO_BOOLEAN)");
            tp3 tp3Var = divTriggerTemplate.c;
            zbb zbbVar = DivTriggerJsonParser.c;
            e74 e74Var = DivTrigger.Mode.FROM_STRING;
            Expression expression = DivTriggerJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, hb0.KEY_NAME_MODE, zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            return new DivTrigger(listL, expressionH, expression);
        }
    }

    public static final boolean b(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
