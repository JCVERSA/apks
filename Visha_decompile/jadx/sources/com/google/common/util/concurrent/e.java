package com.google.common.util.concurrent;

import defpackage.im5;
import defpackage.xd8;
import defpackage.y44;
import java.util.concurrent.Executor;

public abstract class e extends y44 implements im5 {

    public static abstract class a extends e {
        public final im5 b;

        public a(im5 im5Var) {
            this.b = (im5) xd8.o(im5Var);
        }

        @Override
        public final im5 f() {
            return this.b;
        }
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        delegate().addListener(runnable, executor);
    }

    public abstract im5 delegate();
}
