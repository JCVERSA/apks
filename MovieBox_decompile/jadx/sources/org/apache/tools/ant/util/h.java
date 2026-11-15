package org.apache.tools.ant.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class h extends OutputStream {

    private FileOutputStream f68420a;

    private File f68421b;

    private boolean f68422c;

    private boolean f68423d;

    private boolean f68424e = false;

    private boolean f68425f = false;

    public h(File file, boolean z10, boolean z11) {
        this.f68421b = file;
        this.f68422c = z10;
        this.f68423d = z11;
    }

    private synchronized void d() {
        if (this.f68425f) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.f68421b);
            stringBuffer.append(" has already been closed.");
            throw new IOException(stringBuffer.toString());
        }
        if (!this.f68424e) {
            this.f68420a = new FileOutputStream(this.f68421b.getAbsolutePath(), this.f68422c);
            this.f68424e = true;
        }
    }

    @Override
    public synchronized void close() {
        try {
            if (this.f68423d && !this.f68425f) {
                d();
            }
            if (this.f68424e) {
                this.f68420a.close();
            }
            this.f68425f = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override
    public synchronized void write(byte[] bArr, int i10, int i11) {
        d();
        this.f68420a.write(bArr, i10, i11);
    }

    @Override
    public synchronized void write(int i10) {
        d();
        this.f68420a.write(i10);
    }
}
