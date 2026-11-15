package com.amazonaws.services.s3.model;

import com.amazonaws.internal.MetricAware;
import com.amazonaws.internal.SdkFilterInputStream;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.MetricFilterInputStream;
import com.amazonaws.services.s3.metrics.S3ServiceMetric;
import java.io.IOException;
import java.io.InputStream;

public class S3ObjectInputStream extends SdkFilterInputStream {

    private boolean f18190a;

    public S3ObjectInputStream(InputStream inputStream) {
        super(m(inputStream) ? new MetricFilterInputStream(S3ServiceMetric.f18062b, inputStream) : inputStream);
    }

    private void l() {
        try {
            close();
        } catch (IOException e10) {
            LogFactory.b(getClass()).g("FYI", e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean m(InputStream inputStream) {
        if (!AwsSdkMetrics.isMetricsEnabled()) {
            return false;
        }
        if (inputStream instanceof MetricAware) {
            return !((MetricAware) inputStream).d();
        }
        return true;
    }

    @Override
    public int available() {
        int iAvailable = super.available();
        if (iAvailable == 0) {
            return 1;
        }
        return iAvailable;
    }

    @Override
    public void h() {
        l();
    }

    @Override
    public int read() {
        int i10 = super.read();
        if (i10 == -1) {
            this.f18190a = true;
        }
        return i10;
    }

    @Override
    public void reset() {
        super.reset();
        this.f18190a = false;
    }

    @Override
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        int i12 = super.read(bArr, i10, i11);
        if (i12 == -1) {
            this.f18190a = true;
        }
        return i12;
    }
}
