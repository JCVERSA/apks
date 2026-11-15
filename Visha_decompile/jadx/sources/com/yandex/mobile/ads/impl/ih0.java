package com.yandex.mobile.ads.impl;

import java.io.IOException;

public final class ih0 extends h42 {
    final hh0 e;
    final oh0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ih0(String str, hh0 hh0Var, oh0 oh0Var) {
        super(str, true);
        this.e = hh0Var;
        this.f = oh0Var;
    }

    @Override
    public final long e() {
        try {
            this.e.e().a(this.f);
            return -1L;
        } catch (IOException e) {
            int i = rh1.c;
            rh1 rh1VarA = rh1.a.a();
            String str = "Http2Connection.Listener failure for " + this.e.c();
            rh1VarA.getClass();
            rh1.a(4, str, e);
            try {
                this.f.a(t50.e, e);
                return -1L;
            } catch (IOException unused) {
                return -1L;
            }
        }
    }
}
