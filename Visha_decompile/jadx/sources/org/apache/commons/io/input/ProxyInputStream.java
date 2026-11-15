package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public abstract class ProxyInputStream extends FilterInputStream {
    public ProxyInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public void afterRead(int i) throws IOException {
    }

    @Override
    public int available() throws IOException {
        try {
            return super.available();
        } catch (IOException e) {
            handleIOException(e);
            return 0;
        }
    }

    public void beforeRead(int i) throws IOException {
    }

    @Override
    public void close() throws IOException {
        try {
            ((FilterInputStream) this).in.close();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    public void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }

    @Override
    public synchronized void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
    }

    @Override
    public boolean markSupported() {
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override
    public int read() throws IOException {
        int i = 1;
        try {
            beforeRead(1);
            int i2 = ((FilterInputStream) this).in.read();
            if (i2 == -1) {
                i = -1;
            }
            afterRead(i);
            return i2;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }

    @Override
    public synchronized void reset() throws IOException {
        try {
            ((FilterInputStream) this).in.reset();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override
    public long skip(long j) throws IOException {
        try {
            return ((FilterInputStream) this).in.skip(j);
        } catch (IOException e) {
            handleIOException(e);
            return 0L;
        }
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        int length;
        if (bArr != null) {
            try {
                length = bArr.length;
            } catch (IOException e) {
                handleIOException(e);
                return -1;
            }
        } else {
            length = 0;
        }
        beforeRead(length);
        int i = ((FilterInputStream) this).in.read(bArr);
        afterRead(i);
        return i;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            beforeRead(i2);
            int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
            afterRead(i3);
            return i3;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }
}
