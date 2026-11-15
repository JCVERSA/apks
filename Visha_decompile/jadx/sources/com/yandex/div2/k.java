package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
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

public abstract class k {
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
        public DivActionScrollTo a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = k.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "animated", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            Object objG = tb5.g(ex7Var, jSONObject, "destination", this.a.D0());
            y45.i(objG, "read(context, data, \"des…tinationJsonEntityParser)");
            Expression expressionD = pa5.d(ex7Var, jSONObject, TtmlNode.ATTR_ID, acb.c);
            y45.i(expressionD, "readExpression(context, …\"id\", TYPE_HELPER_STRING)");
            return new DivActionScrollTo(expression, (DivActionScrollDestination) objG, expressionD);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionScrollTo divActionScrollTo) {
            y45.j(ex7Var, "context");
            y45.j(divActionScrollTo, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "animated", divActionScrollTo.a);
            tb5.x(ex7Var, jSONObject, "destination", divActionScrollTo.b, this.a.D0());
            pa5.p(ex7Var, jSONObject, TtmlNode.ATTR_ID, divActionScrollTo.c);
            tb5.v(ex7Var, jSONObject, "type", "scroll_to");
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
        public DivActionScrollToTemplate c(ex7 ex7Var, DivActionScrollToTemplate divActionScrollToTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "animated", acb.a, zC, divActionScrollToTemplate != null ? divActionScrollToTemplate.a : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…animated, ANY_TO_BOOLEAN)");
            tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, "destination", zC, divActionScrollToTemplate != null ? divActionScrollToTemplate.b : null, this.a.E0());
            y45.i(tp3VarF, "readField(context, data,…nationJsonTemplateParser)");
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, TtmlNode.ATTR_ID, acb.c, zC, divActionScrollToTemplate != null ? divActionScrollToTemplate.c : null);
            y45.i(tp3VarH, "readFieldWithExpression(…llowOverride, parent?.id)");
            return new DivActionScrollToTemplate(tp3VarU, tp3VarF, tp3VarH);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionScrollToTemplate divActionScrollToTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divActionScrollToTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "animated", divActionScrollToTemplate.a);
            ra5.I(ex7Var, jSONObject, "destination", divActionScrollToTemplate.b, this.a.E0());
            ra5.D(ex7Var, jSONObject, TtmlNode.ATTR_ID, divActionScrollToTemplate.c);
            tb5.v(ex7Var, jSONObject, "type", "scroll_to");
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
        public DivActionScrollTo a(ex7 ex7Var, DivActionScrollToTemplate divActionScrollToTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divActionScrollToTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divActionScrollToTemplate.a;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = k.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "animated", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            Object objD = sa5.d(ex7Var, divActionScrollToTemplate.b, jSONObject, "destination", this.a.F0(), this.a.D0());
            y45.i(objD, "resolve(context, templat…tinationJsonEntityParser)");
            Expression expressionG = sa5.g(ex7Var, divActionScrollToTemplate.c, jSONObject, TtmlNode.ATTR_ID, acb.c);
            y45.i(expressionG, "resolveExpression(contex…\"id\", TYPE_HELPER_STRING)");
            return new DivActionScrollTo(expression, (DivActionScrollDestination) objD, expressionG);
        }
    }
}
