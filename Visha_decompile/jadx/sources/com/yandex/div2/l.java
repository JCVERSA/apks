package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.e74;
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
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class l {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(Boolean.TRUE);

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
        public DivActionSetState a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionD = pa5.d(ex7Var, jSONObject, "state_id", acb.c);
            y45.i(expressionD, "readExpression(context, …_id\", TYPE_HELPER_STRING)");
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = l.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "temporary", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            return new DivActionSetState(expressionD, expression);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionSetState divActionSetState) {
            y45.j(ex7Var, "context");
            y45.j(divActionSetState, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "state_id", divActionSetState.a);
            pa5.p(ex7Var, jSONObject, "temporary", divActionSetState.b);
            tb5.v(ex7Var, jSONObject, "type", "set_state");
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
        public DivActionSetStateTemplate c(ex7 ex7Var, DivActionSetStateTemplate divActionSetStateTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "state_id", acb.c, zC, divActionSetStateTemplate != null ? divActionSetStateTemplate.a : null);
            y45.i(tp3VarH, "readFieldWithExpression(…verride, parent?.stateId)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "temporary", acb.a, zC, divActionSetStateTemplate != null ? divActionSetStateTemplate.b : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…emporary, ANY_TO_BOOLEAN)");
            return new DivActionSetStateTemplate(tp3VarH, tp3VarU);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionSetStateTemplate divActionSetStateTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divActionSetStateTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "state_id", divActionSetStateTemplate.a);
            ra5.D(ex7Var, jSONObject, "temporary", divActionSetStateTemplate.b);
            tb5.v(ex7Var, jSONObject, "type", "set_state");
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
        public DivActionSetState a(ex7 ex7Var, DivActionSetStateTemplate divActionSetStateTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divActionSetStateTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionG = sa5.g(ex7Var, divActionSetStateTemplate.a, jSONObject, "state_id", acb.c);
            y45.i(expressionG, "resolveExpression(contex…_id\", TYPE_HELPER_STRING)");
            tp3 tp3Var = divActionSetStateTemplate.b;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = l.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "temporary", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            return new DivActionSetState(expressionG, expression);
        }
    }
}
