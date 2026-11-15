package defpackage;

import com.google.android.exoplayer2.k;
import java.io.EOFException;

public final class s33 implements fva {
    public final byte[] a = new byte[4096];

    @Override
    public void a(qw7 qw7Var, int i, int i2) {
        qw7Var.P(i);
    }

    @Override
    public void b(k kVar) {
    }

    @Override
    public void e(long j, int i, int i2, int i3, fva.a aVar) {
    }

    @Override
    public int f(ms1 ms1Var, int i, boolean z, int i2) throws EOFException {
        int i3 = ms1Var.read(this.a, 0, Math.min(this.a.length, i));
        if (i3 != -1) {
            return i3;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }
}
