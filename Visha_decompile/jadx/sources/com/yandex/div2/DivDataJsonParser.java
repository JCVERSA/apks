package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivDataJsonParser;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
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

public abstract class DivDataJsonParser {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(DivTransitionSelector.NONE);
    public static final zbb c = zbb.a.a(hi.W(DivTransitionSelector.values()), new e74() {
        @Override
        public final Boolean invoke(Object obj) {
            y45.j(obj, "it");
            return Boolean.valueOf(obj instanceof DivTransitionSelector);
        }
    });
    public static final hm5 d = new hm5() {
        @Override
        public final boolean a(List list) {
            return DivDataJsonParser.b(list);
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
        public DivData a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            ex7 ex7VarA = fx7.a(ex7Var);
            List listR = tb5.r(ex7VarA, jSONObject, "functions", this.a.F3());
            Object objD = tb5.d(ex7VarA, jSONObject, "log_id");
            y45.i(objD, "read(context, data, \"log_id\")");
            String str = (String) objD;
            List listJ = tb5.j(ex7VarA, jSONObject, "states", this.a.D2(), DivDataJsonParser.d);
            y45.i(listJ, "readList(context, data, …Parser, STATES_VALIDATOR)");
            List listR2 = tb5.r(ex7VarA, jSONObject, "timers", this.a.G8());
            zbb zbbVar = DivDataJsonParser.c;
            e74 e74Var = DivTransitionSelector.FROM_STRING;
            Expression expression = DivDataJsonParser.b;
            Expression expressionL = pa5.l(ex7VarA, jSONObject, "transition_animation_selector", zbbVar, e74Var, expression);
            return new DivData(listR, str, listJ, listR2, expressionL == null ? expression : expressionL, tb5.r(ex7VarA, jSONObject, "variable_triggers", this.a.Y8()), tb5.r(ex7VarA, jSONObject, "variables", this.a.e9()), fx7.b(ex7VarA));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivData divData) {
            y45.j(ex7Var, "context");
            y45.j(divData, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.z(ex7Var, jSONObject, "functions", divData.a, this.a.F3());
            tb5.v(ex7Var, jSONObject, "log_id", divData.b);
            tb5.z(ex7Var, jSONObject, "states", divData.c, this.a.D2());
            tb5.z(ex7Var, jSONObject, "timers", divData.d, this.a.G8());
            pa5.q(ex7Var, jSONObject, "transition_animation_selector", divData.e, DivTransitionSelector.TO_STRING);
            tb5.z(ex7Var, jSONObject, "variable_triggers", divData.f, this.a.Y8());
            tb5.z(ex7Var, jSONObject, "variables", divData.g, this.a.e9());
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
        public DivDataTemplate c(ex7 ex7Var, DivDataTemplate divDataTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "functions", zC, divDataTemplate != null ? divDataTemplate.a : null, this.a.G3());
            y45.i(tp3VarZ, "readOptionalListField(co…nctionJsonTemplateParser)");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "log_id", zC, divDataTemplate != null ? divDataTemplate.b : null);
            y45.i(tp3VarC, "readField(context, data,…wOverride, parent?.logId)");
            tp3 tp3Var = divDataTemplate != null ? divDataTemplate.c : null;
            yi5 yi5VarE2 = this.a.E2();
            hm5 hm5Var = DivDataJsonParser.d;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarM = ra5.m(ex7VarC, jSONObject, "states", zC, tp3Var, yi5VarE2, hm5Var);
            y45.i(tp3VarM, "readListField(context, d… STATES_VALIDATOR.cast())");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "timers", zC, divDataTemplate != null ? divDataTemplate.d : null, this.a.H8());
            y45.i(tp3VarZ2, "readOptionalListField(co…vTimerJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "transition_animation_selector", DivDataJsonParser.c, zC, divDataTemplate != null ? divDataTemplate.e : null, DivTransitionSelector.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…tionSelector.FROM_STRING)");
            tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "variable_triggers", zC, divDataTemplate != null ? divDataTemplate.f : null, this.a.Z8());
            y45.i(tp3VarZ3, "readOptionalListField(co…riggerJsonTemplateParser)");
            tp3 tp3VarZ4 = ra5.z(ex7VarC, jSONObject, "variables", zC, divDataTemplate != null ? divDataTemplate.g : null, this.a.f9());
            y45.i(tp3VarZ4, "readOptionalListField(co…riableJsonTemplateParser)");
            return new DivDataTemplate(tp3VarZ, tp3VarC, tp3VarM, tp3VarZ2, tp3VarU, tp3VarZ3, tp3VarZ4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivDataTemplate divDataTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divDataTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.K(ex7Var, jSONObject, "functions", divDataTemplate.a, this.a.G3());
            ra5.G(ex7Var, jSONObject, "log_id", divDataTemplate.b);
            ra5.K(ex7Var, jSONObject, "states", divDataTemplate.c, this.a.E2());
            ra5.K(ex7Var, jSONObject, "timers", divDataTemplate.d, this.a.H8());
            ra5.E(ex7Var, jSONObject, "transition_animation_selector", divDataTemplate.e, DivTransitionSelector.TO_STRING);
            ra5.K(ex7Var, jSONObject, "variable_triggers", divDataTemplate.f, this.a.Z8());
            ra5.K(ex7Var, jSONObject, "variables", divDataTemplate.g, this.a.f9());
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
        public DivData a(ex7 ex7Var, DivDataTemplate divDataTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divDataTemplate, "template");
            y45.j(jSONObject, "data");
            List listB = sa5.B(ex7Var, divDataTemplate.a, jSONObject, "functions", this.a.H3(), this.a.F3());
            Object objA = sa5.a(ex7Var, divDataTemplate.b, jSONObject, "log_id");
            y45.i(objA, "resolve(context, template.logId, data, \"log_id\")");
            String str = (String) objA;
            List listL = sa5.l(ex7Var, divDataTemplate.c, jSONObject, "states", this.a.F2(), this.a.D2(), DivDataJsonParser.d);
            y45.i(listL, "resolveList(context, tem…Parser, STATES_VALIDATOR)");
            List listB2 = sa5.B(ex7Var, divDataTemplate.d, jSONObject, "timers", this.a.I8(), this.a.G8());
            tp3 tp3Var = divDataTemplate.e;
            zbb zbbVar = DivDataJsonParser.c;
            e74 e74Var = DivTransitionSelector.FROM_STRING;
            Expression expression = DivDataJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "transition_animation_selector", zbbVar, e74Var, expression);
            return new DivData(listB, str, listL, listB2, expressionV == null ? expression : expressionV, sa5.B(ex7Var, divDataTemplate.f, jSONObject, "variable_triggers", this.a.a9(), this.a.Y8()), sa5.B(ex7Var, divDataTemplate.g, jSONObject, "variables", this.a.g9(), this.a.e9()), null, 128, null);
        }
    }

    public static final boolean b(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
