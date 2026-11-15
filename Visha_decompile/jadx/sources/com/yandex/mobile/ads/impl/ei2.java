package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.hz9;
import defpackage.y45;
import java.util.Map;

public final class ei2 {
    private static final Map<n92.a, String> a = kotlin.collections.a.p(abb.a(n92.a.d, "Screen is locked"), abb.a(n92.a.e, "Asset value %s doesn't match view value"), abb.a(n92.a.f, "No ad view"), abb.a(n92.a.g, "No valid ads in ad unit"), abb.a(n92.a.h, "No visible required assets"), abb.a(n92.a.i, "Ad view is not added to hierarchy"), abb.a(n92.a.j, "Ad is not visible for percent"), abb.a(n92.a.k, "Required asset %s is not visible in ad view"), abb.a(n92.a.l, "Required asset %s is not subview of ad view"), abb.a(n92.a.c, "Unknown error, that shouldn't happen"), abb.a(n92.a.m, "Ad view is hidden"), abb.a(n92.a.n, "View is too small"), abb.a(n92.a.o, "Visible area of an ad view is too small"));

    public static String a(n92 n92Var) {
        y45.j(n92Var, "validationResult");
        String strA = n92Var.a();
        String str = a.get(n92Var.b());
        if (str == null) {
            return "Visibility error";
        }
        hz9 hz9Var = hz9.a;
        return z0.a(new Object[]{strA}, 1, str, "format(...)");
    }
}
