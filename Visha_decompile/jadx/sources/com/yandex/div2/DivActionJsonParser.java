package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.lzy.okgo.model.Progress;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
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
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivActionJsonParser {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(Boolean.TRUE);
    public static final zbb c = zbb.a.a(hi.W(DivAction.Target.values()), new e74() {
        @Override
        public final Boolean invoke(Object obj) {
            y45.j(obj, "it");
            return Boolean.valueOf(obj instanceof DivAction.Target);
        }
    });

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
        public DivAction a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivDownloadCallbacks divDownloadCallbacks = (DivDownloadCallbacks) tb5.n(ex7Var, jSONObject, "download_callbacks", this.a.P2());
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = DivActionJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "is_enabled", zbbVar, e74Var, expression);
            Expression expression2 = expressionL == null ? expression : expressionL;
            Expression expressionD = pa5.d(ex7Var, jSONObject, "log_id", acb.c);
            y45.i(expressionD, "readExpression(context, …_id\", TYPE_HELPER_STRING)");
            zbb zbbVar2 = acb.e;
            e74 e74Var2 = ParsingConvertersKt.e;
            return new DivAction(divDownloadCallbacks, expression2, expressionD, pa5.i(ex7Var, jSONObject, "log_url", zbbVar2, e74Var2), tb5.r(ex7Var, jSONObject, "menu_items", this.a.x0()), (JSONObject) tb5.k(ex7Var, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD), pa5.i(ex7Var, jSONObject, Progress.REFERER, zbbVar2, e74Var2), (String) tb5.k(ex7Var, jSONObject, "scope_id"), pa5.i(ex7Var, jSONObject, TypedValues.AttributesType.S_TARGET, DivActionJsonParser.c, DivAction.Target.FROM_STRING), (DivActionTyped) tb5.n(ex7Var, jSONObject, "typed", this.a.h1()), pa5.i(ex7Var, jSONObject, "url", zbbVar2, e74Var2));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivAction divAction) {
            y45.j(ex7Var, "context");
            y45.j(divAction, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "download_callbacks", divAction.a, this.a.P2());
            pa5.p(ex7Var, jSONObject, "is_enabled", divAction.b);
            pa5.p(ex7Var, jSONObject, "log_id", divAction.c);
            Expression expression = divAction.d;
            e74 e74Var = ParsingConvertersKt.c;
            pa5.q(ex7Var, jSONObject, "log_url", expression, e74Var);
            tb5.z(ex7Var, jSONObject, "menu_items", divAction.e, this.a.x0());
            tb5.v(ex7Var, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD, divAction.f);
            pa5.q(ex7Var, jSONObject, Progress.REFERER, divAction.g, e74Var);
            tb5.v(ex7Var, jSONObject, "scope_id", divAction.h);
            pa5.q(ex7Var, jSONObject, TypedValues.AttributesType.S_TARGET, divAction.i, DivAction.Target.TO_STRING);
            tb5.x(ex7Var, jSONObject, "typed", divAction.j, this.a.h1());
            pa5.q(ex7Var, jSONObject, "url", divAction.k, e74Var);
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
        public DivActionTemplate c(ex7 ex7Var, DivActionTemplate divActionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "download_callbacks", zC, divActionTemplate != null ? divActionTemplate.a : null, this.a.Q2());
            y45.i(tp3VarS, "readOptionalField(contex…lbacksJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "is_enabled", acb.a, zC, divActionTemplate != null ? divActionTemplate.b : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…sEnabled, ANY_TO_BOOLEAN)");
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "log_id", acb.c, zC, divActionTemplate != null ? divActionTemplate.c : null);
            y45.i(tp3VarH, "readFieldWithExpression(…wOverride, parent?.logId)");
            zbb zbbVar = acb.e;
            tp3 tp3Var = divActionTemplate != null ? divActionTemplate.d : null;
            e74 e74Var = ParsingConvertersKt.e;
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "log_url", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…rent?.logUrl, ANY_TO_URI)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "menu_items", zC, divActionTemplate != null ? divActionTemplate.e : null, this.a.y0());
            y45.i(tp3VarZ, "readOptionalListField(co…nuItemJsonTemplateParser)");
            tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD, zC, divActionTemplate != null ? divActionTemplate.f : null);
            y45.i(tp3VarP, "readOptionalField(contex…verride, parent?.payload)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, Progress.REFERER, zbbVar, zC, divActionTemplate != null ? divActionTemplate.g : null, e74Var);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…ent?.referer, ANY_TO_URI)");
            tp3 tp3VarP2 = ra5.p(ex7VarC, jSONObject, "scope_id", zC, divActionTemplate != null ? divActionTemplate.h : null);
            y45.i(tp3VarP2, "readOptionalField(contex…verride, parent?.scopeId)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, TypedValues.AttributesType.S_TARGET, DivActionJsonParser.c, zC, divActionTemplate != null ? divActionTemplate.i : null, DivAction.Target.FROM_STRING);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…ction.Target.FROM_STRING)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "typed", zC, divActionTemplate != null ? divActionTemplate.j : null, this.a.i1());
            y45.i(tp3VarS2, "readOptionalField(contex…nTypedJsonTemplateParser)");
            tp3 tp3VarU5 = ra5.u(ex7VarC, jSONObject, "url", zbbVar, zC, divActionTemplate != null ? divActionTemplate.k : null, e74Var);
            y45.i(tp3VarU5, "readOptionalFieldWithExp… parent?.url, ANY_TO_URI)");
            return new DivActionTemplate(tp3VarS, tp3VarU, tp3VarH, tp3VarU2, tp3VarZ, tp3VarP, tp3VarU3, tp3VarP2, tp3VarU4, tp3VarS2, tp3VarU5);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionTemplate divActionTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divActionTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "download_callbacks", divActionTemplate.a, this.a.Q2());
            ra5.D(ex7Var, jSONObject, "is_enabled", divActionTemplate.b);
            ra5.D(ex7Var, jSONObject, "log_id", divActionTemplate.c);
            tp3 tp3Var = divActionTemplate.d;
            e74 e74Var = ParsingConvertersKt.c;
            ra5.E(ex7Var, jSONObject, "log_url", tp3Var, e74Var);
            ra5.K(ex7Var, jSONObject, "menu_items", divActionTemplate.e, this.a.y0());
            ra5.G(ex7Var, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD, divActionTemplate.f);
            ra5.E(ex7Var, jSONObject, Progress.REFERER, divActionTemplate.g, e74Var);
            ra5.G(ex7Var, jSONObject, "scope_id", divActionTemplate.h);
            ra5.E(ex7Var, jSONObject, TypedValues.AttributesType.S_TARGET, divActionTemplate.i, DivAction.Target.TO_STRING);
            ra5.I(ex7Var, jSONObject, "typed", divActionTemplate.j, this.a.i1());
            ra5.E(ex7Var, jSONObject, "url", divActionTemplate.k, e74Var);
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
        public DivAction a(ex7 ex7Var, DivActionTemplate divActionTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divActionTemplate, "template");
            y45.j(jSONObject, "data");
            DivDownloadCallbacks divDownloadCallbacks = (DivDownloadCallbacks) sa5.p(ex7Var, divActionTemplate.a, jSONObject, "download_callbacks", this.a.R2(), this.a.P2());
            tp3 tp3Var = divActionTemplate.b;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = DivActionJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "is_enabled", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            Expression expressionG = sa5.g(ex7Var, divActionTemplate.c, jSONObject, "log_id", acb.c);
            y45.i(expressionG, "resolveExpression(contex…_id\", TYPE_HELPER_STRING)");
            tp3 tp3Var2 = divActionTemplate.d;
            zbb zbbVar2 = acb.e;
            e74 e74Var2 = ParsingConvertersKt.e;
            return new DivAction(divDownloadCallbacks, expression, expressionG, sa5.s(ex7Var, tp3Var2, jSONObject, "log_url", zbbVar2, e74Var2), sa5.B(ex7Var, divActionTemplate.e, jSONObject, "menu_items", this.a.z0(), this.a.x0()), (JSONObject) sa5.m(ex7Var, divActionTemplate.f, jSONObject, TranSearchIndexablesContract.TranRawData.PAYLOAD), sa5.s(ex7Var, divActionTemplate.g, jSONObject, Progress.REFERER, zbbVar2, e74Var2), (String) sa5.m(ex7Var, divActionTemplate.h, jSONObject, "scope_id"), sa5.s(ex7Var, divActionTemplate.i, jSONObject, TypedValues.AttributesType.S_TARGET, DivActionJsonParser.c, DivAction.Target.FROM_STRING), (DivActionTyped) sa5.p(ex7Var, divActionTemplate.j, jSONObject, "typed", this.a.j1(), this.a.h1()), sa5.s(ex7Var, divActionTemplate.k, jSONObject, "url", zbbVar2, e74Var2));
        }
    }
}
