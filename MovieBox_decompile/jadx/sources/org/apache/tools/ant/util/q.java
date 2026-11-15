package org.apache.tools.ant.util;

import java.io.IOException;
import java.io.OutputStream;

public class q extends OutputStream {

    private OutputStream f68443a;

    private OutputStream f68444b;

    public q(OutputStream outputStream, OutputStream outputStream2) {
        this.f68443a = outputStream;
        this.f68444b = outputStream2;
    }

    @Override
    public void close() throws IOException {
        try {
            this.f68443a.close();
        } finally {
            this.f68444b.close();
        }
    }

    @Override
    public void flush() throws IOException {
        this.f68443a.flush();
        this.f68444b.flush();
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        this.f68443a.write(bArr);
        this.f68444b.write(bArr);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f68443a.write(bArr, i10, i11);
        this.f68444b.write(bArr, i10, i11);
    }

    @Override
    public void write(int i10) throws IOException {
        this.f68443a.write(i10);
        this.f68444b.write(i10);
    }
}
