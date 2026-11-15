package org.apache.tools.ant.util;

import java.io.IOException;
import java.io.OutputStream;

public class m {

    private OutputStream f68430a;

    private int f68431b = 0;

    private boolean f68432c;

    private long f68433d;

    private final class a extends OutputStream {

        private boolean f68434a;

        @Override
        public void close() {
            m.this.h(this);
        }

        @Override
        public void flush() {
            synchronized (m.this) {
                m.this.f();
                m.this.f68430a.flush();
            }
        }

        @Override
        public void write(int i10) {
            synchronized (m.this) {
                m.this.f();
                m.this.f68430a.write(i10);
            }
        }

        private a() {
            this.f68434a = false;
            synchronized (m.this) {
                m.a(m.this);
            }
        }

        @Override
        public void write(byte[] bArr) {
            synchronized (m.this) {
                m.this.f();
                m.this.f68430a.write(bArr);
            }
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) {
            synchronized (m.this) {
                m.this.f();
                m.this.f68430a.write(bArr, i10, i11);
            }
        }
    }

    public m(OutputStream outputStream, long j10) {
        if (outputStream == null) {
            throw new IllegalArgumentException("OutputStreamFunneler.<init>:  out == null");
        }
        this.f68430a = outputStream;
        this.f68432c = false;
        i(j10);
    }

    static int a(m mVar) {
        int i10 = mVar.f68431b + 1;
        mVar.f68431b = i10;
        return i10;
    }

    private synchronized void e() {
        try {
            f();
            this.f68430a.close();
            this.f68432c = true;
        } catch (Throwable th2) {
            this.f68432c = true;
            throw th2;
        }
    }

    public synchronized void f() {
        if (this.f68432c) {
            throw new IOException("The funneled OutputStream has been closed.");
        }
    }

    public synchronized void h(a aVar) {
        try {
            if (!aVar.f68434a) {
                try {
                    long j10 = this.f68433d;
                    if (j10 > 0) {
                        try {
                            wait(j10);
                        } catch (InterruptedException unused) {
                        }
                    }
                    int i10 = this.f68431b - 1;
                    this.f68431b = i10;
                    if (i10 == 0) {
                        e();
                    }
                    aVar.f68434a = true;
                } catch (Throwable th2) {
                    aVar.f68434a = true;
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public synchronized OutputStream g() {
        a aVar;
        f();
        try {
            aVar = new a();
            notifyAll();
        } catch (Throwable th2) {
            notifyAll();
            throw th2;
        }
        return aVar;
    }

    public synchronized void i(long j10) {
        this.f68433d = j10;
    }
}
