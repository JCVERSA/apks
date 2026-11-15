package com.yandex.mobile.ads.impl;

import defpackage.hz9;
import defpackage.y45;
import org.json.JSONObject;

public final class g21 {
    private final yf1 a;

    public g21(yf1 yf1Var) {
        y45.j(yf1Var, "parentHtmlWebView");
        this.a = yf1Var;
    }

    private final void a(String str) {
        this.a.loadUrl("javascript: " + str);
        sp0.e(str);
    }

    public final void b(String str) {
        y45.j(str, "htmlResponse");
        this.a.b(str);
    }

    public final void a(tq0... tq0VarArr) {
        y45.j(tq0VarArr, "events");
        int i = 0;
        if (tq0VarArr.length == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder("fireChangeEvent({");
        int length = tq0VarArr.length;
        String str = "";
        while (i < length) {
            tq0 tq0Var = tq0VarArr[i];
            sb.append(str);
            sb.append(tq0Var.a());
            i++;
            str = ", ";
        }
        sb.append("})");
        String string = sb.toString();
        y45.i(string, "toString(...)");
        hz9 hz9Var = hz9.a;
        a(z0.a(new Object[]{string}, 1, "window.mraidbridge.%s", "format(...)"));
    }

    public final void a(s21 s21Var, String str) {
        y45.j(s21Var, "command");
        y45.j(str, "message");
        String str2 = "notifyErrorEvent(" + JSONObject.quote(s21Var.a()) + ", " + JSONObject.quote(str) + ")";
        hz9 hz9Var = hz9.a;
        a(z0.a(new Object[]{str2}, 1, "window.mraidbridge.%s", "format(...)"));
    }

    public final void a(s21 s21Var) {
        y45.j(s21Var, "command");
        String str = "nativeCallComplete(" + JSONObject.quote(s21Var.a()) + ")";
        hz9 hz9Var = hz9.a;
        a(z0.a(new Object[]{str}, 1, "window.mraidbridge.%s", "format(...)"));
    }

    public final void a() {
        hz9 hz9Var = hz9.a;
        a(z0.a(new Object[]{"notifyReadyEvent();"}, 1, "window.mraidbridge.%s", "format(...)"));
    }
}
