package com.yandex.div2;

import android.net.Uri;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.wp2;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivDisappearAction implements d65, ko4, wp2 {
    public static final a m = new a(null);
    public static final Expression n;
    public static final Expression o;
    public static final Expression p;
    public static final Expression q;
    public static final s74 r;
    public final Expression a;
    public final DivDownloadCallbacks b;
    public final Expression c;
    public final Expression d;
    public final Expression e;
    public final JSONObject f;
    public final Expression g;
    public final String h;
    public final DivActionTyped i;
    public final Expression j;
    public final Expression k;
    public Integer l;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivDisappearAction a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((y0.b) ml0.a().M2().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        n = aVar.a(800L);
        o = aVar.a(Boolean.TRUE);
        p = aVar.a(1L);
        q = aVar.a(0L);
        r = new s74() {
            @Override
            public final DivDisappearAction invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivDisappearAction.m.a(hx7Var, jSONObject);
            }
        };
    }

    public DivDisappearAction(Expression expression, DivDownloadCallbacks divDownloadCallbacks, Expression expression2, Expression expression3, Expression expression4, JSONObject jSONObject, Expression expression5, String str, DivActionTyped divActionTyped, Expression expression6, Expression expression7) {
        y45.j(expression, "disappearDuration");
        y45.j(expression2, "isEnabled");
        y45.j(expression3, "logId");
        y45.j(expression4, "logLimit");
        y45.j(expression7, "visibilityPercentage");
        this.a = expression;
        this.b = divDownloadCallbacks;
        this.c = expression2;
        this.d = expression3;
        this.e = expression4;
        this.f = jSONObject;
        this.g = expression5;
        this.h = str;
        this.i = divActionTyped;
        this.j = expression6;
        this.k = expression7;
    }

    @Override
    public DivDownloadCallbacks a() {
        return this.b;
    }

    @Override
    public Expression b() {
        return this.d;
    }

    @Override
    public Expression c() {
        return this.e;
    }

    @Override
    public DivActionTyped d() {
        return this.i;
    }

    @Override
    public String e() {
        return this.h;
    }

    @Override
    public Expression f() {
        return this.g;
    }

    public final boolean g(DivDisappearAction divDisappearAction, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean zA2;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divDisappearAction == null || ((Number) this.a.b(oj3Var)).longValue() != ((Number) divDisappearAction.a.b(oj3Var2)).longValue()) {
            return false;
        }
        DivDownloadCallbacks divDownloadCallbacksA = a();
        if (divDownloadCallbacksA != null) {
            zA = divDownloadCallbacksA.a(divDisappearAction.a(), oj3Var, oj3Var2);
        } else {
            zA = divDisappearAction.a() == null;
        }
        if (!zA || ((Boolean) isEnabled().b(oj3Var)).booleanValue() != ((Boolean) divDisappearAction.isEnabled().b(oj3Var2)).booleanValue() || !y45.e(b().b(oj3Var), divDisappearAction.b().b(oj3Var2)) || ((Number) c().b(oj3Var)).longValue() != ((Number) divDisappearAction.c().b(oj3Var2)).longValue() || !y45.e(getPayload(), divDisappearAction.getPayload())) {
            return false;
        }
        Expression expressionF = f();
        Uri uri = expressionF != null ? (Uri) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divDisappearAction.f();
        if (!y45.e(uri, expressionF2 != null ? (Uri) expressionF2.b(oj3Var2) : null) || !y45.e(e(), divDisappearAction.e())) {
            return false;
        }
        DivActionTyped divActionTypedD = d();
        if (divActionTypedD != null) {
            zA2 = divActionTypedD.a(divDisappearAction.d(), oj3Var, oj3Var2);
        } else {
            zA2 = divDisappearAction.d() == null;
        }
        if (!zA2) {
            return false;
        }
        Expression url = getUrl();
        Uri uri2 = url != null ? (Uri) url.b(oj3Var) : null;
        Expression url2 = divDisappearAction.getUrl();
        return y45.e(uri2, url2 != null ? (Uri) url2.b(oj3Var2) : null) && ((Number) this.k.b(oj3Var)).longValue() == ((Number) divDisappearAction.k.b(oj3Var2)).longValue();
    }

    @Override
    public JSONObject getPayload() {
        return this.f;
    }

    @Override
    public Expression getUrl() {
        return this.j;
    }

    @Override
    public int hash() {
        Integer num = this.l;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivDisappearAction.class).hashCode() + this.a.hashCode();
        DivDownloadCallbacks divDownloadCallbacksA = a();
        int iHash = iHashCode + (divDownloadCallbacksA != null ? divDownloadCallbacksA.hash() : 0) + isEnabled().hashCode() + b().hashCode() + c().hashCode();
        JSONObject payload = getPayload();
        int iHashCode2 = iHash + (payload != null ? payload.hashCode() : 0);
        Expression expressionF = f();
        int iHashCode3 = iHashCode2 + (expressionF != null ? expressionF.hashCode() : 0);
        String strE = e();
        int iHashCode4 = iHashCode3 + (strE != null ? strE.hashCode() : 0);
        DivActionTyped divActionTypedD = d();
        int iHash2 = iHashCode4 + (divActionTypedD != null ? divActionTypedD.hash() : 0);
        Expression url = getUrl();
        int iHashCode5 = iHash2 + (url != null ? url.hashCode() : 0) + this.k.hashCode();
        this.l = Integer.valueOf(iHashCode5);
        return iHashCode5;
    }

    @Override
    public Expression isEnabled() {
        return this.c;
    }

    @Override
    public JSONObject s() {
        return ((y0.b) ml0.a().M2().getValue()).b(ml0.b(), this);
    }
}
