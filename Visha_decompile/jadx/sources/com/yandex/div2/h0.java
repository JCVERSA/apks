package com.yandex.div2;

import com.yandex.div2.h0;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hm5;
import defpackage.lga;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.yi5;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class h0 {
    public static final a a = new a(null);
    public static final hm5 b = new hm5() {
        @Override
        public final boolean a(List list) {
            return h0.b(list);
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
        public DivChangeSetTransition a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            List listJ = tb5.j(ex7Var, jSONObject, "items", this.a.R1(), h0.b);
            y45.i(listJ, "readList(context, data, …yParser, ITEMS_VALIDATOR)");
            return new DivChangeSetTransition(listJ);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivChangeSetTransition divChangeSetTransition) {
            y45.j(ex7Var, "context");
            y45.j(divChangeSetTransition, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.z(ex7Var, jSONObject, "items", divChangeSetTransition.a, this.a.R1());
            tb5.v(ex7Var, jSONObject, "type", "set");
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
        public DivChangeSetTransitionTemplate c(ex7 ex7Var, DivChangeSetTransitionTemplate divChangeSetTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3Var = divChangeSetTransitionTemplate != null ? divChangeSetTransitionTemplate.a : null;
            yi5 yi5VarS1 = this.a.S1();
            hm5 hm5Var = h0.b;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarM = ra5.m(ex7VarC, jSONObject, "items", zC, tp3Var, yi5VarS1, hm5Var);
            y45.i(tp3VarM, "readListField(context, d…, ITEMS_VALIDATOR.cast())");
            return new DivChangeSetTransitionTemplate(tp3VarM);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivChangeSetTransitionTemplate divChangeSetTransitionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divChangeSetTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.K(ex7Var, jSONObject, "items", divChangeSetTransitionTemplate.a, this.a.S1());
            tb5.v(ex7Var, jSONObject, "type", "set");
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
        public DivChangeSetTransition a(ex7 ex7Var, DivChangeSetTransitionTemplate divChangeSetTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divChangeSetTransitionTemplate, "template");
            y45.j(jSONObject, "data");
            List listL = sa5.l(ex7Var, divChangeSetTransitionTemplate.a, jSONObject, "items", this.a.T1(), this.a.R1(), h0.b);
            y45.i(listL, "resolveList(context, tem…yParser, ITEMS_VALIDATOR)");
            return new DivChangeSetTransition(listL);
        }
    }

    public static final boolean b(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
