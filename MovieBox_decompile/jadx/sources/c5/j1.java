package c5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.nio.charset.Charset;

public final class j1 extends Writer {

    private static final ThreadLocal f16584s = new ThreadLocal();

    private static final ThreadLocal f16585t = new ThreadLocal();

    private static final char[] f16586u = ":true".toCharArray();

    private static final char[] f16587v = ":false".toCharArray();

    private static int f16588w;

    static final int f16589x;

    protected char[] f16590a;

    protected int f16591b;

    protected int f16592c;

    private final Writer f16593d;

    protected boolean f16594e;

    protected boolean f16595f;

    protected boolean f16596g;

    protected boolean f16597h;

    protected boolean f16598i;

    protected boolean f16599j;

    protected boolean f16600k;

    protected boolean f16601l;

    protected boolean f16602m;

    protected boolean f16603n;

    protected char f16604o;

    protected int f16605p;

    protected boolean f16606q;

    protected long f16607r;

    static {
        int i10;
        f16588w = 131072;
        try {
            String strJ = com.alibaba.fastjson.util.f.j("fastjson.serializer_buffer_threshold");
            if (strJ != null && strJ.length() > 0 && (i10 = Integer.parseInt(strJ)) >= 64 && i10 <= 65536) {
                f16588w = i10 * 1024;
            }
        } catch (Throwable unused) {
        }
        f16589x = SerializerFeature.UseSingleQuotes.mask | SerializerFeature.BrowserCompatible.mask | SerializerFeature.PrettyFormat.mask | SerializerFeature.WriteEnumUsingToString.mask | SerializerFeature.WriteNonStringValueAsString.mask | SerializerFeature.WriteSlashAsSpecial.mask | SerializerFeature.IgnoreErrorGetter.mask | SerializerFeature.WriteClassName.mask | SerializerFeature.NotWriteDefaultValue.mask;
    }

    public j1() {
        this(null);
    }

    private void f0(String str) {
        byte[] bArr = com.alibaba.fastjson.util.f.f17608g;
        int length = str.length();
        boolean z10 = true;
        int i10 = this.f16591b + length + 1;
        int i11 = 0;
        if (i10 > this.f16590a.length) {
            if (this.f16593d != null) {
                if (length == 0) {
                    write(39);
                    write(39);
                    write(58);
                    return;
                }
                int i12 = 0;
                while (true) {
                    if (i12 < length) {
                        char cCharAt = str.charAt(i12);
                        if (cCharAt < bArr.length && bArr[cCharAt] != 0) {
                            break;
                        } else {
                            i12++;
                        }
                    } else {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    write(39);
                }
                while (i11 < length) {
                    char cCharAt2 = str.charAt(i11);
                    if (cCharAt2 >= bArr.length || bArr[cCharAt2] == 0) {
                        write(cCharAt2);
                    } else {
                        write(92);
                        write(com.alibaba.fastjson.util.f.f17611j[cCharAt2]);
                    }
                    i11++;
                }
                if (z10) {
                    write(39);
                }
                write(58);
                return;
            }
            m(i10);
        }
        if (length == 0) {
            int i13 = this.f16591b;
            if (i13 + 3 > this.f16590a.length) {
                m(i13 + 3);
            }
            char[] cArr = this.f16590a;
            int i14 = this.f16591b;
            int i15 = i14 + 1;
            this.f16591b = i15;
            cArr[i14] = '\'';
            int i16 = i14 + 2;
            this.f16591b = i16;
            cArr[i15] = '\'';
            this.f16591b = i14 + 3;
            cArr[i16] = ':';
            return;
        }
        int i17 = this.f16591b;
        int i18 = i17 + length;
        str.getChars(0, length, this.f16590a, i17);
        this.f16591b = i10;
        int i19 = i17;
        boolean z11 = false;
        while (i19 < i18) {
            char[] cArr2 = this.f16590a;
            char c10 = cArr2[i19];
            if (c10 < bArr.length && bArr[c10] != 0) {
                if (z11) {
                    i10++;
                    if (i10 > cArr2.length) {
                        m(i10);
                    }
                    this.f16591b = i10;
                    char[] cArr3 = this.f16590a;
                    int i20 = i19 + 1;
                    System.arraycopy(cArr3, i20, cArr3, i19 + 2, i18 - i19);
                    char[] cArr4 = this.f16590a;
                    cArr4[i19] = '\\';
                    cArr4[i20] = com.alibaba.fastjson.util.f.f17611j[c10];
                    i18++;
                    i19 = i20;
                } else {
                    i10 += 3;
                    if (i10 > cArr2.length) {
                        m(i10);
                    }
                    this.f16591b = i10;
                    char[] cArr5 = this.f16590a;
                    int i21 = i19 + 1;
                    System.arraycopy(cArr5, i21, cArr5, i19 + 3, (i18 - i19) - 1);
                    char[] cArr6 = this.f16590a;
                    System.arraycopy(cArr6, i11, cArr6, 1, i19);
                    char[] cArr7 = this.f16590a;
                    cArr7[i17] = '\'';
                    cArr7[i21] = '\\';
                    i19 += 2;
                    cArr7[i19] = com.alibaba.fastjson.util.f.f17611j[c10];
                    i18 += 2;
                    cArr7[this.f16591b - 2] = '\'';
                    z11 = true;
                }
            }
            i19++;
            i11 = 0;
        }
        this.f16590a[i10 - 1] = ':';
    }

    private int k(OutputStream outputStream) throws IOException {
        int i10 = (int) (((double) this.f16591b) * 3.0d);
        ThreadLocal threadLocal = f16585t;
        byte[] bArr = (byte[]) threadLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            threadLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < i10 ? new byte[i10] : bArr;
        int iF = com.alibaba.fastjson.util.f.f(this.f16590a, 0, this.f16591b, bArr2);
        outputStream.write(bArr2, 0, iF);
        if (bArr2 != bArr && bArr2.length <= f16588w) {
            threadLocal.set(bArr2);
        }
        return iF;
    }

    private byte[] l() {
        int i10 = (int) (((double) this.f16591b) * 3.0d);
        ThreadLocal threadLocal = f16585t;
        byte[] bArr = (byte[]) threadLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            threadLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < i10 ? new byte[i10] : bArr;
        int iF = com.alibaba.fastjson.util.f.f(this.f16590a, 0, this.f16591b, bArr2);
        byte[] bArr3 = new byte[iF];
        System.arraycopy(bArr2, 0, bArr3, 0, iF);
        if (bArr2 != bArr && bArr2.length <= f16588w) {
            threadLocal.set(bArr2);
        }
        return bArr3;
    }

    public void S(char c10, String str, String str2) {
        if (!this.f16595f) {
            write(c10);
            u(str);
            if (str2 == null) {
                h0();
                return;
            } else {
                o0(str2);
                return;
            }
        }
        if (this.f16594e) {
            write(c10);
            u(str);
            if (str2 == null) {
                h0();
                return;
            } else {
                o0(str2);
                return;
            }
        }
        if (!o(SerializerFeature.BrowserCompatible)) {
            W(c10, str, str2);
            return;
        }
        write(c10);
        r0(str, ':');
        r0(str2, (char) 0);
    }

    public void T(char c10, String str, BigDecimal bigDecimal) {
        write(c10);
        u(str);
        if (bigDecimal == null) {
            h0();
        } else {
            int iScale = bigDecimal.scale();
            write((!o(SerializerFeature.WriteBigDecimalAsPlain) || iScale < -100 || iScale >= 100) ? bigDecimal.toString() : bigDecimal.toPlainString());
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00d2  */
    public void W(char c10, String str, String str2) {
        int length;
        int i10;
        int length2 = str.length();
        int i11 = this.f16591b;
        if (str2 == null) {
            i10 = i11 + length2 + 8;
            length = 4;
        } else {
            length = str2.length();
            i10 = i11 + length2 + length + 6;
        }
        int i12 = 0;
        if (i10 > this.f16590a.length) {
            if (this.f16593d != null) {
                write(c10);
                r0(str, ':');
                r0(str2, (char) 0);
                return;
            }
            m(i10);
        }
        char[] cArr = this.f16590a;
        int i13 = this.f16591b;
        cArr[i13] = c10;
        int i14 = i13 + 2;
        int i15 = i14 + length2;
        cArr[i13 + 1] = '\"';
        str.getChars(0, length2, cArr, i14);
        this.f16591b = i10;
        char[] cArr2 = this.f16590a;
        cArr2[i15] = '\"';
        int i16 = i15 + 2;
        cArr2[i15 + 1] = ':';
        if (str2 == null) {
            cArr2[i16] = 'n';
            cArr2[i15 + 3] = 'u';
            cArr2[i15 + 4] = 'l';
            cArr2[i15 + 5] = 'l';
            return;
        }
        int i17 = i15 + 3;
        cArr2[i16] = '\"';
        int i18 = i17 + length;
        str2.getChars(0, length, cArr2, i17);
        int i19 = -1;
        int i20 = -1;
        int i21 = -1;
        char c11 = 0;
        for (int i22 = i17; i22 < i18; i22++) {
            char c12 = this.f16590a[i22];
            if (c12 >= ']') {
                if (c12 >= 127 && (c12 == 8232 || c12 == 8233 || c12 < 160)) {
                    if (i20 == i19) {
                        i20 = i22;
                    }
                    i12++;
                    i10 += 4;
                    c11 = c12;
                    i21 = i22;
                }
            } else if ((c12 >= '@' || (this.f16607r & (1 << c12)) == 0) && c12 != '\\') {
                i19 = -1;
            } else {
                i12++;
                if (c12 == '(' || c12 == ')' || c12 == '<' || c12 == '>') {
                    i10 += 4;
                } else {
                    byte[] bArr = com.alibaba.fastjson.util.f.f17607f;
                    if (c12 < bArr.length && bArr[c12] == 4) {
                        i10 += 4;
                    }
                }
                i19 = -1;
                c11 = c12;
                if (i20 == -1) {
                    i20 = i22;
                    i21 = i20;
                } else {
                    i21 = i22;
                }
            }
        }
        if (i12 > 0) {
            int i23 = i10 + i12;
            if (i23 > this.f16590a.length) {
                m(i23);
            }
            this.f16591b = i23;
            if (i12 == 1) {
                if (c11 == 8232) {
                    int i24 = i21 + 1;
                    char[] cArr3 = this.f16590a;
                    System.arraycopy(cArr3, i24, cArr3, i21 + 6, (i18 - i21) - 1);
                    char[] cArr4 = this.f16590a;
                    cArr4[i21] = '\\';
                    cArr4[i24] = 'u';
                    cArr4[i21 + 2] = '2';
                    cArr4[i21 + 3] = '0';
                    cArr4[i21 + 4] = '2';
                    cArr4[i21 + 5] = '8';
                } else if (c11 == 8233) {
                    int i25 = i21 + 1;
                    char[] cArr5 = this.f16590a;
                    System.arraycopy(cArr5, i25, cArr5, i21 + 6, (i18 - i21) - 1);
                    char[] cArr6 = this.f16590a;
                    cArr6[i21] = '\\';
                    cArr6[i25] = 'u';
                    cArr6[i21 + 2] = '2';
                    cArr6[i21 + 3] = '0';
                    cArr6[i21 + 4] = '2';
                    cArr6[i21 + 5] = '9';
                } else if (c11 == '(' || c11 == ')' || c11 == '<' || c11 == '>') {
                    int i26 = i21 + 1;
                    char[] cArr7 = this.f16590a;
                    System.arraycopy(cArr7, i26, cArr7, i21 + 6, (i18 - i21) - 1);
                    char[] cArr8 = this.f16590a;
                    cArr8[i21] = '\\';
                    cArr8[i26] = 'u';
                    char[] cArr9 = com.alibaba.fastjson.util.f.f17604c;
                    cArr8[i21 + 2] = cArr9[(c11 >>> '\f') & 15];
                    cArr8[i21 + 3] = cArr9[(c11 >>> '\b') & 15];
                    cArr8[i21 + 4] = cArr9[(c11 >>> 4) & 15];
                    cArr8[i21 + 5] = cArr9[c11 & 15];
                } else {
                    byte[] bArr2 = com.alibaba.fastjson.util.f.f17607f;
                    if (c11 >= bArr2.length || bArr2[c11] != 4) {
                        int i27 = i21 + 1;
                        char[] cArr10 = this.f16590a;
                        System.arraycopy(cArr10, i27, cArr10, i21 + 2, (i18 - i21) - 1);
                        char[] cArr11 = this.f16590a;
                        cArr11[i21] = '\\';
                        cArr11[i27] = com.alibaba.fastjson.util.f.f17611j[c11];
                    } else {
                        int i28 = i21 + 1;
                        char[] cArr12 = this.f16590a;
                        System.arraycopy(cArr12, i28, cArr12, i21 + 6, (i18 - i21) - 1);
                        char[] cArr13 = this.f16590a;
                        cArr13[i21] = '\\';
                        cArr13[i28] = 'u';
                        char[] cArr14 = com.alibaba.fastjson.util.f.f17604c;
                        cArr13[i21 + 2] = cArr14[(c11 >>> '\f') & 15];
                        cArr13[i21 + 3] = cArr14[(c11 >>> '\b') & 15];
                        cArr13[i21 + 4] = cArr14[(c11 >>> 4) & 15];
                        cArr13[i21 + 5] = cArr14[c11 & 15];
                    }
                }
            } else if (i12 > 1) {
                for (int i29 = i20 - i17; i29 < str2.length(); i29++) {
                    char cCharAt = str2.charAt(i29);
                    if (this.f16606q) {
                        if (cCharAt != '(' && cCharAt != ')') {
                            if (cCharAt == '<' || cCharAt == '>') {
                            }
                        }
                        char[] cArr15 = this.f16590a;
                        cArr15[i20] = '\\';
                        cArr15[i20 + 1] = 'u';
                        char[] cArr16 = com.alibaba.fastjson.util.f.f17604c;
                        cArr15[i20 + 2] = cArr16[(cCharAt >>> '\f') & 15];
                        cArr15[i20 + 3] = cArr16[(cCharAt >>> '\b') & 15];
                        int i30 = i20 + 5;
                        cArr15[i20 + 4] = cArr16[(cCharAt >>> 4) & 15];
                        i20 += 6;
                        cArr15[i30] = cArr16[cCharAt & 15];
                    }
                    byte[] bArr3 = com.alibaba.fastjson.util.f.f17607f;
                    if ((cCharAt >= bArr3.length || bArr3[cCharAt] == 0) && !(cCharAt == '/' && o(SerializerFeature.WriteSlashAsSpecial))) {
                        if (cCharAt == 8232 || cCharAt == 8233) {
                            char[] cArr17 = this.f16590a;
                            cArr17[i20] = '\\';
                            cArr17[i20 + 1] = 'u';
                            char[] cArr18 = com.alibaba.fastjson.util.f.f17604c;
                            cArr17[i20 + 2] = cArr18[(cCharAt >>> '\f') & 15];
                            cArr17[i20 + 3] = cArr18[(cCharAt >>> '\b') & 15];
                            int i31 = i20 + 5;
                            cArr17[i20 + 4] = cArr18[(cCharAt >>> 4) & 15];
                            i20 += 6;
                            cArr17[i31] = cArr18[cCharAt & 15];
                        } else {
                            this.f16590a[i20] = cCharAt;
                            i20++;
                        }
                    } else {
                        char[] cArr19 = this.f16590a;
                        int i32 = i20 + 1;
                        cArr19[i20] = '\\';
                        if (bArr3[cCharAt] == 4) {
                            cArr19[i32] = 'u';
                            char[] cArr20 = com.alibaba.fastjson.util.f.f17604c;
                            cArr19[i20 + 2] = cArr20[(cCharAt >>> '\f') & 15];
                            cArr19[i20 + 3] = cArr20[(cCharAt >>> '\b') & 15];
                            int i33 = i20 + 5;
                            cArr19[i20 + 4] = cArr20[(cCharAt >>> 4) & 15];
                            i20 += 6;
                            cArr19[i33] = cArr20[cCharAt & 15];
                        } else {
                            i20 += 2;
                            cArr19[i32] = com.alibaba.fastjson.util.f.f17611j[cCharAt];
                        }
                    }
                }
            }
        }
        this.f16590a[this.f16591b - 1] = '\"';
    }

    public void X(float f10, boolean z10) {
        if (f10 != f10 || f10 == Float.POSITIVE_INFINITY || f10 == Float.NEGATIVE_INFINITY) {
            h0();
            return;
        }
        int i10 = this.f16591b + 15;
        if (i10 > this.f16590a.length) {
            if (this.f16593d != null) {
                String strB = com.alibaba.fastjson.util.k.b(f10);
                write(strB, 0, strB.length());
                if (z10 && o(SerializerFeature.WriteClassName)) {
                    write(70);
                    return;
                }
                return;
            }
            m(i10);
        }
        this.f16591b += com.alibaba.fastjson.util.k.a(f10, this.f16590a, this.f16591b);
        if (z10 && o(SerializerFeature.WriteClassName)) {
            write(70);
        }
    }

    @Override
    public j1 append(char c10) {
        write(c10);
        return this;
    }

    @Override
    public void close() {
        if (this.f16593d != null && this.f16591b > 0) {
            flush();
        }
        char[] cArr = this.f16590a;
        if (cArr.length <= f16588w) {
            f16584s.set(cArr);
        }
        this.f16590a = null;
    }

    @Override
    public j1 append(CharSequence charSequence) {
        String string = charSequence == null ? "null" : charSequence.toString();
        write(string, 0, string.length());
        return this;
    }

    public void d0(byte[] bArr) {
        int length = this.f16591b + (bArr.length * 2) + 3;
        if (length > this.f16590a.length) {
            m(length);
        }
        char[] cArr = this.f16590a;
        int i10 = this.f16591b;
        int i11 = i10 + 1;
        this.f16591b = i11;
        cArr[i10] = 'x';
        this.f16591b = i10 + 2;
        cArr[i11] = '\'';
        for (byte b10 : bArr) {
            int i12 = (b10 & 255) >> 4;
            int i13 = b10 & 15;
            char[] cArr2 = this.f16590a;
            int i14 = this.f16591b;
            int i15 = i14 + 1;
            this.f16591b = i15;
            int i16 = 55;
            cArr2[i14] = (char) (i12 + (i12 < 10 ? 48 : 55));
            this.f16591b = i14 + 2;
            if (i13 < 10) {
                i16 = 48;
            }
            cArr2[i15] = (char) (i13 + i16);
        }
        char[] cArr3 = this.f16590a;
        int i17 = this.f16591b;
        this.f16591b = i17 + 1;
        cArr3[i17] = '\'';
    }

    public void e0(int i10) {
        if (i10 == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int iN = i10 < 0 ? com.alibaba.fastjson.util.f.n(-i10) + 1 : com.alibaba.fastjson.util.f.n(i10);
        int i11 = this.f16591b + iN;
        if (i11 > this.f16590a.length) {
            if (this.f16593d != null) {
                char[] cArr = new char[iN];
                com.alibaba.fastjson.util.f.h(i10, iN, cArr);
                write(cArr, 0, iN);
                return;
            }
            m(i11);
        }
        com.alibaba.fastjson.util.f.h(i10, i11, this.f16590a);
        this.f16591b = i11;
    }

    @Override
    public j1 append(CharSequence charSequence, int i10, int i11) {
        if (charSequence == null) {
            charSequence = "null";
        }
        String string = charSequence.subSequence(i10, i11).toString();
        write(string, 0, string.length());
        return this;
    }

    @Override
    public void flush() {
        Writer writer = this.f16593d;
        if (writer == null) {
            return;
        }
        try {
            writer.write(this.f16590a, 0, this.f16591b);
            this.f16593d.flush();
            this.f16591b = 0;
        } catch (IOException e10) {
            throw new JSONException(e10.getMessage(), e10);
        }
    }

    public void g0(long j10) {
        boolean z10 = o(SerializerFeature.BrowserCompatible) && !o(SerializerFeature.WriteClassName) && (j10 > 9007199254740991L || j10 < -9007199254740991L);
        if (j10 == Long.MIN_VALUE) {
            if (z10) {
                write("\"-9223372036854775808\"");
                return;
            } else {
                write("-9223372036854775808");
                return;
            }
        }
        int iO = j10 < 0 ? com.alibaba.fastjson.util.f.o(-j10) + 1 : com.alibaba.fastjson.util.f.o(j10);
        int i10 = this.f16591b + iO;
        if (z10) {
            i10 += 2;
        }
        if (i10 > this.f16590a.length) {
            if (this.f16593d != null) {
                char[] cArr = new char[iO];
                com.alibaba.fastjson.util.f.i(j10, iO, cArr);
                if (!z10) {
                    write(cArr, 0, iO);
                    return;
                }
                write(34);
                write(cArr, 0, iO);
                write(34);
                return;
            }
            m(i10);
        }
        if (z10) {
            char[] cArr2 = this.f16590a;
            cArr2[this.f16591b] = '\"';
            int i11 = i10 - 1;
            com.alibaba.fastjson.util.f.i(j10, i11, cArr2);
            this.f16590a[i11] = '\"';
        } else {
            com.alibaba.fastjson.util.f.i(j10, i10, this.f16590a);
        }
        this.f16591b = i10;
    }

    protected void h() {
        long j10;
        int i10 = this.f16592c;
        boolean z10 = (SerializerFeature.QuoteFieldNames.mask & i10) != 0;
        this.f16595f = z10;
        boolean z11 = (SerializerFeature.UseSingleQuotes.mask & i10) != 0;
        this.f16594e = z11;
        this.f16596g = (SerializerFeature.SortField.mask & i10) != 0;
        this.f16597h = (SerializerFeature.DisableCircularReferenceDetect.mask & i10) != 0;
        boolean z12 = (SerializerFeature.BeanToArray.mask & i10) != 0;
        this.f16598i = z12;
        this.f16599j = (SerializerFeature.WriteNonStringValueAsString.mask & i10) != 0;
        this.f16600k = (SerializerFeature.NotWriteDefaultValue.mask & i10) != 0;
        boolean z13 = (SerializerFeature.WriteEnumUsingName.mask & i10) != 0;
        this.f16601l = z13;
        this.f16602m = (SerializerFeature.WriteEnumUsingToString.mask & i10) != 0;
        this.f16603n = z10 && (f16589x & i10) == 0 && (z12 || z13);
        this.f16604o = z11 ? '\'' : '\"';
        boolean z14 = (SerializerFeature.BrowserSecure.mask & i10) != 0;
        this.f16606q = z14;
        if (z14) {
            j10 = 5764610843043954687L;
        } else {
            j10 = (i10 & SerializerFeature.WriteSlashAsSpecial.mask) != 0 ? 140758963191807L : 21474836479L;
        }
        this.f16607r = j10;
    }

    public void h0() {
        write("null");
    }

    public void j(SerializerFeature serializerFeature, boolean z10) {
        if (z10) {
            int mask = this.f16592c | serializerFeature.getMask();
            this.f16592c = mask;
            SerializerFeature serializerFeature2 = SerializerFeature.WriteEnumUsingToString;
            if (serializerFeature == serializerFeature2) {
                this.f16592c = (~SerializerFeature.WriteEnumUsingName.getMask()) & mask;
            } else if (serializerFeature == SerializerFeature.WriteEnumUsingName) {
                this.f16592c = (~serializerFeature2.getMask()) & mask;
            }
        } else {
            this.f16592c = (~serializerFeature.getMask()) & this.f16592c;
        }
        h();
    }

    public void j0(int i10, int i11) {
        if ((i10 & i11) == 0 && (this.f16592c & i11) == 0) {
            h0();
            return;
        }
        int i12 = SerializerFeature.WriteMapNullValue.mask;
        if ((i10 & i12) != 0 && (i10 & (~i12) & SerializerFeature.WRITE_MAP_NULL_FEATURES) == 0) {
            h0();
            return;
        }
        if (i11 == SerializerFeature.WriteNullListAsEmpty.mask) {
            write("[]");
            return;
        }
        if (i11 == SerializerFeature.WriteNullStringAsEmpty.mask) {
            o0("");
            return;
        }
        if (i11 == SerializerFeature.WriteNullBooleanAsFalse.mask) {
            write("false");
        } else if (i11 == SerializerFeature.WriteNullNumberAsZero.mask) {
            write(48);
        } else {
            h0();
        }
    }

    public void l0(SerializerFeature serializerFeature) {
        j0(0, serializerFeature.mask);
    }

    public void m(int i10) {
        int i11 = this.f16605p;
        if (i11 != -1 && i10 >= i11) {
            throw new JSONException("serialize exceeded MAX_OUTPUT_LENGTH=" + this.f16605p + ", minimumCapacity=" + i10);
        }
        char[] cArr = this.f16590a;
        int length = cArr.length + (cArr.length >> 1) + 1;
        if (length >= i10) {
            i10 = length;
        }
        char[] cArr2 = new char[i10];
        System.arraycopy(cArr, 0, cArr2, 0, this.f16591b);
        if (this.f16590a.length < f16588w) {
            ThreadLocal threadLocal = f16584s;
            char[] cArr3 = (char[]) threadLocal.get();
            if (cArr3 == null || cArr3.length < this.f16590a.length) {
                threadLocal.set(this.f16590a);
            }
        }
        this.f16590a = cArr2;
    }

    public boolean n(int i10) {
        return (i10 & this.f16592c) != 0;
    }

    public boolean o(SerializerFeature serializerFeature) {
        return (serializerFeature.mask & this.f16592c) != 0;
    }

    public void o0(String str) {
        if (this.f16594e) {
            s0(str);
        } else {
            r0(str, (char) 0);
        }
    }

    public byte[] p(Charset charset) {
        if (this.f16593d == null) {
            return charset == com.alibaba.fastjson.util.f.f17603b ? l() : new String(this.f16590a, 0, this.f16591b).getBytes(charset);
        }
        throw new UnsupportedOperationException("writer not null");
    }

    public void p0(char[] cArr) {
        if (this.f16594e) {
            t0(cArr);
        } else {
            r0(new String(cArr), (char) 0);
        }
    }

    public void q(boolean z10) {
        if (z10) {
            write("true");
        } else {
            write("false");
        }
    }

    public void r(byte[] bArr) {
        if (n(SerializerFeature.WriteClassName.mask)) {
            d0(bArr);
            return;
        }
        int length = bArr.length;
        boolean z10 = this.f16594e;
        char c10 = z10 ? '\'' : '\"';
        if (length == 0) {
            write(z10 ? "''" : "\"\"");
            return;
        }
        char[] cArr = com.alibaba.fastjson.util.f.f17617p;
        int i10 = (length / 3) * 3;
        int i11 = length - 1;
        int i12 = this.f16591b;
        int i13 = (((i11 / 3) + 1) << 2) + i12;
        int i14 = i13 + 2;
        if (i14 > this.f16590a.length) {
            if (this.f16593d != null) {
                write(c10);
                int i15 = 0;
                while (i15 < i10) {
                    int i16 = i15 + 2;
                    int i17 = ((bArr[i15 + 1] & 255) << 8) | ((bArr[i15] & 255) << 16);
                    i15 += 3;
                    int i18 = i17 | (bArr[i16] & 255);
                    write(cArr[(i18 >>> 18) & 63]);
                    write(cArr[(i18 >>> 12) & 63]);
                    write(cArr[(i18 >>> 6) & 63]);
                    write(cArr[i18 & 63]);
                }
                int i19 = length - i10;
                if (i19 > 0) {
                    int i20 = ((bArr[i10] & 255) << 10) | (i19 == 2 ? (bArr[i11] & 255) << 2 : 0);
                    write(cArr[i20 >> 12]);
                    write(cArr[(i20 >>> 6) & 63]);
                    write(i19 == 2 ? cArr[i20 & 63] : '=');
                    write(61);
                }
                write(c10);
                return;
            }
            m(i14);
        }
        this.f16591b = i14;
        int i21 = i12 + 1;
        this.f16590a[i12] = c10;
        int i22 = 0;
        while (i22 < i10) {
            int i23 = i22 + 2;
            int i24 = ((bArr[i22 + 1] & 255) << 8) | ((bArr[i22] & 255) << 16);
            i22 += 3;
            int i25 = i24 | (bArr[i23] & 255);
            char[] cArr2 = this.f16590a;
            cArr2[i21] = cArr[(i25 >>> 18) & 63];
            cArr2[i21 + 1] = cArr[(i25 >>> 12) & 63];
            int i26 = i21 + 3;
            cArr2[i21 + 2] = cArr[(i25 >>> 6) & 63];
            i21 += 4;
            cArr2[i26] = cArr[i25 & 63];
        }
        int i27 = length - i10;
        if (i27 > 0) {
            int i28 = ((bArr[i10] & 255) << 10) | (i27 == 2 ? (bArr[i11] & 255) << 2 : 0);
            char[] cArr3 = this.f16590a;
            cArr3[i13 - 3] = cArr[i28 >> 12];
            cArr3[i13 - 2] = cArr[(i28 >>> 6) & 63];
            cArr3[i13 - 1] = i27 == 2 ? cArr[i28 & 63] : '=';
            cArr3[i13] = '=';
        }
        this.f16590a[i13 + 1] = c10;
    }

    /* JADX WARN: Code duplicated, block: B:165:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:59:0x014f  */
    public void r0(String str, char c10) {
        if (str == null) {
            h0();
            if (c10 != 0) {
                write(c10);
                return;
            }
            return;
        }
        int length = str.length();
        int i10 = this.f16591b + length;
        int i11 = i10 + 2;
        if (c10 != 0) {
            i11 = i10 + 3;
        }
        char c11 = '>';
        if (i11 > this.f16590a.length) {
            if (this.f16593d != null) {
                write(34);
                int i12 = 0;
                while (i12 < str.length()) {
                    char cCharAt = str.charAt(i12);
                    if (o(SerializerFeature.BrowserSecure) && (cCharAt == '(' || cCharAt == ')' || cCharAt == '<' || cCharAt == c11)) {
                        write(92);
                        write(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
                        char[] cArr = com.alibaba.fastjson.util.f.f17604c;
                        write(cArr[(cCharAt >>> '\f') & 15]);
                        write(cArr[(cCharAt >>> '\b') & 15]);
                        write(cArr[(cCharAt >>> 4) & 15]);
                        write(cArr[cCharAt & 15]);
                    } else if (!o(SerializerFeature.BrowserCompatible)) {
                        byte[] bArr = com.alibaba.fastjson.util.f.f17607f;
                        if ((cCharAt >= bArr.length || bArr[cCharAt] == 0) && !(cCharAt == '/' && o(SerializerFeature.WriteSlashAsSpecial))) {
                            write(cCharAt);
                        } else {
                            write(92);
                            if (bArr[cCharAt] == 4) {
                                write(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
                                char[] cArr2 = com.alibaba.fastjson.util.f.f17604c;
                                write(cArr2[(cCharAt >>> '\f') & 15]);
                                write(cArr2[(cCharAt >>> '\b') & 15]);
                                write(cArr2[(cCharAt >>> 4) & 15]);
                                write(cArr2[cCharAt & 15]);
                            } else {
                                write(com.alibaba.fastjson.util.f.f17611j[cCharAt]);
                            }
                        }
                    } else if (cCharAt == '\b' || cCharAt == '\f' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t' || cCharAt == '\"' || cCharAt == '/' || cCharAt == '\\') {
                        write(92);
                        write(com.alibaba.fastjson.util.f.f17611j[cCharAt]);
                    } else if (cCharAt < ' ') {
                        write(92);
                        write(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
                        write(48);
                        write(48);
                        char[] cArr3 = com.alibaba.fastjson.util.f.f17612k;
                        int i13 = cCharAt * 2;
                        write(cArr3[i13]);
                        write(cArr3[i13 + 1]);
                    } else if (cCharAt >= 127) {
                        write(92);
                        write(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
                        char[] cArr4 = com.alibaba.fastjson.util.f.f17604c;
                        write(cArr4[(cCharAt >>> '\f') & 15]);
                        write(cArr4[(cCharAt >>> '\b') & 15]);
                        write(cArr4[(cCharAt >>> 4) & 15]);
                        write(cArr4[cCharAt & 15]);
                    } else {
                        write(cCharAt);
                    }
                    i12++;
                    c11 = '>';
                }
                write(34);
                if (c10 != 0) {
                    write(c10);
                    return;
                }
                return;
            }
            m(i11);
        }
        int i14 = this.f16591b;
        int i15 = i14 + 1;
        int i16 = i15 + length;
        char[] cArr5 = this.f16590a;
        cArr5[i14] = '\"';
        char c12 = 0;
        str.getChars(0, length, cArr5, i15);
        this.f16591b = i11;
        int i17 = -1;
        if (o(SerializerFeature.BrowserCompatible)) {
            for (int i18 = i15; i18 < i16; i18++) {
                char c13 = this.f16590a[i18];
                if (c13 == '\"' || c13 == '/' || c13 == '\\' || c13 == '\b' || c13 == '\f' || c13 == '\n' || c13 == '\r' || c13 == '\t') {
                    i11++;
                } else {
                    if (c13 < ' ' || c13 >= 127) {
                        i11 += 5;
                    }
                }
                i17 = i18;
            }
            if (i11 > this.f16590a.length) {
                m(i11);
            }
            this.f16591b = i11;
            while (i17 >= i15) {
                char[] cArr6 = this.f16590a;
                char c14 = cArr6[i17];
                if (c14 == '\b' || c14 == '\f' || c14 == '\n' || c14 == '\r' || c14 == '\t') {
                    int i19 = i17 + 1;
                    System.arraycopy(cArr6, i19, cArr6, i17 + 2, (i16 - i17) - 1);
                    char[] cArr7 = this.f16590a;
                    cArr7[i17] = '\\';
                    cArr7[i19] = com.alibaba.fastjson.util.f.f17611j[c14];
                } else {
                    if (c14 == '\"' || c14 == '/' || c14 == '\\') {
                        int i20 = i17 + 1;
                        System.arraycopy(cArr6, i20, cArr6, i17 + 2, (i16 - i17) - 1);
                        char[] cArr8 = this.f16590a;
                        cArr8[i17] = '\\';
                        cArr8[i20] = c14;
                    } else {
                        if (c14 < ' ') {
                            int i21 = i17 + 1;
                            System.arraycopy(cArr6, i21, cArr6, i17 + 6, (i16 - i17) - 1);
                            char[] cArr9 = this.f16590a;
                            cArr9[i17] = '\\';
                            cArr9[i21] = 'u';
                            cArr9[i17 + 2] = '0';
                            cArr9[i17 + 3] = '0';
                            char[] cArr10 = com.alibaba.fastjson.util.f.f17612k;
                            int i22 = c14 * 2;
                            cArr9[i17 + 4] = cArr10[i22];
                            cArr9[i17 + 5] = cArr10[i22 + 1];
                        } else if (c14 >= 127) {
                            int i23 = i17 + 1;
                            System.arraycopy(cArr6, i23, cArr6, i17 + 6, (i16 - i17) - 1);
                            char[] cArr11 = this.f16590a;
                            cArr11[i17] = '\\';
                            cArr11[i23] = 'u';
                            char[] cArr12 = com.alibaba.fastjson.util.f.f17604c;
                            cArr11[i17 + 2] = cArr12[(c14 >>> '\f') & 15];
                            cArr11[i17 + 3] = cArr12[(c14 >>> '\b') & 15];
                            cArr11[i17 + 4] = cArr12[(c14 >>> 4) & 15];
                            cArr11[i17 + 5] = cArr12[c14 & 15];
                        }
                        i16 += 5;
                    }
                    i17--;
                }
                i16++;
                i17--;
            }
            if (c10 == 0) {
                this.f16590a[this.f16591b - 1] = '\"';
                return;
            }
            char[] cArr13 = this.f16590a;
            int i24 = this.f16591b;
            cArr13[i24 - 2] = '\"';
            cArr13[i24 - 1] = c10;
            return;
        }
        int i25 = 0;
        int i26 = -1;
        int i27 = -1;
        for (int i28 = i15; i28 < i16; i28++) {
            char c15 = this.f16590a[i28];
            if (c15 >= ']') {
                if (c15 >= 127 && (c15 == 8232 || c15 == 8233 || c15 < 160)) {
                    if (i26 == i17) {
                        i26 = i28;
                    }
                    i25++;
                    i11 += 4;
                    i27 = i28;
                    c12 = c15;
                }
            } else if ((c15 >= '@' || (this.f16607r & (1 << c15)) == 0) && c15 != '\\') {
                i17 = -1;
            } else {
                i25++;
                if (c15 == '(' || c15 == ')' || c15 == '<' || c15 == '>') {
                    i11 += 4;
                } else {
                    byte[] bArr2 = com.alibaba.fastjson.util.f.f17607f;
                    if (c15 < bArr2.length && bArr2[c15] == 4) {
                        i11 += 4;
                    }
                }
                i17 = -1;
                if (i26 == -1) {
                    i26 = i28;
                    i27 = i26;
                } else {
                    i27 = i28;
                }
                c12 = c15;
            }
        }
        if (i25 > 0) {
            int i29 = i11 + i25;
            if (i29 > this.f16590a.length) {
                m(i29);
            }
            this.f16591b = i29;
            if (i25 == 1) {
                if (c12 == 8232) {
                    int i30 = i27 + 1;
                    char[] cArr14 = this.f16590a;
                    System.arraycopy(cArr14, i30, cArr14, i27 + 6, (i16 - i27) - 1);
                    char[] cArr15 = this.f16590a;
                    cArr15[i27] = '\\';
                    cArr15[i30] = 'u';
                    cArr15[i27 + 2] = '2';
                    cArr15[i27 + 3] = '0';
                    cArr15[i27 + 4] = '2';
                    cArr15[i27 + 5] = '8';
                } else if (c12 == 8233) {
                    int i31 = i27 + 1;
                    char[] cArr16 = this.f16590a;
                    System.arraycopy(cArr16, i31, cArr16, i27 + 6, (i16 - i27) - 1);
                    char[] cArr17 = this.f16590a;
                    cArr17[i27] = '\\';
                    cArr17[i31] = 'u';
                    cArr17[i27 + 2] = '2';
                    cArr17[i27 + 3] = '0';
                    cArr17[i27 + 4] = '2';
                    cArr17[i27 + 5] = '9';
                } else if (c12 == '(' || c12 == ')' || c12 == '<' || c12 == '>') {
                    int i32 = i27 + 1;
                    char[] cArr18 = this.f16590a;
                    System.arraycopy(cArr18, i32, cArr18, i27 + 6, (i16 - i27) - 1);
                    char[] cArr19 = this.f16590a;
                    cArr19[i27] = '\\';
                    cArr19[i32] = 'u';
                    char[] cArr20 = com.alibaba.fastjson.util.f.f17604c;
                    cArr19[i27 + 2] = cArr20[(c12 >>> '\f') & 15];
                    cArr19[i27 + 3] = cArr20[(c12 >>> '\b') & 15];
                    cArr19[i27 + 4] = cArr20[(c12 >>> 4) & 15];
                    cArr19[i27 + 5] = cArr20[c12 & 15];
                } else {
                    byte[] bArr3 = com.alibaba.fastjson.util.f.f17607f;
                    if (c12 >= bArr3.length || bArr3[c12] != 4) {
                        int i33 = i27 + 1;
                        char[] cArr21 = this.f16590a;
                        System.arraycopy(cArr21, i33, cArr21, i27 + 2, (i16 - i27) - 1);
                        char[] cArr22 = this.f16590a;
                        cArr22[i27] = '\\';
                        cArr22[i33] = com.alibaba.fastjson.util.f.f17611j[c12];
                    } else {
                        int i34 = i27 + 1;
                        char[] cArr23 = this.f16590a;
                        System.arraycopy(cArr23, i34, cArr23, i27 + 6, (i16 - i27) - 1);
                        char[] cArr24 = this.f16590a;
                        cArr24[i27] = '\\';
                        cArr24[i34] = 'u';
                        char[] cArr25 = com.alibaba.fastjson.util.f.f17604c;
                        cArr24[i27 + 2] = cArr25[(c12 >>> '\f') & 15];
                        cArr24[i27 + 3] = cArr25[(c12 >>> '\b') & 15];
                        cArr24[i27 + 4] = cArr25[(c12 >>> 4) & 15];
                        cArr24[i27 + 5] = cArr25[c12 & 15];
                    }
                }
            } else if (i25 > 1) {
                for (int i35 = i26 - i15; i35 < str.length(); i35++) {
                    char cCharAt2 = str.charAt(i35);
                    if (this.f16606q) {
                        if (cCharAt2 != '(' && cCharAt2 != ')') {
                            if (cCharAt2 == '<' || cCharAt2 == '>') {
                            }
                        }
                        char[] cArr26 = this.f16590a;
                        cArr26[i26] = '\\';
                        cArr26[i26 + 1] = 'u';
                        char[] cArr27 = com.alibaba.fastjson.util.f.f17604c;
                        cArr26[i26 + 2] = cArr27[(cCharAt2 >>> '\f') & 15];
                        cArr26[i26 + 3] = cArr27[(cCharAt2 >>> '\b') & 15];
                        int i36 = i26 + 5;
                        cArr26[i26 + 4] = cArr27[(cCharAt2 >>> 4) & 15];
                        i26 += 6;
                        cArr26[i36] = cArr27[cCharAt2 & 15];
                    }
                    byte[] bArr4 = com.alibaba.fastjson.util.f.f17607f;
                    if ((cCharAt2 >= bArr4.length || bArr4[cCharAt2] == 0) && !(cCharAt2 == '/' && o(SerializerFeature.WriteSlashAsSpecial))) {
                        if (cCharAt2 == 8232 || cCharAt2 == 8233) {
                            char[] cArr28 = this.f16590a;
                            cArr28[i26] = '\\';
                            cArr28[i26 + 1] = 'u';
                            char[] cArr29 = com.alibaba.fastjson.util.f.f17604c;
                            cArr28[i26 + 2] = cArr29[(cCharAt2 >>> '\f') & 15];
                            cArr28[i26 + 3] = cArr29[(cCharAt2 >>> '\b') & 15];
                            int i37 = i26 + 5;
                            cArr28[i26 + 4] = cArr29[(cCharAt2 >>> 4) & 15];
                            i26 += 6;
                            cArr28[i37] = cArr29[cCharAt2 & 15];
                        } else {
                            this.f16590a[i26] = cCharAt2;
                            i26++;
                        }
                    } else {
                        char[] cArr30 = this.f16590a;
                        int i38 = i26 + 1;
                        cArr30[i26] = '\\';
                        if (bArr4[cCharAt2] == 4) {
                            cArr30[i38] = 'u';
                            char[] cArr31 = com.alibaba.fastjson.util.f.f17604c;
                            cArr30[i26 + 2] = cArr31[(cCharAt2 >>> '\f') & 15];
                            cArr30[i26 + 3] = cArr31[(cCharAt2 >>> '\b') & 15];
                            int i39 = i26 + 5;
                            cArr30[i26 + 4] = cArr31[(cCharAt2 >>> 4) & 15];
                            i26 += 6;
                            cArr30[i39] = cArr31[cCharAt2 & 15];
                        } else {
                            i26 += 2;
                            cArr30[i38] = com.alibaba.fastjson.util.f.f17611j[cCharAt2];
                        }
                    }
                }
            }
        }
        if (c10 == 0) {
            this.f16590a[this.f16591b - 1] = '\"';
            return;
        }
        char[] cArr32 = this.f16590a;
        int i40 = this.f16591b;
        cArr32[i40 - 2] = '\"';
        cArr32[i40 - 1] = c10;
    }

    public void s(double d10, boolean z10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            h0();
            return;
        }
        int i10 = this.f16591b + 24;
        if (i10 > this.f16590a.length) {
            if (this.f16593d != null) {
                String strB = com.alibaba.fastjson.util.j.b(d10);
                write(strB, 0, strB.length());
                if (z10 && o(SerializerFeature.WriteClassName)) {
                    write(68);
                    return;
                }
                return;
            }
            m(i10);
        }
        this.f16591b += com.alibaba.fastjson.util.j.a(d10, this.f16590a, this.f16591b);
        if (z10 && o(SerializerFeature.WriteClassName)) {
            write(68);
        }
    }

    protected void s0(String str) {
        int i10 = 0;
        if (str == null) {
            int i11 = this.f16591b + 4;
            if (i11 > this.f16590a.length) {
                m(i11);
            }
            "null".getChars(0, 4, this.f16590a, this.f16591b);
            this.f16591b = i11;
            return;
        }
        int length = str.length();
        int i12 = this.f16591b + length + 2;
        if (i12 > this.f16590a.length) {
            if (this.f16593d != null) {
                write(39);
                while (i10 < str.length()) {
                    char cCharAt = str.charAt(i10);
                    if (cCharAt <= '\r' || cCharAt == '\\' || cCharAt == '\'' || (cCharAt == '/' && o(SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        write(com.alibaba.fastjson.util.f.f17611j[cCharAt]);
                    } else {
                        write(cCharAt);
                    }
                    i10++;
                }
                write(39);
                return;
            }
            m(i12);
        }
        int i13 = this.f16591b;
        int i14 = i13 + 1;
        int i15 = i14 + length;
        char[] cArr = this.f16590a;
        cArr[i13] = '\'';
        str.getChars(0, length, cArr, i14);
        this.f16591b = i12;
        int i16 = -1;
        char c10 = 0;
        for (int i17 = i14; i17 < i15; i17++) {
            char c11 = this.f16590a[i17];
            if (c11 <= '\r' || c11 == '\\' || c11 == '\'' || (c11 == '/' && o(SerializerFeature.WriteSlashAsSpecial))) {
                i10++;
                i16 = i17;
                c10 = c11;
            }
        }
        int i18 = i12 + i10;
        if (i18 > this.f16590a.length) {
            m(i18);
        }
        this.f16591b = i18;
        if (i10 == 1) {
            char[] cArr2 = this.f16590a;
            int i19 = i16 + 1;
            System.arraycopy(cArr2, i19, cArr2, i16 + 2, (i15 - i16) - 1);
            char[] cArr3 = this.f16590a;
            cArr3[i16] = '\\';
            cArr3[i19] = com.alibaba.fastjson.util.f.f17611j[c10];
        } else if (i10 > 1) {
            char[] cArr4 = this.f16590a;
            int i20 = i16 + 1;
            System.arraycopy(cArr4, i20, cArr4, i16 + 2, (i15 - i16) - 1);
            char[] cArr5 = this.f16590a;
            cArr5[i16] = '\\';
            cArr5[i20] = com.alibaba.fastjson.util.f.f17611j[c10];
            int i21 = i15 + 1;
            for (int i22 = i16 - 1; i22 >= i14; i22--) {
                char c12 = this.f16590a[i22];
                if (c12 <= '\r' || c12 == '\\' || c12 == '\'' || (c12 == '/' && o(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr6 = this.f16590a;
                    int i23 = i22 + 1;
                    System.arraycopy(cArr6, i23, cArr6, i22 + 2, (i21 - i22) - 1);
                    char[] cArr7 = this.f16590a;
                    cArr7[i22] = '\\';
                    cArr7[i23] = com.alibaba.fastjson.util.f.f17611j[c12];
                    i21++;
                }
            }
        }
        this.f16590a[this.f16591b - 1] = '\'';
    }

    public void t(Enum r10) {
        String string;
        if (r10 == null) {
            h0();
            return;
        }
        if (!this.f16601l || this.f16602m) {
            string = this.f16602m ? r10.toString() : null;
        } else {
            string = r10.name();
        }
        if (string == null) {
            e0(r10.ordinal());
            return;
        }
        int i10 = o(SerializerFeature.UseSingleQuotes) ? 39 : 34;
        write(i10);
        write(string);
        write(i10);
    }

    protected void t0(char[] cArr) {
        int i10 = 0;
        if (cArr == null) {
            int i11 = this.f16591b + 4;
            if (i11 > this.f16590a.length) {
                m(i11);
            }
            "null".getChars(0, 4, this.f16590a, this.f16591b);
            this.f16591b = i11;
            return;
        }
        int length = cArr.length;
        int i12 = this.f16591b + length + 2;
        if (i12 > this.f16590a.length) {
            if (this.f16593d != null) {
                write(39);
                while (i10 < cArr.length) {
                    char c10 = cArr[i10];
                    if (c10 <= '\r' || c10 == '\\' || c10 == '\'' || (c10 == '/' && o(SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        write(com.alibaba.fastjson.util.f.f17611j[c10]);
                    } else {
                        write(c10);
                    }
                    i10++;
                }
                write(39);
                return;
            }
            m(i12);
        }
        int i13 = this.f16591b;
        int i14 = i13 + 1;
        int i15 = length + i14;
        char[] cArr2 = this.f16590a;
        cArr2[i13] = '\'';
        System.arraycopy(cArr, 0, cArr2, i14, cArr.length);
        this.f16591b = i12;
        int i16 = -1;
        char c11 = 0;
        for (int i17 = i14; i17 < i15; i17++) {
            char c12 = this.f16590a[i17];
            if (c12 <= '\r' || c12 == '\\' || c12 == '\'' || (c12 == '/' && o(SerializerFeature.WriteSlashAsSpecial))) {
                i10++;
                i16 = i17;
                c11 = c12;
            }
        }
        int i18 = i12 + i10;
        if (i18 > this.f16590a.length) {
            m(i18);
        }
        this.f16591b = i18;
        if (i10 == 1) {
            char[] cArr3 = this.f16590a;
            int i19 = i16 + 1;
            System.arraycopy(cArr3, i19, cArr3, i16 + 2, (i15 - i16) - 1);
            char[] cArr4 = this.f16590a;
            cArr4[i16] = '\\';
            cArr4[i19] = com.alibaba.fastjson.util.f.f17611j[c11];
        } else if (i10 > 1) {
            char[] cArr5 = this.f16590a;
            int i20 = i16 + 1;
            System.arraycopy(cArr5, i20, cArr5, i16 + 2, (i15 - i16) - 1);
            char[] cArr6 = this.f16590a;
            cArr6[i16] = '\\';
            cArr6[i20] = com.alibaba.fastjson.util.f.f17611j[c11];
            int i21 = i15 + 1;
            for (int i22 = i16 - 1; i22 >= i14; i22--) {
                char c13 = this.f16590a[i22];
                if (c13 <= '\r' || c13 == '\\' || c13 == '\'' || (c13 == '/' && o(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr7 = this.f16590a;
                    int i23 = i22 + 1;
                    System.arraycopy(cArr7, i23, cArr7, i22 + 2, (i21 - i22) - 1);
                    char[] cArr8 = this.f16590a;
                    cArr8[i22] = '\\';
                    cArr8[i23] = com.alibaba.fastjson.util.f.f17611j[c13];
                    i21++;
                }
            }
        }
        this.f16590a[this.f16591b - 1] = '\'';
    }

    public String toString() {
        return new String(this.f16590a, 0, this.f16591b);
    }

    public void u(String str) {
        v(str, false);
    }

    public int u0(OutputStream outputStream, Charset charset) throws IOException {
        if (this.f16593d != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        if (charset == com.alibaba.fastjson.util.f.f17603b) {
            return k(outputStream);
        }
        byte[] bytes = new String(this.f16590a, 0, this.f16591b).getBytes(charset);
        outputStream.write(bytes);
        return bytes.length;
    }

    public void v(String str, boolean z10) {
        if (str == null) {
            write("null:");
            return;
        }
        if (this.f16594e) {
            if (!this.f16595f) {
                f0(str);
                return;
            } else {
                s0(str);
                write(58);
                return;
            }
        }
        if (this.f16595f) {
            r0(str, ':');
            return;
        }
        int i10 = 0;
        boolean z11 = true;
        boolean z12 = str.length() == 0;
        while (true) {
            if (i10 >= str.length()) {
                z11 = z12;
                break;
            }
            char cCharAt = str.charAt(i10);
            if ((cCharAt < '@' && (this.f16607r & (1 << cCharAt)) != 0) || cCharAt == '\\') {
                break;
            } else {
                i10++;
            }
        }
        if (z11) {
            r0(str, ':');
        } else {
            write(str);
            write(58);
        }
    }

    public void w(char c10, String str, double d10) {
        write(c10);
        u(str);
        s(d10, false);
    }

    @Override
    public void write(int i10) {
        int i11 = 1;
        int i12 = this.f16591b + 1;
        if (i12 <= this.f16590a.length) {
            i11 = i12;
        } else if (this.f16593d == null) {
            m(i12);
            i11 = i12;
        } else {
            flush();
        }
        this.f16590a[this.f16591b] = (char) i10;
        this.f16591b = i11;
    }

    public void x(char c10, String str, int i10) {
        if (i10 == Integer.MIN_VALUE || !this.f16595f) {
            write(c10);
            u(str);
            e0(i10);
            return;
        }
        int iN = i10 < 0 ? com.alibaba.fastjson.util.f.n(-i10) + 1 : com.alibaba.fastjson.util.f.n(i10);
        int length = str.length();
        int i11 = this.f16591b + length + 4 + iN;
        if (i11 > this.f16590a.length) {
            if (this.f16593d != null) {
                write(c10);
                u(str);
                e0(i10);
                return;
            }
            m(i11);
        }
        int i12 = this.f16591b;
        this.f16591b = i11;
        char[] cArr = this.f16590a;
        cArr[i12] = c10;
        int i13 = i12 + length;
        cArr[i12 + 1] = this.f16604o;
        str.getChars(0, length, cArr, i12 + 2);
        char[] cArr2 = this.f16590a;
        cArr2[i13 + 2] = this.f16604o;
        cArr2[i13 + 3] = ':';
        com.alibaba.fastjson.util.f.h(i10, this.f16591b, cArr2);
    }

    public void y(char c10, String str, long j10) {
        if (j10 == Long.MIN_VALUE || !this.f16595f || n(SerializerFeature.BrowserCompatible.mask)) {
            write(c10);
            u(str);
            g0(j10);
            return;
        }
        int iO = j10 < 0 ? com.alibaba.fastjson.util.f.o(-j10) + 1 : com.alibaba.fastjson.util.f.o(j10);
        int length = str.length();
        int i10 = this.f16591b + length + 4 + iO;
        if (i10 > this.f16590a.length) {
            if (this.f16593d != null) {
                write(c10);
                u(str);
                g0(j10);
                return;
            }
            m(i10);
        }
        int i11 = this.f16591b;
        this.f16591b = i10;
        char[] cArr = this.f16590a;
        cArr[i11] = c10;
        int i12 = i11 + length;
        cArr[i11 + 1] = this.f16604o;
        str.getChars(0, length, cArr, i11 + 2);
        char[] cArr2 = this.f16590a;
        cArr2[i12 + 2] = this.f16604o;
        cArr2[i12 + 3] = ':';
        com.alibaba.fastjson.util.f.i(j10, this.f16591b, cArr2);
    }

    public j1(Writer writer) {
        this(writer, com.alibaba.fastjson.a.DEFAULT_GENERATE_FEATURE, SerializerFeature.EMPTY);
    }

    public j1(Writer writer, int i10, SerializerFeature... serializerFeatureArr) {
        this.f16605p = -1;
        this.f16593d = writer;
        ThreadLocal threadLocal = f16584s;
        char[] cArr = (char[]) threadLocal.get();
        this.f16590a = cArr;
        if (cArr != null) {
            threadLocal.set(null);
        } else {
            this.f16590a = new char[2048];
        }
        for (SerializerFeature serializerFeature : serializerFeatureArr) {
            i10 |= serializerFeature.getMask();
        }
        this.f16592c = i10;
        h();
    }

    @Override
    public void write(char[] cArr, int i10, int i11) {
        int i12;
        if (i10 < 0 || i10 > cArr.length || i11 < 0 || (i12 = i10 + i11) > cArr.length || i12 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 == 0) {
            return;
        }
        int i13 = this.f16591b + i11;
        if (i13 > this.f16590a.length) {
            if (this.f16593d == null) {
                m(i13);
            } else {
                do {
                    char[] cArr2 = this.f16590a;
                    int length = cArr2.length;
                    int i14 = this.f16591b;
                    int i15 = length - i14;
                    System.arraycopy(cArr, i10, cArr2, i14, i15);
                    this.f16591b = this.f16590a.length;
                    flush();
                    i11 -= i15;
                    i10 += i15;
                } while (i11 > this.f16590a.length);
                i13 = i11;
            }
        }
        System.arraycopy(cArr, i10, this.f16590a, this.f16591b, i11);
        this.f16591b = i13;
    }

    @Override
    public void write(String str, int i10, int i11) {
        int i12;
        int i13 = this.f16591b + i11;
        if (i13 > this.f16590a.length) {
            if (this.f16593d == null) {
                m(i13);
            } else {
                while (true) {
                    char[] cArr = this.f16590a;
                    int length = cArr.length;
                    int i14 = this.f16591b;
                    int i15 = length - i14;
                    i12 = i10 + i15;
                    str.getChars(i10, i12, cArr, i14);
                    this.f16591b = this.f16590a.length;
                    flush();
                    i11 -= i15;
                    if (i11 <= this.f16590a.length) {
                        break;
                    } else {
                        i10 = i12;
                    }
                }
                i13 = i11;
                i10 = i12;
            }
        }
        str.getChars(i10, i11 + i10, this.f16590a, this.f16591b);
        this.f16591b = i13;
    }

    @Override
    public void write(String str) {
        if (str == null) {
            h0();
        } else {
            write(str, 0, str.length());
        }
    }
}
