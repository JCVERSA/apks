package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.x4;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.pnb;
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

public abstract class x4 {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(0L);
    public static final pnb c = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return x4.c(((Long) obj).longValue());
        }
    };
    public static final pnb d = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return x4.d(((Long) obj).longValue());
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
        public DivTimer a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = x4.c;
            Expression expression = x4.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            List listR = tb5.r(ex7Var, jSONObject, "end_actions", this.a.u0());
            Object objD = tb5.d(ex7Var, jSONObject, TtmlNode.ATTR_ID);
            y45.i(objD, "read(context, data, \"id\")");
            return new DivTimer(expression, listR, (String) objD, tb5.r(ex7Var, jSONObject, "tick_actions", this.a.u0()), pa5.j(ex7Var, jSONObject, "tick_interval", zbbVar, e74Var, x4.d), (String) tb5.k(ex7Var, jSONObject, "value_variable"));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTimer divTimer) {
            y45.j(ex7Var, "context");
            y45.j(divTimer, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "duration", divTimer.a);
            tb5.z(ex7Var, jSONObject, "end_actions", divTimer.b, this.a.u0());
            tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divTimer.c);
            tb5.z(ex7Var, jSONObject, "tick_actions", divTimer.d, this.a.u0());
            pa5.p(ex7Var, jSONObject, "tick_interval", divTimer.e);
            tb5.v(ex7Var, jSONObject, "value_variable", divTimer.f);
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
        public DivTimerTemplate c(ex7 ex7Var, DivTimerTemplate divTimerTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.b;
            tp3 tp3Var = divTimerTemplate != null ? divTimerTemplate.a : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "duration", zbbVar, zC, tp3Var, e74Var, x4.c);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_INT, DURATION_VALIDATOR)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "end_actions", zC, divTimerTemplate != null ? divTimerTemplate.b : null, this.a.v0());
            y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divTimerTemplate != null ? divTimerTemplate.c : null);
            y45.i(tp3VarC, "readField(context, data,…llowOverride, parent?.id)");
            tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "tick_actions", zC, divTimerTemplate != null ? divTimerTemplate.d : null, this.a.v0());
            y45.i(tp3VarZ2, "readOptionalListField(co…ActionJsonTemplateParser)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "tick_interval", zbbVar, zC, divTimerTemplate != null ? divTimerTemplate.e : null, e74Var, x4.d);
            y45.i(tp3VarV2, "readOptionalFieldWithExp… TICK_INTERVAL_VALIDATOR)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, "value_variable", zC, divTimerTemplate != null ? divTimerTemplate.f : null);
            y45.i(tp3VarP, "readOptionalField(contex…e, parent?.valueVariable)");
            return new DivTimerTemplate(tp3VarV, tp3VarZ, tp3VarC, tp3VarZ2, tp3VarV2, tp3VarP);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTimerTemplate divTimerTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divTimerTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "duration", divTimerTemplate.a);
            ra5.K(ex7Var, jSONObject, "end_actions", divTimerTemplate.b, this.a.v0());
            ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divTimerTemplate.c);
            ra5.K(ex7Var, jSONObject, "tick_actions", divTimerTemplate.d, this.a.v0());
            ra5.D(ex7Var, jSONObject, "tick_interval", divTimerTemplate.e);
            ra5.G(ex7Var, jSONObject, "value_variable", divTimerTemplate.f);
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
        public DivTimer a(ex7 ex7Var, DivTimerTemplate divTimerTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divTimerTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divTimerTemplate.a;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = x4.c;
            Expression expression = x4.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            List listB = sa5.B(ex7Var, divTimerTemplate.b, jSONObject, "end_actions", this.a.w0(), this.a.u0());
            Object objA = sa5.a(ex7Var, divTimerTemplate.c, jSONObject, TtmlNode.ATTR_ID);
            y45.i(objA, "resolve(context, template.id, data, \"id\")");
            return new DivTimer(expression, listB, (String) objA, sa5.B(ex7Var, divTimerTemplate.d, jSONObject, "tick_actions", this.a.w0(), this.a.u0()), sa5.t(ex7Var, divTimerTemplate.e, jSONObject, "tick_interval", zbbVar, e74Var, x4.d), (String) sa5.m(ex7Var, divTimerTemplate.f, jSONObject, "value_variable"));
        }
    }

    public static final boolean c(long j) {
        return j >= 0;
    }

    public static final boolean d(long j) {
        return j > 0;
    }
}
