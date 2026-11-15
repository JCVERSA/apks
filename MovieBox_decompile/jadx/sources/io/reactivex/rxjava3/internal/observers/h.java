package io.reactivex.rxjava3.internal.observers;

import java.util.concurrent.atomic.AtomicInteger;

abstract class h extends f {
    final AtomicInteger wip = new AtomicInteger();

    h() {
    }
}
