package io.appmetrica.analytics.impl;

import android.os.Looper;
import java.util.Map;

public final class Xm implements Zm {
    @Override
    public final Thread a() {
        return Looper.getMainLooper().getThread();
    }

    @Override
    public final StackTraceElement[] b() {
        return null;
    }

    @Override
    public final Map c() {
        return Thread.getAllStackTraces();
    }
}
