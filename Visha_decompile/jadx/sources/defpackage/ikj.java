package defpackage;

import java.nio.ByteBuffer;

public final class ikj extends xzi {
    public long i;
    public int j;
    public int k;

    public ikj() {
        super(2, 0);
        this.k = 32;
    }

    @Override
    public final void b() {
        super.b();
        this.j = 0;
    }

    public final int n() {
        return this.j;
    }

    public final long o() {
        return this.i;
    }

    public final void p(int i) {
        this.k = i;
    }

    public final boolean q(xzi xziVar) {
        ByteBuffer byteBuffer;
        n7g.d(!xziVar.d(1073741824));
        n7g.d(!xziVar.d(268435456));
        n7g.d(!xziVar.d(4));
        if (r()) {
            if (this.j >= this.k) {
                return false;
            }
            ByteBuffer byteBuffer2 = xziVar.d;
            if (byteBuffer2 != null && (byteBuffer = this.d) != null && byteBuffer.position() + byteBuffer2.remaining() > 3072000) {
                return false;
            }
        }
        int i = this.j;
        this.j = i + 1;
        if (i == 0) {
            this.f = xziVar.f;
            if (xziVar.d(1)) {
                c(1);
            }
        }
        ByteBuffer byteBuffer3 = xziVar.d;
        if (byteBuffer3 != null) {
            j(byteBuffer3.remaining());
            this.d.put(byteBuffer3);
        }
        this.i = xziVar.f;
        return true;
    }

    public final boolean r() {
        return this.j > 0;
    }
}
