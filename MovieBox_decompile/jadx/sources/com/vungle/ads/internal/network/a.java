package com.vungle.ads.internal.network;

import java.io.IOException;

public interface a {
    void cancel();

    void enqueue(b bVar);

    e execute() throws IOException;

    boolean isCanceled();
}
