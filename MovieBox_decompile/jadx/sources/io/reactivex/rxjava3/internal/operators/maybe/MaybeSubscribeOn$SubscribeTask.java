package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.core.i;

final class MaybeSubscribeOn$SubscribeTask<T> implements Runnable {
    final h observer;
    final i source;

    MaybeSubscribeOn$SubscribeTask(h hVar, i iVar) {
        this.observer = hVar;
        this.source = iVar;
    }

    @Override
    public void run() {
        this.source.a(this.observer);
    }
}
