package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivEdgeInsetsJsonParser;
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
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivEdgeInsetsJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final Expression f;
    public static final zbb g;
    public static final pnb h;
    public static final pnb i;
    public static final pnb j;
    public static final pnb k;
    public static final pnb l;
    public static final pnb m;

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
        public DivEdgeInsets a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivEdgeInsetsJsonParser.h;
            Expression expression = DivEdgeInsetsJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "bottom", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            Expression expressionJ = pa5.j(ex7Var, jSONObject, TtmlNode.END, zbbVar, e74Var, DivEdgeInsetsJsonParser.i);
            pnb pnbVar2 = DivEdgeInsetsJsonParser.j;
            Expression expression2 = DivEdgeInsetsJsonParser.c;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, TtmlNode.LEFT, zbbVar, e74Var, pnbVar2, expression2);
            if (expressionK2 != null) {
                expression2 = expressionK2;
            }
            pnb pnbVar3 = DivEdgeInsetsJsonParser.k;
            Expression expression3 = DivEdgeInsetsJsonParser.d;
            Expression expressionK3 = pa5.k(ex7Var, jSONObject, TtmlNode.RIGHT, zbbVar, e74Var, pnbVar3, expression3);
            if (expressionK3 != null) {
                expression3 = expressionK3;
            }
            Expression expressionJ2 = pa5.j(ex7Var, jSONObject, TtmlNode.START, zbbVar, e74Var, DivEdgeInsetsJsonParser.l);
            pnb pnbVar4 = DivEdgeInsetsJsonParser.m;
            Expression expression4 = DivEdgeInsetsJsonParser.e;
            Expression expressionK4 = pa5.k(ex7Var, jSONObject, "top", zbbVar, e74Var, pnbVar4, expression4);
            Expression expression5 = expressionK4 == null ? expression4 : expressionK4;
            zbb zbbVar2 = DivEdgeInsetsJsonParser.g;
            e74 e74Var2 = DivSizeUnit.FROM_STRING;
            Expression expression6 = DivEdgeInsetsJsonParser.f;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "unit", zbbVar2, e74Var2, expression6);
            return new DivEdgeInsets(expression, expressionJ, expression2, expression3, expressionJ2, expression5, expressionL == null ? expression6 : expressionL);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivEdgeInsets divEdgeInsets) {
            y45.j(ex7Var, "context");
            y45.j(divEdgeInsets, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "bottom", divEdgeInsets.a);
            pa5.p(ex7Var, jSONObject, TtmlNode.END, divEdgeInsets.b);
            pa5.p(ex7Var, jSONObject, TtmlNode.LEFT, divEdgeInsets.c);
            pa5.p(ex7Var, jSONObject, TtmlNode.RIGHT, divEdgeInsets.d);
            pa5.p(ex7Var, jSONObject, TtmlNode.START, divEdgeInsets.e);
            pa5.p(ex7Var, jSONObject, "top", divEdgeInsets.f);
            pa5.q(ex7Var, jSONObject, "unit", divEdgeInsets.g, DivSizeUnit.TO_STRING);
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
        public DivEdgeInsetsTemplate c(ex7 ex7Var, DivEdgeInsetsTemplate divEdgeInsetsTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.b;
            tp3 tp3Var = divEdgeInsetsTemplate != null ? divEdgeInsetsTemplate.a : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "bottom", zbbVar, zC, tp3Var, e74Var, DivEdgeInsetsJsonParser.h);
            y45.i(tp3VarV, "readOptionalFieldWithExp…TO_INT, BOTTOM_VALIDATOR)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, TtmlNode.END, zbbVar, zC, divEdgeInsetsTemplate != null ? divEdgeInsetsTemplate.b : null, e74Var, DivEdgeInsetsJsonParser.i);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…ER_TO_INT, END_VALIDATOR)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, TtmlNode.LEFT, zbbVar, zC, divEdgeInsetsTemplate != null ? divEdgeInsetsTemplate.c : null, e74Var, DivEdgeInsetsJsonParser.j);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…R_TO_INT, LEFT_VALIDATOR)");
            tp3 tp3VarV4 = ra5.v(ex7VarC, jSONObject, TtmlNode.RIGHT, zbbVar, zC, divEdgeInsetsTemplate != null ? divEdgeInsetsTemplate.d : null, e74Var, DivEdgeInsetsJsonParser.k);
            y45.i(tp3VarV4, "readOptionalFieldWithExp…_TO_INT, RIGHT_VALIDATOR)");
            tp3 tp3VarV5 = ra5.v(ex7VarC, jSONObject, TtmlNode.START, zbbVar, zC, divEdgeInsetsTemplate != null ? divEdgeInsetsTemplate.e : null, e74Var, DivEdgeInsetsJsonParser.l);
            y45.i(tp3VarV5, "readOptionalFieldWithExp…_TO_INT, START_VALIDATOR)");
            tp3 tp3VarV6 = ra5.v(ex7VarC, jSONObject, "top", zbbVar, zC, divEdgeInsetsTemplate != null ? divEdgeInsetsTemplate.f : null, e74Var, DivEdgeInsetsJsonParser.m);
            y45.i(tp3VarV6, "readOptionalFieldWithExp…ER_TO_INT, TOP_VALIDATOR)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "unit", DivEdgeInsetsJsonParser.g, zC, divEdgeInsetsTemplate != null ? divEdgeInsetsTemplate.g : null, DivSizeUnit.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp… DivSizeUnit.FROM_STRING)");
            return new DivEdgeInsetsTemplate(tp3VarV, tp3VarV2, tp3VarV3, tp3VarV4, tp3VarV5, tp3VarV6, tp3VarU);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivEdgeInsetsTemplate divEdgeInsetsTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divEdgeInsetsTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "bottom", divEdgeInsetsTemplate.a);
            ra5.D(ex7Var, jSONObject, TtmlNode.END, divEdgeInsetsTemplate.b);
            ra5.D(ex7Var, jSONObject, TtmlNode.LEFT, divEdgeInsetsTemplate.c);
            ra5.D(ex7Var, jSONObject, TtmlNode.RIGHT, divEdgeInsetsTemplate.d);
            ra5.D(ex7Var, jSONObject, TtmlNode.START, divEdgeInsetsTemplate.e);
            ra5.D(ex7Var, jSONObject, "top", divEdgeInsetsTemplate.f);
            ra5.E(ex7Var, jSONObject, "unit", divEdgeInsetsTemplate.g, DivSizeUnit.TO_STRING);
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
        public DivEdgeInsets a(ex7 ex7Var, DivEdgeInsetsTemplate divEdgeInsetsTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divEdgeInsetsTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divEdgeInsetsTemplate.a;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = DivEdgeInsetsJsonParser.h;
            Expression expression = DivEdgeInsetsJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "bottom", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            Expression expressionT = sa5.t(ex7Var, divEdgeInsetsTemplate.b, jSONObject, TtmlNode.END, zbbVar, e74Var, DivEdgeInsetsJsonParser.i);
            tp3 tp3Var2 = divEdgeInsetsTemplate.c;
            pnb pnbVar2 = DivEdgeInsetsJsonParser.j;
            Expression expression2 = DivEdgeInsetsJsonParser.c;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var2, jSONObject, TtmlNode.LEFT, zbbVar, e74Var, pnbVar2, expression2);
            if (expressionU2 != null) {
                expression2 = expressionU2;
            }
            tp3 tp3Var3 = divEdgeInsetsTemplate.d;
            pnb pnbVar3 = DivEdgeInsetsJsonParser.k;
            Expression expression3 = DivEdgeInsetsJsonParser.d;
            Expression expressionU3 = sa5.u(ex7Var, tp3Var3, jSONObject, TtmlNode.RIGHT, zbbVar, e74Var, pnbVar3, expression3);
            if (expressionU3 != null) {
                expression3 = expressionU3;
            }
            Expression expressionT2 = sa5.t(ex7Var, divEdgeInsetsTemplate.e, jSONObject, TtmlNode.START, zbbVar, e74Var, DivEdgeInsetsJsonParser.l);
            tp3 tp3Var4 = divEdgeInsetsTemplate.f;
            pnb pnbVar4 = DivEdgeInsetsJsonParser.m;
            Expression expression4 = DivEdgeInsetsJsonParser.e;
            Expression expressionU4 = sa5.u(ex7Var, tp3Var4, jSONObject, "top", zbbVar, e74Var, pnbVar4, expression4);
            if (expressionU4 != null) {
                expression4 = expressionU4;
            }
            tp3 tp3Var5 = divEdgeInsetsTemplate.g;
            zbb zbbVar2 = DivEdgeInsetsJsonParser.g;
            e74 e74Var2 = DivSizeUnit.FROM_STRING;
            Expression expression5 = DivEdgeInsetsJsonParser.f;
            Expression expressionV = sa5.v(ex7Var, tp3Var5, jSONObject, "unit", zbbVar2, e74Var2, expression5);
            return new DivEdgeInsets(expression, expressionT, expression2, expression3, expressionT2, expression4, expressionV == null ? expression5 : expressionV);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(0L);
        c = aVar.a(0L);
        d = aVar.a(0L);
        e = aVar.a(0L);
        f = aVar.a(DivSizeUnit.DP);
        g = zbb.a.a(hi.W(DivSizeUnit.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivSizeUnit);
            }
        });
        h = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivEdgeInsetsJsonParser.g(((Long) obj).longValue());
            }
        };
        i = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivEdgeInsetsJsonParser.h(((Long) obj).longValue());
            }
        };
        j = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivEdgeInsetsJsonParser.i(((Long) obj).longValue());
            }
        };
        k = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivEdgeInsetsJsonParser.j(((Long) obj).longValue());
            }
        };
        l = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivEdgeInsetsJsonParser.k(((Long) obj).longValue());
            }
        };
        m = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivEdgeInsetsJsonParser.l(((Long) obj).longValue());
            }
        };
    }

    public static final boolean g(long j2) {
        return j2 >= 0;
    }

    public static final boolean h(long j2) {
        return j2 >= 0;
    }

    public static final boolean i(long j2) {
        return j2 >= 0;
    }

    public static final boolean j(long j2) {
        return j2 >= 0;
    }

    public static final boolean k(long j2) {
        return j2 >= 0;
    }

    public static final boolean l(long j2) {
        return j2 >= 0;
    }
}
