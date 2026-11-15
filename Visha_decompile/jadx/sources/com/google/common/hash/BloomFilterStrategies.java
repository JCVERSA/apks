package com.google.common.hash;

import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import defpackage.gr5;
import defpackage.xd8;
import defpackage.xq5;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;

enum BloomFilterStrategies implements BloomFilter.Strategy {
    MURMUR128_MITZ_32 {
        @Override
        public <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, a aVar) {
            long jB = aVar.b();
            long jAsLong = com.google.common.hash.a.a().hashObject(t, funnel).asLong();
            int i2 = (int) jAsLong;
            int i3 = (int) (jAsLong >>> 32);
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 = ~i5;
                }
                if (!aVar.d(((long) i5) % jB)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public <T> boolean put(T t, Funnel<? super T> funnel, int i, a aVar) {
            long jB = aVar.b();
            long jAsLong = com.google.common.hash.a.a().hashObject(t, funnel).asLong();
            int i2 = (int) jAsLong;
            int i3 = (int) (jAsLong >>> 32);
            boolean zG = false;
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 = ~i5;
                }
                zG |= aVar.g(((long) i5) % jB);
            }
            return zG;
        }
    },
    MURMUR128_MITZ_64 {
        public final long b(byte[] bArr) {
            return Longs.d(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        public final long d(byte[] bArr) {
            return Longs.d(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }

        @Override
        public <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, a aVar) {
            long jB = aVar.b();
            byte[] bytesInternal = com.google.common.hash.a.a().hashObject(t, funnel).getBytesInternal();
            long jB2 = b(bytesInternal);
            long jD = d(bytesInternal);
            for (int i2 = 0; i2 < i; i2++) {
                if (!aVar.d((Long.MAX_VALUE & jB2) % jB)) {
                    return false;
                }
                jB2 += jD;
            }
            return true;
        }

        @Override
        public <T> boolean put(T t, Funnel<? super T> funnel, int i, a aVar) {
            long jB = aVar.b();
            byte[] bytesInternal = com.google.common.hash.a.a().hashObject(t, funnel).getBytesInternal();
            long jB2 = b(bytesInternal);
            long jD = d(bytesInternal);
            long j = jB2;
            boolean zG = false;
            for (int i2 = 0; i2 < i; i2++) {
                zG |= aVar.g((Long.MAX_VALUE & j) % jB);
                j += jD;
            }
            return zG;
        }
    };

    @Override
    public abstract boolean mightContain(Object obj, Funnel funnel, int i, a aVar);

    @Override
    public abstract boolean put(Object obj, Funnel funnel, int i, a aVar);

    public static final class a {
        public final AtomicLongArray a;
        public final xq5 b;

        public a(long j) {
            xd8.e(j > 0, "data length is zero!");
            this.a = new AtomicLongArray(Ints.d(gr5.c(j, 64L, RoundingMode.CEILING)));
            this.b = LongAddables.a();
        }

        public static long[] h(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = atomicLongArray.get(i);
            }
            return jArr;
        }

        public long a() {
            return this.b.sum();
        }

        public long b() {
            return ((long) this.a.length()) * 64;
        }

        public a c() {
            return new a(h(this.a));
        }

        public boolean d(long j) {
            return ((1 << ((int) j)) & this.a.get((int) (j >>> 6))) != 0;
        }

        public void e(a aVar) {
            xd8.g(this.a.length() == aVar.a.length(), "BitArrays must be of equal length (%s != %s)", this.a.length(), aVar.a.length());
            for (int i = 0; i < this.a.length(); i++) {
                f(i, aVar.a.get(i));
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return Arrays.equals(h(this.a), h(((a) obj).a));
            }
            return false;
        }

        public void f(int i, long j) {
            long j2;
            long j3;
            do {
                j2 = this.a.get(i);
                j3 = j2 | j;
                if (j2 == j3) {
                    return;
                }
            } while (!this.a.compareAndSet(i, j2, j3));
            this.b.add(Long.bitCount(j3) - Long.bitCount(j2));
        }

        public boolean g(long j) {
            long j2;
            long j3;
            if (d(j)) {
                return false;
            }
            int i = (int) (j >>> 6);
            long j4 = 1 << ((int) j);
            do {
                j2 = this.a.get(i);
                j3 = j2 | j4;
                if (j2 == j3) {
                    return false;
                }
            } while (!this.a.compareAndSet(i, j2, j3));
            this.b.increment();
            return true;
        }

        public int hashCode() {
            return Arrays.hashCode(h(this.a));
        }

        public a(long[] jArr) {
            xd8.e(jArr.length > 0, "data length is zero!");
            this.a = new AtomicLongArray(jArr);
            this.b = LongAddables.a();
            long jBitCount = 0;
            for (long j : jArr) {
                jBitCount += (long) Long.bitCount(j);
            }
            this.b.add(jBitCount);
        }
    }
}
