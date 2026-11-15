package com.google.common.hash;

import com.google.common.base.m;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;

enum BloomFilterStrategies implements BloomFilter.Strategy {
    MURMUR128_MITZ_32 {
        @Override
        public <T> boolean mightContain(T t10, Funnel<? super T> funnel, int i10, a aVar) {
            long jB = aVar.b();
            long jAsLong = f.a().hashObject(t10, funnel).asLong();
            int i11 = (int) jAsLong;
            int i12 = (int) (jAsLong >>> 32);
            for (int i13 = 1; i13 <= i10; i13++) {
                int i14 = (i13 * i12) + i11;
                if (i14 < 0) {
                    i14 = ~i14;
                }
                if (!aVar.d(((long) i14) % jB)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public <T> boolean put(T t10, Funnel<? super T> funnel, int i10, a aVar) {
            long jB = aVar.b();
            long jAsLong = f.a().hashObject(t10, funnel).asLong();
            int i11 = (int) jAsLong;
            int i12 = (int) (jAsLong >>> 32);
            boolean zG = false;
            for (int i13 = 1; i13 <= i10; i13++) {
                int i14 = (i13 * i12) + i11;
                if (i14 < 0) {
                    i14 = ~i14;
                }
                zG |= aVar.g(((long) i14) % jB);
            }
            return zG;
        }
    },
    MURMUR128_MITZ_64 {
        private long lowerEight(byte[] bArr) {
            return Longs.d(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        private long upperEight(byte[] bArr) {
            return Longs.d(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }

        @Override
        public <T> boolean mightContain(T t10, Funnel<? super T> funnel, int i10, a aVar) {
            long jB = aVar.b();
            byte[] bytesInternal = f.a().hashObject(t10, funnel).getBytesInternal();
            long jLowerEight = lowerEight(bytesInternal);
            long jUpperEight = upperEight(bytesInternal);
            for (int i11 = 0; i11 < i10; i11++) {
                if (!aVar.d((Long.MAX_VALUE & jLowerEight) % jB)) {
                    return false;
                }
                jLowerEight += jUpperEight;
            }
            return true;
        }

        @Override
        public <T> boolean put(T t10, Funnel<? super T> funnel, int i10, a aVar) {
            long jB = aVar.b();
            byte[] bytesInternal = f.a().hashObject(t10, funnel).getBytesInternal();
            long jLowerEight = lowerEight(bytesInternal);
            long jUpperEight = upperEight(bytesInternal);
            boolean zG = false;
            for (int i11 = 0; i11 < i10; i11++) {
                zG |= aVar.g((Long.MAX_VALUE & jLowerEight) % jB);
                jLowerEight += jUpperEight;
            }
            return zG;
        }
    };

    @Override
    public abstract boolean mightContain(Object obj, Funnel funnel, int i10, a aVar);

    @Override
    public abstract boolean put(Object obj, Funnel funnel, int i10, a aVar);

    static final class a {

        final AtomicLongArray f30039a;

        private final h f30040b;

        a(long j10) {
            m.e(j10 > 0, "data length is zero!");
            this.f30039a = new AtomicLongArray(Ints.d(com.google.common.math.f.c(j10, 64L, RoundingMode.CEILING)));
            this.f30040b = LongAddables.a();
        }

        public static long[] h(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i10 = 0; i10 < length; i10++) {
                jArr[i10] = atomicLongArray.get(i10);
            }
            return jArr;
        }

        long a() {
            return this.f30040b.sum();
        }

        long b() {
            return ((long) this.f30039a.length()) * 64;
        }

        a c() {
            return new a(h(this.f30039a));
        }

        boolean d(long j10) {
            return ((1 << ((int) j10)) & this.f30039a.get((int) (j10 >>> 6))) != 0;
        }

        void e(a aVar) {
            m.g(this.f30039a.length() == aVar.f30039a.length(), "BitArrays must be of equal length (%s != %s)", this.f30039a.length(), aVar.f30039a.length());
            for (int i10 = 0; i10 < this.f30039a.length(); i10++) {
                f(i10, aVar.f30039a.get(i10));
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return Arrays.equals(h(this.f30039a), h(((a) obj).f30039a));
            }
            return false;
        }

        void f(int i10, long j10) {
            long j11;
            long j12;
            do {
                j11 = this.f30039a.get(i10);
                j12 = j11 | j10;
                if (j11 == j12) {
                    return;
                }
            } while (!this.f30039a.compareAndSet(i10, j11, j12));
            this.f30040b.add(Long.bitCount(j12) - Long.bitCount(j11));
        }

        boolean g(long j10) {
            long j11;
            long j12;
            if (d(j10)) {
                return false;
            }
            int i10 = (int) (j10 >>> 6);
            long j13 = 1 << ((int) j10);
            do {
                j11 = this.f30039a.get(i10);
                j12 = j11 | j13;
                if (j11 == j12) {
                    return false;
                }
            } while (!this.f30039a.compareAndSet(i10, j11, j12));
            this.f30040b.increment();
            return true;
        }

        public int hashCode() {
            return Arrays.hashCode(h(this.f30039a));
        }

        a(long[] jArr) {
            m.e(jArr.length > 0, "data length is zero!");
            this.f30039a = new AtomicLongArray(jArr);
            this.f30040b = LongAddables.a();
            long jBitCount = 0;
            for (long j10 : jArr) {
                jBitCount += (long) Long.bitCount(j10);
            }
            this.f30040b.add(jBitCount);
        }
    }
}
