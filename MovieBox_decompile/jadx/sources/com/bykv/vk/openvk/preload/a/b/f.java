package com.bykv.vk.openvk.preload.a.b;

import java.math.BigDecimal;

public final class f extends Number {

    private final String f19824a;

    public f(String str) {
        this.f19824a = str;
    }

    @Override
    public final double doubleValue() {
        return Double.parseDouble(this.f19824a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        String str = this.f19824a;
        String str2 = ((f) obj).f19824a;
        return str == str2 || str.equals(str2);
    }

    @Override
    public final float floatValue() {
        return Float.parseFloat(this.f19824a);
    }

    public final int hashCode() {
        return this.f19824a.hashCode();
    }

    @Override
    public final int intValue() {
        try {
            try {
                return Integer.parseInt(this.f19824a);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.f19824a);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.f19824a).intValue();
        }
    }

    @Override
    public final long longValue() {
        try {
            return Long.parseLong(this.f19824a);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.f19824a).longValue();
        }
    }

    public final String toString() {
        return this.f19824a;
    }
}
