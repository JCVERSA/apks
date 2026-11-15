package com.google.common.hash;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

final class Murmur3_128HashFunction extends com.google.common.hash.a implements Serializable {
    private static final long serialVersionUID = 0;
    private final int seed;
    static final d MURMUR3_128 = new Murmur3_128HashFunction(0);
    static final d GOOD_FAST_HASH_128 = new Murmur3_128HashFunction(f.f30055a);

    private static final class a extends c {

        private long f30043d;

        private long f30044e;

        private int f30045f;

        a(int i10) {
            super(16);
            long j10 = i10;
            this.f30043d = j10;
            this.f30044e = j10;
            this.f30045f = 0;
        }

        private void q(long j10, long j11) {
            long jS = s(j10) ^ this.f30043d;
            this.f30043d = jS;
            long jRotateLeft = Long.rotateLeft(jS, 27);
            long j12 = this.f30044e;
            this.f30043d = ((jRotateLeft + j12) * 5) + 1390208809;
            long jT = t(j11) ^ j12;
            this.f30044e = jT;
            this.f30044e = ((Long.rotateLeft(jT, 31) + this.f30043d) * 5) + 944331445;
        }

        private static long r(long j10) {
            long j11 = (j10 ^ (j10 >>> 33)) * (-49064778989728563L);
            long j12 = (j11 ^ (j11 >>> 33)) * (-4265267296055464877L);
            return j12 ^ (j12 >>> 33);
        }

        private static long s(long j10) {
            return Long.rotateLeft(j10 * (-8663945395140668459L), 31) * 5545529020109919103L;
        }

        private static long t(long j10) {
            return Long.rotateLeft(j10 * 5545529020109919103L, 33) * (-8663945395140668459L);
        }

        @Override
        protected HashCode k() {
            long j10 = this.f30043d;
            int i10 = this.f30045f;
            long j11 = j10 ^ ((long) i10);
            long j12 = this.f30044e ^ ((long) i10);
            long j13 = j11 + j12;
            this.f30043d = j13;
            this.f30044e = j12 + j13;
            this.f30043d = r(j13);
            long jR = r(this.f30044e);
            long j14 = this.f30043d + jR;
            this.f30043d = j14;
            this.f30044e = jR + j14;
            return HashCode.fromBytesNoCopy(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.f30043d).putLong(this.f30044e).array());
        }

        @Override
        protected void n(ByteBuffer byteBuffer) {
            q(byteBuffer.getLong(), byteBuffer.getLong());
            this.f30045f += 16;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override
        protected void o(ByteBuffer byteBuffer) {
            long jC;
            long jC2;
            long jC3;
            long jC4;
            long jC5;
            long jC6;
            long jC7;
            this.f30045f += byteBuffer.remaining();
            long jC8 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    jC = 0;
                    jC7 = jC ^ ((long) com.google.common.primitives.f.c(byteBuffer.get(0)));
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 2:
                    jC2 = 0;
                    jC = jC2 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.f.c(byteBuffer.get(0)));
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 3:
                    jC3 = 0;
                    jC2 = (((long) com.google.common.primitives.f.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.f.c(byteBuffer.get(0)));
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 4:
                    jC4 = 0;
                    jC3 = jC4 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) com.google.common.primitives.f.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.f.c(byteBuffer.get(0)));
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 5:
                    jC5 = 0;
                    jC4 = jC5 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(4))) << 32);
                    jC3 = jC4 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) com.google.common.primitives.f.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.f.c(byteBuffer.get(0)));
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 6:
                    jC6 = 0;
                    jC5 = (((long) com.google.common.primitives.f.c(byteBuffer.get(5))) << 40) ^ jC6;
                    jC4 = jC5 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(4))) << 32);
                    jC3 = jC4 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) com.google.common.primitives.f.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.f.c(byteBuffer.get(0)));
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 7:
                    jC6 = ((long) com.google.common.primitives.f.c(byteBuffer.get(6))) << 48;
                    jC5 = (((long) com.google.common.primitives.f.c(byteBuffer.get(5))) << 40) ^ jC6;
                    jC4 = jC5 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(4))) << 32);
                    jC3 = jC4 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) com.google.common.primitives.f.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) com.google.common.primitives.f.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.f.c(byteBuffer.get(0)));
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 8:
                    jC7 = byteBuffer.getLong();
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 9:
                    jC8 ^= (long) com.google.common.primitives.f.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 10:
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.f.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 11:
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.f.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 12:
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.f.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 13:
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(12))) << 32;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.f.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 14:
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(13))) << 40;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(12))) << 32;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.f.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                case 15:
                    jC8 = ((long) com.google.common.primitives.f.c(byteBuffer.get(14))) << 48;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(13))) << 40;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(12))) << 32;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) com.google.common.primitives.f.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.f.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30043d = s(jC7) ^ this.f30043d;
                    this.f30044e ^= t(jC8);
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }
    }

    Murmur3_128HashFunction(int i10) {
        this.seed = i10;
    }

    public int bits() {
        return 128;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Murmur3_128HashFunction) && this.seed == ((Murmur3_128HashFunction) obj).seed;
    }

    public int hashCode() {
        return Murmur3_128HashFunction.class.hashCode() ^ this.seed;
    }

    @Override
    public e newHasher() {
        return new a(this.seed);
    }

    public String toString() {
        return "Hashing.murmur3_128(" + this.seed + ")";
    }
}
