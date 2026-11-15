package com.yandex.div2;

import com.yandex.div2.x;
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

public abstract class x {
    public static final a a = new a(null);
    public static final hm5 b = new hm5() {
        @Override
        public final boolean a(List list) {
            return x.b(list);
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
        public DivAppearanceSetTransition a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            List listJ = tb5.j(ex7Var, jSONObject, "items", this.a.w1(), x.b);
            y45.i(listJ, "readList(context, data, …yParser, ITEMS_VALIDATOR)");
            return new DivAppearanceSetTransition(listJ);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivAppearanceSetTransition divAppearanceSetTransition) {
            y45.j(ex7Var, "context");
            y45.j(divAppearanceSetTransition, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.z(ex7Var, jSONObject, "items", divAppearanceSetTransition.a, this.a.w1());
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
        public DivAppearanceSetTransitionTemplate c(ex7 ex7Var, DivAppearanceSetTransitionTemplate divAppearanceSetTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3Var = divAppearanceSetTransitionTemplate != null ? divAppearanceSetTransitionTemplate.a : null;
            yi5 yi5VarX1 = this.a.x1();
            hm5 hm5Var = x.b;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarM = ra5.m(ex7VarC, jSONObject, "items", zC, tp3Var, yi5VarX1, hm5Var);
            y45.i(tp3VarM, "readListField(context, d…, ITEMS_VALIDATOR.cast())");
            return new DivAppearanceSetTransitionTemplate(tp3VarM);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivAppearanceSetTransitionTemplate divAppearanceSetTransitionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divAppearanceSetTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.K(ex7Var, jSONObject, "items", divAppearanceSetTransitionTemplate.a, this.a.x1());
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
        public DivAppearanceSetTransition a(ex7 ex7Var, DivAppearanceSetTransitionTemplate divAppearanceSetTransitionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divAppearanceSetTransitionTemplate, "template");
            y45.j(jSONObject, "data");
            List listL = sa5.l(ex7Var, divAppearanceSetTransitionTemplate.a, jSONObject, "items", this.a.y1(), this.a.w1(), x.b);
            y45.i(listL, "resolveList(context, tem…yParser, ITEMS_VALIDATOR)");
            return new DivAppearanceSetTransition(listL);
        }
    }

    public static final boolean b(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
