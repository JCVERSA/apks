package defpackage;

import java.io.IOException;
import java.io.InputStream;

public class yf1 extends InputStream {
    public final u1 b;
    public boolean c = true;
    public InputStream d;

    public yf1(u1 u1Var) {
        this.b = u1Var;
    }

    public final n1 b() throws IOException {
        x0 x0VarG = this.b.g();
        if (x0VarG == null) {
            return null;
        }
        if (x0VarG instanceof n1) {
            return (n1) x0VarG;
        }
        throw new IOException("unknown object encountered: " + x0VarG.getClass());
    }

    @Override
    public int read() throws IOException {
        n1 n1VarB;
        if (this.d == null) {
            if (!this.c || (n1VarB = b()) == null) {
                return -1;
            }
            this.c = false;
            this.d = n1VarB.f();
        }
        while (true) {
            int i = this.d.read();
            if (i >= 0) {
                return i;
            }
            n1 n1VarB2 = b();
            if (n1VarB2 == null) {
                this.d = null;
                return -1;
            }
            this.d = n1VarB2.f();
        }
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        n1 n1VarB;
        int i3 = 0;
        if (this.d == null) {
            if (!this.c || (n1VarB = b()) == null) {
                return -1;
            }
            this.c = false;
            this.d = n1VarB.f();
        }
        while (true) {
            int i4 = this.d.read(bArr, i + i3, i2 - i3);
            if (i4 >= 0) {
                i3 += i4;
                if (i3 == i2) {
                    return i3;
                }
            } else {
                n1 n1VarB2 = b();
                if (n1VarB2 == null) {
                    this.d = null;
                    if (i3 < 1) {
                        return -1;
                    }
                    return i3;
                }
                this.d = n1VarB2.f();
            }
        }
    }
}
