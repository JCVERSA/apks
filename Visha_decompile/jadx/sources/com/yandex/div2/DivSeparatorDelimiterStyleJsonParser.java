package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hi;
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

public abstract class DivSeparatorDelimiterStyleJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final zbb d;

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
        public DivSeparator.DelimiterStyle a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.f;
            e74 e74Var = ParsingConvertersKt.b;
            Expression expression = DivSeparatorDelimiterStyleJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "color", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            zbb zbbVar2 = DivSeparatorDelimiterStyleJsonParser.d;
            e74 e74Var2 = DivSeparator.DelimiterStyle.Orientation.FROM_STRING;
            Expression expression2 = DivSeparatorDelimiterStyleJsonParser.c;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "orientation", zbbVar2, e74Var2, expression2);
            if (expressionL2 != null) {
                expression2 = expressionL2;
            }
            return new DivSeparator.DelimiterStyle(expression, expression2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSeparator.DelimiterStyle delimiterStyle) {
            y45.j(ex7Var, "context");
            y45.j(delimiterStyle, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "color", delimiterStyle.a, ParsingConvertersKt.a);
            pa5.q(ex7Var, jSONObject, "orientation", delimiterStyle.b, DivSeparator.DelimiterStyle.Orientation.TO_STRING);
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
        public DivSeparatorTemplate.DelimiterStyleTemplate c(ex7 ex7Var, DivSeparatorTemplate.DelimiterStyleTemplate delimiterStyleTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "color", acb.f, zC, delimiterStyleTemplate != null ? delimiterStyleTemplate.a : null, ParsingConvertersKt.b);
            y45.i(tp3VarU, "readOptionalFieldWithExp…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "orientation", DivSeparatorDelimiterStyleJsonParser.d, zC, delimiterStyleTemplate != null ? delimiterStyleTemplate.b : null, DivSeparator.DelimiterStyle.Orientation.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp….Orientation.FROM_STRING)");
            return new DivSeparatorTemplate.DelimiterStyleTemplate(tp3VarU, tp3VarU2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivSeparatorTemplate.DelimiterStyleTemplate delimiterStyleTemplate) {
            y45.j(ex7Var, "context");
            y45.j(delimiterStyleTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "color", delimiterStyleTemplate.a, ParsingConvertersKt.a);
            ra5.E(ex7Var, jSONObject, "orientation", delimiterStyleTemplate.b, DivSeparator.DelimiterStyle.Orientation.TO_STRING);
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
        public DivSeparator.DelimiterStyle a(ex7 ex7Var, DivSeparatorTemplate.DelimiterStyleTemplate delimiterStyleTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(delimiterStyleTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = delimiterStyleTemplate.a;
            zbb zbbVar = acb.f;
            e74 e74Var = ParsingConvertersKt.b;
            Expression expression = DivSeparatorDelimiterStyleJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "color", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            tp3 tp3Var2 = delimiterStyleTemplate.b;
            zbb zbbVar2 = DivSeparatorDelimiterStyleJsonParser.d;
            e74 e74Var2 = DivSeparator.DelimiterStyle.Orientation.FROM_STRING;
            Expression expression2 = DivSeparatorDelimiterStyleJsonParser.c;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var2, jSONObject, "orientation", zbbVar2, e74Var2, expression2);
            if (expressionV2 != null) {
                expression2 = expressionV2;
            }
            return new DivSeparator.DelimiterStyle(expression, expression2);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(335544320);
        c = aVar.a(DivSeparator.DelimiterStyle.Orientation.HORIZONTAL);
        d = zbb.a.a(hi.W(DivSeparator.DelimiterStyle.Orientation.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivSeparator.DelimiterStyle.Orientation);
            }
        });
    }
}
