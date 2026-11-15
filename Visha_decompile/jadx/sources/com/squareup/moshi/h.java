package com.squareup.moshi;

import defpackage.rc5;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class h extends rc5 {
    public Object[] k = new Object[32];
    public String l;

    public h() {
        I(6);
    }

    @Override
    public rc5 D(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.b == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        if (G() != 3 || this.l != null || this.i) {
            throw new IllegalStateException("Nesting problem.");
        }
        this.l = str;
        this.d[this.b - 1] = str;
        return this;
    }

    @Override
    public rc5 E() {
        if (this.i) {
            throw new IllegalStateException("null cannot be used as a map key in JSON at path " + getPath());
        }
        S(null);
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override
    public rc5 N(double d) {
        if (!this.g && (Double.isNaN(d) || d == Double.NEGATIVE_INFINITY || d == Double.POSITIVE_INFINITY)) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        if (this.i) {
            this.i = false;
            return D(Double.toString(d));
        }
        S(Double.valueOf(d));
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override
    public rc5 O(long j) {
        if (this.i) {
            this.i = false;
            return D(Long.toString(j));
        }
        S(Long.valueOf(j));
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override
    public rc5 P(Number number) {
        if ((number instanceof Byte) || (number instanceof Short) || (number instanceof Integer) || (number instanceof Long)) {
            return O(number.longValue());
        }
        if ((number instanceof Float) || (number instanceof Double)) {
            return N(number.doubleValue());
        }
        if (number == null) {
            return E();
        }
        BigDecimal bigDecimal = number instanceof BigDecimal ? (BigDecimal) number : new BigDecimal(number.toString());
        if (this.i) {
            this.i = false;
            return D(bigDecimal.toString());
        }
        S(bigDecimal);
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override
    public rc5 Q(String str) {
        if (this.i) {
            this.i = false;
            return D(str);
        }
        S(str);
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override
    public rc5 R(boolean z) {
        if (this.i) {
            throw new IllegalStateException("Boolean cannot be used as a map key in JSON at path " + getPath());
        }
        S(Boolean.valueOf(z));
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    public final h S(Object obj) {
        String str;
        Object objPut;
        int iG = G();
        int i = this.b;
        if (i == 1) {
            if (iG != 6) {
                throw new IllegalStateException("JSON must have only one top-level value.");
            }
            this.c[i - 1] = 7;
            this.k[i - 1] = obj;
        } else if (iG != 3 || (str = this.l) == null) {
            if (iG != 1) {
                if (iG == 9) {
                    throw new IllegalStateException("Sink from valueSink() was not closed");
                }
                throw new IllegalStateException("Nesting problem.");
            }
            ((List) this.k[i - 1]).add(obj);
        } else {
            if ((obj != null || this.h) && (objPut = ((Map) this.k[i - 1]).put(str, obj)) != null) {
                throw new IllegalArgumentException("Map key '" + this.l + "' has multiple values at path " + getPath() + ": " + objPut + " and " + obj);
            }
            this.l = null;
        }
        return this;
    }

    public Object T() {
        int i = this.b;
        if (i > 1 || (i == 1 && this.c[i - 1] != 7)) {
            throw new IllegalStateException("Incomplete document");
        }
        return this.k[0];
    }

    @Override
    public rc5 b() {
        if (this.i) {
            throw new IllegalStateException("Array cannot be used as a map key in JSON at path " + getPath());
        }
        int i = this.b;
        int i2 = this.j;
        if (i == i2 && this.c[i - 1] == 1) {
            this.j = ~i2;
            return this;
        }
        e();
        ArrayList arrayList = new ArrayList();
        S(arrayList);
        Object[] objArr = this.k;
        int i3 = this.b;
        objArr[i3] = arrayList;
        this.e[i3] = 0;
        I(1);
        return this;
    }

    @Override
    public void close() throws IOException {
        int i = this.b;
        if (i > 1 || (i == 1 && this.c[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.b = 0;
    }

    @Override
    public rc5 d() {
        if (this.i) {
            throw new IllegalStateException("Object cannot be used as a map key in JSON at path " + getPath());
        }
        int i = this.b;
        int i2 = this.j;
        if (i == i2 && this.c[i - 1] == 3) {
            this.j = ~i2;
            return this;
        }
        e();
        LinkedHashTreeMap linkedHashTreeMap = new LinkedHashTreeMap();
        S(linkedHashTreeMap);
        this.k[this.b] = linkedHashTreeMap;
        I(3);
        return this;
    }

    @Override
    public void flush() {
        if (this.b == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    @Override
    public rc5 g() {
        if (G() != 1) {
            throw new IllegalStateException("Nesting problem.");
        }
        int i = this.b;
        int i2 = this.j;
        if (i == (~i2)) {
            this.j = ~i2;
            return this;
        }
        int i3 = i - 1;
        this.b = i3;
        this.k[i3] = null;
        int[] iArr = this.e;
        int i4 = i - 2;
        iArr[i4] = iArr[i4] + 1;
        return this;
    }

    @Override
    public rc5 h() {
        if (G() != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.l != null) {
            throw new IllegalStateException("Dangling name: " + this.l);
        }
        int i = this.b;
        int i2 = this.j;
        if (i == (~i2)) {
            this.j = ~i2;
            return this;
        }
        this.i = false;
        int i3 = i - 1;
        this.b = i3;
        this.k[i3] = null;
        this.d[i3] = null;
        int[] iArr = this.e;
        int i4 = i - 2;
        iArr[i4] = iArr[i4] + 1;
        return this;
    }
}
