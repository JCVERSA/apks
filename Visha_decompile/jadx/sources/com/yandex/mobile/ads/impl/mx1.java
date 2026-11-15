package com.yandex.mobile.ads.impl;

public interface mx1 {

    public interface a<T extends mx1> {
        void a(T t);
    }

    boolean continueLoading(long j);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    boolean isLoading();

    void reevaluateBuffer(long j);
}
