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

public abstract class a2 {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(Boolean.FALSE);

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
        public DivInputValidatorBase a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = a2.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "allow_empty", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            return new DivInputValidatorBase(expression, pa5.h(ex7Var, jSONObject, "label_id", acb.c), (String) tb5.k(ex7Var, jSONObject, "variable"));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivInputValidatorBase divInputValidatorBase) {
            y45.j(ex7Var, "context");
            y45.j(divInputValidatorBase, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "allow_empty", divInputValidatorBase.a);
            pa5.p(ex7Var, jSONObject, "label_id", divInputValidatorBase.b);
            tb5.v(ex7Var, jSONObject, "variable", divInputValidatorBase.c);
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
        public DivInputValidatorBaseTemplate c(ex7 ex7Var, DivInputValidatorBaseTemplate divInputValidatorBaseTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "allow_empty", acb.a, zC, divInputValidatorBaseTemplate != null ? divInputValidatorBaseTemplate.a : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…lowEmpty, ANY_TO_BOOLEAN)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "label_id", acb.c, zC, divInputValidatorBaseTemplate != null ? divInputValidatorBaseTemplate.b : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…verride, parent?.labelId)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, "variable", zC, divInputValidatorBaseTemplate != null ? divInputValidatorBaseTemplate.c : null);
            y45.i(tp3VarP, "readOptionalField(contex…erride, parent?.variable)");
            return new DivInputValidatorBaseTemplate(tp3VarU, tp3VarT, tp3VarP);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivInputValidatorBaseTemplate divInputValidatorBaseTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divInputValidatorBaseTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "allow_empty", divInputValidatorBaseTemplate.a);
            ra5.D(ex7Var, jSONObject, "label_id", divInputValidatorBaseTemplate.b);
            ra5.G(ex7Var, jSONObject, "variable", divInputValidatorBaseTemplate.c);
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
        public DivInputValidatorBase a(ex7 ex7Var, DivInputValidatorBaseTemplate divInputValidatorBaseTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divInputValidatorBaseTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divInputValidatorBaseTemplate.a;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = a2.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "allow_empty", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            return new DivInputValidatorBase(expression, sa5.r(ex7Var, divInputValidatorBaseTemplate.b, jSONObject, "label_id", acb.c), (String) sa5.m(ex7Var, divInputValidatorBaseTemplate.c, jSONObject, "variable"));
        }
    }
}
