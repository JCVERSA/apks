package com.google.common.hash;

import com.google.common.primitives.SignedBytes;
import defpackage.fx2;
import defpackage.gr5;
import defpackage.he8;
import defpackage.igb;
import defpackage.kc7;
import defpackage.xd8;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.RoundingMode;

public final class BloomFilter<T> implements he8, Serializable {
    private static final long serialVersionUID = 912559;
    private final BloomFilterStrategies.a bits;
    private final Funnel<? super T> funnel;
    private final int numHashFunctions;
    private final Strategy strategy;

    public static class SerialForm<T> implements Serializable {
        private static final long serialVersionUID = 1;
        final long[] data;
        final Funnel<? super T> funnel;
        final int numHashFunctions;
        final Strategy strategy;

        public SerialForm(BloomFilter<T> bloomFilter) {
            this.data = BloomFilterStrategies.a.h(((BloomFilter) bloomFilter).bits.a);
            this.numHashFunctions = ((BloomFilter) bloomFilter).numHashFunctions;
            this.funnel = ((BloomFilter) bloomFilter).funnel;
            this.strategy = ((BloomFilter) bloomFilter).strategy;
        }

        public Object readResolve() {
            return new BloomFilter(new BloomFilterStrategies.a(this.data), this.numHashFunctions, this.funnel, this.strategy);
        }
    }

    public interface Strategy extends Serializable {
        <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, BloomFilterStrategies.a aVar);

        int ordinal();

        <T> boolean put(T t, Funnel<? super T> funnel, int i, BloomFilterStrategies.a aVar);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i, double d) {
        return create(funnel, i, d);
    }

    public static long optimalNumOfBits(long j, double d) {
        if (d == 0.0d) {
            d = Double.MIN_VALUE;
        }
        return (long) (((-j) * Math.log(d)) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    public static int optimalNumOfHashFunctions(long j, long j2) {
        return Math.max(1, (int) Math.round((j2 / j) * Math.log(2.0d)));
    }

    public static <T> BloomFilter<T> readFrom(InputStream inputStream, Funnel<? super T> funnel) throws IOException {
        int i;
        int iC;
        xd8.p(inputStream, "InputStream");
        xd8.p(funnel, "Funnel");
        int i2 = -1;
        try {
            try {
                DataInputStream dataInputStream = new DataInputStream(inputStream);
                byte b = dataInputStream.readByte();
                try {
                    iC = igb.c(dataInputStream.readByte());
                    try {
                        i2 = dataInputStream.readInt();
                        BloomFilterStrategies bloomFilterStrategies = BloomFilterStrategies.values()[b];
                        BloomFilterStrategies.a aVar = new BloomFilterStrategies.a(gr5.b(i2, 64L));
                        for (int i3 = 0; i3 < i2; i3++) {
                            aVar.f(i3, dataInputStream.readLong());
                        }
                        return new BloomFilter<>(aVar, iC, funnel, bloomFilterStrategies);
                    } catch (Exception e) {
                        e = e;
                        int i4 = i2;
                        i2 = b;
                        i = i4;
                        throw new IOException("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: " + i2 + " numHashFunctions: " + iC + " dataLength: " + i, e);
                    }
                } catch (Exception e2) {
                    e = e2;
                    iC = -1;
                    i2 = b;
                    i = -1;
                }
            } catch (IOException e3) {
                throw e3;
            }
        } catch (Exception e4) {
            e = e4;
            i = -1;
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
    public boolean apply(T t) {
        return mightContain(t);
    }

    public long approximateElementCount() {
        double dB = this.bits.b();
        return fx2.f(((-Math.log1p(-(this.bits.a() / dB))) * dB) / ((double) this.numHashFunctions), RoundingMode.HALF_UP);
    }

    public long bitSize() {
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
        return kc7.b(Integer.valueOf(this.numHashFunctions), this.funnel, this.strategy, this.bits);
    }

    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        xd8.o(bloomFilter);
        return this != bloomFilter && this.numHashFunctions == bloomFilter.numHashFunctions && bitSize() == bloomFilter.bitSize() && this.strategy.equals(bloomFilter.strategy) && this.funnel.equals(bloomFilter.funnel);
    }

    public boolean mightContain(T t) {
        return this.strategy.mightContain(t, this.funnel, this.numHashFunctions, this.bits);
    }

    public boolean put(T t) {
        return this.strategy.put(t, this.funnel, this.numHashFunctions, this.bits);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        xd8.o(bloomFilter);
        xd8.e(this != bloomFilter, "Cannot combine a BloomFilter with itself.");
        int i = this.numHashFunctions;
        int i2 = bloomFilter.numHashFunctions;
        xd8.g(i == i2, "BloomFilters must have the same number of hash functions (%s != %s)", i, i2);
        xd8.i(bitSize() == bloomFilter.bitSize(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", bitSize(), bloomFilter.bitSize());
        xd8.k(this.strategy.equals(bloomFilter.strategy), "BloomFilters must have equal strategies (%s != %s)", this.strategy, bloomFilter.strategy);
        xd8.k(this.funnel.equals(bloomFilter.funnel), "BloomFilters must have equal funnels (%s != %s)", this.funnel, bloomFilter.funnel);
        this.bits.e(bloomFilter.bits);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(SignedBytes.a(this.strategy.ordinal()));
        dataOutputStream.writeByte(igb.a(this.numHashFunctions));
        dataOutputStream.writeInt(this.bits.a.length());
        for (int i = 0; i < this.bits.a.length(); i++) {
            dataOutputStream.writeLong(this.bits.a.get(i));
        }
    }

    private BloomFilter(BloomFilterStrategies.a aVar, int i, Funnel<? super T> funnel, Strategy strategy) {
        xd8.f(i > 0, "numHashFunctions (%s) must be > 0", i);
        xd8.f(i <= 255, "numHashFunctions (%s) must be <= 255", i);
        this.bits = (BloomFilterStrategies.a) xd8.o(aVar);
        this.numHashFunctions = i;
        this.funnel = (Funnel) xd8.o(funnel);
        this.strategy = (Strategy) xd8.o(strategy);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d) {
        return create(funnel, j, d, BloomFilterStrategies.MURMUR128_MITZ_64);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d, Strategy strategy) {
        xd8.o(funnel);
        xd8.h(j >= 0, "Expected insertions (%s) must be >= 0", j);
        xd8.j(d > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d));
        xd8.j(d < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d));
        xd8.o(strategy);
        if (j == 0) {
            j = 1;
        }
        long jOptimalNumOfBits = optimalNumOfBits(j, d);
        try {
            return new BloomFilter<>(new BloomFilterStrategies.a(jOptimalNumOfBits), optimalNumOfHashFunctions(j, jOptimalNumOfBits), funnel, strategy);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Could not create BloomFilter of " + jOptimalNumOfBits + " bits", e);
        }
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i) {
        return create(funnel, i);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j) {
        return create(funnel, j, 0.03d);
    }
}
