package defpackage;

import java.io.EOFException;

public final class s8e implements rae {
    public final byte[] a = new byte[4096];

    @Override
    public final int a(k8j k8jVar, int i, boolean z) {
        return pae.a(this, k8jVar, i, z);
    }

    @Override
    public final void b(u4h u4hVar, int i, int i2) {
        u4hVar.m(i);
    }

    @Override
    public final void c(long j) {
    }

    @Override
    public final void d(u4h u4hVar, int i) {
        pae.b(this, u4hVar, i);
    }

    @Override
    public final int e(k8j k8jVar, int i, boolean z, int i2) throws EOFException {
        int iB = k8jVar.b(this.a, 0, Math.min(4096, i));
        if (iB != -1) {
            return iB;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override
    public final void f(erj erjVar) {
    }

    @Override
    public final void g(long j, int i, int i2, int i3, qae qaeVar) {
    }
}
