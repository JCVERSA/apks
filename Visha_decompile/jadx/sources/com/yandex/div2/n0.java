package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.n0;
import defpackage.acb;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
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
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class n0 {
    public static final a a = new a(null);
    public static final String b = "it";
    public static final hm5 c = new hm5() {
        @Override
        public final boolean a(List list) {
            return n0.b(list);
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
        public DivCollectionItemBuilder a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionD = pa5.d(ex7Var, jSONObject, "data", acb.g);
            y45.i(expressionD, "readExpression(context, …, TYPE_HELPER_JSON_ARRAY)");
            String str = (String) tb5.k(ex7Var, jSONObject, "data_element_name");
            if (str == null) {
                str = n0.b;
            }
            List listJ = tb5.j(ex7Var, jSONObject, "prototypes", this.a.d2(), n0.c);
            y45.i(listJ, "readList(context, data, …er, PROTOTYPES_VALIDATOR)");
            return new DivCollectionItemBuilder(expressionD, str, listJ);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCollectionItemBuilder divCollectionItemBuilder) {
            y45.j(ex7Var, "context");
            y45.j(divCollectionItemBuilder, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "data", divCollectionItemBuilder.a);
            tb5.v(ex7Var, jSONObject, "data_element_name", divCollectionItemBuilder.b);
            tb5.z(ex7Var, jSONObject, "prototypes", divCollectionItemBuilder.c, this.a.d2());
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
        public DivCollectionItemBuilderTemplate c(ex7 ex7Var, DivCollectionItemBuilderTemplate divCollectionItemBuilderTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "data", acb.g, zC, divCollectionItemBuilderTemplate != null ? divCollectionItemBuilderTemplate.a : null);
            y45.i(tp3VarH, "readFieldWithExpression(…owOverride, parent?.data)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, "data_element_name", zC, divCollectionItemBuilderTemplate != null ? divCollectionItemBuilderTemplate.b : null);
            y45.i(tp3VarP, "readOptionalField(contex… parent?.dataElementName)");
            tp3 tp3Var = divCollectionItemBuilderTemplate != null ? divCollectionItemBuilderTemplate.c : null;
            yi5 yi5VarE2 = this.a.e2();
            hm5 hm5Var = n0.c;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarM = ra5.m(ex7VarC, jSONObject, "prototypes", zC, tp3Var, yi5VarE2, hm5Var);
            y45.i(tp3VarM, "readListField(context, d…TOTYPES_VALIDATOR.cast())");
            return new DivCollectionItemBuilderTemplate(tp3VarH, tp3VarP, tp3VarM);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCollectionItemBuilderTemplate divCollectionItemBuilderTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divCollectionItemBuilderTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "data", divCollectionItemBuilderTemplate.a);
            ra5.G(ex7Var, jSONObject, "data_element_name", divCollectionItemBuilderTemplate.b);
            ra5.K(ex7Var, jSONObject, "prototypes", divCollectionItemBuilderTemplate.c, this.a.e2());
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
        public DivCollectionItemBuilder a(ex7 ex7Var, DivCollectionItemBuilderTemplate divCollectionItemBuilderTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divCollectionItemBuilderTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionG = sa5.g(ex7Var, divCollectionItemBuilderTemplate.a, jSONObject, "data", acb.g);
            y45.i(expressionG, "resolveExpression(contex…, TYPE_HELPER_JSON_ARRAY)");
            String str = (String) sa5.m(ex7Var, divCollectionItemBuilderTemplate.b, jSONObject, "data_element_name");
            if (str == null) {
                str = n0.b;
            }
            y45.i(str, "JsonFieldResolver.resolv…LEMENT_NAME_DEFAULT_VALUE");
            List listL = sa5.l(ex7Var, divCollectionItemBuilderTemplate.c, jSONObject, "prototypes", this.a.f2(), this.a.d2(), n0.c);
            y45.i(listL, "resolveList(context, tem…er, PROTOTYPES_VALIDATOR)");
            return new DivCollectionItemBuilder(expressionG, str, listL);
        }
    }

    public static final boolean b(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
