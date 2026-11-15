package com.bykv.vk.openvk.preload.a.d;

import com.bykv.vk.openvk.preload.a.b.e;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import okio.internal.Buffer;

public class a implements Closeable {

    private final Reader f19867b;

    private long f19874i;

    private int f19875j;

    private String f19876k;

    private int[] f19877l;

    private String[] f19879n;

    private int[] f19880o;

    private boolean f19868c = false;

    private final char[] f19869d = new char[1024];

    private int f19870e = 0;

    private int f19871f = 0;

    private int f19872g = 0;

    private int f19873h = 0;

    int f19866a = 0;

    private int f19878m = 1;

    static {
        e.f19823a = new e() {
            @Override
            public final void a(a aVar) throws IOException {
                if (aVar instanceof com.bykv.vk.openvk.preload.a.b.a.e) {
                    throw null;
                }
                int iQ = aVar.f19866a;
                if (iQ == 0) {
                    iQ = aVar.q();
                }
                if (iQ == 13) {
                    aVar.f19866a = 9;
                    return;
                }
                if (iQ == 12) {
                    aVar.f19866a = 8;
                } else {
                    if (iQ == 14) {
                        aVar.f19866a = 10;
                        return;
                    }
                    throw new IllegalStateException("Expected a name but was " + aVar.f() + aVar.r());
                }
            }
        };
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f19877l = iArr;
        iArr[0] = 6;
        this.f19879n = new String[32];
        this.f19880o = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.f19867b = reader;
    }

    private int s() throws IOException {
        String str;
        String str2;
        int i10;
        char c10 = this.f19869d[this.f19870e];
        if (c10 == 't' || c10 == 'T') {
            str = "true";
            str2 = "TRUE";
            i10 = 5;
        } else if (c10 == 'f' || c10 == 'F') {
            str = "false";
            str2 = "FALSE";
            i10 = 6;
        } else {
            if (c10 != 'n' && c10 != 'N') {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i10 = 7;
        }
        int length = str.length();
        for (int i11 = 1; i11 < length; i11++) {
            if (this.f19870e + i11 >= this.f19871f && !b(i11 + 1)) {
                return 0;
            }
            char c11 = this.f19869d[this.f19870e + i11];
            if (c11 != str.charAt(i11) && c11 != str2.charAt(i11)) {
                return 0;
            }
        }
        if ((this.f19870e + length < this.f19871f || b(length + 1)) && a(this.f19869d[this.f19870e + length])) {
            return 0;
        }
        this.f19870e += length;
        this.f19866a = i10;
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:109:0x00f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:13:0x002e  */
    /* JADX WARN: Code duplicated, block: B:89:0x00de  */
    /* JADX WARN: Code duplicated, block: B:91:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:96:0x00ea  */
    private int t() throws IOException {
        char c10;
        char c11;
        char[] cArr = this.f19869d;
        int i10 = this.f19870e;
        int i11 = this.f19871f;
        int i12 = 0;
        int i13 = 0;
        char c12 = 0;
        boolean z10 = false;
        boolean z11 = true;
        long j10 = 0;
        while (true) {
            if (i10 + i13 == i11) {
                if (i13 != cArr.length) {
                    if (!b(i13 + 1)) {
                        break;
                    }
                    i10 = this.f19870e;
                    i11 = this.f19871f;
                    c10 = cArr[i10 + i13];
                    if (c10 != '+') {
                        if (c10 != 'E') {
                            i12 = 0;
                            if (c12 == 2) {
                            }
                            c12 = 5;
                        } else {
                            i12 = 0;
                            if (c12 == 2) {
                            }
                            c12 = 5;
                        }
                        i13++;
                    } else {
                        c11 = 6;
                        i12 = 0;
                        if (c12 != 5) {
                            return 0;
                        }
                    }
                    c12 = c11;
                    i13++;
                } else {
                    return i12;
                }
            } else {
                c10 = cArr[i10 + i13];
                if (c10 != '+') {
                    if (c10 != 'E' || c10 == 'e') {
                        i12 = 0;
                        if (c12 == 2 && c12 != 4) {
                            return 0;
                        }
                        c12 = 5;
                    } else if (c10 != '-') {
                        c11 = 3;
                        if (c10 == '.') {
                            i12 = 0;
                            if (c12 != 2) {
                                return 0;
                            }
                        } else {
                            if (c10 < '0' || c10 > '9') {
                                if (!a(c10)) {
                                    break;
                                }
                                return 0;
                            }
                            if (c12 == 1 || c12 == 0) {
                                j10 = -(c10 - '0');
                                c12 = 2;
                            } else if (c12 == 2) {
                                if (j10 == 0) {
                                    return 0;
                                }
                                long j11 = (10 * j10) - ((long) (c10 - '0'));
                                z11 &= j10 > Buffer.OVERFLOW_ZONE || (j10 == Buffer.OVERFLOW_ZONE && j11 < j10);
                                j10 = j11;
                            } else if (c12 == 3) {
                                i12 = 0;
                                c12 = 4;
                            } else if (c12 == 5 || c12 == 6) {
                                i12 = 0;
                                c12 = 7;
                            }
                            i12 = 0;
                        }
                    } else {
                        c11 = 6;
                        i12 = 0;
                        if (c12 == 0) {
                            c12 = 1;
                            z10 = true;
                        } else if (c12 != 5) {
                            return 0;
                        }
                    }
                    i13++;
                } else {
                    c11 = 6;
                    i12 = 0;
                    if (c12 != 5) {
                        return 0;
                    }
                }
                c12 = c11;
                i13++;
            }
        }
        if (c12 == 2 && z11 && ((j10 != Long.MIN_VALUE || z10) && (j10 != 0 || !z10))) {
            if (!z10) {
                j10 = -j10;
            }
            this.f19874i = j10;
            this.f19870e += i13;
            this.f19866a = 15;
            return 15;
        }
        if (c12 != 2 && c12 != 4 && c12 != 7) {
            return 0;
        }
        this.f19875j = i13;
        this.f19866a = 16;
        return 16;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    private String u() throws IOException {
        String string;
        StringBuilder sb2 = null;
        int i10 = 0;
        while (true) {
            int i11 = 0;
            while (true) {
                int i12 = this.f19870e;
                if (i12 + i11 < this.f19871f) {
                    char c10 = this.f19869d[i12 + i11];
                    if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
                        if (c10 != '#') {
                            if (c10 != ',') {
                                if (c10 != '/' && c10 != '=') {
                                    if (c10 != '{' && c10 != '}' && c10 != ':') {
                                        if (c10 != ';') {
                                            switch (c10) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i11++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        v();
                    }
                    i10 = i11;
                } else if (i11 >= this.f19869d.length) {
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max(i11, 16));
                    }
                    sb2.append(this.f19869d, this.f19870e, i11);
                    this.f19870e += i11;
                    if (!b(1)) {
                    }
                } else if (!b(i11 + 1)) {
                    i10 = i11;
                }
                if (sb2 == null) {
                    string = new String(this.f19869d, this.f19870e, i10);
                } else {
                    sb2.append(this.f19869d, this.f19870e, i10);
                    string = sb2.toString();
                }
                this.f19870e += i10;
                return string;
            }
        }
    }

    private void v() throws IOException {
        if (!this.f19868c) {
            throw b("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void w() throws IOException {
        char c10;
        do {
            if (this.f19870e >= this.f19871f && !b(1)) {
                return;
            }
            char[] cArr = this.f19869d;
            int i10 = this.f19870e;
            int i11 = i10 + 1;
            this.f19870e = i11;
            c10 = cArr[i10];
            if (c10 == '\n') {
                this.f19872g++;
                this.f19873h = i11;
                return;
            }
        } while (c10 != '\r');
    }

    private char x() throws IOException {
        int i10;
        if (this.f19870e == this.f19871f && !b(1)) {
            throw b("Unterminated escape sequence");
        }
        char[] cArr = this.f19869d;
        int i11 = this.f19870e;
        int i12 = i11 + 1;
        this.f19870e = i12;
        char c10 = cArr[i11];
        if (c10 == '\n') {
            this.f19872g++;
            this.f19873h = i12;
        } else if (c10 != '\"' && c10 != '\'' && c10 != '/' && c10 != '\\') {
            if (c10 == 'b') {
                return '\b';
            }
            if (c10 == 'f') {
                return '\f';
            }
            if (c10 == 'n') {
                return '\n';
            }
            if (c10 == 'r') {
                return '\r';
            }
            if (c10 == 't') {
                return '\t';
            }
            if (c10 != 'u') {
                throw b("Invalid escape sequence");
            }
            if (i11 + 5 > this.f19871f && !b(4)) {
                throw b("Unterminated escape sequence");
            }
            int i13 = this.f19870e;
            int i14 = i13 + 4;
            char c11 = 0;
            while (i13 < i14) {
                char c12 = this.f19869d[i13];
                char c13 = (char) (c11 << 4);
                if (c12 >= '0' && c12 <= '9') {
                    i10 = c12 - '0';
                } else if (c12 >= 'a' && c12 <= 'f') {
                    i10 = c12 - 'W';
                } else {
                    if (c12 < 'A' || c12 > 'F') {
                        throw new NumberFormatException("\\u" + new String(this.f19869d, this.f19870e, 4));
                    }
                    i10 = c12 - '7';
                }
                c11 = (char) (c13 + i10);
                i13++;
            }
            this.f19870e += 4;
            return c11;
        }
        return c10;
    }

    private void y() throws IOException {
        b(true);
        int i10 = this.f19870e;
        int i11 = i10 - 1;
        this.f19870e = i11;
        if (i10 + 4 <= this.f19871f || b(5)) {
            char[] cArr = this.f19869d;
            if (cArr[i11] == ')' && cArr[i10] == ']' && cArr[i10 + 1] == '}' && cArr[i10 + 2] == '\'' && cArr[i10 + 3] == '\n') {
                this.f19870e += 5;
            }
        }
    }

    public final void a(boolean z10) {
        this.f19868c = z10;
    }

    public void b() throws IOException {
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        if (iQ != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + f() + r());
        }
        int i10 = this.f19878m;
        this.f19878m = i10 - 1;
        int[] iArr = this.f19880o;
        int i11 = i10 - 2;
        iArr[i11] = iArr[i11] + 1;
        this.f19866a = 0;
    }

    public void c() throws IOException {
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        if (iQ == 1) {
            a(3);
            this.f19866a = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + f() + r());
        }
    }

    @Override
    public void close() throws IOException {
        this.f19866a = 0;
        this.f19877l[0] = 8;
        this.f19878m = 1;
        this.f19867b.close();
    }

    public void d() throws IOException {
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        if (iQ != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + f() + r());
        }
        int i10 = this.f19878m;
        int i11 = i10 - 1;
        this.f19878m = i11;
        this.f19879n[i11] = null;
        int[] iArr = this.f19880o;
        int i12 = i10 - 2;
        iArr[i12] = iArr[i12] + 1;
        this.f19866a = 0;
    }

    public boolean e() throws IOException {
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        return (iQ == 2 || iQ == 4) ? false : true;
    }

    public b f() throws IOException {
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        switch (iQ) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public String g() throws IOException {
        String strB;
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        if (iQ == 14) {
            strB = u();
        } else if (iQ == 12) {
            strB = b('\'');
        } else {
            if (iQ != 13) {
                throw new IllegalStateException("Expected a name but was " + f() + r());
            }
            strB = b('\"');
        }
        this.f19866a = 0;
        this.f19879n[this.f19878m - 1] = strB;
        return strB;
    }

    public String h() throws IOException {
        String str;
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        if (iQ == 10) {
            str = u();
        } else if (iQ == 8) {
            str = b('\'');
        } else if (iQ == 9) {
            str = b('\"');
        } else if (iQ == 11) {
            str = this.f19876k;
            this.f19876k = null;
        } else if (iQ == 15) {
            str = Long.toString(this.f19874i);
        } else {
            if (iQ != 16) {
                throw new IllegalStateException("Expected a string but was " + f() + r());
            }
            str = new String(this.f19869d, this.f19870e, this.f19875j);
            this.f19870e += this.f19875j;
        }
        this.f19866a = 0;
        int[] iArr = this.f19880o;
        int i10 = this.f19878m - 1;
        iArr[i10] = iArr[i10] + 1;
        return str;
    }

    public boolean i() throws IOException {
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        if (iQ == 5) {
            this.f19866a = 0;
            int[] iArr = this.f19880o;
            int i10 = this.f19878m - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        }
        if (iQ != 6) {
            throw new IllegalStateException("Expected a boolean but was " + f() + r());
        }
        this.f19866a = 0;
        int[] iArr2 = this.f19880o;
        int i11 = this.f19878m - 1;
        iArr2[i11] = iArr2[i11] + 1;
        return false;
    }

    public void j() throws IOException {
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        if (iQ != 7) {
            throw new IllegalStateException("Expected null but was " + f() + r());
        }
        this.f19866a = 0;
        int[] iArr = this.f19880o;
        int i10 = this.f19878m - 1;
        iArr[i10] = iArr[i10] + 1;
    }

    public double k() throws IOException {
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        if (iQ == 15) {
            this.f19866a = 0;
            int[] iArr = this.f19880o;
            int i10 = this.f19878m - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f19874i;
        }
        if (iQ == 16) {
            this.f19876k = new String(this.f19869d, this.f19870e, this.f19875j);
            this.f19870e += this.f19875j;
        } else if (iQ == 8 || iQ == 9) {
            this.f19876k = b(iQ == 8 ? '\'' : '\"');
        } else if (iQ == 10) {
            this.f19876k = u();
        } else if (iQ != 11) {
            throw new IllegalStateException("Expected a double but was " + f() + r());
        }
        this.f19866a = 11;
        double d10 = Double.parseDouble(this.f19876k);
        if (!this.f19868c && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new d("JSON forbids NaN and infinities: " + d10 + r());
        }
        this.f19876k = null;
        this.f19866a = 0;
        int[] iArr2 = this.f19880o;
        int i11 = this.f19878m - 1;
        iArr2[i11] = iArr2[i11] + 1;
        return d10;
    }

    public long l() throws IOException {
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        if (iQ == 15) {
            this.f19866a = 0;
            int[] iArr = this.f19880o;
            int i10 = this.f19878m - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f19874i;
        }
        if (iQ == 16) {
            this.f19876k = new String(this.f19869d, this.f19870e, this.f19875j);
            this.f19870e += this.f19875j;
        } else {
            if (iQ != 8 && iQ != 9 && iQ != 10) {
                throw new IllegalStateException("Expected a long but was " + f() + r());
            }
            if (iQ == 10) {
                this.f19876k = u();
            } else {
                this.f19876k = b(iQ == 8 ? '\'' : '\"');
            }
            try {
                long j10 = Long.parseLong(this.f19876k);
                this.f19866a = 0;
                int[] iArr2 = this.f19880o;
                int i11 = this.f19878m - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return j10;
            } catch (NumberFormatException unused) {
            }
        }
        this.f19866a = 11;
        double d10 = Double.parseDouble(this.f19876k);
        long j11 = (long) d10;
        if (j11 != d10) {
            throw new NumberFormatException("Expected a long but was " + this.f19876k + r());
        }
        this.f19876k = null;
        this.f19866a = 0;
        int[] iArr3 = this.f19880o;
        int i12 = this.f19878m - 1;
        iArr3[i12] = iArr3[i12] + 1;
        return j11;
    }

    public int m() throws IOException {
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        if (iQ == 15) {
            long j10 = this.f19874i;
            int i10 = (int) j10;
            if (j10 != i10) {
                throw new NumberFormatException("Expected an int but was " + this.f19874i + r());
            }
            this.f19866a = 0;
            int[] iArr = this.f19880o;
            int i11 = this.f19878m - 1;
            iArr[i11] = iArr[i11] + 1;
            return i10;
        }
        if (iQ == 16) {
            this.f19876k = new String(this.f19869d, this.f19870e, this.f19875j);
            this.f19870e += this.f19875j;
        } else {
            if (iQ != 8 && iQ != 9 && iQ != 10) {
                throw new IllegalStateException("Expected an int but was " + f() + r());
            }
            if (iQ == 10) {
                this.f19876k = u();
            } else {
                this.f19876k = b(iQ == 8 ? '\'' : '\"');
            }
            try {
                int i12 = Integer.parseInt(this.f19876k);
                this.f19866a = 0;
                int[] iArr2 = this.f19880o;
                int i13 = this.f19878m - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return i12;
            } catch (NumberFormatException unused) {
            }
        }
        this.f19866a = 11;
        double d10 = Double.parseDouble(this.f19876k);
        int i14 = (int) d10;
        if (i14 != d10) {
            throw new NumberFormatException("Expected an int but was " + this.f19876k + r());
        }
        this.f19876k = null;
        this.f19866a = 0;
        int[] iArr3 = this.f19880o;
        int i15 = this.f19878m - 1;
        iArr3[i15] = iArr3[i15] + 1;
        return i14;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:61:0x009d. Please report as an issue. */
    public void n() throws IOException {
        int i10 = 0;
        do {
            int iQ = this.f19866a;
            if (iQ == 0) {
                iQ = q();
            }
            if (iQ == 3) {
                a(1);
            } else {
                if (iQ == 1) {
                    a(3);
                } else if (iQ == 4 || iQ == 2) {
                    this.f19878m--;
                    i10--;
                } else if (iQ == 14 || iQ == 10) {
                    while (true) {
                        int i11 = 0;
                        while (true) {
                            int i12 = this.f19870e;
                            if (i12 + i11 < this.f19871f) {
                                char c10 = this.f19869d[i12 + i11];
                                if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
                                    if (c10 != '#') {
                                        if (c10 != ',') {
                                            if (c10 != '/' && c10 != '=') {
                                                if (c10 != '{' && c10 != '}' && c10 != ':') {
                                                    if (c10 != ';') {
                                                        switch (c10) {
                                                            case '[':
                                                            case ']':
                                                                break;
                                                            case '\\':
                                                                break;
                                                            default:
                                                                i11++;
                                                                break;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    v();
                                }
                                this.f19870e += i11;
                            } else {
                                this.f19870e = i12 + i11;
                                if (!b(1)) {
                                }
                            }
                        }
                    }
                } else if (iQ == 8 || iQ == 12) {
                    c('\'');
                } else if (iQ == 9 || iQ == 13) {
                    c('\"');
                } else if (iQ == 16) {
                    this.f19870e += this.f19875j;
                }
                this.f19866a = 0;
            }
            i10++;
            this.f19866a = 0;
        } while (i10 != 0);
        int[] iArr = this.f19880o;
        int i13 = this.f19878m;
        int i14 = i13 - 1;
        iArr[i14] = iArr[i14] + 1;
        this.f19879n[i13 - 1] = "null";
    }

    public String o() {
        StringBuilder sb2 = new StringBuilder("$");
        int i10 = this.f19878m;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.f19877l[i11];
            if (i12 == 1 || i12 == 2) {
                sb2.append('[');
                sb2.append(this.f19880o[i11]);
                sb2.append(']');
            } else if (i12 == 3 || i12 == 4 || i12 == 5) {
                sb2.append('.');
                String str = this.f19879n[i11];
                if (str != null) {
                    sb2.append(str);
                }
            }
        }
        return sb2.toString();
    }

    public final boolean p() {
        return this.f19868c;
    }

    final int q() throws IOException {
        int iB;
        int[] iArr = this.f19877l;
        int i10 = this.f19878m;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int iB2 = b(true);
            if (iB2 != 44) {
                if (iB2 != 59) {
                    if (iB2 != 93) {
                        throw b("Unterminated array");
                    }
                    this.f19866a = 4;
                    return 4;
                }
                v();
            }
        } else {
            if (i11 == 3 || i11 == 5) {
                iArr[i10 - 1] = 4;
                if (i11 == 5 && (iB = b(true)) != 44) {
                    if (iB != 59) {
                        if (iB != 125) {
                            throw b("Unterminated object");
                        }
                        this.f19866a = 2;
                        return 2;
                    }
                    v();
                }
                int iB3 = b(true);
                if (iB3 == 34) {
                    this.f19866a = 13;
                    return 13;
                }
                if (iB3 == 39) {
                    v();
                    this.f19866a = 12;
                    return 12;
                }
                if (iB3 == 125) {
                    if (i11 == 5) {
                        throw b("Expected name");
                    }
                    this.f19866a = 2;
                    return 2;
                }
                v();
                this.f19870e--;
                if (!a((char) iB3)) {
                    throw b("Expected name");
                }
                this.f19866a = 14;
                return 14;
            }
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int iB4 = b(true);
                if (iB4 != 58) {
                    if (iB4 != 61) {
                        throw b("Expected ':'");
                    }
                    v();
                    if (this.f19870e < this.f19871f || b(1)) {
                        char[] cArr = this.f19869d;
                        int i12 = this.f19870e;
                        if (cArr[i12] == '>') {
                            this.f19870e = i12 + 1;
                        }
                    }
                }
            } else if (i11 == 6) {
                if (this.f19868c) {
                    y();
                }
                this.f19877l[this.f19878m - 1] = 7;
            } else if (i11 == 7) {
                if (b(false) == -1) {
                    this.f19866a = 17;
                    return 17;
                }
                v();
                this.f19870e--;
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iB5 = b(true);
        if (iB5 == 34) {
            this.f19866a = 9;
            return 9;
        }
        if (iB5 == 39) {
            v();
            this.f19866a = 8;
            return 8;
        }
        if (iB5 != 44 && iB5 != 59) {
            if (iB5 == 91) {
                this.f19866a = 3;
                return 3;
            }
            if (iB5 != 93) {
                if (iB5 == 123) {
                    this.f19866a = 1;
                    return 1;
                }
                this.f19870e--;
                int iS = s();
                if (iS != 0) {
                    return iS;
                }
                int iT = t();
                if (iT != 0) {
                    return iT;
                }
                if (!a(this.f19869d[this.f19870e])) {
                    throw b("Expected value");
                }
                v();
                this.f19866a = 10;
                return 10;
            }
            if (i11 == 1) {
                this.f19866a = 4;
                return 4;
            }
        }
        if (i11 != 1 && i11 != 2) {
            throw b("Unexpected value");
        }
        v();
        this.f19870e--;
        this.f19866a = 7;
        return 7;
    }

    final String r() {
        return " at line " + (this.f19872g + 1) + " column " + ((this.f19870e - this.f19873h) + 1) + " path " + o();
    }

    public String toString() {
        return getClass().getSimpleName() + r();
    }

    public void a() throws IOException {
        int iQ = this.f19866a;
        if (iQ == 0) {
            iQ = q();
        }
        if (iQ == 3) {
            a(1);
            this.f19880o[this.f19878m - 1] = 0;
            this.f19866a = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + f() + r());
        }
    }

    private void c(char c10) throws IOException {
        char[] cArr = this.f19869d;
        while (true) {
            int i10 = this.f19870e;
            int i11 = this.f19871f;
            while (true) {
                if (i10 < i11) {
                    int i12 = i10 + 1;
                    char c11 = cArr[i10];
                    if (c11 == c10) {
                        this.f19870e = i12;
                        return;
                    }
                    if (c11 == '\\') {
                        this.f19870e = i12;
                        x();
                        break;
                    } else {
                        if (c11 == '\n') {
                            this.f19872g++;
                            this.f19873h = i12;
                        }
                        i10 = i12;
                    }
                } else {
                    this.f19870e = i10;
                    if (!b(1)) {
                        throw b("Unterminated string");
                    }
                    break;
                }
            }
        }
    }

    private String b(char c10) throws IOException {
        char[] cArr = this.f19869d;
        StringBuilder sb2 = null;
        while (true) {
            int i10 = this.f19870e;
            int i11 = this.f19871f;
            int i12 = i10;
            while (true) {
                if (i12 < i11) {
                    int i13 = i12 + 1;
                    char c11 = cArr[i12];
                    if (c11 == c10) {
                        this.f19870e = i13;
                        int i14 = (i13 - i10) - 1;
                        if (sb2 == null) {
                            return new String(cArr, i10, i14);
                        }
                        sb2.append(cArr, i10, i14);
                        return sb2.toString();
                    }
                    if (c11 == '\\') {
                        this.f19870e = i13;
                        int i15 = i13 - i10;
                        int i16 = i15 - 1;
                        if (sb2 == null) {
                            sb2 = new StringBuilder(Math.max(i15 << 1, 16));
                        }
                        sb2.append(cArr, i10, i16);
                        sb2.append(x());
                        break;
                    }
                    if (c11 == '\n') {
                        this.f19872g++;
                        this.f19873h = i13;
                    }
                    i12 = i13;
                } else {
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max((i12 - i10) << 1, 16));
                    }
                    sb2.append(cArr, i10, i12 - i10);
                    this.f19870e = i12;
                    if (b(1)) {
                        break;
                    }
                    throw b("Unterminated string");
                }
            }
        }
    }

    private boolean a(char c10) throws IOException {
        if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ') {
            return false;
        }
        if (c10 != '#') {
            if (c10 == ',') {
                return false;
            }
            if (c10 != '/' && c10 != '=') {
                if (c10 == '{' || c10 == '}' || c10 == ':') {
                    return false;
                }
                if (c10 != ';') {
                    switch (c10) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        v();
        return false;
    }

    private void a(int i10) {
        int i11 = this.f19878m;
        int[] iArr = this.f19877l;
        if (i11 == iArr.length) {
            int i12 = i11 << 1;
            this.f19877l = Arrays.copyOf(iArr, i12);
            this.f19880o = Arrays.copyOf(this.f19880o, i12);
            this.f19879n = (String[]) Arrays.copyOf(this.f19879n, i12);
        }
        int[] iArr2 = this.f19877l;
        int i13 = this.f19878m;
        this.f19878m = i13 + 1;
        iArr2[i13] = i10;
    }

    private boolean a(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.f19870e + length > this.f19871f && !b(length)) {
                return false;
            }
            char[] cArr = this.f19869d;
            int i10 = this.f19870e;
            if (cArr[i10] != '\n') {
                for (int i11 = 0; i11 < length; i11++) {
                    if (this.f19869d[this.f19870e + i11] == str.charAt(i11)) {
                    }
                }
                return true;
            }
            this.f19872g++;
            this.f19873h = i10 + 1;
            this.f19870e++;
        }
    }

    private boolean b(int i10) throws IOException {
        int i11;
        int i12;
        char[] cArr = this.f19869d;
        int i13 = this.f19873h;
        int i14 = this.f19870e;
        this.f19873h = i13 - i14;
        int i15 = this.f19871f;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.f19871f = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.f19871f = 0;
        }
        this.f19870e = 0;
        do {
            Reader reader = this.f19867b;
            int i17 = this.f19871f;
            int i18 = reader.read(cArr, i17, cArr.length - i17);
            if (i18 == -1) {
                return false;
            }
            i11 = this.f19871f + i18;
            this.f19871f = i11;
            if (this.f19872g == 0 && (i12 = this.f19873h) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.f19870e++;
                this.f19873h = i12 + 1;
                i10++;
            }
        } while (i11 < i10);
        return true;
    }

    private int b(boolean z10) throws IOException {
        char[] cArr = this.f19869d;
        int i10 = this.f19870e;
        int i11 = this.f19871f;
        while (true) {
            if (i10 == i11) {
                this.f19870e = i10;
                if (!b(1)) {
                    if (!z10) {
                        return -1;
                    }
                    throw new EOFException("End of input" + r());
                }
                i10 = this.f19870e;
                i11 = this.f19871f;
            }
            int i12 = i10 + 1;
            char c10 = cArr[i10];
            if (c10 == '\n') {
                this.f19872g++;
                this.f19873h = i12;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.f19870e = i12;
                    if (i12 == i11) {
                        this.f19870e = i10;
                        boolean zB = b(2);
                        this.f19870e++;
                        if (!zB) {
                            return c10;
                        }
                    }
                    v();
                    int i13 = this.f19870e;
                    char c11 = cArr[i13];
                    if (c11 == '*') {
                        this.f19870e = i13 + 1;
                        if (a("*/")) {
                            i10 = this.f19870e + 2;
                            i11 = this.f19871f;
                        } else {
                            throw b("Unterminated comment");
                        }
                    } else {
                        if (c11 != '/') {
                            return c10;
                        }
                        this.f19870e = i13 + 1;
                        w();
                        i10 = this.f19870e;
                        i11 = this.f19871f;
                    }
                } else if (c10 == '#') {
                    this.f19870e = i12;
                    v();
                    w();
                    i10 = this.f19870e;
                    i11 = this.f19871f;
                } else {
                    this.f19870e = i12;
                    return c10;
                }
            }
            i10 = i12;
        }
    }

    private IOException b(String str) throws IOException {
        throw new d(str + r());
    }
}
