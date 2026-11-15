package org.apache.tools.ant.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

public class n extends InputStream {

    private Reader f68436a;

    private String f68437b;

    private byte[] f68438c;

    private int f68439d;

    public n(Reader reader) {
        this.f68437b = System.getProperty("file.encoding");
        this.f68436a = reader;
    }

    @Override
    public synchronized int available() {
        Reader reader = this.f68436a;
        if (reader == null) {
            throw new IOException("Stream Closed");
        }
        byte[] bArr = this.f68438c;
        if (bArr != null) {
            return bArr.length - this.f68439d;
        }
        return reader.ready() ? 1 : 0;
    }

    @Override
    public synchronized void close() {
        Reader reader = this.f68436a;
        if (reader != null) {
            reader.close();
            this.f68438c = null;
            this.f68436a = null;
        }
    }

    @Override
    public synchronized void mark(int i10) {
        try {
            this.f68436a.mark(i10);
        } catch (IOException e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    @Override
    public boolean markSupported() {
        return false;
    }

    @Override
    public synchronized int read() {
        byte b10;
        int i10;
        try {
            if (this.f68436a == null) {
                throw new IOException("Stream Closed");
            }
            byte[] bArr = this.f68438c;
            if (bArr == null || (i10 = this.f68439d) >= bArr.length) {
                byte[] bArr2 = new byte[1];
                if (read(bArr2, 0, 1) <= 0) {
                    return -1;
                }
                b10 = bArr2[0];
            } else {
                b10 = bArr[i10];
                int i11 = i10 + 1;
                this.f68439d = i11;
                if (i11 == bArr.length) {
                    this.f68438c = null;
                }
            }
            return b10 & 255;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void reset() {
        Reader reader = this.f68436a;
        if (reader == null) {
            throw new IOException("Stream Closed");
        }
        this.f68438c = null;
        reader.reset();
    }

    public n(Reader reader, String str) {
        this(reader);
        if (str != null) {
            this.f68437b = str;
            return;
        }
        throw new IllegalArgumentException("encoding must not be null");
    }

    @Override
    public synchronized int read(byte[] bArr, int i10, int i11) {
        try {
            if (this.f68436a == null) {
                throw new IOException("Stream Closed");
            }
            if (i11 == 0) {
                return 0;
            }
            while (true) {
                byte[] bArr2 = this.f68438c;
                if (bArr2 == null) {
                    char[] cArr = new char[i11];
                    int i12 = this.f68436a.read(cArr);
                    if (i12 == -1) {
                        return -1;
                    }
                    if (i12 > 0) {
                        this.f68438c = new String(cArr, 0, i12).getBytes(this.f68437b);
                        this.f68439d = 0;
                    }
                } else {
                    int length = bArr2.length;
                    int i13 = this.f68439d;
                    if (i11 > length - i13) {
                        i11 = bArr2.length - i13;
                    }
                    System.arraycopy(bArr2, i13, bArr, i10, i11);
                    int i14 = this.f68439d + i11;
                    this.f68439d = i14;
                    if (i14 >= this.f68438c.length) {
                        this.f68438c = null;
                    }
                    return i11;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
