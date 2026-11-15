package defpackage;

import java.io.IOException;
import java.io.InputStream;

public class xf1 extends InputStream {
    public final u1 b;
    public final boolean c;
    public boolean d = true;
    public int e = 0;
    public t0 f;
    public InputStream g;

    public xf1(u1 u1Var, boolean z) {
        this.b = u1Var;
        this.c = z;
    }

    public final t0 b() throws IOException {
        x0 x0VarG = this.b.g();
        if (x0VarG == null) {
            if (!this.c || this.e == 0) {
                return null;
            }
            throw new IOException("expected octet-aligned bitstring, but found padBits: " + this.e);
        }
        if (x0VarG instanceof t0) {
            if (this.e == 0) {
                return (t0) x0VarG;
            }
            throw new IOException("only the last nested bitstring can have padding");
        }
        throw new IOException("unknown object encountered: " + x0VarG.getClass());
    }

    public int d() {
        return this.e;
    }

    @Override
    public int read() throws IOException {
        if (this.g == null) {
            if (!this.d) {
                return -1;
            }
            t0 t0VarB = b();
            this.f = t0VarB;
            if (t0VarB == null) {
                return -1;
            }
            this.d = false;
            this.g = t0VarB.c();
        }
        while (true) {
            int i = this.g.read();
            if (i >= 0) {
                return i;
            }
            this.e = this.f.i();
            t0 t0VarB2 = b();
            this.f = t0VarB2;
            if (t0VarB2 == null) {
                this.g = null;
                return -1;
            }
            this.g = t0VarB2.c();
        }
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        if (this.g == null) {
            if (!this.d) {
                return -1;
            }
            t0 t0VarB = b();
            this.f = t0VarB;
            if (t0VarB == null) {
                return -1;
            }
            this.d = false;
            this.g = t0VarB.c();
        }
        while (true) {
            int i4 = this.g.read(bArr, i + i3, i2 - i3);
            if (i4 >= 0) {
                i3 += i4;
                if (i3 == i2) {
                    return i3;
                }
            } else {
                this.e = this.f.i();
                t0 t0VarB2 = b();
                this.f = t0VarB2;
                if (t0VarB2 == null) {
                    this.g = null;
                    if (i3 < 1) {
                        return -1;
                    }
                    return i3;
                }
                this.g = t0VarB2.c();
            }
        }
    }
}
