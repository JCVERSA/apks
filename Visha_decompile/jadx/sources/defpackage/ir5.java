package defpackage;

import java.util.NoSuchElementException;

public final class ir5 extends fr5 {
    public final long b;
    public final long c;
    public boolean d;
    public long e;

    public ir5(long j, long j2, long j3) {
        this.b = j3;
        this.c = j2;
        boolean z = false;
        if (j3 <= 0 ? j >= j2 : j <= j2) {
            z = true;
        }
        this.d = z;
        this.e = z ? j : j2;
    }

    @Override
    public boolean hasNext() {
        return this.d;
    }

    @Override
    public long nextLong() {
        long j = this.e;
        if (j != this.c) {
            this.e = this.b + j;
        } else {
            if (!this.d) {
                throw new NoSuchElementException();
            }
            this.d = false;
        }
        return j;
    }
}
