package k2;

import java.io.EOFException;

public final class n implements s0 {

    private final byte[] f63655a = new byte[4096];

    @Override
    public void a(androidx.media3.common.util.j0 j0Var, int i10, int i11) {
        j0Var.X(i10);
    }

    @Override
    public void c(androidx.media3.common.util.j0 j0Var, int i10) {
        r0.c(this, j0Var, i10);
    }

    @Override
    public int e(androidx.media3.common.j jVar, int i10, boolean z10) {
        return r0.b(this, jVar, i10, z10);
    }

    @Override
    public void f(long j10) {
        r0.a(this, j10);
    }

    @Override
    public int g(androidx.media3.common.j jVar, int i10, boolean z10, int i11) throws EOFException {
        int i12 = jVar.read(this.f63655a, 0, Math.min(this.f63655a.length, i10));
        if (i12 != -1) {
            return i12;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    @Override
    public void d(androidx.media3.common.r rVar) {
    }

    @Override
    public void b(long j10, int i10, int i11, int i12, s0.a aVar) {
    }
}
