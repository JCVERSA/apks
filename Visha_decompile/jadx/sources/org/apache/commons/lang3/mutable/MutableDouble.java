package org.apache.commons.lang3.mutable;

public class MutableDouble extends Number implements Comparable<MutableDouble>, Mutable<Number> {
    private static final long serialVersionUID = 1587163916;
    private double value;

    public MutableDouble() {
    }

    public void add(double d) {
        this.value += d;
    }

    public double addAndGet(double d) {
        double d2 = this.value + d;
        this.value = d2;
        return d2;
    }

    public void decrement() {
        this.value -= 1.0d;
    }

    public double decrementAndGet() {
        double d = this.value - 1.0d;
        this.value = d;
        return d;
    }

    @Override
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableDouble) && Double.doubleToLongBits(((MutableDouble) obj).value) == Double.doubleToLongBits(this.value);
    }

    @Override
    public float floatValue() {
        return (float) this.value;
    }

    public double getAndAdd(double d) {
        double d2 = this.value;
        this.value = d + d2;
        return d2;
    }

    public double getAndDecrement() {
        double d = this.value;
        this.value = d - 1.0d;
        return d;
    }

    public double getAndIncrement() {
        double d = this.value;
        this.value = 1.0d + d;
        return d;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.value);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public void increment() {
        this.value += 1.0d;
    }

    public double incrementAndGet() {
        double d = this.value + 1.0d;
        this.value = d;
        return d;
    }

    @Override
    public int intValue() {
        return (int) this.value;
    }

    public boolean isInfinite() {
        return Double.isInfinite(this.value);
    }

    public boolean isNaN() {
        return Double.isNaN(this.value);
    }

    @Override
    public long longValue() {
        return (long) this.value;
    }

    public void subtract(double d) {
        this.value -= d;
    }

    public Double toDouble() {
        return Double.valueOf(doubleValue());
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public MutableDouble(double d) {
        this.value = d;
    }

    public void add(Number number) {
        this.value += number.doubleValue();
    }

    public double addAndGet(Number number) {
        double dDoubleValue = this.value + number.doubleValue();
        this.value = dDoubleValue;
        return dDoubleValue;
    }

    @Override
    public int compareTo(MutableDouble mutableDouble) {
        return Double.compare(this.value, mutableDouble.value);
    }

    @Override
    public Number getValue2() {
        return Double.valueOf(this.value);
    }

    public void setValue(double d) {
        this.value = d;
    }

    public void subtract(Number number) {
        this.value -= number.doubleValue();
    }

    public double getAndAdd(Number number) {
        double d = this.value;
        this.value = number.doubleValue() + d;
        return d;
    }

    @Override
    public void setValue(Number number) {
        this.value = number.doubleValue();
    }

    public MutableDouble(Number number) {
        this.value = number.doubleValue();
    }

    public MutableDouble(String str) {
        this.value = Double.parseDouble(str);
    }
}
