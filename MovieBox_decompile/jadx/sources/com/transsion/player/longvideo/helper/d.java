package com.transsion.player.longvideo.helper;

import kotlin.jvm.internal.Intrinsics;

public abstract class d {

    private mn.j f46104a;

    private String f46105b;

    private kn.a.b f46106c;

    protected final kn.a.b a() {
        return this.f46106c;
    }

    protected final mn.j b() {
        return this.f46104a;
    }

    public void c(String str, mn.j viewBinding) {
        Intrinsics.h(viewBinding, "viewBinding");
        this.f46105b = str;
        this.f46104a = viewBinding;
    }

    public final void d(kn.a.b bVar) {
        this.f46106c = bVar;
    }
}
