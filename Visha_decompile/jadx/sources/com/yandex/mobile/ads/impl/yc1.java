package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import org.json.JSONException;

public final class yc1 {
    private final vn1 a;
    private final wn1 b;

    public yc1() {
        this(new vn1(), wn1.b.a());
    }

    public final xc1 a(up1<?> up1Var) {
        y45.j(up1Var, Progress.REQUEST);
        String strA = this.b.a(up1Var);
        if (strA != null) {
            try {
                this.a.getClass();
                un1 un1VarA = vn1.a(strA);
                byte[] bytes = un1VarA.a().getBytes(defpackage.qv0.b);
                y45.i(bytes, "getBytes(...)");
                return new xc1(200, bytes, un1VarA.b(), false);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public yc1(vn1 vn1Var, wn1 wn1Var) {
        y45.j(vn1Var, "readyResponseDecoder");
        y45.j(wn1Var, "readyResponseStorage");
        this.a = vn1Var;
        this.b = wn1Var;
    }
}
