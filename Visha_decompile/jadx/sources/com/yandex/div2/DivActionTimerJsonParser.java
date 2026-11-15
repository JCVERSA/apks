package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivActionTimerJsonParser {
    public static final a a = new a(null);
    public static final zbb b = zbb.a.a(hi.W(DivActionTimer.Action.values()), new e74() {
        @Override
        public final Boolean invoke(Object obj) {
            y45.j(obj, "it");
            return Boolean.valueOf(obj instanceof DivActionTimer.Action);
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
        public DivActionTimer a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionE = pa5.e(ex7Var, jSONObject, "action", DivActionTimerJsonParser.b, DivActionTimer.Action.FROM_STRING);
            y45.i(expressionE, "readExpression(context, …Timer.Action.FROM_STRING)");
            Expression expressionD = pa5.d(ex7Var, jSONObject, TtmlNode.ATTR_ID, acb.c);
            y45.i(expressionD, "readExpression(context, …\"id\", TYPE_HELPER_STRING)");
            return new DivActionTimer(expressionE, expressionD);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionTimer divActionTimer) {
            y45.j(ex7Var, "context");
            y45.j(divActionTimer, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "action", divActionTimer.a, DivActionTimer.Action.TO_STRING);
            pa5.p(ex7Var, jSONObject, TtmlNode.ATTR_ID, divActionTimer.b);
            tb5.v(ex7Var, jSONObject, "type", "timer");
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
        public DivActionTimerTemplate c(ex7 ex7Var, DivActionTimerTemplate divActionTimerTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "action", DivActionTimerJsonParser.b, zC, divActionTimerTemplate != null ? divActionTimerTemplate.a : null, DivActionTimer.Action.FROM_STRING);
            y45.i(tp3VarI, "readFieldWithExpression(…Timer.Action.FROM_STRING)");
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, TtmlNode.ATTR_ID, acb.c, zC, divActionTimerTemplate != null ? divActionTimerTemplate.b : null);
            y45.i(tp3VarH, "readFieldWithExpression(…llowOverride, parent?.id)");
            return new DivActionTimerTemplate(tp3VarI, tp3VarH);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionTimerTemplate divActionTimerTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divActionTimerTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "action", divActionTimerTemplate.a, DivActionTimer.Action.TO_STRING);
            ra5.D(ex7Var, jSONObject, TtmlNode.ATTR_ID, divActionTimerTemplate.b);
            tb5.v(ex7Var, jSONObject, "type", "timer");
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
        public DivActionTimer a(ex7 ex7Var, DivActionTimerTemplate divActionTimerTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divActionTimerTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionH = sa5.h(ex7Var, divActionTimerTemplate.a, jSONObject, "action", DivActionTimerJsonParser.b, DivActionTimer.Action.FROM_STRING);
            y45.i(expressionH, "resolveExpression(contex…Timer.Action.FROM_STRING)");
            Expression expressionG = sa5.g(ex7Var, divActionTimerTemplate.b, jSONObject, TtmlNode.ATTR_ID, acb.c);
            y45.i(expressionG, "resolveExpression(contex…\"id\", TYPE_HELPER_STRING)");
            return new DivActionTimer(expressionH, expressionG);
        }
    }
}
