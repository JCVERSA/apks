package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import com.transsion.push.PushConstants;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAction;
import defpackage.oj3;
import defpackage.sv2;
import defpackage.y45;
import org.json.JSONObject;

public final class k20 extends defpackage.cf2 {
    private final zr a;
    private final l20 b;
    private final v20 c;
    private final k30 d;
    private final j30 e;

    public k20(Context context, o3 o3Var, o8 o8Var, zr zrVar, l20 l20Var, v20 v20Var) {
        this(context, o3Var, o8Var, zrVar, l20Var, v20Var, new k30(new lh1(context, o3Var, z62.d)), new j30(o3Var, o8Var));
    }

    private final boolean a(JSONObject jSONObject, Uri uri, sv2 sv2Var) {
        if (!y45.e(uri.getScheme(), "mobileads")) {
            return false;
        }
        String host = uri.getHost();
        if (host != null) {
            int iHashCode = host.hashCode();
            if (iHashCode != 94750088) {
                if (iHashCode != 866535483) {
                    if (iHashCode != 986975867) {
                        if (iHashCode == 1270469668 && host.equals("trackUrl")) {
                            this.d.a(uri);
                            return true;
                        }
                    } else if (host.equals("trackAnalytics")) {
                        this.e.a(uri, jSONObject);
                        return true;
                    }
                } else if (host.equals("closeAd")) {
                    this.a.f();
                    return true;
                }
            } else if (host.equals(PushConstants.PUSH_SERVICE_TYPE_CLICK)) {
                v20 v20Var = this.c;
                View view = sv2Var.getView();
                y45.i(view, "getView(...)");
                v20Var.a(uri, view);
                return true;
            }
        }
        return this.b.a(uri);
    }

    @Override
    public final boolean handleAction(DivAction divAction, sv2 sv2Var, oj3 oj3Var) {
        y45.j(divAction, "action");
        y45.j(sv2Var, "view");
        y45.j(oj3Var, "expressionResolver");
        if (super.handleAction(divAction, sv2Var, oj3Var)) {
            return true;
        }
        Expression expression = divAction.k;
        return expression != null && a(divAction.f, (Uri) expression.b(oj3Var), sv2Var);
    }

    public k20(Context context, o3 o3Var, o8<?> o8Var, zr zrVar, l20 l20Var, v20 v20Var, k30 k30Var, j30 j30Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(zrVar, "contentCloseListener");
        y45.j(l20Var, "delegate");
        y45.j(v20Var, "clickHandler");
        y45.j(k30Var, "trackingUrlHandler");
        y45.j(j30Var, "trackAnalyticsHandler");
        this.a = zrVar;
        this.b = l20Var;
        this.c = v20Var;
        this.d = k30Var;
        this.e = j30Var;
    }

    @Override
    public final boolean handleAction(defpackage.wp2 wp2Var, sv2 sv2Var, oj3 oj3Var) {
        y45.j(wp2Var, "action");
        y45.j(sv2Var, "view");
        y45.j(oj3Var, "resolver");
        if (super.handleAction(wp2Var, sv2Var, oj3Var)) {
            return true;
        }
        Expression url = wp2Var.getUrl();
        return url != null && a(wp2Var.getPayload(), (Uri) url.b(oj3Var), sv2Var);
    }

    public final void a(vo voVar) {
        this.c.a(voVar);
    }
}
