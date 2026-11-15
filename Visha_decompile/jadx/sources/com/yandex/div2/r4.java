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
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class r4 {
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
        public DivTextRangeMaskBase a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = r4.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "is_enabled", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            return new DivTextRangeMaskBase(expression);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextRangeMaskBase divTextRangeMaskBase) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeMaskBase, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "is_enabled", divTextRangeMaskBase.a);
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
        public DivTextRangeMaskBaseTemplate c(ex7 ex7Var, DivTextRangeMaskBaseTemplate divTextRangeMaskBaseTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            tp3 tp3VarU = ra5.u(fx7.c(ex7Var), jSONObject, "is_enabled", acb.a, ex7Var.c(), divTextRangeMaskBaseTemplate != null ? divTextRangeMaskBaseTemplate.a : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…sEnabled, ANY_TO_BOOLEAN)");
            return new DivTextRangeMaskBaseTemplate(tp3VarU);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextRangeMaskBaseTemplate divTextRangeMaskBaseTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeMaskBaseTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "is_enabled", divTextRangeMaskBaseTemplate.a);
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
        public DivTextRangeMaskBase a(ex7 ex7Var, DivTextRangeMaskBaseTemplate divTextRangeMaskBaseTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divTextRangeMaskBaseTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divTextRangeMaskBaseTemplate.a;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = r4.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "is_enabled", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            return new DivTextRangeMaskBase(expression);
        }
    }
}
