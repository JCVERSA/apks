package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.a;
import defpackage.acb;
import defpackage.e74;
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

public abstract class a {
    public static final C0307a a = new C0307a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final pnb f;
    public static final pnb g;
    public static final pnb h;
    public static final pnb i;

    public static final class C0307a {
        public C0307a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C0307a() {
        }
    }

    public static final class b implements pd9, w92 {
        public final JsonParserComponent a;

        public b(JsonParserComponent jsonParserComponent) {
            y45.j(jsonParserComponent, "component");
            this.a = jsonParserComponent;
        }

        @Override
        public DivAbsoluteEdgeInsets a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = a.f;
            Expression expression = a.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "bottom", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            pnb pnbVar2 = a.g;
            Expression expression2 = a.c;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, TtmlNode.LEFT, zbbVar, e74Var, pnbVar2, expression2);
            if (expressionK2 != null) {
                expression2 = expressionK2;
            }
            pnb pnbVar3 = a.h;
            Expression expression3 = a.d;
            Expression expressionK3 = pa5.k(ex7Var, jSONObject, TtmlNode.RIGHT, zbbVar, e74Var, pnbVar3, expression3);
            if (expressionK3 != null) {
                expression3 = expressionK3;
            }
            pnb pnbVar4 = a.i;
            Expression expression4 = a.e;
            Expression expressionK4 = pa5.k(ex7Var, jSONObject, "top", zbbVar, e74Var, pnbVar4, expression4);
            if (expressionK4 != null) {
                expression4 = expressionK4;
            }
            return new DivAbsoluteEdgeInsets(expression, expression2, expression3, expression4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivAbsoluteEdgeInsets divAbsoluteEdgeInsets) {
            y45.j(ex7Var, "context");
            y45.j(divAbsoluteEdgeInsets, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "bottom", divAbsoluteEdgeInsets.a);
            pa5.p(ex7Var, jSONObject, TtmlNode.LEFT, divAbsoluteEdgeInsets.b);
            pa5.p(ex7Var, jSONObject, TtmlNode.RIGHT, divAbsoluteEdgeInsets.c);
            pa5.p(ex7Var, jSONObject, "top", divAbsoluteEdgeInsets.d);
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
        public DivAbsoluteEdgeInsetsTemplate c(ex7 ex7Var, DivAbsoluteEdgeInsetsTemplate divAbsoluteEdgeInsetsTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.b;
            tp3 tp3Var = divAbsoluteEdgeInsetsTemplate != null ? divAbsoluteEdgeInsetsTemplate.a : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "bottom", zbbVar, zC, tp3Var, e74Var, a.f);
            y45.i(tp3VarV, "readOptionalFieldWithExp…TO_INT, BOTTOM_VALIDATOR)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, TtmlNode.LEFT, zbbVar, zC, divAbsoluteEdgeInsetsTemplate != null ? divAbsoluteEdgeInsetsTemplate.b : null, e74Var, a.g);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…R_TO_INT, LEFT_VALIDATOR)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, TtmlNode.RIGHT, zbbVar, zC, divAbsoluteEdgeInsetsTemplate != null ? divAbsoluteEdgeInsetsTemplate.c : null, e74Var, a.h);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…_TO_INT, RIGHT_VALIDATOR)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, "top", zbbVar, zC, divAbsoluteEdgeInsetsTemplate != null ? divAbsoluteEdgeInsetsTemplate.d : null, e74Var, a.i);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…ER_TO_INT, TOP_VALIDATOR)");
            return new DivAbsoluteEdgeInsetsTemplate(tp3VarV, tp3VarV2, tp3VarV3, tp3VarV4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivAbsoluteEdgeInsetsTemplate divAbsoluteEdgeInsetsTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divAbsoluteEdgeInsetsTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "bottom", divAbsoluteEdgeInsetsTemplate.a);
            ra5.D(ex7Var, jSONObject, TtmlNode.LEFT, divAbsoluteEdgeInsetsTemplate.b);
            ra5.D(ex7Var, jSONObject, TtmlNode.RIGHT, divAbsoluteEdgeInsetsTemplate.c);
            ra5.D(ex7Var, jSONObject, "top", divAbsoluteEdgeInsetsTemplate.d);
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
        public DivAbsoluteEdgeInsets a(ex7 ex7Var, DivAbsoluteEdgeInsetsTemplate divAbsoluteEdgeInsetsTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divAbsoluteEdgeInsetsTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divAbsoluteEdgeInsetsTemplate.a;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = a.f;
            Expression expression = a.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "bottom", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            tp3 tp3Var2 = divAbsoluteEdgeInsetsTemplate.b;
            pnb pnbVar2 = a.g;
            Expression expression2 = a.c;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var2, jSONObject, TtmlNode.LEFT, zbbVar, e74Var, pnbVar2, expression2);
            if (expressionU2 != null) {
                expression2 = expressionU2;
            }
            tp3 tp3Var3 = divAbsoluteEdgeInsetsTemplate.c;
            pnb pnbVar3 = a.h;
            Expression expression3 = a.d;
            Expression expressionU3 = sa5.u(ex7Var, tp3Var3, jSONObject, TtmlNode.RIGHT, zbbVar, e74Var, pnbVar3, expression3);
            Expression expression4 = expressionU3 == null ? expression3 : expressionU3;
            tp3 tp3Var4 = divAbsoluteEdgeInsetsTemplate.d;
            pnb pnbVar4 = a.i;
            Expression expression5 = a.e;
            Expression expression6 = expression4;
            Expression expressionU4 = sa5.u(ex7Var, tp3Var4, jSONObject, "top", zbbVar, e74Var, pnbVar4, expression5);
            if (expressionU4 != null) {
                expression5 = expressionU4;
            }
            return new DivAbsoluteEdgeInsets(expression, expression2, expression6, expression5);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(0L);
        c = aVar.a(0L);
        d = aVar.a(0L);
        e = aVar.a(0L);
        f = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return a.e(((Long) obj).longValue());
            }
        };
        g = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return a.f(((Long) obj).longValue());
            }
        };
        h = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return a.g(((Long) obj).longValue());
            }
        };
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return a.h(((Long) obj).longValue());
            }
        };
    }

    public static final boolean e(long j) {
        return j >= 0;
    }

    public static final boolean f(long j) {
        return j >= 0;
    }

    public static final boolean g(long j) {
        return j >= 0;
    }

    public static final boolean h(long j) {
        return j >= 0;
    }
}
