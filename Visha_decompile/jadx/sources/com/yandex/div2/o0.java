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

public abstract class o0 {
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
        public DivCollectionItemBuilder.Prototype a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Object objG = tb5.g(ex7Var, jSONObject, TtmlNode.TAG_DIV, this.a.J4());
            y45.i(objG, "read(context, data, \"div…nent.divJsonEntityParser)");
            Div div = (Div) objG;
            Expression expressionH = pa5.h(ex7Var, jSONObject, TtmlNode.ATTR_ID, acb.c);
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = o0.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "selector", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            return new DivCollectionItemBuilder.Prototype(div, expressionH, expression);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCollectionItemBuilder.Prototype prototype) {
            y45.j(ex7Var, "context");
            y45.j(prototype, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, TtmlNode.TAG_DIV, prototype.a, this.a.J4());
            pa5.p(ex7Var, jSONObject, TtmlNode.ATTR_ID, prototype.b);
            pa5.p(ex7Var, jSONObject, "selector", prototype.c);
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
        public DivCollectionItemBuilderTemplate.PrototypeTemplate c(ex7 ex7Var, DivCollectionItemBuilderTemplate.PrototypeTemplate prototypeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, TtmlNode.TAG_DIV, zC, prototypeTemplate != null ? prototypeTemplate.a : null, this.a.K4());
            y45.i(tp3VarF, "readField(context, data,…nt.divJsonTemplateParser)");
            tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, TtmlNode.ATTR_ID, acb.c, zC, prototypeTemplate != null ? prototypeTemplate.b : null);
            y45.i(tp3VarT, "readOptionalFieldWithExp…llowOverride, parent?.id)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "selector", acb.a, zC, prototypeTemplate != null ? prototypeTemplate.c : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…selector, ANY_TO_BOOLEAN)");
            return new DivCollectionItemBuilderTemplate.PrototypeTemplate(tp3VarF, tp3VarT, tp3VarU);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivCollectionItemBuilderTemplate.PrototypeTemplate prototypeTemplate) {
            y45.j(ex7Var, "context");
            y45.j(prototypeTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, TtmlNode.TAG_DIV, prototypeTemplate.a, this.a.K4());
            ra5.D(ex7Var, jSONObject, TtmlNode.ATTR_ID, prototypeTemplate.b);
            ra5.D(ex7Var, jSONObject, "selector", prototypeTemplate.c);
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
        public DivCollectionItemBuilder.Prototype a(ex7 ex7Var, DivCollectionItemBuilderTemplate.PrototypeTemplate prototypeTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(prototypeTemplate, "template");
            y45.j(jSONObject, "data");
            Object objD = sa5.d(ex7Var, prototypeTemplate.a, jSONObject, TtmlNode.TAG_DIV, this.a.L4(), this.a.J4());
            y45.i(objD, "resolve(context, templat…nent.divJsonEntityParser)");
            Div div = (Div) objD;
            Expression expressionR = sa5.r(ex7Var, prototypeTemplate.b, jSONObject, TtmlNode.ATTR_ID, acb.c);
            tp3 tp3Var = prototypeTemplate.c;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = o0.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "selector", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            return new DivCollectionItemBuilder.Prototype(div, expressionR, expression);
        }
    }
}
