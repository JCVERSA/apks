package g2;

import java.util.NoSuchElementException;

public abstract class b implements n {

    private final long f60569b;

    private final long f60570c;

    private long f60571d;

    public b(long j10, long j11) {
        this.f60569b = j10;
        this.f60570c = j11;
        f();
    }

    protected final void c() {
        long j10 = this.f60571d;
        if (j10 < this.f60569b || j10 > this.f60570c) {
            throw new NoSuchElementException();
        }
    }

    protected final long d() {
        return this.f60571d;
    }

    public boolean e() {
        return this.f60571d > this.f60570c;
    }

    public void f() {
        this.f60571d = this.f60569b - 1;
    }

    @Override
    public boolean next() {
        this.f60571d++;
        return !e();
    }
}
