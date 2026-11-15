package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hb0;
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

public abstract class DivAccessibilityJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final DivAccessibility.Type d;
    public static final zbb e;

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
        public DivAccessibility a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.c;
            Expression expressionH = pa5.h(ex7Var, jSONObject, "description", zbbVar);
            Expression expressionH2 = pa5.h(ex7Var, jSONObject, "hint", zbbVar);
            zbb zbbVar2 = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expressionI = pa5.i(ex7Var, jSONObject, "is_checked", zbbVar2, e74Var);
            zbb zbbVar3 = DivAccessibilityJsonParser.e;
            e74 e74Var2 = DivAccessibility.Mode.FROM_STRING;
            Expression expression = DivAccessibilityJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, hb0.KEY_NAME_MODE, zbbVar3, e74Var2, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            Expression expression2 = DivAccessibilityJsonParser.c;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "mute_after_action", zbbVar2, e74Var, expression2);
            if (expressionL2 != null) {
                expression2 = expressionL2;
            }
            Expression expressionH3 = pa5.h(ex7Var, jSONObject, "state_description", zbbVar);
            DivAccessibility.Type type = (DivAccessibility.Type) tb5.l(ex7Var, jSONObject, "type", DivAccessibility.Type.FROM_STRING);
            if (type == null) {
                type = DivAccessibilityJsonParser.d;
            }
            DivAccessibility.Type type2 = type;
            y45.i(type2, "JsonPropertyParser.readO…NG) ?: TYPE_DEFAULT_VALUE");
            return new DivAccessibility(expressionH, expressionH2, expressionI, expression, expression2, expressionH3, type2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivAccessibility divAccessibility) {
            y45.j(ex7Var, "context");
            y45.j(divAccessibility, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "description", divAccessibility.a);
            pa5.p(ex7Var, jSONObject, "hint", divAccessibility.b);
            pa5.p(ex7Var, jSONObject, "is_checked", divAccessibility.c);
            pa5.q(ex7Var, jSONObject, hb0.KEY_NAME_MODE, divAccessibility.d, DivAccessibility.Mode.TO_STRING);
            pa5.p(ex7Var, jSONObject, "mute_after_action", divAccessibility.e);
            pa5.p(ex7Var, jSONObject, "state_description", divAccessibility.f);
            tb5.w(ex7Var, jSONObject, "type", divAccessibility.g, DivAccessibility.Type.TO_STRING);
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
        public DivAccessibilityTemplate c(ex7 ex7Var, DivAccessibilityTemplate divAccessibilityTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.c;
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "description", zbbVar, zC, divAccessibilityTemplate != null ? divAccessibilityTemplate.a : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…ide, parent?.description)");
            tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, "hint", zbbVar, zC, divAccessibilityTemplate != null ? divAccessibilityTemplate.b : null);
            y45.i(tp3VarT2, "readOptionalFieldWithExp…owOverride, parent?.hint)");
            zbb zbbVar2 = acb.a;
            tp3 tp3Var = divAccessibilityTemplate != null ? divAccessibilityTemplate.c : null;
            e74 e74Var = ParsingConvertersKt.f;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "is_checked", zbbVar2, zC, tp3Var, e74Var);
            y45.i(tp3VarU, "readOptionalFieldWithExp…sChecked, ANY_TO_BOOLEAN)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, hb0.KEY_NAME_MODE, DivAccessibilityJsonParser.e, zC, divAccessibilityTemplate != null ? divAccessibilityTemplate.d : null, DivAccessibility.Mode.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…ibility.Mode.FROM_STRING)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "mute_after_action", zbbVar2, zC, divAccessibilityTemplate != null ? divAccessibilityTemplate.e : null, e74Var);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…erAction, ANY_TO_BOOLEAN)");
            tp3 tp3VarT3 = ra5.t(ex7VarC, jSONObject, "state_description", zbbVar, zC, divAccessibilityTemplate != null ? divAccessibilityTemplate.f : null);
            y45.i(tp3VarT3, "readOptionalFieldWithExp…parent?.stateDescription)");
            tp3 tp3VarQ = ra5.q(ex7VarC, jSONObject, "type", zC, divAccessibilityTemplate != null ? divAccessibilityTemplate.g : null, DivAccessibility.Type.FROM_STRING);
            y45.i(tp3VarQ, "readOptionalField(contex…ibility.Type.FROM_STRING)");
            return new DivAccessibilityTemplate(tp3VarT, tp3VarT2, tp3VarU, tp3VarU2, tp3VarU3, tp3VarT3, tp3VarQ);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivAccessibilityTemplate divAccessibilityTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divAccessibilityTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "description", divAccessibilityTemplate.a);
            ra5.D(ex7Var, jSONObject, "hint", divAccessibilityTemplate.b);
            ra5.D(ex7Var, jSONObject, "is_checked", divAccessibilityTemplate.c);
            ra5.E(ex7Var, jSONObject, hb0.KEY_NAME_MODE, divAccessibilityTemplate.d, DivAccessibility.Mode.TO_STRING);
            ra5.D(ex7Var, jSONObject, "mute_after_action", divAccessibilityTemplate.e);
            ra5.D(ex7Var, jSONObject, "state_description", divAccessibilityTemplate.f);
            ra5.H(ex7Var, jSONObject, "type", divAccessibilityTemplate.g, DivAccessibility.Type.TO_STRING);
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
        public DivAccessibility a(ex7 ex7Var, DivAccessibilityTemplate divAccessibilityTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divAccessibilityTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divAccessibilityTemplate.a;
            zbb zbbVar = acb.c;
            Expression expressionR = sa5.r(ex7Var, tp3Var, jSONObject, "description", zbbVar);
            Expression expressionR2 = sa5.r(ex7Var, divAccessibilityTemplate.b, jSONObject, "hint", zbbVar);
            tp3 tp3Var2 = divAccessibilityTemplate.c;
            zbb zbbVar2 = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expressionS = sa5.s(ex7Var, tp3Var2, jSONObject, "is_checked", zbbVar2, e74Var);
            tp3 tp3Var3 = divAccessibilityTemplate.d;
            zbb zbbVar3 = DivAccessibilityJsonParser.e;
            e74 e74Var2 = DivAccessibility.Mode.FROM_STRING;
            Expression expression = DivAccessibilityJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var3, jSONObject, hb0.KEY_NAME_MODE, zbbVar3, e74Var2, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            tp3 tp3Var4 = divAccessibilityTemplate.e;
            Expression expression2 = DivAccessibilityJsonParser.c;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var4, jSONObject, "mute_after_action", zbbVar2, e74Var, expression2);
            Expression expression3 = expressionV2 == null ? expression2 : expressionV2;
            Expression expressionR3 = sa5.r(ex7Var, divAccessibilityTemplate.f, jSONObject, "state_description", zbbVar);
            DivAccessibility.Type type = (DivAccessibility.Type) sa5.n(ex7Var, divAccessibilityTemplate.g, jSONObject, "type", DivAccessibility.Type.FROM_STRING);
            if (type == null) {
                type = DivAccessibilityJsonParser.d;
            }
            DivAccessibility.Type type2 = type;
            y45.i(type2, "JsonFieldResolver.resolv…NG) ?: TYPE_DEFAULT_VALUE");
            return new DivAccessibility(expressionR, expressionR2, expressionS, expression, expression3, expressionR3, type2);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(DivAccessibility.Mode.DEFAULT);
        c = aVar.a(Boolean.FALSE);
        d = DivAccessibility.Type.AUTO;
        e = zbb.a.a(hi.W(DivAccessibility.Mode.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAccessibility.Mode);
            }
        });
    }
}
