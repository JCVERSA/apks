package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import com.amazonaws.logging.LogFactory;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

public abstract class SdkInputStream extends InputStream implements MetricAware {
    @Override
    public final boolean d() {
        Closeable closeableL = l();
        if (closeableL instanceof MetricAware) {
            return ((MetricAware) closeableL).d();
        }
        return false;
    }

    protected final void k() {
        if (Thread.interrupted()) {
            try {
                h();
            } catch (IOException e10) {
                LogFactory.b(getClass()).g("FYI", e10);
            }
            throw new AbortedException();
        }
    }

    protected abstract InputStream l();

    protected void h() {
    }
}
