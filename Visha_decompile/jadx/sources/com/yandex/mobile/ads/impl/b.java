package com.yandex.mobile.ads.impl;

import android.net.Uri;
import defpackage.y45;
import java.util.List;
import kotlin.Result;

public final class b implements a {
    private final w82 a;

    public b(w82 w82Var) {
        y45.j(w82Var, "urlUtils");
        this.a = w82Var;
    }

    @Override
    public final boolean a(String str) {
        Object objM279constructorimpl;
        this.a.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(Uri.parse(str).getPathSegments());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        String str2 = null;
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        List list = (List) objM279constructorimpl;
        if (list != null && !list.isEmpty()) {
            str2 = (String) list.get(0);
        }
        return y45.e("appcry", str2);
    }
}
