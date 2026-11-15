package com.grack.nanojson;

import java.math.BigDecimal;

class JsonLazyNumber extends Number {
    private boolean isDouble;
    private String value;

    public JsonLazyNumber(String str, boolean z) {
        this.value = str;
        this.isDouble = z;
    }

    private Object writeReplace() {
        return new BigDecimal(this.value);
    }

    @Override
    public double doubleValue() {
        return Double.parseDouble(this.value);
    }

    @Override
    public float floatValue() {
        return Float.parseFloat(this.value);
    }

    @Override
    public int intValue() {
        boolean z = this.isDouble;
        String str = this.value;
        return z ? (int) Double.parseDouble(str) : Integer.parseInt(str);
    }

    @Override
    public long longValue() {
        boolean z = this.isDouble;
        String str = this.value;
        return z ? (long) Double.parseDouble(str) : Long.parseLong(str);
    }
}
