package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.h1;
import defpackage.acb;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.pnb;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class h1 {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a("_");
    public static final pnb c = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return h1.c((String) obj);
        }
    };
    public static final pnb d = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return h1.d((String) obj);
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
        public DivFixedLengthInputMask.PatternElement a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.c;
            Expression expressionG = pa5.g(ex7Var, jSONObject, "key", zbbVar, h1.c);
            y45.i(expressionG, "readExpression(context, …ER_STRING, KEY_VALIDATOR)");
            pnb pnbVar = h1.d;
            Expression expression = h1.b;
            Expression expressionM = pa5.m(ex7Var, jSONObject, "placeholder", zbbVar, pnbVar, expression);
            if (expressionM != null) {
                expression = expressionM;
            }
            return new DivFixedLengthInputMask.PatternElement(expressionG, expression, pa5.h(ex7Var, jSONObject, "regex", zbbVar));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivFixedLengthInputMask.PatternElement patternElement) {
            y45.j(ex7Var, "context");
            y45.j(patternElement, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "key", patternElement.a);
            pa5.p(ex7Var, jSONObject, "placeholder", patternElement.b);
            pa5.p(ex7Var, jSONObject, "regex", patternElement.c);
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
        public DivFixedLengthInputMaskTemplate.PatternElementTemplate c(ex7 ex7Var, DivFixedLengthInputMaskTemplate.PatternElementTemplate patternElementTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.c;
            tp3 tp3VarK = ra5.k(ex7VarC, jSONObject, "key", zbbVar, zC, patternElementTemplate != null ? patternElementTemplate.a : null, h1.c);
            y45.i(tp3VarK, "readFieldWithExpression(…rent?.key, KEY_VALIDATOR)");
            tp3 tp3VarW = ra5.w(ex7VarC, jSONObject, "placeholder", zbbVar, zC, patternElementTemplate != null ? patternElementTemplate.b : null, h1.d);
            y45.i(tp3VarW, "readOptionalFieldWithExp…r, PLACEHOLDER_VALIDATOR)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "regex", zbbVar, zC, patternElementTemplate != null ? patternElementTemplate.c : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…wOverride, parent?.regex)");
            return new DivFixedLengthInputMaskTemplate.PatternElementTemplate(tp3VarK, tp3VarW, tp3VarT);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivFixedLengthInputMaskTemplate.PatternElementTemplate patternElementTemplate) {
            y45.j(ex7Var, "context");
            y45.j(patternElementTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "key", patternElementTemplate.a);
            ra5.D(ex7Var, jSONObject, "placeholder", patternElementTemplate.b);
            ra5.D(ex7Var, jSONObject, "regex", patternElementTemplate.c);
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
        public DivFixedLengthInputMask.PatternElement a(ex7 ex7Var, DivFixedLengthInputMaskTemplate.PatternElementTemplate patternElementTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(patternElementTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = patternElementTemplate.a;
            zbb zbbVar = acb.c;
            Expression expressionJ = sa5.j(ex7Var, tp3Var, jSONObject, "key", zbbVar, h1.c);
            y45.i(expressionJ, "resolveExpression(contex…ER_STRING, KEY_VALIDATOR)");
            tp3 tp3Var2 = patternElementTemplate.b;
            pnb pnbVar = h1.d;
            Expression expression = h1.b;
            Expression expressionW = sa5.w(ex7Var, tp3Var2, jSONObject, "placeholder", zbbVar, pnbVar, expression);
            if (expressionW != null) {
                expression = expressionW;
            }
            return new DivFixedLengthInputMask.PatternElement(expressionJ, expression, sa5.r(ex7Var, patternElementTemplate.c, jSONObject, "regex", zbbVar));
        }
    }

    public static final boolean c(String str) {
        y45.j(str, "it");
        return str.length() >= 1;
    }

    public static final boolean d(String str) {
        y45.j(str, "it");
        return str.length() >= 1;
    }
}
