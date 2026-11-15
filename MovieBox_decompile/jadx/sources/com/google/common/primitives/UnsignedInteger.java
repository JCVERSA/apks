package com.google.common.primitives;

import com.google.common.base.m;
import java.math.BigInteger;

public final class UnsignedInteger extends Number implements Comparable<UnsignedInteger> {
    private final int value;
    public static final UnsignedInteger ZERO = fromIntBits(0);
    public static final UnsignedInteger ONE = fromIntBits(1);
    public static final UnsignedInteger MAX_VALUE = fromIntBits(-1);

    private UnsignedInteger(int i10) {
        this.value = i10;
    }

    public static UnsignedInteger fromIntBits(int i10) {
        return new UnsignedInteger(i10);
    }

    public static UnsignedInteger valueOf(long j10) {
        m.h((4294967295L & j10) == j10, "value (%s) is outside the range for an unsigned integer value", j10);
        return fromIntBits((int) j10);
    }

    public BigInteger bigIntegerValue() {
        return BigInteger.valueOf(longValue());
    }

    public UnsignedInteger dividedBy(UnsignedInteger unsignedInteger) {
        return fromIntBits(UnsignedInts.b(this.value, ((UnsignedInteger) m.o(unsignedInteger)).value));
    }

    @Override
    public double doubleValue() {
        return longValue();
    }

    public boolean equals(Object obj) {
        return (obj instanceof UnsignedInteger) && this.value == ((UnsignedInteger) obj).value;
    }

    @Override
    public float floatValue() {
        return longValue();
    }

    public int hashCode() {
        return this.value;
    }

    @Override
    public int intValue() {
        return this.value;
    }

    @Override
    public long longValue() {
        return UnsignedInts.f(this.value);
    }

    public UnsignedInteger minus(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.value - ((UnsignedInteger) m.o(unsignedInteger)).value);
    }

    public UnsignedInteger mod(UnsignedInteger unsignedInteger) {
        return fromIntBits(UnsignedInts.e(this.value, ((UnsignedInteger) m.o(unsignedInteger)).value));
    }

    public UnsignedInteger plus(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.value + ((UnsignedInteger) m.o(unsignedInteger)).value);
    }

    public UnsignedInteger times(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.value * ((UnsignedInteger) m.o(unsignedInteger)).value);
    }

    public String toString() {
        return toString(10);
    }

    @Override
    public int compareTo(UnsignedInteger unsignedInteger) {
        m.o(unsignedInteger);
        return UnsignedInts.a(this.value, unsignedInteger.value);
    }

    public String toString(int i10) {
        return UnsignedInts.g(this.value, i10);
    }

    public static UnsignedInteger valueOf(BigInteger bigInteger) {
        m.o(bigInteger);
        m.j(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 32, "value (%s) is outside the range for an unsigned integer value", bigInteger);
        return fromIntBits(bigInteger.intValue());
    }

    public static UnsignedInteger valueOf(String str) {
        return valueOf(str, 10);
    }

    public static UnsignedInteger valueOf(String str, int i10) {
        return fromIntBits(UnsignedInts.d(str, i10));
    }
}
