package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class CodedOutputStream extends h {

    private static final Logger f8361c = Logger.getLogger(CodedOutputStream.class.getName());

    private static final boolean f8362d = k1.I();

    k f8363a;

    private boolean f8364b;

    public static class OutOfSpaceException extends IOException {
        private static final String MESSAGE = "CodedOutputStream was writing to a flat byte array and ran out of space.";
        private static final long serialVersionUID = -6947486886997889499L;

        OutOfSpaceException() {
            super(MESSAGE);
        }

        OutOfSpaceException(String str) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str);
        }

        OutOfSpaceException(Throwable th2) {
            super(MESSAGE, th2);
        }

        OutOfSpaceException(String str, Throwable th2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th2);
        }
    }

    private static abstract class b extends CodedOutputStream {

        final byte[] f8365e;

        final int f8366f;

        int f8367g;

        int f8368h;

        b(int i10) {
            super();
            if (i10 < 0) {
                throw new IllegalArgumentException("bufferSize must be >= 0");
            }
            byte[] bArr = new byte[Math.max(i10, 20)];
            this.f8365e = bArr;
            this.f8366f = bArr.length;
        }

        final void Y0(byte b10) {
            byte[] bArr = this.f8365e;
            int i10 = this.f8367g;
            this.f8367g = i10 + 1;
            bArr[i10] = b10;
            this.f8368h++;
        }

        final void Z0(int i10) {
            byte[] bArr = this.f8365e;
            int i11 = this.f8367g;
            int i12 = i11 + 1;
            this.f8367g = i12;
            bArr[i11] = (byte) (i10 & 255);
            int i13 = i11 + 2;
            this.f8367g = i13;
            bArr[i12] = (byte) ((i10 >> 8) & 255);
            int i14 = i11 + 3;
            this.f8367g = i14;
            bArr[i13] = (byte) ((i10 >> 16) & 255);
            this.f8367g = i11 + 4;
            bArr[i14] = (byte) ((i10 >> 24) & 255);
            this.f8368h += 4;
        }

        final void a1(long j10) {
            byte[] bArr = this.f8365e;
            int i10 = this.f8367g;
            int i11 = i10 + 1;
            this.f8367g = i11;
            bArr[i10] = (byte) (j10 & 255);
            int i12 = i10 + 2;
            this.f8367g = i12;
            bArr[i11] = (byte) ((j10 >> 8) & 255);
            int i13 = i10 + 3;
            this.f8367g = i13;
            bArr[i12] = (byte) ((j10 >> 16) & 255);
            int i14 = i10 + 4;
            this.f8367g = i14;
            bArr[i13] = (byte) (255 & (j10 >> 24));
            int i15 = i10 + 5;
            this.f8367g = i15;
            bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
            int i16 = i10 + 6;
            this.f8367g = i16;
            bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
            int i17 = i10 + 7;
            this.f8367g = i17;
            bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
            this.f8367g = i10 + 8;
            bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
            this.f8368h += 8;
        }

        final void b1(int i10) {
            if (i10 >= 0) {
                d1(i10);
            } else {
                e1(i10);
            }
        }

        final void c1(int i10, int i11) {
            d1(WireFormat.c(i10, i11));
        }

        final void d1(int i10) {
            if (!CodedOutputStream.f8362d) {
                while ((i10 & (-128)) != 0) {
                    byte[] bArr = this.f8365e;
                    int i11 = this.f8367g;
                    this.f8367g = i11 + 1;
                    bArr[i11] = (byte) ((i10 | 128) & 255);
                    this.f8368h++;
                    i10 >>>= 7;
                }
                byte[] bArr2 = this.f8365e;
                int i12 = this.f8367g;
                this.f8367g = i12 + 1;
                bArr2[i12] = (byte) i10;
                this.f8368h++;
                return;
            }
            long j10 = this.f8367g;
            while ((i10 & (-128)) != 0) {
                byte[] bArr3 = this.f8365e;
                int i13 = this.f8367g;
                this.f8367g = i13 + 1;
                k1.P(bArr3, i13, (byte) ((i10 | 128) & 255));
                i10 >>>= 7;
            }
            byte[] bArr4 = this.f8365e;
            int i14 = this.f8367g;
            this.f8367g = i14 + 1;
            k1.P(bArr4, i14, (byte) i10);
            this.f8368h += (int) (((long) this.f8367g) - j10);
        }

        final void e1(long j10) {
            if (!CodedOutputStream.f8362d) {
                while ((j10 & (-128)) != 0) {
                    byte[] bArr = this.f8365e;
                    int i10 = this.f8367g;
                    this.f8367g = i10 + 1;
                    bArr[i10] = (byte) ((((int) j10) | 128) & 255);
                    this.f8368h++;
                    j10 >>>= 7;
                }
                byte[] bArr2 = this.f8365e;
                int i11 = this.f8367g;
                this.f8367g = i11 + 1;
                bArr2[i11] = (byte) j10;
                this.f8368h++;
                return;
            }
            long j11 = this.f8367g;
            while ((j10 & (-128)) != 0) {
                byte[] bArr3 = this.f8365e;
                int i12 = this.f8367g;
                this.f8367g = i12 + 1;
                k1.P(bArr3, i12, (byte) ((((int) j10) | 128) & 255));
                j10 >>>= 7;
            }
            byte[] bArr4 = this.f8365e;
            int i13 = this.f8367g;
            this.f8367g = i13 + 1;
            k1.P(bArr4, i13, (byte) j10);
            this.f8368h += (int) (((long) this.f8367g) - j11);
        }

        @Override
        public final int f0() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }
    }

    private static final class d extends b {

        private final OutputStream f8373i;

        d(OutputStream outputStream, int i10) {
            super(i10);
            if (outputStream == null) {
                throw new NullPointerException("out");
            }
            this.f8373i = outputStream;
        }

        private void f1() throws IOException {
            this.f8373i.write(this.f8365e, 0, this.f8367g);
            this.f8367g = 0;
        }

        private void g1(int i10) throws IOException {
            if (this.f8366f - this.f8367g < i10) {
                f1();
            }
        }

        @Override
        public void B0(int i10, int i11) throws IOException {
            g1(20);
            c1(i10, 0);
            b1(i11);
        }

        @Override
        public void C0(int i10) throws IOException {
            if (i10 >= 0) {
                V0(i10);
            } else {
                X0(i10);
            }
        }

        @Override
        void F0(int i10, n0 n0Var, b1 b1Var) throws IOException {
            T0(i10, 2);
            k1(n0Var, b1Var);
        }

        @Override
        public void G0(n0 n0Var) throws IOException {
            V0(n0Var.getSerializedSize());
            n0Var.a(this);
        }

        @Override
        public void H0(int i10, n0 n0Var) throws IOException {
            T0(1, 3);
            U0(2, i10);
            j1(3, n0Var);
            T0(1, 4);
        }

        @Override
        public void I0(int i10, ByteString byteString) throws IOException {
            T0(1, 3);
            U0(2, i10);
            l0(3, byteString);
            T0(1, 4);
        }

        @Override
        public void R0(int i10, String str) throws IOException {
            T0(i10, 2);
            S0(str);
        }

        @Override
        public void S0(String str) throws IOException {
            int iJ;
            try {
                int length = str.length() * 3;
                int iU = CodedOutputStream.U(length);
                int i10 = iU + length;
                int i11 = this.f8366f;
                if (i10 > i11) {
                    byte[] bArr = new byte[length];
                    int i12 = Utf8.i(str, bArr, 0, length);
                    V0(i12);
                    b(bArr, 0, i12);
                    return;
                }
                if (i10 > i11 - this.f8367g) {
                    f1();
                }
                int iU2 = CodedOutputStream.U(str.length());
                int i13 = this.f8367g;
                try {
                    if (iU2 == iU) {
                        int i14 = i13 + iU2;
                        this.f8367g = i14;
                        int i15 = Utf8.i(str, this.f8365e, i14, this.f8366f - i14);
                        this.f8367g = i13;
                        iJ = (i15 - i13) - iU2;
                        d1(iJ);
                        this.f8367g = i15;
                    } else {
                        iJ = Utf8.j(str);
                        d1(iJ);
                        this.f8367g = Utf8.i(str, this.f8365e, this.f8367g, iJ);
                    }
                    this.f8368h += iJ;
                } catch (Utf8.UnpairedSurrogateException e10) {
                    this.f8368h -= this.f8367g - i13;
                    this.f8367g = i13;
                    throw e10;
                } catch (ArrayIndexOutOfBoundsException e11) {
                    throw new OutOfSpaceException(e11);
                }
            } catch (Utf8.UnpairedSurrogateException e12) {
                a0(str, e12);
            }
        }

        @Override
        public void T0(int i10, int i11) throws IOException {
            V0(WireFormat.c(i10, i11));
        }

        @Override
        public void U0(int i10, int i11) throws IOException {
            g1(20);
            c1(i10, 0);
            d1(i11);
        }

        @Override
        public void V0(int i10) throws IOException {
            g1(5);
            d1(i10);
        }

        @Override
        public void W0(int i10, long j10) throws IOException {
            g1(20);
            c1(i10, 0);
            e1(j10);
        }

        @Override
        public void X0(long j10) throws IOException {
            g1(10);
            e1(j10);
        }

        @Override
        public void Z() throws IOException {
            if (this.f8367g > 0) {
                f1();
            }
        }

        @Override
        public void a(ByteBuffer byteBuffer) throws IOException {
            h1(byteBuffer);
        }

        @Override
        public void b(byte[] bArr, int i10, int i11) throws IOException {
            i1(bArr, i10, i11);
        }

        @Override
        public void g0(byte b10) throws IOException {
            if (this.f8367g == this.f8366f) {
                f1();
            }
            Y0(b10);
        }

        @Override
        public void h0(int i10, boolean z10) throws IOException {
            g1(11);
            c1(i10, 0);
            Y0(z10 ? (byte) 1 : (byte) 0);
        }

        public void h1(ByteBuffer byteBuffer) throws IOException {
            int iRemaining = byteBuffer.remaining();
            int i10 = this.f8366f;
            int i11 = this.f8367g;
            if (i10 - i11 >= iRemaining) {
                byteBuffer.get(this.f8365e, i11, iRemaining);
                this.f8367g += iRemaining;
                this.f8368h += iRemaining;
                return;
            }
            int i12 = i10 - i11;
            byteBuffer.get(this.f8365e, i11, i12);
            int i13 = iRemaining - i12;
            this.f8367g = this.f8366f;
            this.f8368h += i12;
            f1();
            while (true) {
                int i14 = this.f8366f;
                if (i13 <= i14) {
                    byteBuffer.get(this.f8365e, 0, i13);
                    this.f8367g = i13;
                    this.f8368h += i13;
                    return;
                } else {
                    byteBuffer.get(this.f8365e, 0, i14);
                    this.f8373i.write(this.f8365e, 0, this.f8366f);
                    int i15 = this.f8366f;
                    i13 -= i15;
                    this.f8368h += i15;
                }
            }
        }

        public void i1(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = this.f8366f;
            int i13 = this.f8367g;
            if (i12 - i13 >= i11) {
                System.arraycopy(bArr, i10, this.f8365e, i13, i11);
                this.f8367g += i11;
                this.f8368h += i11;
                return;
            }
            int i14 = i12 - i13;
            System.arraycopy(bArr, i10, this.f8365e, i13, i14);
            int i15 = i10 + i14;
            int i16 = i11 - i14;
            this.f8367g = this.f8366f;
            this.f8368h += i14;
            f1();
            if (i16 <= this.f8366f) {
                System.arraycopy(bArr, i15, this.f8365e, 0, i16);
                this.f8367g = i16;
            } else {
                this.f8373i.write(bArr, i15, i16);
            }
            this.f8368h += i16;
        }

        public void j1(int i10, n0 n0Var) throws IOException {
            T0(i10, 2);
            G0(n0Var);
        }

        @Override
        public void k0(byte[] bArr, int i10, int i11) throws IOException {
            V0(i11);
            i1(bArr, i10, i11);
        }

        void k1(n0 n0Var, b1 b1Var) throws IOException {
            V0(((androidx.datastore.preferences.protobuf.a) n0Var).d(b1Var));
            b1Var.b(n0Var, this.f8363a);
        }

        @Override
        public void l0(int i10, ByteString byteString) throws IOException {
            T0(i10, 2);
            m0(byteString);
        }

        @Override
        public void m0(ByteString byteString) throws IOException {
            V0(byteString.size());
            byteString.writeTo(this);
        }

        @Override
        public void r0(int i10, int i11) throws IOException {
            g1(14);
            c1(i10, 5);
            Z0(i11);
        }

        @Override
        public void s0(int i10) throws IOException {
            g1(4);
            Z0(i10);
        }

        @Override
        public void t0(int i10, long j10) throws IOException {
            g1(18);
            c1(i10, 1);
            a1(j10);
        }

        @Override
        public void u0(long j10) throws IOException {
            g1(8);
            a1(j10);
        }
    }

    public static int A(int i10, a0 a0Var) {
        return S(i10) + B(a0Var);
    }

    public static int B(a0 a0Var) {
        return C(a0Var.b());
    }

    static int C(int i10) {
        return U(i10) + i10;
    }

    static int D(int i10, n0 n0Var, b1 b1Var) {
        return S(i10) + F(n0Var, b1Var);
    }

    public static int E(n0 n0Var) {
        return C(n0Var.getSerializedSize());
    }

    static int F(n0 n0Var, b1 b1Var) {
        return C(((androidx.datastore.preferences.protobuf.a) n0Var).d(b1Var));
    }

    static int G(int i10) {
        if (i10 > 4096) {
            return 4096;
        }
        return i10;
    }

    public static int H(int i10, ByteString byteString) {
        return (S(1) * 2) + T(2, i10) + h(3, byteString);
    }

    public static int I(int i10, int i11) {
        return S(i10) + J(i11);
    }

    public static int J(int i10) {
        return 4;
    }

    public static int K(int i10, long j10) {
        return S(i10) + L(j10);
    }

    public static int L(long j10) {
        return 8;
    }

    public static int M(int i10, int i11) {
        return S(i10) + N(i11);
    }

    public static int N(int i10) {
        return U(X(i10));
    }

    public static int O(int i10, long j10) {
        return S(i10) + P(j10);
    }

    public static int P(long j10) {
        return W(Y(j10));
    }

    public static int Q(int i10, String str) {
        return S(i10) + R(str);
    }

    public static int R(String str) {
        int length;
        try {
            length = Utf8.j(str);
        } catch (Utf8.UnpairedSurrogateException unused) {
            length = str.getBytes(w.f8604b).length;
        }
        return C(length);
    }

    public static int S(int i10) {
        return U(WireFormat.c(i10, 0));
    }

    public static int T(int i10, int i11) {
        return S(i10) + U(i11);
    }

    public static int U(int i10) {
        return (352 - (Integer.numberOfLeadingZeros(i10) * 9)) >>> 6;
    }

    public static int V(int i10, long j10) {
        return S(i10) + W(j10);
    }

    public static int W(long j10) {
        return (640 - (Long.numberOfLeadingZeros(j10) * 9)) >>> 6;
    }

    public static int X(int i10) {
        return (i10 >> 31) ^ (i10 << 1);
    }

    public static long Y(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    public static CodedOutputStream c0(OutputStream outputStream, int i10) {
        return new d(outputStream, i10);
    }

    public static CodedOutputStream d0(byte[] bArr) {
        return e0(bArr, 0, bArr.length);
    }

    public static int e(int i10, boolean z10) {
        return S(i10) + f(z10);
    }

    public static CodedOutputStream e0(byte[] bArr, int i10, int i11) {
        return new c(bArr, i10, i11);
    }

    public static int f(boolean z10) {
        return 1;
    }

    public static int g(byte[] bArr) {
        return C(bArr.length);
    }

    public static int h(int i10, ByteString byteString) {
        return S(i10) + i(byteString);
    }

    public static int i(ByteString byteString) {
        return C(byteString.size());
    }

    public static int j(int i10, double d10) {
        return S(i10) + k(d10);
    }

    public static int k(double d10) {
        return 8;
    }

    public static int l(int i10, int i11) {
        return S(i10) + m(i11);
    }

    public static int m(int i10) {
        return x(i10);
    }

    public static int n(int i10, int i11) {
        return S(i10) + o(i11);
    }

    public static int o(int i10) {
        return 4;
    }

    public static int p(int i10, long j10) {
        return S(i10) + q(j10);
    }

    public static int q(long j10) {
        return 8;
    }

    public static int r(int i10, float f10) {
        return S(i10) + s(f10);
    }

    public static int s(float f10) {
        return 4;
    }

    static int t(int i10, n0 n0Var, b1 b1Var) {
        return (S(i10) * 2) + v(n0Var, b1Var);
    }

    public static int u(n0 n0Var) {
        return n0Var.getSerializedSize();
    }

    static int v(n0 n0Var, b1 b1Var) {
        return ((androidx.datastore.preferences.protobuf.a) n0Var).d(b1Var);
    }

    public static int w(int i10, int i11) {
        return S(i10) + x(i11);
    }

    public static int x(int i10) {
        return W(i10);
    }

    public static int y(int i10, long j10) {
        return S(i10) + z(j10);
    }

    public static int z(long j10) {
        return W(j10);
    }

    final void A0(n0 n0Var, b1 b1Var) {
        b1Var.b(n0Var, this.f8363a);
    }

    public abstract void B0(int i10, int i11);

    public abstract void C0(int i10);

    public final void D0(int i10, long j10) {
        W0(i10, j10);
    }

    public final void E0(long j10) {
        X0(j10);
    }

    abstract void F0(int i10, n0 n0Var, b1 b1Var);

    public abstract void G0(n0 n0Var);

    public abstract void H0(int i10, n0 n0Var);

    public abstract void I0(int i10, ByteString byteString);

    public final void J0(int i10, int i11) {
        r0(i10, i11);
    }

    public final void K0(int i10) {
        s0(i10);
    }

    public final void L0(int i10, long j10) {
        t0(i10, j10);
    }

    public final void M0(long j10) {
        u0(j10);
    }

    public final void N0(int i10, int i11) {
        U0(i10, X(i11));
    }

    public final void O0(int i10) {
        V0(X(i10));
    }

    public final void P0(int i10, long j10) {
        W0(i10, Y(j10));
    }

    public final void Q0(long j10) {
        X0(Y(j10));
    }

    public abstract void R0(int i10, String str);

    public abstract void S0(String str);

    public abstract void T0(int i10, int i11);

    public abstract void U0(int i10, int i11);

    public abstract void V0(int i10);

    public abstract void W0(int i10, long j10);

    public abstract void X0(long j10);

    public abstract void Z();

    final void a0(String str, Utf8.UnpairedSurrogateException unpairedSurrogateException) throws OutOfSpaceException {
        f8361c.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) unpairedSurrogateException);
        byte[] bytes = str.getBytes(w.f8604b);
        try {
            V0(bytes.length);
            b(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e10) {
            throw new OutOfSpaceException(e10);
        }
    }

    @Override
    public abstract void b(byte[] bArr, int i10, int i11);

    boolean b0() {
        return this.f8364b;
    }

    public final void d() {
        if (f0() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract int f0();

    public abstract void g0(byte b10);

    public abstract void h0(int i10, boolean z10);

    public final void i0(boolean z10) {
        g0(z10 ? (byte) 1 : (byte) 0);
    }

    public final void j0(byte[] bArr) {
        k0(bArr, 0, bArr.length);
    }

    abstract void k0(byte[] bArr, int i10, int i11);

    public abstract void l0(int i10, ByteString byteString);

    public abstract void m0(ByteString byteString);

    public final void n0(int i10, double d10) {
        t0(i10, Double.doubleToRawLongBits(d10));
    }

    public final void o0(double d10) {
        u0(Double.doubleToRawLongBits(d10));
    }

    public final void p0(int i10, int i11) {
        B0(i10, i11);
    }

    public final void q0(int i10) {
        C0(i10);
    }

    public abstract void r0(int i10, int i11);

    public abstract void s0(int i10);

    public abstract void t0(int i10, long j10);

    public abstract void u0(long j10);

    public final void v0(int i10, float f10) {
        r0(i10, Float.floatToRawIntBits(f10));
    }

    public final void w0(float f10) {
        s0(Float.floatToRawIntBits(f10));
    }

    public final void x0(int i10, n0 n0Var) {
        T0(i10, 3);
        z0(n0Var);
        T0(i10, 4);
    }

    final void y0(int i10, n0 n0Var, b1 b1Var) {
        T0(i10, 3);
        A0(n0Var, b1Var);
        T0(i10, 4);
    }

    public final void z0(n0 n0Var) {
        n0Var.a(this);
    }

    private CodedOutputStream() {
    }

    private static class c extends CodedOutputStream {

        private final byte[] f8369e;

        private final int f8370f;

        private final int f8371g;

        private int f8372h;

        c(byte[] bArr, int i10, int i11) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            int i12 = i10 + i11;
            if ((i10 | i11 | (bArr.length - i12)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            this.f8369e = bArr;
            this.f8370f = i10;
            this.f8372h = i10;
            this.f8371g = i12;
        }

        @Override
        public final void B0(int i10, int i11) throws OutOfSpaceException {
            T0(i10, 0);
            C0(i11);
        }

        @Override
        public final void C0(int i10) throws OutOfSpaceException {
            if (i10 >= 0) {
                V0(i10);
            } else {
                X0(i10);
            }
        }

        @Override
        final void F0(int i10, n0 n0Var, b1 b1Var) throws OutOfSpaceException {
            T0(i10, 2);
            V0(((androidx.datastore.preferences.protobuf.a) n0Var).d(b1Var));
            b1Var.b(n0Var, this.f8363a);
        }

        @Override
        public final void G0(n0 n0Var) throws OutOfSpaceException {
            V0(n0Var.getSerializedSize());
            n0Var.a(this);
        }

        @Override
        public final void H0(int i10, n0 n0Var) throws OutOfSpaceException {
            T0(1, 3);
            U0(2, i10);
            a1(3, n0Var);
            T0(1, 4);
        }

        @Override
        public final void I0(int i10, ByteString byteString) throws IOException {
            T0(1, 3);
            U0(2, i10);
            l0(3, byteString);
            T0(1, 4);
        }

        @Override
        public final void R0(int i10, String str) throws OutOfSpaceException {
            T0(i10, 2);
            S0(str);
        }

        @Override
        public final void S0(String str) throws OutOfSpaceException {
            int i10 = this.f8372h;
            try {
                int iU = CodedOutputStream.U(str.length() * 3);
                int iU2 = CodedOutputStream.U(str.length());
                if (iU2 == iU) {
                    int i11 = i10 + iU2;
                    this.f8372h = i11;
                    int i12 = Utf8.i(str, this.f8369e, i11, f0());
                    this.f8372h = i10;
                    V0((i12 - i10) - iU2);
                    this.f8372h = i12;
                } else {
                    V0(Utf8.j(str));
                    this.f8372h = Utf8.i(str, this.f8369e, this.f8372h, f0());
                }
            } catch (Utf8.UnpairedSurrogateException e10) {
                this.f8372h = i10;
                a0(str, e10);
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override
        public final void T0(int i10, int i11) throws OutOfSpaceException {
            V0(WireFormat.c(i10, i11));
        }

        @Override
        public final void U0(int i10, int i11) throws OutOfSpaceException {
            T0(i10, 0);
            V0(i11);
        }

        @Override
        public final void V0(int i10) throws OutOfSpaceException {
            while ((i10 & (-128)) != 0) {
                try {
                    byte[] bArr = this.f8369e;
                    int i11 = this.f8372h;
                    this.f8372h = i11 + 1;
                    bArr[i11] = (byte) ((i10 | 128) & 255);
                    i10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8372h), Integer.valueOf(this.f8371g), 1), e10);
                }
            }
            byte[] bArr2 = this.f8369e;
            int i12 = this.f8372h;
            this.f8372h = i12 + 1;
            bArr2[i12] = (byte) i10;
        }

        @Override
        public final void W0(int i10, long j10) throws OutOfSpaceException {
            T0(i10, 0);
            X0(j10);
        }

        @Override
        public final void X0(long j10) throws OutOfSpaceException {
            if (CodedOutputStream.f8362d && f0() >= 10) {
                while ((j10 & (-128)) != 0) {
                    byte[] bArr = this.f8369e;
                    int i10 = this.f8372h;
                    this.f8372h = i10 + 1;
                    k1.P(bArr, i10, (byte) ((((int) j10) | 128) & 255));
                    j10 >>>= 7;
                }
                byte[] bArr2 = this.f8369e;
                int i11 = this.f8372h;
                this.f8372h = 1 + i11;
                k1.P(bArr2, i11, (byte) j10);
                return;
            }
            while ((j10 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f8369e;
                    int i12 = this.f8372h;
                    this.f8372h = i12 + 1;
                    bArr3[i12] = (byte) ((((int) j10) | 128) & 255);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8372h), Integer.valueOf(this.f8371g), 1), e10);
                }
            }
            byte[] bArr4 = this.f8369e;
            int i13 = this.f8372h;
            this.f8372h = i13 + 1;
            bArr4[i13] = (byte) j10;
        }

        public final void Y0(ByteBuffer byteBuffer) throws OutOfSpaceException {
            int iRemaining = byteBuffer.remaining();
            try {
                byteBuffer.get(this.f8369e, this.f8372h, iRemaining);
                this.f8372h += iRemaining;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8372h), Integer.valueOf(this.f8371g), Integer.valueOf(iRemaining)), e10);
            }
        }

        public final void Z0(byte[] bArr, int i10, int i11) throws OutOfSpaceException {
            try {
                System.arraycopy(bArr, i10, this.f8369e, this.f8372h, i11);
                this.f8372h += i11;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8372h), Integer.valueOf(this.f8371g), Integer.valueOf(i11)), e10);
            }
        }

        @Override
        public final void a(ByteBuffer byteBuffer) throws OutOfSpaceException {
            Y0(byteBuffer);
        }

        public final void a1(int i10, n0 n0Var) throws OutOfSpaceException {
            T0(i10, 2);
            G0(n0Var);
        }

        @Override
        public final void b(byte[] bArr, int i10, int i11) throws OutOfSpaceException {
            Z0(bArr, i10, i11);
        }

        @Override
        public final int f0() {
            return this.f8371g - this.f8372h;
        }

        @Override
        public final void g0(byte b10) throws OutOfSpaceException {
            try {
                byte[] bArr = this.f8369e;
                int i10 = this.f8372h;
                this.f8372h = i10 + 1;
                bArr[i10] = b10;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8372h), Integer.valueOf(this.f8371g), 1), e10);
            }
        }

        @Override
        public final void h0(int i10, boolean z10) throws OutOfSpaceException {
            T0(i10, 0);
            g0(z10 ? (byte) 1 : (byte) 0);
        }

        @Override
        public final void k0(byte[] bArr, int i10, int i11) throws OutOfSpaceException {
            V0(i11);
            Z0(bArr, i10, i11);
        }

        @Override
        public final void l0(int i10, ByteString byteString) throws IOException {
            T0(i10, 2);
            m0(byteString);
        }

        @Override
        public final void m0(ByteString byteString) throws IOException {
            V0(byteString.size());
            byteString.writeTo(this);
        }

        @Override
        public final void r0(int i10, int i11) throws OutOfSpaceException {
            T0(i10, 5);
            s0(i11);
        }

        @Override
        public final void s0(int i10) throws OutOfSpaceException {
            try {
                byte[] bArr = this.f8369e;
                int i11 = this.f8372h;
                int i12 = i11 + 1;
                this.f8372h = i12;
                bArr[i11] = (byte) (i10 & 255);
                int i13 = i11 + 2;
                this.f8372h = i13;
                bArr[i12] = (byte) ((i10 >> 8) & 255);
                int i14 = i11 + 3;
                this.f8372h = i14;
                bArr[i13] = (byte) ((i10 >> 16) & 255);
                this.f8372h = i11 + 4;
                bArr[i14] = (byte) ((i10 >> 24) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8372h), Integer.valueOf(this.f8371g), 1), e10);
            }
        }

        @Override
        public final void t0(int i10, long j10) throws OutOfSpaceException {
            T0(i10, 1);
            u0(j10);
        }

        @Override
        public final void u0(long j10) throws OutOfSpaceException {
            try {
                byte[] bArr = this.f8369e;
                int i10 = this.f8372h;
                int i11 = i10 + 1;
                this.f8372h = i11;
                bArr[i10] = (byte) (((int) j10) & 255);
                int i12 = i10 + 2;
                this.f8372h = i12;
                bArr[i11] = (byte) (((int) (j10 >> 8)) & 255);
                int i13 = i10 + 3;
                this.f8372h = i13;
                bArr[i12] = (byte) (((int) (j10 >> 16)) & 255);
                int i14 = i10 + 4;
                this.f8372h = i14;
                bArr[i13] = (byte) (((int) (j10 >> 24)) & 255);
                int i15 = i10 + 5;
                this.f8372h = i15;
                bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
                int i16 = i10 + 6;
                this.f8372h = i16;
                bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
                int i17 = i10 + 7;
                this.f8372h = i17;
                bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
                this.f8372h = i10 + 8;
                bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8372h), Integer.valueOf(this.f8371g), 1), e10);
            }
        }

        @Override
        public void Z() {
        }
    }
}
