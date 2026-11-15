package com.amazonaws.event;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class ProgressReportingInputStream extends SdkFilterInputStream {

    private int f17756a;

    private final ProgressListenerCallbackExecutor f17757b;

    private int f17758c;

    private boolean f17759d;

    public ProgressReportingInputStream(InputStream inputStream, ProgressListenerCallbackExecutor progressListenerCallbackExecutor) {
        super(inputStream);
        this.f17756a = 8192;
        this.f17757b = progressListenerCallbackExecutor;
    }

    private void l(int i10) {
        int i11 = this.f17758c + i10;
        this.f17758c = i11;
        if (i11 >= this.f17756a) {
            this.f17757b.c(new ProgressEvent(i11));
            this.f17758c = 0;
        }
    }

    private void m() {
        if (this.f17759d) {
            ProgressEvent progressEvent = new ProgressEvent(this.f17758c);
            progressEvent.c(4);
            this.f17758c = 0;
            this.f17757b.c(progressEvent);
        }
    }

    @Override
    public void close() throws IOException {
        int i10 = this.f17758c;
        if (i10 > 0) {
            this.f17757b.c(new ProgressEvent(i10));
            this.f17758c = 0;
        }
        super.close();
    }

    public void n(boolean z10) {
        this.f17759d = z10;
    }

    public void o(int i10) {
        this.f17756a = i10 * 1024;
    }

    @Override
    public int read() {
        int i10 = super.read();
        if (i10 == -1) {
            m();
        } else {
            l(1);
        }
        return i10;
    }

    @Override
    public void reset() {
        super.reset();
        ProgressEvent progressEvent = new ProgressEvent(this.f17758c);
        progressEvent.c(32);
        this.f17757b.c(progressEvent);
        this.f17758c = 0;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        int i12 = super.read(bArr, i10, i11);
        if (i12 == -1) {
            m();
        }
        if (i12 != -1) {
            l(i12);
        }
        return i12;
    }
}
