package io.reactivex.rxjava3.internal.subscribers;

import java.util.concurrent.atomic.AtomicInteger;

abstract class g extends c {
    final AtomicInteger wip = new AtomicInteger();

    g() {
    }
}
