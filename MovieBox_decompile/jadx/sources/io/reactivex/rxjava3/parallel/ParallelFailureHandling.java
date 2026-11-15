package io.reactivex.rxjava3.parallel;

import yx.c;

public enum ParallelFailureHandling implements c {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    @Override
    public ParallelFailureHandling apply(Long l10, Throwable th2) {
        return this;
    }
}
