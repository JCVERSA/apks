package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import org.apache.commons.lang3.CharEncoding;

public class vfb extends InputStream {
    public PushbackInputStream b;
    public boolean c = false;
    public String d;
    public String e;

    public vfb(InputStream inputStream, String str) {
        this.b = new PushbackInputStream(inputStream, 4);
        this.d = str;
    }

    public String b() throws Throwable {
        if (!this.c) {
            try {
                d();
            } catch (IOException unused) {
                Throwable illegalStateException = new IllegalStateException("Init method failed.");
                illegalStateException.initCause(illegalStateException);
                throw illegalStateException;
            }
        }
        return this.e;
    }

    @Override
    public void close() throws IOException {
        this.c = true;
        this.b.close();
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0074  */
    public void d() throws IOException {
        int i;
        if (this.c) {
            return;
        }
        byte[] bArr = new byte[4];
        int i2 = this.b.read(bArr, 0, 4);
        byte b = bArr[0];
        if (b != 0 || bArr[1] != 0 || bArr[2] != -2 || bArr[3] != -1) {
            if (b == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0) {
                this.e = "UTF-32LE";
            } else if (b == -17 && bArr[1] == -69 && bArr[2] == -65) {
                this.e = "UTF-8";
                i = i2 - 3;
            } else {
                if (b == -2 && bArr[1] == -1) {
                    this.e = CharEncoding.UTF_16BE;
                } else if (b == -1 && bArr[1] == -2) {
                    this.e = CharEncoding.UTF_16LE;
                } else {
                    this.e = this.d;
                    i = i2;
                }
                i = i2 - 2;
            }
            if (i > 0) {
                this.b.unread(bArr, i2 - i, i);
            }
            this.c = true;
        }
        this.e = "UTF-32BE";
        i = i2 - 4;
        if (i > 0) {
            this.b.unread(bArr, i2 - i, i);
        }
        this.c = true;
    }

    @Override
    public int read() {
        this.c = true;
        return this.b.read();
    }
}
