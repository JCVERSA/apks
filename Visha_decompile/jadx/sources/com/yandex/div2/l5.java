package com.yandex.div2;

import com.lzy.okgo.model.Progress;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.l5;
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

public abstract class l5 {
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
        public DivVisibilityAction a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivDownloadCallbacks divDownloadCallbacks = (DivDownloadCallbacks) tb5.n(ex7Var, jSONObject, "download_callbacks", this.a.P2());
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = l5.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "is_enabled", zbbVar, e74Var, expression);
            Expression expression2 = expressionL == null ? expression : expressionL;
            Expression expressionD = pa5.d(ex7Var, jSONObject, "log_id", acb.c);
            y45.i(expressionD, "readExpression(context, …_id\", TYPE_HELPER_STRING)");
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            pnb pnbVar = l5.f;
            Expression expression3 = l5.c;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "log_limit", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionK != null) {
                expression3 = expressionK;
            }
            JSONObject jSONObject2 = (JSONObject) tb5.k(ex7Var, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD);
            zbb zbbVar3 = acb.e;
            e74 e74Var3 = ParsingConvertersKt.e;
            Expression expressionI = pa5.i(ex7Var, jSONObject, Progress.REFERER, zbbVar3, e74Var3);
            String str = (String) tb5.k(ex7Var, jSONObject, "scope_id");
            DivActionTyped divActionTyped = (DivActionTyped) tb5.n(ex7Var, jSONObject, "typed", this.a.h1());
            Expression expressionI2 = pa5.i(ex7Var, jSONObject, "url", zbbVar3, e74Var3);
            pnb pnbVar2 = l5.g;
            Expression expression4 = l5.d;
            Expression expressionK2 = pa5.k(ex7Var, jSONObject, "visibility_duration", zbbVar2, e74Var2, pnbVar2, expression4);
            if (expressionK2 != null) {
                expression4 = expressionK2;
            }
            pnb pnbVar3 = l5.h;
            Expression expression5 = l5.e;
            Expression expressionK3 = pa5.k(ex7Var, jSONObject, "visibility_percentage", zbbVar2, e74Var2, pnbVar3, expression5);
            return new DivVisibilityAction(divDownloadCallbacks, expression2, expressionD, expression3, jSONObject2, expressionI, str, divActionTyped, expressionI2, expression4, expressionK3 == null ? expression5 : expressionK3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivVisibilityAction divVisibilityAction) {
            y45.j(ex7Var, "context");
            y45.j(divVisibilityAction, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "download_callbacks", divVisibilityAction.a(), this.a.P2());
            pa5.p(ex7Var, jSONObject, "is_enabled", divVisibilityAction.isEnabled());
            pa5.p(ex7Var, jSONObject, "log_id", divVisibilityAction.b());
            pa5.p(ex7Var, jSONObject, "log_limit", divVisibilityAction.c());
            tb5.v(ex7Var, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD, divVisibilityAction.getPayload());
            Expression expressionF = divVisibilityAction.f();
            e74 e74Var = ParsingConvertersKt.c;
            pa5.q(ex7Var, jSONObject, Progress.REFERER, expressionF, e74Var);
            tb5.v(ex7Var, jSONObject, "scope_id", divVisibilityAction.e());
            tb5.x(ex7Var, jSONObject, "typed", divVisibilityAction.d(), this.a.h1());
            pa5.q(ex7Var, jSONObject, "url", divVisibilityAction.getUrl(), e74Var);
            pa5.p(ex7Var, jSONObject, "visibility_duration", divVisibilityAction.j);
            pa5.p(ex7Var, jSONObject, "visibility_percentage", divVisibilityAction.k);
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
        public DivVisibilityActionTemplate c(ex7 ex7Var, DivVisibilityActionTemplate divVisibilityActionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "download_callbacks", zC, divVisibilityActionTemplate != null ? divVisibilityActionTemplate.a : null, this.a.Q2());
            y45.i(tp3VarS, "readOptionalField(contex…lbacksJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "is_enabled", acb.a, zC, divVisibilityActionTemplate != null ? divVisibilityActionTemplate.b : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…sEnabled, ANY_TO_BOOLEAN)");
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "log_id", acb.c, zC, divVisibilityActionTemplate != null ? divVisibilityActionTemplate.c : null);
            y45.i(tp3VarH, "readFieldWithExpression(…wOverride, parent?.logId)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divVisibilityActionTemplate != null ? divVisibilityActionTemplate.d : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "log_limit", zbbVar, zC, tp3Var, e74Var, l5.f);
            y45.i(tp3VarV, "readOptionalFieldWithExp…INT, LOG_LIMIT_VALIDATOR)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD, zC, divVisibilityActionTemplate != null ? divVisibilityActionTemplate.e : null);
            y45.i(tp3VarP, "readOptionalField(contex…verride, parent?.payload)");
            zbb zbbVar2 = acb.e;
            tp3 tp3Var2 = divVisibilityActionTemplate != null ? divVisibilityActionTemplate.f : null;
            e74 e74Var2 = ParsingConvertersKt.e;
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, Progress.REFERER, zbbVar2, zC, tp3Var2, e74Var2);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…ent?.referer, ANY_TO_URI)");
            tp3 tp3VarP2 = ra5.p(ex7VarC, jSONObject, "scope_id", zC, divVisibilityActionTemplate != null ? divVisibilityActionTemplate.g : null);
            y45.i(tp3VarP2, "readOptionalField(contex…verride, parent?.scopeId)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "typed", zC, divVisibilityActionTemplate != null ? divVisibilityActionTemplate.h : null, this.a.i1());
            y45.i(tp3VarS2, "readOptionalField(contex…nTypedJsonTemplateParser)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "url", zbbVar2, zC, divVisibilityActionTemplate != null ? divVisibilityActionTemplate.i : null, e74Var2);
            y45.i(tp3VarU3, "readOptionalFieldWithExp… parent?.url, ANY_TO_URI)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "visibility_duration", zbbVar, zC, divVisibilityActionTemplate != null ? divVisibilityActionTemplate.j : null, e74Var, l5.g);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…ILITY_DURATION_VALIDATOR)");
            tp3 tp3VarV3 = ra5.v(ex7VarC, jSONObject, "visibility_percentage", zbbVar, zC, divVisibilityActionTemplate != null ? divVisibilityActionTemplate.k : null, e74Var, l5.h);
            y45.i(tp3VarV3, "readOptionalFieldWithExp…ITY_PERCENTAGE_VALIDATOR)");
            return new DivVisibilityActionTemplate(tp3VarS, tp3VarU, tp3VarH, tp3VarV, tp3VarP, tp3VarU2, tp3VarP2, tp3VarS2, tp3VarU3, tp3VarV2, tp3VarV3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivVisibilityActionTemplate divVisibilityActionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divVisibilityActionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "download_callbacks", divVisibilityActionTemplate.a, this.a.Q2());
            ra5.D(ex7Var, jSONObject, "is_enabled", divVisibilityActionTemplate.b);
            ra5.D(ex7Var, jSONObject, "log_id", divVisibilityActionTemplate.c);
            ra5.D(ex7Var, jSONObject, "log_limit", divVisibilityActionTemplate.d);
            ra5.G(ex7Var, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD, divVisibilityActionTemplate.e);
            tp3 tp3Var = divVisibilityActionTemplate.f;
            e74 e74Var = ParsingConvertersKt.c;
            ra5.E(ex7Var, jSONObject, Progress.REFERER, tp3Var, e74Var);
            ra5.G(ex7Var, jSONObject, "scope_id", divVisibilityActionTemplate.g);
            ra5.I(ex7Var, jSONObject, "typed", divVisibilityActionTemplate.h, this.a.i1());
            ra5.E(ex7Var, jSONObject, "url", divVisibilityActionTemplate.i, e74Var);
            ra5.D(ex7Var, jSONObject, "visibility_duration", divVisibilityActionTemplate.j);
            ra5.D(ex7Var, jSONObject, "visibility_percentage", divVisibilityActionTemplate.k);
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
        public DivVisibilityAction a(ex7 ex7Var, DivVisibilityActionTemplate divVisibilityActionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divVisibilityActionTemplate, "template");
            y45.j(jSONObject, "data");
            DivDownloadCallbacks divDownloadCallbacks = (DivDownloadCallbacks) sa5.p(ex7Var, divVisibilityActionTemplate.a, jSONObject, "download_callbacks", this.a.R2(), this.a.P2());
            tp3 tp3Var = divVisibilityActionTemplate.b;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = l5.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "is_enabled", zbbVar, e74Var, expression);
            Expression expression2 = expressionV == null ? expression : expressionV;
            Expression expressionG = sa5.g(ex7Var, divVisibilityActionTemplate.c, jSONObject, "log_id", acb.c);
            y45.i(expressionG, "resolveExpression(contex…_id\", TYPE_HELPER_STRING)");
            tp3 tp3Var2 = divVisibilityActionTemplate.d;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            pnb pnbVar = l5.f;
            Expression expression3 = l5.c;
            Expression expressionU = sa5.u(ex7Var, tp3Var2, jSONObject, "log_limit", zbbVar2, e74Var2, pnbVar, expression3);
            if (expressionU != null) {
                expression3 = expressionU;
            }
            JSONObject jSONObject2 = (JSONObject) sa5.m(ex7Var, divVisibilityActionTemplate.e, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD);
            tp3 tp3Var3 = divVisibilityActionTemplate.f;
            zbb zbbVar3 = acb.e;
            e74 e74Var3 = ParsingConvertersKt.e;
            Expression expressionS = sa5.s(ex7Var, tp3Var3, jSONObject, Progress.REFERER, zbbVar3, e74Var3);
            String str = (String) sa5.m(ex7Var, divVisibilityActionTemplate.g, jSONObject, "scope_id");
            DivActionTyped divActionTyped = (DivActionTyped) sa5.p(ex7Var, divVisibilityActionTemplate.h, jSONObject, "typed", this.a.j1(), this.a.h1());
            Expression expressionS2 = sa5.s(ex7Var, divVisibilityActionTemplate.i, jSONObject, "url", zbbVar3, e74Var3);
            tp3 tp3Var4 = divVisibilityActionTemplate.j;
            pnb pnbVar2 = l5.g;
            Expression expression4 = l5.d;
            Expression expressionU2 = sa5.u(ex7Var, tp3Var4, jSONObject, "visibility_duration", zbbVar2, e74Var2, pnbVar2, expression4);
            if (expressionU2 != null) {
                expression4 = expressionU2;
            }
            tp3 tp3Var5 = divVisibilityActionTemplate.k;
            pnb pnbVar3 = l5.h;
            Expression expression5 = l5.e;
            Expression expressionU3 = sa5.u(ex7Var, tp3Var5, jSONObject, "visibility_percentage", zbbVar2, e74Var2, pnbVar3, expression5);
            if (expressionU3 == null) {
                expressionU3 = expression5;
            }
            return new DivVisibilityAction(divDownloadCallbacks, expression2, expressionG, expression3, jSONObject2, expressionS, str, divActionTyped, expressionS2, expression4, expressionU3);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Boolean.TRUE);
        c = aVar.a(1L);
        d = aVar.a(800L);
        e = aVar.a(50L);
        f = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return l5.d(((Long) obj).longValue());
            }
        };
        g = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return l5.e(((Long) obj).longValue());
            }
        };
        h = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return l5.f(((Long) obj).longValue());
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
        return j > 0 && j <= 100;
    }
}
