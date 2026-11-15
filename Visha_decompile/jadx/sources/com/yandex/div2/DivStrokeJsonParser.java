package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivStrokeJsonParser;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hi;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivStrokeJsonParser {
    public static final a a = new a(null);
    public static final DivStrokeStyle.c b = new DivStrokeStyle.c(new DivStrokeStyleSolid());
    public static final Expression c;
    public static final Expression d;
    public static final zbb e;
    public static final pnb f;

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
        public DivStroke a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Expression expressionE = pa5.e(ex7Var, jSONObject, "color", acb.f, ParsingConvertersKt.b);
            y45.i(expressionE, "readExpression(context, …LOR, STRING_TO_COLOR_INT)");
            DivStrokeStyle divStrokeStyle = (DivStrokeStyle) tb5.n(ex7Var, jSONObject, "style", this.a.C7());
            if (divStrokeStyle == null) {
                divStrokeStyle = DivStrokeJsonParser.b;
            }
            y45.i(divStrokeStyle, "JsonPropertyParser.readO…r) ?: STYLE_DEFAULT_VALUE");
            zbb zbbVar = DivStrokeJsonParser.e;
            e74 e74Var = DivSizeUnit.FROM_STRING;
            Expression expression = DivStrokeJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "unit", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            zbb zbbVar2 = acb.d;
            e74 e74Var2 = ParsingConvertersKt.g;
            pnb pnbVar = DivStrokeJsonParser.f;
            Expression expression2 = DivStrokeJsonParser.d;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "width", zbbVar2, e74Var2, pnbVar, expression2);
            if (expressionK != null) {
                expression2 = expressionK;
            }
            return new DivStroke(expressionE, divStrokeStyle, expression, expression2);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivStroke divStroke) {
            y45.j(ex7Var, "context");
            y45.j(divStroke, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.q(ex7Var, jSONObject, "color", divStroke.a, ParsingConvertersKt.a);
            tb5.x(ex7Var, jSONObject, "style", divStroke.b, this.a.C7());
            pa5.q(ex7Var, jSONObject, "unit", divStroke.c, DivSizeUnit.TO_STRING);
            pa5.p(ex7Var, jSONObject, "width", divStroke.d);
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
        public DivStrokeTemplate c(ex7 ex7Var, DivStrokeTemplate divStrokeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "color", acb.f, zC, divStrokeTemplate != null ? divStrokeTemplate.a : null, ParsingConvertersKt.b);
            y45.i(tp3VarI, "readFieldWithExpression(…lor, STRING_TO_COLOR_INT)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "style", zC, divStrokeTemplate != null ? divStrokeTemplate.b : null, this.a.D7());
            y45.i(tp3VarS, "readOptionalField(contex…eStyleJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "unit", DivStrokeJsonParser.e, zC, divStrokeTemplate != null ? divStrokeTemplate.c : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "width", acb.d, zC, divStrokeTemplate != null ? divStrokeTemplate.d : null, ParsingConvertersKt.g, DivStrokeJsonParser.f);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, WIDTH_VALIDATOR)");
            return new DivStrokeTemplate(tp3VarI, tp3VarS, tp3VarU, tp3VarV);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivStrokeTemplate divStrokeTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divStrokeTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.E(ex7Var, jSONObject, "color", divStrokeTemplate.a, ParsingConvertersKt.a);
            ra5.I(ex7Var, jSONObject, "style", divStrokeTemplate.b, this.a.D7());
            ra5.E(ex7Var, jSONObject, "unit", divStrokeTemplate.c, DivSizeUnit.TO_STRING);
            ra5.D(ex7Var, jSONObject, "width", divStrokeTemplate.d);
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
        public DivStroke a(ex7 ex7Var, DivStrokeTemplate divStrokeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divStrokeTemplate, "template");
            y45.j(jSONObject, "data");
            Expression expressionH = sa5.h(ex7Var, divStrokeTemplate.a, jSONObject, "color", acb.f, ParsingConvertersKt.b);
            y45.i(expressionH, "resolveExpression(contex…LOR, STRING_TO_COLOR_INT)");
            DivStrokeStyle divStrokeStyle = (DivStrokeStyle) sa5.p(ex7Var, divStrokeTemplate.b, jSONObject, "style", this.a.E7(), this.a.C7());
            if (divStrokeStyle == null) {
                divStrokeStyle = DivStrokeJsonParser.b;
            }
            y45.i(divStrokeStyle, "JsonFieldResolver.resolv…r) ?: STYLE_DEFAULT_VALUE");
            tp3 tp3Var = divStrokeTemplate.c;
            zbb zbbVar = DivStrokeJsonParser.e;
            e74 e74Var = DivSizeUnit.FROM_STRING;
            Expression expression = DivStrokeJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "unit", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            tp3 tp3Var2 = divStrokeTemplate.d;
            zbb zbbVar2 = acb.d;
            e74 e74Var2 = ParsingConvertersKt.g;
            pnb pnbVar = DivStrokeJsonParser.f;
            Expression expression2 = DivStrokeJsonParser.d;
            Expression expressionU = sa5.u(ex7Var, tp3Var2, jSONObject, "width", zbbVar2, e74Var2, pnbVar, expression2);
            if (expressionU != null) {
                expression2 = expressionU;
            }
            return new DivStroke(expressionH, divStrokeStyle, expression, expression2);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        c = aVar.a(DivSizeUnit.DP);
        d = aVar.a(Double.valueOf(1.0d));
        e = zbb.a.a(hi.W(DivSizeUnit.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivSizeUnit);
            }
        });
        f = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivStrokeJsonParser.b(((Double) obj).doubleValue());
            }
        };
    }

    public static final boolean b(double d2) {
        return d2 >= 0.0d;
    }
}
