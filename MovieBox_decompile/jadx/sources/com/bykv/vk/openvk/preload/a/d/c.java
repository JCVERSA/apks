package com.bykv.vk.openvk.preload.a.d;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;

public final class c implements Closeable, Flushable {

    private static final String[] f19892a = new String[128];

    private static final String[] f19893b;

    private final Writer f19894c;

    private int[] f19895d = new int[32];

    private int f19896e = 0;

    private String f19897f;

    private String f19898g;

    private boolean f19899h;

    private boolean f19900i;

    private String f19901j;

    private boolean f19902k;

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f19892a[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f19892a;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f19893b = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        a(6);
        this.f19898g = ":";
        this.f19902k = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.f19894c = writer;
    }

    private int i() {
        int i10 = this.f19896e;
        if (i10 != 0) {
            return this.f19895d[i10 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void j() throws IOException {
        if (this.f19901j != null) {
            l();
            c(this.f19901j);
            this.f19901j = null;
        }
    }

    private void k() throws IOException {
        if (this.f19897f == null) {
            return;
        }
        this.f19894c.write(10);
        int i10 = this.f19896e;
        for (int i11 = 1; i11 < i10; i11++) {
            this.f19894c.write(this.f19897f);
        }
    }

    private void l() throws IOException {
        int i10 = i();
        if (i10 == 5) {
            this.f19894c.write(44);
        } else if (i10 != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        k();
        b(4);
    }

    private void m() throws IOException {
        int i10 = i();
        if (i10 == 1) {
            b(2);
            k();
            return;
        }
        if (i10 == 2) {
            this.f19894c.append(',');
            k();
        } else {
            if (i10 == 4) {
                this.f19894c.append((CharSequence) this.f19898g);
                b(5);
                return;
            }
            if (i10 != 6) {
                if (i10 != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f19899h) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            b(7);
        }
    }

    public final void a(boolean z10) {
        this.f19899h = z10;
    }

    public final void b(boolean z10) {
        this.f19900i = z10;
    }

    public final void c(boolean z10) {
        this.f19902k = z10;
    }

    @Override
    public final void close() throws IOException {
        this.f19894c.close();
        int i10 = this.f19896e;
        if (i10 > 1 || (i10 == 1 && this.f19895d[i10 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f19896e = 0;
    }

    public final c d() throws IOException {
        j();
        return a(1, '[');
    }

    public final c e() throws IOException {
        return a(1, 2, ']');
    }

    public final c f() throws IOException {
        j();
        return a(3, '{');
    }

    @Override
    public final void flush() throws IOException {
        if (this.f19896e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f19894c.flush();
    }

    public final c g() throws IOException {
        return a(3, 5, '}');
    }

    public final c h() throws IOException {
        if (this.f19901j != null) {
            if (!this.f19902k) {
                this.f19901j = null;
                return this;
            }
            j();
        }
        m();
        this.f19894c.write("null");
        return this;
    }

    public final boolean a() {
        return this.f19899h;
    }

    public final boolean b() {
        return this.f19900i;
    }

    public final boolean c() {
        return this.f19902k;
    }

    private c a(int i10, char c10) throws IOException {
        m();
        a(i10);
        this.f19894c.write(c10);
        return this;
    }

    private void b(int i10) {
        this.f19895d[this.f19896e - 1] = i10;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    private void c(String str) throws IOException {
        String str2;
        String[] strArr = this.f19900i ? f19893b : f19892a;
        this.f19894c.write(34);
        int length = str.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i10 < i11) {
                        this.f19894c.write(str, i10, i11 - i10);
                    }
                    this.f19894c.write(str2);
                    i10 = i11 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i10 < i11) {
                    this.f19894c.write(str, i10, i11 - i10);
                }
                this.f19894c.write(str2);
                i10 = i11 + 1;
            }
        }
        if (i10 < length) {
            this.f19894c.write(str, i10, length - i10);
        }
        this.f19894c.write(34);
    }

    public final c d(boolean z10) throws IOException {
        j();
        m();
        this.f19894c.write(z10 ? "true" : "false");
        return this;
    }

    public final c b(String str) throws IOException {
        if (str == null) {
            return h();
        }
        j();
        m();
        c(str);
        return this;
    }

    private c a(int i10, int i11, char c10) throws IOException {
        int i12 = i();
        if (i12 != i11 && i12 != i10) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f19901j == null) {
            this.f19896e--;
            if (i12 == i11) {
                k();
            }
            this.f19894c.write(c10);
            return this;
        }
        throw new IllegalStateException("Dangling name: " + this.f19901j);
    }

    private void a(int i10) {
        int i11 = this.f19896e;
        int[] iArr = this.f19895d;
        if (i11 == iArr.length) {
            this.f19895d = Arrays.copyOf(iArr, i11 << 1);
        }
        int[] iArr2 = this.f19895d;
        int i12 = this.f19896e;
        this.f19896e = i12 + 1;
        iArr2[i12] = i10;
    }

    public final c a(String str) throws IOException {
        if (str != null) {
            if (this.f19901j == null) {
                if (this.f19896e != 0) {
                    this.f19901j = str;
                    return this;
                }
                throw new IllegalStateException("JsonWriter is closed.");
            }
            throw new IllegalStateException();
        }
        throw new NullPointerException("name == null");
    }

    public final c a(Boolean bool) throws IOException {
        if (bool == null) {
            return h();
        }
        j();
        m();
        this.f19894c.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public final c a(long j10) throws IOException {
        j();
        m();
        this.f19894c.write(Long.toString(j10));
        return this;
    }

    public final c a(Number number) throws IOException {
        if (number == null) {
            return h();
        }
        j();
        String string = number.toString();
        if (!this.f19899h && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(String.valueOf(number)));
        }
        m();
        this.f19894c.append((CharSequence) string);
        return this;
    }
}
