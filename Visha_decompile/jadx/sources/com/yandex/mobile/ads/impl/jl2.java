package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.common.AdInfo;
import com.yandex.mobile.ads.common.AdSize;
import defpackage.y45;

public final class jl2 {
    public static AdInfo a(ss ssVar) {
        y45.j(ssVar, "coreAdInfo");
        h9 h9VarA = ssVar.a();
        return new AdInfo(ssVar.b(), h9VarA != null ? new AdSize(h9VarA.b(), h9VarA.a()) : null, ssVar.c());
    }
}
