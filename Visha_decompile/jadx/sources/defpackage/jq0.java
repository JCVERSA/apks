package defpackage;

import okhttp3.Request;

public interface jq0<T> extends Cloneable {
    void cancel();

    jq0 clone();

    void enqueue(tq0 tq0Var);

    gu8 execute();

    boolean isCanceled();

    boolean isExecuted();

    Request request();
}
