package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class m4 {
    public static final a a = new a(null);
    public static final DivText.Image.Accessibility.Type b = DivText.Image.Accessibility.Type.AUTO;

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
        public DivText.Image.Accessibility a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionH = pa5.h(ex7Var, jSONObject, "description", acb.c);
            DivText.Image.Accessibility.Type type = (DivText.Image.Accessibility.Type) tb5.l(ex7Var, jSONObject, "type", DivText.Image.Accessibility.Type.FROM_STRING);
            if (type == null) {
                type = m4.b;
            }
            y45.i(type, "JsonPropertyParser.readO…NG) ?: TYPE_DEFAULT_VALUE");
            return new DivText.Image.Accessibility(expressionH, type);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivText.Image.Accessibility accessibility) {
            y45.j(ex7Var, "context");
            y45.j(accessibility, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "description", accessibility.a);
            tb5.w(ex7Var, jSONObject, "type", accessibility.b, DivText.Image.Accessibility.Type.TO_STRING);
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
        public DivTextTemplate.ImageTemplate.AccessibilityTemplate c(ex7 ex7Var, DivTextTemplate.ImageTemplate.AccessibilityTemplate accessibilityTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "description", acb.c, zC, accessibilityTemplate != null ? accessibilityTemplate.a : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…ide, parent?.description)");
            tp3 tp3VarQ = ra5.q(ex7VarC, jSONObject, "type", zC, accessibilityTemplate != null ? accessibilityTemplate.b : null, DivText.Image.Accessibility.Type.FROM_STRING);
            y45.i(tp3VarQ, "readOptionalField(contex…ibility.Type.FROM_STRING)");
            return new DivTextTemplate.ImageTemplate.AccessibilityTemplate(tp3VarT, tp3VarQ);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTextTemplate.ImageTemplate.AccessibilityTemplate accessibilityTemplate) {
            y45.j(ex7Var, "context");
            y45.j(accessibilityTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "description", accessibilityTemplate.a);
            ra5.H(ex7Var, jSONObject, "type", accessibilityTemplate.b, DivText.Image.Accessibility.Type.TO_STRING);
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
        public DivText.Image.Accessibility a(ex7 ex7Var, DivTextTemplate.ImageTemplate.AccessibilityTemplate accessibilityTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(accessibilityTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionR = sa5.r(ex7Var, accessibilityTemplate.a, jSONObject, "description", acb.c);
            DivText.Image.Accessibility.Type type = (DivText.Image.Accessibility.Type) sa5.n(ex7Var, accessibilityTemplate.b, jSONObject, "type", DivText.Image.Accessibility.Type.FROM_STRING);
            if (type == null) {
                type = m4.b;
            }
            y45.i(type, "JsonFieldResolver.resolv…NG) ?: TYPE_DEFAULT_VALUE");
            return new DivText.Image.Accessibility(expressionR, type);
        }
    }
}
