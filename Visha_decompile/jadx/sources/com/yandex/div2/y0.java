package com.yandex.div2;

import com.lzy.okgo.model.Progress;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.y0;
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
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class y0 {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final pnb f;
    public static final pnb g;
    public static final pnb h;

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
        public DivDisappearAction a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = y0.f;
            Expression expression = y0.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "disappear_duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            DivDownloadCallbacks divDownloadCallbacks = (DivDownloadCallbacks) tb5.n(ex7Var, jSONObject, "download_callbacks", this.a.P2());
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = y0.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "is_enabled", zbbVar2, e74Var2, expression2);
            Expression expression3 = expressionL == null ? expression2 : expressionL;
            Expression expressionD = pa5.d(ex7Var, jSONObject, "log_id", acb.c);
            y45.i(expressionD, "readExpression(context, …_id\", TYPE_HELPER_STRING)");
            pnb pnbVar2 = y0.g;
            Expression expression4 = y0.d;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "log_limit", zbbVar, e74Var, pnbVar2, expression4);
            Expression expression5 = expressionK2 == null ? expression4 : expressionK2;
            JSONObject jSONObject2 = (JSONObject) tb5.k(ex7Var, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD);
            zbb zbbVar3 = acb.e;
            e74 e74Var3 = ParsingConvertersKt.e;
            Expression expressionI = pa5.i(ex7Var, jSONObject, Progress.REFERER, zbbVar3, e74Var3);
            String str = (String) tb5.k(ex7Var, jSONObject, "scope_id");
            DivActionTyped divActionTyped = (DivActionTyped) tb5.n(ex7Var, jSONObject, "typed", this.a.h1());
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "url", zbbVar3, e74Var3);
            pnb pnbVar3 = y0.h;
            Expression expression6 = y0.e;
            Expression expressionK3 = pa5.k(ex7Var, jSONObject, "visibility_percentage", zbbVar, e74Var, pnbVar3, expression6);
            if (expressionK3 == null) {
                expressionK3 = expression6;
            }
            return new DivDisappearAction(expression, divDownloadCallbacks, expression3, expressionD, expression5, jSONObject2, expressionI, str, divActionTyped, expressionI2, expressionK3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivDisappearAction divDisappearAction) {
            y45.j(ex7Var, "context");
            y45.j(divDisappearAction, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "disappear_duration", divDisappearAction.a);
            tb5.x(ex7Var, jSONObject, "download_callbacks", divDisappearAction.a(), this.a.P2());
            pa5.p(ex7Var, jSONObject, "is_enabled", divDisappearAction.isEnabled());
            pa5.p(ex7Var, jSONObject, "log_id", divDisappearAction.b());
            pa5.p(ex7Var, jSONObject, "log_limit", divDisappearAction.c());
            tb5.v(ex7Var, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD, divDisappearAction.getPayload());
            Expression expressionF = divDisappearAction.f();
            e74 e74Var = ParsingConvertersKt.c;
            pa5.q(ex7Var, jSONObject, Progress.REFERER, expressionF, e74Var);
            tb5.v(ex7Var, jSONObject, "scope_id", divDisappearAction.e());
            tb5.x(ex7Var, jSONObject, "typed", divDisappearAction.d(), this.a.h1());
            pa5.q(ex7Var, jSONObject, "url", divDisappearAction.getUrl(), e74Var);
            pa5.p(ex7Var, jSONObject, "visibility_percentage", divDisappearAction.k);
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
        public DivDisappearActionTemplate c(ex7 ex7Var, DivDisappearActionTemplate divDisappearActionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            zbb zbbVar = acb.b;
            tp3 tp3Var = divDisappearActionTemplate != null ? divDisappearActionTemplate.a : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "disappear_duration", zbbVar, zC, tp3Var, e74Var, y0.f);
            y45.i(tp3VarV, "readOptionalFieldWithExp…PPEAR_DURATION_VALIDATOR)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "download_callbacks", zC, divDisappearActionTemplate != null ? divDisappearActionTemplate.b : null, this.a.Q2());
            y45.i(tp3VarS, "readOptionalField(contex…lbacksJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "is_enabled", acb.a, zC, divDisappearActionTemplate != null ? divDisappearActionTemplate.c : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…sEnabled, ANY_TO_BOOLEAN)");
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "log_id", acb.c, zC, divDisappearActionTemplate != null ? divDisappearActionTemplate.d : null);
            y45.i(tp3VarH, "readFieldWithExpression(…wOverride, parent?.logId)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "log_limit", zbbVar, zC, divDisappearActionTemplate != null ? divDisappearActionTemplate.e : null, e74Var, y0.g);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…INT, LOG_LIMIT_VALIDATOR)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD, zC, divDisappearActionTemplate != null ? divDisappearActionTemplate.f : null);
            y45.i(tp3VarP, "readOptionalField(contex…verride, parent?.payload)");
            zbb zbbVar2 = acb.e;
            tp3 tp3Var2 = divDisappearActionTemplate != null ? divDisappearActionTemplate.g : null;
            e74 e74Var2 = ParsingConvertersKt.e;
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, Progress.REFERER, zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…ent?.referer, ANY_TO_URI)");
            tp3 tp3VarP2 = ra5.p(ex7VarC, jSONObject, "scope_id", zC, divDisappearActionTemplate != null ? divDisappearActionTemplate.h : null);
            y45.i(tp3VarP2, "readOptionalField(contex…verride, parent?.scopeId)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "typed", zC, divDisappearActionTemplate != null ? divDisappearActionTemplate.i : null, this.a.i1());
            y45.i(tp3VarS2, "readOptionalField(contex…nTypedJsonTemplateParser)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "url", zbbVar2, zC, divDisappearActionTemplate != null ? divDisappearActionTemplate.j : null, e74Var2);
            y45.i(tp3VarU3, "readOptionalFieldWithExp… parent?.url, ANY_TO_URI)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "visibility_percentage", zbbVar, zC, divDisappearActionTemplate != null ? divDisappearActionTemplate.k : null, e74Var, y0.h);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…ITY_PERCENTAGE_VALIDATOR)");
            return new DivDisappearActionTemplate(tp3VarV, tp3VarS, tp3VarU, tp3VarH, tp3VarV2, tp3VarP, tp3VarU2, tp3VarP2, tp3VarS2, tp3VarU3, tp3VarV3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivDisappearActionTemplate divDisappearActionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divDisappearActionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "disappear_duration", divDisappearActionTemplate.a);
            ra5.I(ex7Var, jSONObject, "download_callbacks", divDisappearActionTemplate.b, this.a.Q2());
            ra5.D(ex7Var, jSONObject, "is_enabled", divDisappearActionTemplate.c);
            ra5.D(ex7Var, jSONObject, "log_id", divDisappearActionTemplate.d);
            ra5.D(ex7Var, jSONObject, "log_limit", divDisappearActionTemplate.e);
            ra5.G(ex7Var, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD, divDisappearActionTemplate.f);
            tp3 tp3Var = divDisappearActionTemplate.g;
            e74 e74Var = ParsingConvertersKt.c;
            ra5.E(ex7Var, jSONObject, Progress.REFERER, tp3Var, e74Var);
            ra5.G(ex7Var, jSONObject, "scope_id", divDisappearActionTemplate.h);
            ra5.I(ex7Var, jSONObject, "typed", divDisappearActionTemplate.i, this.a.i1());
            ra5.E(ex7Var, jSONObject, "url", divDisappearActionTemplate.j, e74Var);
            ra5.D(ex7Var, jSONObject, "visibility_percentage", divDisappearActionTemplate.k);
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
        public DivDisappearAction a(ex7 ex7Var, DivDisappearActionTemplate divDisappearActionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divDisappearActionTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divDisappearActionTemplate.a;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            pnb pnbVar = y0.f;
            Expression expression = y0.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "disappear_duration", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            DivDownloadCallbacks divDownloadCallbacks = (DivDownloadCallbacks) sa5.p(ex7Var, divDisappearActionTemplate.b, jSONObject, "download_callbacks", this.a.R2(), this.a.P2());
            tp3 tp3Var2 = divDisappearActionTemplate.c;
            zbb zbbVar2 = acb.a;
            e74 e74Var2 = ParsingConvertersKt.f;
            Expression expression2 = y0.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var2, jSONObject, "is_enabled", zbbVar2, e74Var2, expression2);
            Expression expression3 = expressionV == null ? expression2 : expressionV;
            Expression expressionG = sa5.g(ex7Var, divDisappearActionTemplate.d, jSONObject, "log_id", acb.c);
            y45.i(expressionG, "resolveExpression(contex…_id\", TYPE_HELPER_STRING)");
            tp3 tp3Var3 = divDisappearActionTemplate.e;
            pnb pnbVar2 = y0.g;
            Expression expression4 = y0.d;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var3, jSONObject, "log_limit", zbbVar, e74Var, pnbVar2, expression4);
            if (expressionU2 != null) {
                expression4 = expressionU2;
            }
            JSONObject jSONObject2 = (JSONObject) sa5.m(ex7Var, divDisappearActionTemplate.f, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD);
            tp3 tp3Var4 = divDisappearActionTemplate.g;
            zbb zbbVar3 = acb.e;
            e74 e74Var3 = ParsingConvertersKt.e;
            Expression expressionS = sa5.s(ex7Var, tp3Var4, jSONObject, Progress.REFERER, zbbVar3, e74Var3);
            String str = (String) sa5.m(ex7Var, divDisappearActionTemplate.h, jSONObject, "scope_id");
            DivActionTyped divActionTyped = (DivActionTyped) sa5.p(ex7Var, divDisappearActionTemplate.i, jSONObject, "typed", this.a.j1(), this.a.h1());
            Expression expressionS2 = sa5.s(ex7Var, divDisappearActionTemplate.j, jSONObject, "url", zbbVar3, e74Var3);
            tp3 tp3Var5 = divDisappearActionTemplate.k;
            pnb pnbVar3 = y0.h;
            Expression expression5 = y0.e;
            Expression expressionU3 = sa5.u(ex7Var, tp3Var5, jSONObject, "visibility_percentage", zbbVar, e74Var, pnbVar3, expression5);
            return new DivDisappearAction(expression, divDownloadCallbacks, expression3, expressionG, expression4, jSONObject2, expressionS, str, divActionTyped, expressionS2, expressionU3 == null ? expression5 : expressionU3);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(800L);
        c = aVar.a(Boolean.TRUE);
        d = aVar.a(1L);
        e = aVar.a(0L);
        f = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return y0.d(((Long) obj).longValue());
            }
        };
        g = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return y0.e(((Long) obj).longValue());
            }
        };
        h = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return y0.f(((Long) obj).longValue());
            }
        };
    }

    public static final boolean d(long j) {
        return j >= 0;
    }

    public static final boolean e(long j) {
        return j >= 0;
    }

    public static final boolean f(long j) {
        return j >= 0 && j < 100;
    }
}
