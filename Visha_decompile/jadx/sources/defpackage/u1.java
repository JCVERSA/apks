package defpackage;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1Exception;

public class u1 {
    public final InputStream a;
    public final int b;
    public final byte[][] c;

    public u1(InputStream inputStream, int i, byte[][] bArr) {
        this.a = inputStream;
        this.b = i;
        this.c = bArr;
    }

    public x0 a(int i) throws IOException {
        i(false);
        int iE = f1.E(this.a, i);
        int iO = f1.o(this.a, this.b, iE == 3 || iE == 4 || iE == 16 || iE == 17 || iE == 8);
        if (iO < 0) {
            if ((i & 32) == 0) {
                throw new IOException("indefinite-length primitive encoding encountered");
            }
            u1 u1Var = new u1(new hz4(this.a, this.b), this.b, this.c);
            int i2 = i & 192;
            return i2 != 0 ? new q40(i2, iE, u1Var) : u1Var.e(iE);
        }
        f72 f72Var = new f72(this.a, iO, this.b);
        if ((i & 224) == 0) {
            return f(iE, f72Var);
        }
        u1 u1Var2 = new u1(f72Var, f72Var.b(), this.c);
        int i3 = i & 192;
        if (i3 != 0) {
            return new dr1(i3, iE, (i & 32) != 0, u1Var2);
        }
        return u1Var2.d(iE);
    }

    public p1 b(int i, int i2, boolean z) {
        return !z ? y1.A(i, i2, ((f72) this.a).h()) : y1.y(i, i2, h());
    }

    public p1 c(int i, int i2) {
        return y1.z(i, i2, h());
    }

    public x0 d(int i) throws ASN1Exception {
        if (i == 3) {
            return new h40(this);
        }
        if (i == 4) {
            return new k40(this);
        }
        if (i == 8) {
            return new pp1(this);
        }
        if (i == 16) {
            return new zq1(this);
        }
        if (i == 17) {
            return new br1(this);
        }
        throw new ASN1Exception("unknown DL object encountered: 0x" + Integer.toHexString(i));
    }

    public x0 e(int i) throws ASN1Exception {
        if (i == 3) {
            return new h40(this);
        }
        if (i == 4) {
            return new k40(this);
        }
        if (i == 8) {
            return new pp1(this);
        }
        if (i == 16) {
            return new m40(this);
        }
        if (i == 17) {
            return new o40(this);
        }
        throw new ASN1Exception("unknown BER object encountered: 0x" + Integer.toHexString(i));
    }

    public x0 f(int i, f72 f72Var) throws ASN1Exception {
        if (i == 3) {
            return new tq1(f72Var);
        }
        if (i == 4) {
            return new xp1(f72Var);
        }
        if (i == 8) {
            throw new ASN1Exception("externals must use constructed encoding (see X.690 8.18)");
        }
        if (i == 16) {
            throw new ASN1Exception("sets must use constructed encoding (see X.690 8.11.1/8.12.1)");
        }
        if (i == 17) {
            throw new ASN1Exception("sequences must use constructed encoding (see X.690 8.9.1/8.10.1)");
        }
        try {
            return f1.e(i, f72Var, this.c);
        } catch (IllegalArgumentException e) {
            throw new ASN1Exception("corrupted stream detected", e);
        }
    }

    public x0 g() throws IOException {
        int i = this.a.read();
        if (i < 0) {
            return null;
        }
        return a(i);
    }

    public y0 h() throws IOException {
        int i = this.a.read();
        if (i < 0) {
            return new y0(0);
        }
        y0 y0Var = new y0();
        do {
            x0 x0VarA = a(i);
            y0Var.a(x0VarA instanceof yy4 ? ((yy4) x0VarA).b() : x0VarA.j());
            i = this.a.read();
        } while (i >= 0);
        return y0Var;
    }

    public final void i(boolean z) {
        InputStream inputStream = this.a;
        if (inputStream instanceof hz4) {
            ((hz4) inputStream).g(z);
        }
    }
}
