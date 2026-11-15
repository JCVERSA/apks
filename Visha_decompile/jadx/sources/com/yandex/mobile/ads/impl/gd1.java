package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.IOException;
import java.net.URL;

public final class gd1 {
    public static URL a(up1 up1Var, t82 t82Var) throws IOException {
        y45.j(up1Var, Progress.REQUEST);
        String strL = up1Var.l();
        if (t82Var != null) {
            String strA = t82Var.a(strL);
            if (strA == null) {
                throw new IOException("URL blocked by rewriter: " + strL);
            }
            strL = strA;
        }
        return new URL(strL);
    }
}
