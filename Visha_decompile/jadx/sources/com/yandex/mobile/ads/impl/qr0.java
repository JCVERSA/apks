package com.yandex.mobile.ads.impl;

import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;
import java.util.List;

public final class qr0 {
    private final List<ig<?>> a;

    private qr0(List list) {
        this.a = list;
    }

    public final List<ig<?>> a() {
        return this.a;
    }

    public static final class a {
        private List<? extends ig<?>> a = defpackage.y71.k();

        public final void a(List<? extends ig<?>> list) {
            y45.j(list, "assets");
            this.a = list;
        }

        public final void a(vr0 vr0Var) {
            y45.j(vr0Var, AuthInfo.Component.CODE_LINK);
        }

        public final qr0 a() {
            return new qr0(this.a, 0);
        }
    }

    public qr0(List list, int i) {
        this(list);
    }
}
