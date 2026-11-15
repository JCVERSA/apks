package io.reactivex.internal.operators.maybe;

import defpackage.k96;
import defpackage.l96;

final class MaybeSubscribeOn$SubscribeTask<T> implements Runnable {
    final k96 observer;
    final l96 source;

    public MaybeSubscribeOn$SubscribeTask(k96 k96Var, l96 l96Var) {
        this.observer = k96Var;
        this.source = l96Var;
    }

    @Override
    public void run() {
        this.source.a(this.observer);
    }
}
