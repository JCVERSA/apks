package io.reactivex.parallel;

import defpackage.be0;

public enum ParallelFailureHandling implements be0 {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    @Override
    public ParallelFailureHandling apply(Long l, Throwable th) {
        return this;
    }
}
