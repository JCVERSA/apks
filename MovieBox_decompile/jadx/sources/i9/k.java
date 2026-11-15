package i9;

import com.google.android.exoplayer2.p1;
import java.io.EOFException;

public final class k implements e0 {

    private final byte[] f61967a = new byte[4096];

    @Override
    public int a(com.google.android.exoplayer2.upstream.g gVar, int i10, boolean z10, int i11) throws EOFException {
        int i12 = gVar.read(this.f61967a, 0, Math.min(this.f61967a.length, i10));
        if (i12 != -1) {
            return i12;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    @Override
    public int b(com.google.android.exoplayer2.upstream.g gVar, int i10, boolean z10) {
        return d0.a(this, gVar, i10, z10);
    }

    @Override
    public void c(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
        d0.b(this, d0Var, i10);
    }

    @Override
    public void f(com.google.android.exoplayer2.util.d0 d0Var, int i10, int i11) {
        d0Var.Q(i10);
    }

    @Override
    public void d(p1 p1Var) {
    }

    @Override
    public void e(long j10, int i10, int i11, int i12, e0.a aVar) {
    }
}
