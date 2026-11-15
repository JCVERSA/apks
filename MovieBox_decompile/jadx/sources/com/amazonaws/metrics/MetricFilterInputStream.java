package com.amazonaws.metrics;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class MetricFilterInputStream extends SdkFilterInputStream {

    private final ByteThroughputHelper f17824a;

    public MetricFilterInputStream(ThroughputMetricType throughputMetricType, InputStream inputStream) {
        super(inputStream);
        this.f17824a = new ByteThroughputHelper(throughputMetricType);
    }

    @Override
    public void close() throws IOException {
        this.f17824a.f();
        ((FilterInputStream) this).in.close();
        k();
    }

    @Override
    public final boolean d() {
        return true;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        k();
        long jG = this.f17824a.g();
        int i12 = ((FilterInputStream) this).in.read(bArr, i10, i11);
        if (i12 > 0) {
            this.f17824a.d(i12, jG);
        }
        return i12;
    }
}
