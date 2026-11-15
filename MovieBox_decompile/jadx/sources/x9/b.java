package x9;

import java.util.NoSuchElementException;

public abstract class b implements o {

    private final long f75161b;

    private final long f75162c;

    private long f75163d;

    public b(long j10, long j11) {
        this.f75161b = j10;
        this.f75162c = j11;
        f();
    }

    protected final void c() {
        long j10 = this.f75163d;
        if (j10 < this.f75161b || j10 > this.f75162c) {
            throw new NoSuchElementException();
        }
    }

    protected final long d() {
        return this.f75163d;
    }

    public boolean e() {
        return this.f75163d > this.f75162c;
    }

    public void f() {
        this.f75163d = this.f75161b - 1;
    }

    @Override
    public boolean next() {
        this.f75163d++;
        return !e();
    }
}
