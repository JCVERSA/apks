package defpackage;

import kotlin.random.Random;

public abstract class o3 extends Random {
    public abstract java.util.Random a();

    @Override
    public int nextBits(int i) {
        return qn8.g(a().nextInt(), i);
    }

    @Override
    public boolean nextBoolean() {
        return a().nextBoolean();
    }

    @Override
    public byte[] nextBytes(byte[] bArr) {
        y45.j(bArr, "array");
        a().nextBytes(bArr);
        return bArr;
    }

    @Override
    public double nextDouble() {
        return a().nextDouble();
    }

    @Override
    public float nextFloat() {
        return a().nextFloat();
    }

    @Override
    public int nextInt() {
        return a().nextInt();
    }

    @Override
    public long nextLong() {
        return a().nextLong();
    }

    @Override
    public int nextInt(int i) {
        return a().nextInt(i);
    }
}
