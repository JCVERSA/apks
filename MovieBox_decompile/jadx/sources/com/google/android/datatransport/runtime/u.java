package com.google.android.datatransport.runtime;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;

abstract class u implements Closeable {

    interface a {
        a a(Context context);

        u build();
    }

    u() {
    }

    @Override
    public void close() throws IOException {
        d().close();
    }

    abstract c9.d d();

    abstract t h();
}
