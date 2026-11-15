package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;
import org.json.JSONException;

public final class c71 implements ir1<y61> {
    private final vi2 a;
    private final k91 b;

    public c71(Context context, sp1 sp1Var) {
        this(context, sp1Var, wc1.a(), new k91(context, sp1Var));
    }

    public final y61 a(String str, xj xjVar) {
        y45.j(str, "stringResponse");
        y45.j(xjVar, "base64EncodingParameters");
        try {
            return this.b.a(str, xjVar);
        } catch (t61 unused) {
            sp0.b(new Object[0]);
            return null;
        } catch (JSONException unused2) {
            sp0.b(new Object[0]);
            return null;
        }
    }

    public c71(Context context, sp1 sp1Var, vi2 vi2Var, k91 k91Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(vi2Var, "volleyNetworkResponseDecoder");
        y45.j(k91Var, "nativeJsonParser");
        this.a = vi2Var;
        this.b = k91Var;
    }

    @Override
    public final y61 a(xc1 xc1Var) {
        y45.j(xc1Var, "networkResponse");
        String strA = this.a.a(xc1Var);
        if (strA == null || strA.length() == 0) {
            return null;
        }
        Map<String, String> mapL = xc1Var.c;
        if (mapL == null) {
            mapL = kotlin.collections.a.l();
        }
        return a(strA, new wj(mapL));
    }
}
