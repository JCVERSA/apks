package com.google.common.hash;

import defpackage.a4;
import defpackage.eo4;
import defpackage.igb;
import defpackage.lo4;
import defpackage.y2;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

final class Murmur3_128HashFunction extends y2 implements Serializable {
    private static final long serialVersionUID = 0;
    private final int seed;
    static final eo4 MURMUR3_128 = new Murmur3_128HashFunction(0);
    static final eo4 GOOD_FAST_HASH_128 = new Murmur3_128HashFunction(com.google.common.hash.a.a);

    public static final class a extends a4 {
        public long d;
        public long e;
        public int f;

        public a(int i) {
            super(16);
            long j = i;
            this.d = j;
            this.e = j;
            this.f = 0;
        }

        public static long o(long j) {
            long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
            long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
            return j3 ^ (j3 >>> 33);
        }

        public static long p(long j) {
            return Long.rotateLeft(j * (-8663945395140668459L), 31) * 5545529020109919103L;
        }

        public static long q(long j) {
            return Long.rotateLeft(j * 5545529020109919103L, 33) * (-8663945395140668459L);
        }

        @Override
        public HashCode h() {
            long j = this.d;
            int i = this.f;
            long j2 = j ^ ((long) i);
            long j3 = this.e ^ ((long) i);
            long j4 = j2 + j3;
            this.d = j4;
            this.e = j3 + j4;
            this.d = o(j4);
            long jO = o(this.e);
            long j5 = this.d + jO;
            this.d = j5;
            this.e = jO + j5;
            return HashCode.fromBytesNoCopy(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.d).putLong(this.e).array());
        }

        @Override
        public void k(ByteBuffer byteBuffer) {
            n(byteBuffer.getLong(), byteBuffer.getLong());
            this.f += 16;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override
        public void l(ByteBuffer byteBuffer) {
            long jC;
            long jC2;
            long jC3;
            long jC4;
            long jC5;
            long jC6;
            long jC7;
            this.f += byteBuffer.remaining();
            long jC8 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    jC = 0;
                    jC7 = jC ^ ((long) igb.c(byteBuffer.get(0)));
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 2:
                    jC2 = 0;
                    jC = jC2 ^ (((long) igb.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) igb.c(byteBuffer.get(0)));
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 3:
                    jC3 = 0;
                    jC2 = (((long) igb.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) igb.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) igb.c(byteBuffer.get(0)));
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 4:
                    jC4 = 0;
                    jC3 = jC4 ^ (((long) igb.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) igb.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) igb.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) igb.c(byteBuffer.get(0)));
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 5:
                    jC5 = 0;
                    jC4 = jC5 ^ (((long) igb.c(byteBuffer.get(4))) << 32);
                    jC3 = jC4 ^ (((long) igb.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) igb.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) igb.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) igb.c(byteBuffer.get(0)));
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 6:
                    jC6 = 0;
                    jC5 = (((long) igb.c(byteBuffer.get(5))) << 40) ^ jC6;
                    jC4 = jC5 ^ (((long) igb.c(byteBuffer.get(4))) << 32);
                    jC3 = jC4 ^ (((long) igb.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) igb.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) igb.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) igb.c(byteBuffer.get(0)));
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 7:
                    jC6 = ((long) igb.c(byteBuffer.get(6))) << 48;
                    jC5 = (((long) igb.c(byteBuffer.get(5))) << 40) ^ jC6;
                    jC4 = jC5 ^ (((long) igb.c(byteBuffer.get(4))) << 32);
                    jC3 = jC4 ^ (((long) igb.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) igb.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) igb.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) igb.c(byteBuffer.get(0)));
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 8:
                    jC7 = byteBuffer.getLong();
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 9:
                    jC8 ^= (long) igb.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 10:
                    jC8 ^= ((long) igb.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) igb.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 11:
                    jC8 ^= ((long) igb.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) igb.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) igb.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 12:
                    jC8 ^= ((long) igb.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) igb.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) igb.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) igb.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 13:
                    jC8 ^= ((long) igb.c(byteBuffer.get(12))) << 32;
                    jC8 ^= ((long) igb.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) igb.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) igb.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) igb.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 14:
                    jC8 ^= ((long) igb.c(byteBuffer.get(13))) << 40;
                    jC8 ^= ((long) igb.c(byteBuffer.get(12))) << 32;
                    jC8 ^= ((long) igb.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) igb.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) igb.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) igb.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                case 15:
                    jC8 = ((long) igb.c(byteBuffer.get(14))) << 48;
                    jC8 ^= ((long) igb.c(byteBuffer.get(13))) << 40;
                    jC8 ^= ((long) igb.c(byteBuffer.get(12))) << 32;
                    jC8 ^= ((long) igb.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) igb.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) igb.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) igb.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.d = p(jC7) ^ this.d;
                    this.e ^= q(jC8);
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }

        public final void n(long j, long j2) {
            long jP = p(j) ^ this.d;
            this.d = jP;
            long jRotateLeft = Long.rotateLeft(jP, 27);
            long j3 = this.e;
            this.d = ((jRotateLeft + j3) * 5) + 1390208809;
            long jQ = q(j2) ^ j3;
            this.e = jQ;
            this.e = ((Long.rotateLeft(jQ, 31) + this.d) * 5) + 944331445;
        }
    }

    public Murmur3_128HashFunction(int i) {
        this.seed = i;
    }

    public int bits() {
        return 128;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Murmur3_128HashFunction) && this.seed == ((Murmur3_128HashFunction) obj).seed;
    }

    public int hashCode() {
        return this.seed ^ Murmur3_128HashFunction.class.hashCode();
    }

    @Override
    public lo4 newHasher() {
        return new a(this.seed);
    }

    public String toString() {
        return "Hashing.murmur3_128(" + this.seed + ")";
    }
}
