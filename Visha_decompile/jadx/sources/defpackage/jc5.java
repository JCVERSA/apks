package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import okio.BufferedSink;
import org.apache.commons.lang3.BooleanUtils;

public final class jc5 extends rc5 {
    public static final String[] n = new String[128];
    public final BufferedSink k;
    public String l = StringUtils.PROCESS_POSTFIX_DELIMITER;
    public String m;

    static {
        for (int i = 0; i <= 31; i++) {
            n[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = n;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public jc5(BufferedSink bufferedSink) {
        if (bufferedSink == null) {
            throw new NullPointerException("sink == null");
        }
        this.k = bufferedSink;
        I(6);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002b  */
    public static void X(BufferedSink bufferedSink, String str) throws IOException {
        String str2;
        String[] strArr = n;
        bufferedSink.writeByte(34);
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i < i2) {
                        bufferedSink.writeUtf8(str, i, i2);
                    }
                    bufferedSink.writeUtf8(str2);
                    i = i2 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i < i2) {
                    bufferedSink.writeUtf8(str, i, i2);
                }
                bufferedSink.writeUtf8(str2);
                i = i2 + 1;
            }
        }
        if (i < length) {
            bufferedSink.writeUtf8(str, i, length);
        }
        bufferedSink.writeByte(34);
    }

    @Override
    public rc5 D(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.b == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        int iG = G();
        if ((iG != 3 && iG != 5) || this.m != null || this.i) {
            throw new IllegalStateException("Nesting problem.");
        }
        this.m = str;
        this.d[this.b - 1] = str;
        return this;
    }

    @Override
    public rc5 E() throws IOException {
        if (this.i) {
            throw new IllegalStateException("null cannot be used as a map key in JSON at path " + getPath());
        }
        if (this.m != null) {
            if (!this.h) {
                this.m = null;
                return this;
            }
            Y();
        }
        T();
        this.k.writeUtf8("null");
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override
    public void K(String str) {
        super.K(str);
        this.l = !str.isEmpty() ? ": " : StringUtils.PROCESS_POSTFIX_DELIMITER;
    }

    @Override
    public rc5 N(double d) throws IOException {
        if (!this.g && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        if (this.i) {
            this.i = false;
            return D(Double.toString(d));
        }
        Y();
        T();
        this.k.writeUtf8(Double.toString(d));
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override
    public rc5 O(long j) throws IOException {
        if (this.i) {
            this.i = false;
            return D(Long.toString(j));
        }
        Y();
        T();
        this.k.writeUtf8(Long.toString(j));
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override
    public rc5 P(Number number) throws IOException {
        if (number == null) {
            return E();
        }
        String string = number.toString();
        if (!this.g && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        if (this.i) {
            this.i = false;
            return D(string);
        }
        Y();
        T();
        this.k.writeUtf8(string);
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override
    public rc5 Q(String str) throws IOException {
        if (str == null) {
            return E();
        }
        if (this.i) {
            this.i = false;
            return D(str);
        }
        Y();
        T();
        X(this.k, str);
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override
    public rc5 R(boolean z) throws IOException {
        if (this.i) {
            throw new IllegalStateException("Boolean cannot be used as a map key in JSON at path " + getPath());
        }
        Y();
        T();
        this.k.writeUtf8(z ? BooleanUtils.TRUE : BooleanUtils.FALSE);
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    public final void S() throws IOException {
        int iG = G();
        if (iG == 5) {
            this.k.writeByte(44);
        } else if (iG != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        V();
        J(4);
    }

    public final void T() throws IOException {
        int iG = G();
        int i = 2;
        if (iG == 1) {
            V();
        } else if (iG == 2) {
            this.k.writeByte(44);
            V();
        } else if (iG == 4) {
            this.k.writeUtf8(this.l);
            i = 5;
        } else {
            if (iG == 9) {
                throw new IllegalStateException("Sink from valueSink() was not closed");
            }
            i = 7;
            if (iG != 6) {
                if (iG != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.g) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
        }
        J(i);
    }

    public final rc5 U(int i, int i2, char c) throws IOException {
        int iG = G();
        if (iG != i2 && iG != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.m != null) {
            throw new IllegalStateException("Dangling name: " + this.m);
        }
        int i3 = this.b;
        int i4 = this.j;
        if (i3 == (~i4)) {
            this.j = ~i4;
            return this;
        }
        int i5 = i3 - 1;
        this.b = i5;
        this.d[i5] = null;
        int[] iArr = this.e;
        int i6 = i3 - 2;
        iArr[i6] = iArr[i6] + 1;
        if (iG == i2) {
            V();
        }
        this.k.writeByte(c);
        return this;
    }

    public final void V() throws IOException {
        if (this.f == null) {
            return;
        }
        this.k.writeByte(10);
        int i = this.b;
        for (int i2 = 1; i2 < i; i2++) {
            this.k.writeUtf8(this.f);
        }
    }

    public final rc5 W(int i, int i2, char c) throws IOException {
        int i3 = this.b;
        int i4 = this.j;
        if (i3 == i4) {
            int[] iArr = this.c;
            if (iArr[i3 - 1] == i || iArr[i3 - 1] == i2) {
                this.j = ~i4;
                return this;
            }
        }
        T();
        e();
        I(i);
        this.e[this.b - 1] = 0;
        this.k.writeByte(c);
        return this;
    }

    public final void Y() throws IOException {
        if (this.m != null) {
            S();
            X(this.k, this.m);
            this.m = null;
        }
    }

    @Override
    public rc5 b() throws IOException {
        if (!this.i) {
            Y();
            return W(1, 2, '[');
        }
        throw new IllegalStateException("Array cannot be used as a map key in JSON at path " + getPath());
    }

    @Override
    public void close() throws IOException {
        this.k.close();
        int i = this.b;
        if (i > 1 || (i == 1 && this.c[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.b = 0;
    }

    @Override
    public rc5 d() throws IOException {
        if (!this.i) {
            Y();
            return W(3, 5, '{');
        }
        throw new IllegalStateException("Object cannot be used as a map key in JSON at path " + getPath());
    }

    @Override
    public void flush() throws IOException {
        if (this.b == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.k.flush();
    }

    @Override
    public rc5 g() {
        return U(1, 2, ']');
    }

    @Override
    public rc5 h() {
        this.i = false;
        return U(3, 5, '}');
    }
}
