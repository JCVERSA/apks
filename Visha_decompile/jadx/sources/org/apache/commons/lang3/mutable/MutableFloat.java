package org.apache.commons.lang3.mutable;

public class MutableFloat extends Number implements Comparable<MutableFloat>, Mutable<Number> {
    private static final long serialVersionUID = 5787169186L;
    private float value;

    public MutableFloat() {
    }

    public void add(float f) {
        this.value += f;
    }

    public float addAndGet(float f) {
        float f2 = this.value + f;
        this.value = f2;
        return f2;
    }

    public void decrement() {
        this.value -= 1.0f;
    }

    public float decrementAndGet() {
        float f = this.value - 1.0f;
        this.value = f;
        return f;
    }

    @Override
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableFloat) && Float.floatToIntBits(((MutableFloat) obj).value) == Float.floatToIntBits(this.value);
    }

    @Override
    public float floatValue() {
        return this.value;
    }

    public float getAndAdd(float f) {
        float f2 = this.value;
        this.value = f + f2;
        return f2;
    }

    public float getAndDecrement() {
        float f = this.value;
        this.value = f - 1.0f;
        return f;
    }

    public float getAndIncrement() {
        float f = this.value;
        this.value = 1.0f + f;
        return f;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.value);
    }

    public void increment() {
        this.value += 1.0f;
    }

    public float incrementAndGet() {
        float f = this.value + 1.0f;
        this.value = f;
        return f;
    }

    @Override
    public int intValue() {
        return (int) this.value;
    }

    public boolean isInfinite() {
        return Float.isInfinite(this.value);
    }

    public boolean isNaN() {
        return Float.isNaN(this.value);
    }

    @Override
    public long longValue() {
        return (long) this.value;
    }

    public void subtract(float f) {
        this.value -= f;
    }

    public Float toFloat() {
        return Float.valueOf(floatValue());
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public MutableFloat(float f) {
        this.value = f;
    }

    public void add(Number number) {
        this.value += number.floatValue();
    }

    public float addAndGet(Number number) {
        float fFloatValue = this.value + number.floatValue();
        this.value = fFloatValue;
        return fFloatValue;
    }

    @Override
    public int compareTo(MutableFloat mutableFloat) {
        return Float.compare(this.value, mutableFloat.value);
    }

    @Override
    public Number getValue2() {
        return Float.valueOf(this.value);
    }

    public void setValue(float f) {
        this.value = f;
    }

    public void subtract(Number number) {
        this.value -= number.floatValue();
    }

    public float getAndAdd(Number number) {
        float f = this.value;
        this.value = number.floatValue() + f;
        return f;
    }

    @Override
    public void setValue(Number number) {
        this.value = number.floatValue();
    }

    public MutableFloat(Number number) {
        this.value = number.floatValue();
    }

    public MutableFloat(String str) {
        this.value = Float.parseFloat(str);
    }
}
