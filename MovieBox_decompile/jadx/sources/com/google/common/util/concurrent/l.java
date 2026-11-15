package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

public abstract class l extends k implements r {

    public static abstract class a extends l {

        private final r f30209a;

        protected a(r rVar) {
            this.f30209a = (r) com.google.common.base.m.o(rVar);
        }

        @Override
        public final r l() {
            return this.f30209a;
        }
    }

    protected l() {
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        delegate().addListener(runnable, executor);
    }

    protected abstract r delegate();
}
