package com.amazonaws.internal;

import com.amazonaws.async.Callback;

public abstract class ReturningRunnable<R> {

    private final String f17795a = null;

    class AnonymousClass1 implements Runnable {
        final Callback val$callback;

        AnonymousClass1(Callback callback) {
        }

        @Override
        public void run() {
            try {
                ReturningRunnable.this.b();
                throw null;
            } catch (Exception e10) {
                ReturningRunnable.this.f17795a.getClass();
                new Exception(ReturningRunnable.this.f17795a, e10);
                throw null;
            }
        }
    }

    public abstract Object b();
}
