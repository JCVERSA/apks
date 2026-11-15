package com.google.common.hash;

import com.google.common.base.j;
import com.google.common.base.m;
import com.google.common.base.n;
import com.google.common.primitives.SignedBytes;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.RoundingMode;

public final class BloomFilter<T> implements n, Serializable {
    private static final long serialVersionUID = 912559;
    private final BloomFilterStrategies.a bits;
    private final Funnel<? super T> funnel;
    private final int numHashFunctions;
    private final Strategy strategy;

    private static class SerialForm<T> implements Serializable {
        private static final long serialVersionUID = 1;
        final long[] data;
        final Funnel<? super T> funnel;
        final int numHashFunctions;
        final Strategy strategy;

        SerialForm(BloomFilter<T> bloomFilter) {
            this.data = BloomFilterStrategies.a.h(((BloomFilter) bloomFilter).bits.f30039a);
            this.numHashFunctions = ((BloomFilter) bloomFilter).numHashFunctions;
            this.funnel = ((BloomFilter) bloomFilter).funnel;
            this.strategy = ((BloomFilter) bloomFilter).strategy;
        }

        Object readResolve() {
            return new BloomFilter(new BloomFilterStrategies.a(this.data), this.numHashFunctions, this.funnel, this.strategy);
        }
    }

    interface Strategy extends Serializable {
        <T> boolean mightContain(T t10, Funnel<? super T> funnel, int i10, BloomFilterStrategies.a aVar);

        int ordinal();

        <T> boolean put(T t10, Funnel<? super T> funnel, int i10, BloomFilterStrategies.a aVar);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i10, double d10) {
        return create(funnel, i10, d10);
    }

    static long optimalNumOfBits(long j10, double d10) {
        if (d10 == 0.0d) {
            d10 = Double.MIN_VALUE;
        }
        return (long) (((-j10) * Math.log(d10)) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    static int optimalNumOfHashFunctions(long j10, long j11) {
        return Math.max(1, (int) Math.round((j11 / j10) * Math.log(2.0d)));
    }

    public static <T> BloomFilter<T> readFrom(InputStream inputStream, Funnel<? super T> funnel) throws IOException {
        int i10;
        int iC;
        m.p(inputStream, "InputStream");
        m.p(funnel, "Funnel");
        int i11 = -1;
        try {
            try {
                DataInputStream dataInputStream = new DataInputStream(inputStream);
                byte b10 = dataInputStream.readByte();
                try {
                    iC = com.google.common.primitives.f.c(dataInputStream.readByte());
                    try {
                        i11 = dataInputStream.readInt();
                        BloomFilterStrategies bloomFilterStrategies = BloomFilterStrategies.values()[b10];
                        BloomFilterStrategies.a aVar = new BloomFilterStrategies.a(com.google.common.math.f.b(i11, 64L));
                        for (int i12 = 0; i12 < i11; i12++) {
                            aVar.f(i12, dataInputStream.readLong());
                        }
                        return new BloomFilter<>(aVar, iC, funnel, bloomFilterStrategies);
                    } catch (Exception e10) {
                        e = e10;
                        int i13 = i11;
                        i11 = b10;
                        i10 = i13;
                        throw new IOException("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: " + i11 + " numHashFunctions: " + iC + " dataLength: " + i10, e);
                    }
                } catch (Exception e11) {
                    e = e11;
                    iC = -1;
                    i11 = b10;
                    i10 = -1;
                }
            } catch (IOException e12) {
                throw e12;
            }
        } catch (Exception e13) {
            e = e13;
            i10 = -1;
            iC = -1;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    private Object writeReplace() {
        return new SerialForm(this);
    }

    @Override
    @Deprecated
    public boolean apply(T t10) {
        return mightContain(t10);
    }

    public long approximateElementCount() {
        double dB = this.bits.b();
        return com.google.common.math.b.f(((-Math.log1p(-(this.bits.a() / dB))) * dB) / ((double) this.numHashFunctions), RoundingMode.HALF_UP);
    }

    long bitSize() {
        return this.bits.b();
    }

    public BloomFilter<T> copy() {
        return new BloomFilter<>(this.bits.c(), this.numHashFunctions, this.funnel, this.strategy);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BloomFilter)) {
            return false;
        }
        BloomFilter bloomFilter = (BloomFilter) obj;
        return this.numHashFunctions == bloomFilter.numHashFunctions && this.funnel.equals(bloomFilter.funnel) && this.bits.equals(bloomFilter.bits) && this.strategy.equals(bloomFilter.strategy);
    }

    public double expectedFpp() {
        return Math.pow(this.bits.a() / bitSize(), this.numHashFunctions);
    }

    public int hashCode() {
        return j.b(Integer.valueOf(this.numHashFunctions), this.funnel, this.strategy, this.bits);
    }

    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        m.o(bloomFilter);
        return this != bloomFilter && this.numHashFunctions == bloomFilter.numHashFunctions && bitSize() == bloomFilter.bitSize() && this.strategy.equals(bloomFilter.strategy) && this.funnel.equals(bloomFilter.funnel);
    }

    public boolean mightContain(T t10) {
        return this.strategy.mightContain(t10, this.funnel, this.numHashFunctions, this.bits);
    }

    public boolean put(T t10) {
        return this.strategy.put(t10, this.funnel, this.numHashFunctions, this.bits);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        m.o(bloomFilter);
        m.e(this != bloomFilter, "Cannot combine a BloomFilter with itself.");
        int i10 = this.numHashFunctions;
        int i11 = bloomFilter.numHashFunctions;
        m.g(i10 == i11, "BloomFilters must have the same number of hash functions (%s != %s)", i10, i11);
        m.i(bitSize() == bloomFilter.bitSize(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", bitSize(), bloomFilter.bitSize());
        m.k(this.strategy.equals(bloomFilter.strategy), "BloomFilters must have equal strategies (%s != %s)", this.strategy, bloomFilter.strategy);
        m.k(this.funnel.equals(bloomFilter.funnel), "BloomFilters must have equal funnels (%s != %s)", this.funnel, bloomFilter.funnel);
        this.bits.e(bloomFilter.bits);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(SignedBytes.a(this.strategy.ordinal()));
        dataOutputStream.writeByte(com.google.common.primitives.f.a(this.numHashFunctions));
        dataOutputStream.writeInt(this.bits.f30039a.length());
        for (int i10 = 0; i10 < this.bits.f30039a.length(); i10++) {
            dataOutputStream.writeLong(this.bits.f30039a.get(i10));
        }
    }

    private BloomFilter(BloomFilterStrategies.a aVar, int i10, Funnel<? super T> funnel, Strategy strategy) {
        m.f(i10 > 0, "numHashFunctions (%s) must be > 0", i10);
        m.f(i10 <= 255, "numHashFunctions (%s) must be <= 255", i10);
        this.bits = (BloomFilterStrategies.a) m.o(aVar);
        this.numHashFunctions = i10;
        this.funnel = (Funnel) m.o(funnel);
        this.strategy = (Strategy) m.o(strategy);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j10, double d10) {
        return create(funnel, j10, d10, BloomFilterStrategies.MURMUR128_MITZ_64);
    }

    static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j10, double d10, Strategy strategy) {
        m.o(funnel);
        m.h(j10 >= 0, "Expected insertions (%s) must be >= 0", j10);
        m.j(d10 > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d10));
        m.j(d10 < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d10));
        m.o(strategy);
        if (j10 == 0) {
            j10 = 1;
        }
        long jOptimalNumOfBits = optimalNumOfBits(j10, d10);
        try {
            return new BloomFilter<>(new BloomFilterStrategies.a(jOptimalNumOfBits), optimalNumOfHashFunctions(j10, jOptimalNumOfBits), funnel, strategy);
        } catch (IllegalArgumentException e10) {
            throw new IllegalArgumentException("Could not create BloomFilter of " + jOptimalNumOfBits + " bits", e10);
        }
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i10) {
        return create(funnel, i10);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j10) {
        return create(funnel, j10, 0.03d);
    }
}
