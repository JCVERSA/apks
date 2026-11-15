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

public abstract class p0 {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;

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
        public DivContainer.Separator a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2());
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = p0.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "show_at_end", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            Expression expression2 = p0.c;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "show_at_start", zbbVar, e74Var, expression2);
            if (expressionL2 != null) {
                expression2 = expressionL2;
            }
            Expression expression3 = p0.d;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "show_between", zbbVar, e74Var, expression3);
            Expression expression4 = expressionL3 == null ? expression3 : expressionL3;
            Object objG = tb5.g(ex7Var, jSONObject, "style", this.a.S2());
            y45.i(objG, "read(context, data, \"sty…DrawableJsonEntityParser)");
            return new DivContainer.Separator(divEdgeInsets, expression, expression2, expression4, (DivDrawable) objG);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivContainer.Separator separator) {
            y45.j(ex7Var, "context");
            y45.j(separator, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "margins", separator.a, this.a.V2());
            pa5.p(ex7Var, jSONObject, "show_at_end", separator.b);
            pa5.p(ex7Var, jSONObject, "show_at_start", separator.c);
            pa5.p(ex7Var, jSONObject, "show_between", separator.d);
            tb5.x(ex7Var, jSONObject, "style", separator.e, this.a.S2());
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
        public DivContainerTemplate.SeparatorTemplate c(ex7 ex7Var, DivContainerTemplate.SeparatorTemplate separatorTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "margins", zC, separatorTemplate != null ? separatorTemplate.a : null, this.a.W2());
            y45.i(tp3VarS, "readOptionalField(contex…InsetsJsonTemplateParser)");
            zbb zbbVar = acb.a;
            tp3 tp3Var = separatorTemplate != null ? separatorTemplate.b : null;
            e74 e74Var = ParsingConvertersKt.f;
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "show_at_end", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU, "readOptionalFieldWithExp…howAtEnd, ANY_TO_BOOLEAN)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "show_at_start", zbbVar, zC, separatorTemplate != null ? separatorTemplate.c : null, e74Var);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…wAtStart, ANY_TO_BOOLEAN)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "show_between", zbbVar, zC, separatorTemplate != null ? separatorTemplate.d : null, e74Var);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…wBetween, ANY_TO_BOOLEAN)");
            tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, "style", zC, separatorTemplate != null ? separatorTemplate.e : null, this.a.T2());
            y45.i(tp3VarF, "readField(context, data,…awableJsonTemplateParser)");
            return new DivContainerTemplate.SeparatorTemplate(tp3VarS, tp3VarU, tp3VarU2, tp3VarU3, tp3VarF);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivContainerTemplate.SeparatorTemplate separatorTemplate) {
            y45.j(ex7Var, "context");
            y45.j(separatorTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "margins", separatorTemplate.a, this.a.W2());
            ra5.D(ex7Var, jSONObject, "show_at_end", separatorTemplate.b);
            ra5.D(ex7Var, jSONObject, "show_at_start", separatorTemplate.c);
            ra5.D(ex7Var, jSONObject, "show_between", separatorTemplate.d);
            ra5.I(ex7Var, jSONObject, "style", separatorTemplate.e, this.a.T2());
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
        public DivContainer.Separator a(ex7 ex7Var, DivContainerTemplate.SeparatorTemplate separatorTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(separatorTemplate, "template");
            y45.j(jSONObject, "data");
            DivEdgeInsets divEdgeInsets = (DivEdgeInsets) sa5.p(ex7Var, separatorTemplate.a, jSONObject, "margins", this.a.X2(), this.a.V2());
            tp3 tp3Var = separatorTemplate.b;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = p0.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "show_at_end", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            tp3 tp3Var2 = separatorTemplate.c;
            Expression expression2 = p0.c;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var2, jSONObject, "show_at_start", zbbVar, e74Var, expression2);
            if (expressionV2 != null) {
                expression2 = expressionV2;
            }
            tp3 tp3Var3 = separatorTemplate.d;
            Expression expression3 = p0.d;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var3, jSONObject, "show_between", zbbVar, e74Var, expression3);
            if (expressionV3 != null) {
                expression3 = expressionV3;
            }
            Object objD = sa5.d(ex7Var, separatorTemplate.e, jSONObject, "style", this.a.U2(), this.a.S2());
            y45.i(objD, "resolve(context, templat…DrawableJsonEntityParser)");
            return new DivContainer.Separator(divEdgeInsets, expression, expression2, expression3, (DivDrawable) objD);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        Boolean bool = Boolean.FALSE;
        b = aVar.a(bool);
        c = aVar.a(bool);
        d = aVar.a(Boolean.TRUE);
    }
}
