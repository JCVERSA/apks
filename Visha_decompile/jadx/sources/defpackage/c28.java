package defpackage;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public final class c28 extends o3 {
    @Override
    public Random a() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        y45.i(threadLocalRandomCurrent, "current(...)");
        return threadLocalRandomCurrent;
    }

    @Override
    public double nextDouble(double d) {
        return ThreadLocalRandom.current().nextDouble(d);
    }

    @Override
    public int nextInt(int i, int i2) {
        return ThreadLocalRandom.current().nextInt(i, i2);
    }

    @Override
    public long nextLong(long j) {
        return ThreadLocalRandom.current().nextLong(j);
    }

    @Override
    public long nextLong(long j, long j2) {
        return ThreadLocalRandom.current().nextLong(j, j2);
    }
}
