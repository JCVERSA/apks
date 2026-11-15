package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.o;

public interface e {
    void accept(o oVar, Object obj);

    boolean cancelled();

    boolean done();

    Throwable error();

    int leave(int i10);
}
