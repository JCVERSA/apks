package com.bykv.vk.openvk.preload.geckox.c;

import com.bykv.vk.openvk.preload.a.d;
import com.bykv.vk.openvk.preload.a.e;

public final class b {

    private static b f20042a = new b();

    private d f20043b;

    private b() {
        e eVar = new e();
        eVar.a(Boolean.class, new a());
        eVar.a(Boolean.TYPE, new a());
        this.f20043b = eVar.a();
    }

    public static b a() {
        return f20042a;
    }

    public final d b() {
        return this.f20043b;
    }
}
