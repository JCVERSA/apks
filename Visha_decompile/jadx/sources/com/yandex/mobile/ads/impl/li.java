package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.cookie.SerializableCookie;
import defpackage.xe9;
import defpackage.y45;
import java.util.Set;

public final class li {
    public static Set a(rt rtVar) {
        y45.j(rtVar, "nativeAdAssets");
        Set setB = xe9.b();
        if (rtVar.a() != null) {
            setB.add("age");
        }
        if (rtVar.b() != null) {
            setB.add(TtmlNode.TAG_BODY);
        }
        if (rtVar.c() != null) {
            setB.add("call_to_action");
        }
        if (rtVar.d() != null) {
            setB.add(SerializableCookie.DOMAIN);
        }
        if (rtVar.e() != null) {
            setB.add("favicon");
        }
        if (rtVar.g() != null) {
            setB.add("icon");
        }
        if (rtVar.h() != null) {
            setB.add("media");
        }
        if (rtVar.i() != null) {
            setB.add("media");
        }
        if (rtVar.j() != null) {
            setB.add("price");
        }
        if (rtVar.k() != null) {
            setB.add("rating");
        }
        if (rtVar.l() != null) {
            setB.add("review_count");
        }
        if (rtVar.m() != null) {
            setB.add("sponsored");
        }
        if (rtVar.n() != null) {
            setB.add("title");
        }
        if (rtVar.o() != null) {
            setB.add("warning");
        }
        if (rtVar.f()) {
            setB.add("feedback");
        }
        return xe9.a(setB);
    }
}
