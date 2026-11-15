package io.reactivex.rxjava3.internal.subscribers;

import java.util.concurrent.atomic.AtomicLong;

abstract class e extends d {
    final AtomicLong requested = new AtomicLong();

    e() {
    }
}
