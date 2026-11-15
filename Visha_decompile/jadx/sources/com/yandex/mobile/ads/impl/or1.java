package com.yandex.mobile.ads.impl;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;

final class or1 extends BufferedOutputStream {
    private boolean a;

    public or1(FileOutputStream fileOutputStream, int i) {
        super(fileOutputStream, i);
    }

    public final void a(OutputStream outputStream) {
        if (!this.a) {
            throw new IllegalStateException();
        }
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.a = false;
    }

    @Override
    public final void close() throws Throwable {
        this.a = true;
        flush();
        th = null;
        try {
            ((BufferedOutputStream) this).out.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        if (th == null) {
            return;
        }
        int i = f92.a;
        throw th;
    }

    public or1(OutputStream outputStream) {
        super(outputStream);
    }
}
