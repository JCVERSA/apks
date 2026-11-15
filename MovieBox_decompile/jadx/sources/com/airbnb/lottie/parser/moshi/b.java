package com.airbnb.lottie.parser.moshi;

import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

final class b extends JsonReader {

    private static final ByteString f17321n = ByteString.encodeUtf8("'\\");

    private static final ByteString f17322o = ByteString.encodeUtf8("\"\\");

    private static final ByteString f17323p = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");

    private static final ByteString f17324q = ByteString.encodeUtf8("\n\r");

    private static final ByteString f17325r = ByteString.encodeUtf8("*/");

    private final BufferedSource f17326h;

    private final Buffer f17327i;

    private int f17328j = 0;

    private long f17329k;

    private int f17330l;

    private String f17331m;

    b(BufferedSource bufferedSource) {
        if (bufferedSource == null) {
            throw new NullPointerException("source == null");
        }
        this.f17326h = bufferedSource;
        this.f17327i = bufferedSource.getBufferField();
        u(6);
    }

    private void T() throws JsonEncodingException {
        if (!this.f17317e) {
            throw S("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private int W() throws IOException {
        int[] iArr = this.f17314b;
        int i10 = this.f17313a;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int iE0 = e0(true);
            this.f17327i.readByte();
            if (iE0 != 44) {
                if (iE0 != 59) {
                    if (iE0 != 93) {
                        throw S("Unterminated array");
                    }
                    this.f17328j = 4;
                    return 4;
                }
                T();
            }
        } else {
            if (i11 == 3 || i11 == 5) {
                iArr[i10 - 1] = 4;
                if (i11 == 5) {
                    int iE1 = e0(true);
                    this.f17327i.readByte();
                    if (iE1 != 44) {
                        if (iE1 != 59) {
                            if (iE1 != 125) {
                                throw S("Unterminated object");
                            }
                            this.f17328j = 2;
                            return 2;
                        }
                        T();
                    }
                }
                int iE2 = e0(true);
                if (iE2 == 34) {
                    this.f17327i.readByte();
                    this.f17328j = 13;
                    return 13;
                }
                if (iE2 == 39) {
                    this.f17327i.readByte();
                    T();
                    this.f17328j = 12;
                    return 12;
                }
                if (iE2 != 125) {
                    T();
                    if (!d0((char) iE2)) {
                        throw S("Expected name");
                    }
                    this.f17328j = 14;
                    return 14;
                }
                if (i11 == 5) {
                    throw S("Expected name");
                }
                this.f17327i.readByte();
                this.f17328j = 2;
                return 2;
            }
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int iE3 = e0(true);
                this.f17327i.readByte();
                if (iE3 != 58) {
                    if (iE3 != 61) {
                        throw S("Expected ':'");
                    }
                    T();
                    if (this.f17326h.request(1L) && this.f17327i.getByte(0L) == 62) {
                        this.f17327i.readByte();
                    }
                }
            } else if (i11 == 6) {
                iArr[i10 - 1] = 7;
            } else if (i11 == 7) {
                if (e0(false) == -1) {
                    this.f17328j = 18;
                    return 18;
                }
                T();
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iE4 = e0(true);
        if (iE4 == 34) {
            this.f17327i.readByte();
            this.f17328j = 9;
            return 9;
        }
        if (iE4 == 39) {
            T();
            this.f17327i.readByte();
            this.f17328j = 8;
            return 8;
        }
        if (iE4 != 44 && iE4 != 59) {
            if (iE4 == 91) {
                this.f17327i.readByte();
                this.f17328j = 3;
                return 3;
            }
            if (iE4 != 93) {
                if (iE4 == 123) {
                    this.f17327i.readByte();
                    this.f17328j = 1;
                    return 1;
                }
                int iH0 = h0();
                if (iH0 != 0) {
                    return iH0;
                }
                int iJ0 = j0();
                if (iJ0 != 0) {
                    return iJ0;
                }
                if (!d0(this.f17327i.getByte(0L))) {
                    throw S("Expected value");
                }
                T();
                this.f17328j = 10;
                return 10;
            }
            if (i11 == 1) {
                this.f17327i.readByte();
                this.f17328j = 4;
                return 4;
            }
        }
        if (i11 != 1 && i11 != 2) {
            throw S("Unexpected value");
        }
        T();
        this.f17328j = 7;
        return 7;
    }

    private int X(String str, JsonReader.a aVar) {
        int length = aVar.f17319a.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (str.equals(aVar.f17319a[i10])) {
                this.f17328j = 0;
                this.f17315c[this.f17313a - 1] = str;
                return i10;
            }
        }
        return -1;
    }

    private boolean d0(int i10) throws JsonEncodingException {
        if (i10 == 9 || i10 == 10 || i10 == 12 || i10 == 13 || i10 == 32) {
            return false;
        }
        if (i10 != 35) {
            if (i10 == 44) {
                return false;
            }
            if (i10 != 47 && i10 != 61) {
                if (i10 == 123 || i10 == 125 || i10 == 58) {
                    return false;
                }
                if (i10 != 59) {
                    switch (i10) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        T();
        return false;
    }

    private int e0(boolean z10) throws IOException {
        byte b10;
        while (true) {
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                if (!this.f17326h.request(i11)) {
                    if (z10) {
                        throw new EOFException("End of input");
                    }
                    return -1;
                }
                b10 = this.f17327i.getByte(i10);
                if (b10 == 10 || b10 == 32 || b10 == 13 || b10 == 9) {
                    i10 = i11;
                }
            }
            this.f17327i.skip(i10);
            if (b10 == 47) {
                if (!this.f17326h.request(2L)) {
                    return b10;
                }
                T();
                byte b11 = this.f17327i.getByte(1L);
                if (b11 == 42) {
                    this.f17327i.readByte();
                    this.f17327i.readByte();
                    if (!p0()) {
                        throw S("Unterminated comment");
                    }
                } else {
                    if (b11 != 47) {
                        return b10;
                    }
                    this.f17327i.readByte();
                    this.f17327i.readByte();
                    r0();
                }
            } else {
                if (b10 != 35) {
                    return b10;
                }
                T();
                r0();
            }
        }
    }

    private String f0(ByteString byteString) throws IOException {
        StringBuilder sb2 = null;
        while (true) {
            long jIndexOfElement = this.f17326h.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw S("Unterminated string");
            }
            if (this.f17327i.getByte(jIndexOfElement) != 92) {
                if (sb2 == null) {
                    String utf8 = this.f17327i.readUtf8(jIndexOfElement);
                    this.f17327i.readByte();
                    return utf8;
                }
                sb2.append(this.f17327i.readUtf8(jIndexOfElement));
                this.f17327i.readByte();
                return sb2.toString();
            }
            if (sb2 == null) {
                sb2 = new StringBuilder();
            }
            sb2.append(this.f17327i.readUtf8(jIndexOfElement));
            this.f17327i.readByte();
            sb2.append(l0());
        }
    }

    private String g0() throws IOException {
        long jIndexOfElement = this.f17326h.indexOfElement(f17323p);
        return jIndexOfElement != -1 ? this.f17327i.readUtf8(jIndexOfElement) : this.f17327i.readUtf8();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private int h0() throws EOFException {
        String str;
        String str2;
        int i10;
        byte b10 = this.f17327i.getByte(0L);
        if (b10 == 116 || b10 == 84) {
            str = "true";
            str2 = "TRUE";
            i10 = 5;
        } else if (b10 == 102 || b10 == 70) {
            str = "false";
            str2 = "FALSE";
            i10 = 6;
        } else {
            if (b10 != 110 && b10 != 78) {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i10 = 7;
        }
        int length = str.length();
        int i11 = 1;
        while (i11 < length) {
            int i12 = i11 + 1;
            if (!this.f17326h.request(i12)) {
                return 0;
            }
            byte b11 = this.f17327i.getByte(i11);
            if (b11 != str.charAt(i11) && b11 != str2.charAt(i11)) {
                return 0;
            }
            i11 = i12;
        }
        if (this.f17326h.request(length + 1) && d0(this.f17327i.getByte(length))) {
            return 0;
        }
        this.f17327i.skip(length);
        this.f17328j = i10;
        return i10;
    }

    private int j0() throws EOFException {
        char c10;
        boolean z10 = true;
        long j10 = 0;
        int i10 = 0;
        char c11 = 0;
        boolean z11 = false;
        boolean z12 = true;
        while (true) {
            int i11 = i10 + 1;
            if (!this.f17326h.request(i11)) {
                break;
            }
            byte b10 = this.f17327i.getByte(i10);
            if (b10 != 43) {
                if (b10 == 69 || b10 == 101) {
                    if (c11 != 2 && c11 != 4) {
                        return 0;
                    }
                    c11 = 5;
                } else if (b10 == 45) {
                    c10 = 6;
                    if (c11 == 0) {
                        c11 = 1;
                        z11 = true;
                    } else if (c11 != 5) {
                        return 0;
                    }
                } else if (b10 != 46) {
                    if (b10 < 48 || b10 > 57) {
                        if (!d0(b10)) {
                            break;
                        }
                        return 0;
                    }
                    if (c11 == z10 || c11 == 0) {
                        j10 = -(b10 - 48);
                        c11 = 2;
                    } else if (c11 == 2) {
                        if (j10 == 0) {
                            return 0;
                        }
                        long j11 = (10 * j10) - ((long) (b10 - 48));
                        z12 &= j10 > okio.internal.Buffer.OVERFLOW_ZONE || (j10 == okio.internal.Buffer.OVERFLOW_ZONE && j11 < j10);
                        j10 = j11;
                    } else if (c11 == 3) {
                        c11 = 4;
                    } else if (c11 == 5 || c11 == 6) {
                        c11 = 7;
                    }
                } else {
                    if (c11 != 2) {
                        return 0;
                    }
                    c11 = 3;
                }
                i10 = i11;
                z10 = true;
            } else {
                c10 = 6;
                if (c11 != 5) {
                    return 0;
                }
            }
            c11 = c10;
            i10 = i11;
            z10 = true;
        }
        if (c11 == 2 && z12 && ((j10 != Long.MIN_VALUE || z11) && (j10 != 0 || !z11))) {
            if (!z11) {
                j10 = -j10;
            }
            this.f17329k = j10;
            this.f17327i.skip(i10);
            this.f17328j = 16;
            return 16;
        }
        if (c11 != 2 && c11 != 4 && c11 != 7) {
            return 0;
        }
        this.f17330l = i10;
        this.f17328j = 17;
        return 17;
    }

    private char l0() throws JsonEncodingException, EOFException {
        int i10;
        if (!this.f17326h.request(1L)) {
            throw S("Unterminated escape sequence");
        }
        byte b10 = this.f17327i.readByte();
        if (b10 == 10 || b10 == 34 || b10 == 39 || b10 == 47 || b10 == 92) {
            return (char) b10;
        }
        if (b10 == 98) {
            return '\b';
        }
        if (b10 == 102) {
            return '\f';
        }
        if (b10 == 110) {
            return '\n';
        }
        if (b10 == 114) {
            return '\r';
        }
        if (b10 == 116) {
            return '\t';
        }
        if (b10 != 117) {
            if (this.f17317e) {
                return (char) b10;
            }
            throw S("Invalid escape sequence: \\" + ((char) b10));
        }
        if (!this.f17326h.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path " + getPath());
        }
        char c10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            byte b11 = this.f17327i.getByte(i11);
            char c11 = (char) (c10 << 4);
            if (b11 >= 48 && b11 <= 57) {
                i10 = b11 - 48;
            } else if (b11 >= 97 && b11 <= 102) {
                i10 = b11 - 87;
            } else {
                if (b11 < 65 || b11 > 70) {
                    throw S("\\u" + this.f17327i.readUtf8(4L));
                }
                i10 = b11 - 55;
            }
            c10 = (char) (c11 + i10);
        }
        this.f17327i.skip(4L);
        return c10;
    }

    private void o0(ByteString byteString) throws IOException {
        while (true) {
            long jIndexOfElement = this.f17326h.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw S("Unterminated string");
            }
            if (this.f17327i.getByte(jIndexOfElement) != 92) {
                this.f17327i.skip(jIndexOfElement + 1);
                return;
            } else {
                this.f17327i.skip(jIndexOfElement + 1);
                l0();
            }
        }
    }

    private boolean p0() throws IOException {
        BufferedSource bufferedSource = this.f17326h;
        ByteString byteString = f17325r;
        long jIndexOf = bufferedSource.indexOf(byteString);
        boolean z10 = jIndexOf != -1;
        Buffer buffer = this.f17327i;
        buffer.skip(z10 ? jIndexOf + ((long) byteString.size()) : buffer.size());
        return z10;
    }

    private void r0() throws IOException {
        long jIndexOfElement = this.f17326h.indexOfElement(f17324q);
        Buffer buffer = this.f17327i;
        buffer.skip(jIndexOfElement != -1 ? jIndexOfElement + 1 : buffer.size());
    }

    private void s0() throws IOException {
        long jIndexOfElement = this.f17326h.indexOfElement(f17323p);
        Buffer buffer = this.f17327i;
        if (jIndexOfElement == -1) {
            jIndexOfElement = buffer.size();
        }
        buffer.skip(jIndexOfElement);
    }

    @Override
    public void close() throws IOException {
        this.f17328j = 0;
        this.f17314b[0] = 8;
        this.f17313a = 1;
        this.f17327i.clear();
        this.f17326h.close();
    }

    @Override
    public void d() throws IOException {
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        if (iW == 3) {
            u(1);
            this.f17316d[this.f17313a - 1] = 0;
            this.f17328j = 0;
        } else {
            throw new JsonDataException("Expected BEGIN_ARRAY but was " + t() + " at path " + getPath());
        }
    }

    @Override
    public void h() throws IOException {
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        if (iW == 1) {
            u(3);
            this.f17328j = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_OBJECT but was " + t() + " at path " + getPath());
    }

    @Override
    public void k() throws IOException {
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        if (iW != 4) {
            throw new JsonDataException("Expected END_ARRAY but was " + t() + " at path " + getPath());
        }
        int i10 = this.f17313a;
        this.f17313a = i10 - 1;
        int[] iArr = this.f17316d;
        int i11 = i10 - 2;
        iArr[i11] = iArr[i11] + 1;
        this.f17328j = 0;
    }

    @Override
    public void l() throws IOException {
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        if (iW != 2) {
            throw new JsonDataException("Expected END_OBJECT but was " + t() + " at path " + getPath());
        }
        int i10 = this.f17313a;
        int i11 = i10 - 1;
        this.f17313a = i11;
        this.f17315c[i11] = null;
        int[] iArr = this.f17316d;
        int i12 = i10 - 2;
        iArr[i12] = iArr[i12] + 1;
        this.f17328j = 0;
    }

    @Override
    public boolean m() throws IOException {
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        return (iW == 2 || iW == 4 || iW == 18) ? false : true;
    }

    @Override
    public boolean n() throws IOException {
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        if (iW == 5) {
            this.f17328j = 0;
            int[] iArr = this.f17316d;
            int i10 = this.f17313a - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        }
        if (iW == 6) {
            this.f17328j = 0;
            int[] iArr2 = this.f17316d;
            int i11 = this.f17313a - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        }
        throw new JsonDataException("Expected a boolean but was " + t() + " at path " + getPath());
    }

    @Override
    public double o() throws IOException {
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        if (iW == 16) {
            this.f17328j = 0;
            int[] iArr = this.f17316d;
            int i10 = this.f17313a - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f17329k;
        }
        if (iW == 17) {
            this.f17331m = this.f17327i.readUtf8(this.f17330l);
        } else if (iW == 9) {
            this.f17331m = f0(f17322o);
        } else if (iW == 8) {
            this.f17331m = f0(f17321n);
        } else if (iW == 10) {
            this.f17331m = g0();
        } else if (iW != 11) {
            throw new JsonDataException("Expected a double but was " + t() + " at path " + getPath());
        }
        this.f17328j = 11;
        try {
            double d10 = Double.parseDouble(this.f17331m);
            if (this.f17317e || !(Double.isNaN(d10) || Double.isInfinite(d10))) {
                this.f17331m = null;
                this.f17328j = 0;
                int[] iArr2 = this.f17316d;
                int i11 = this.f17313a - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return d10;
            }
            throw new JsonEncodingException("JSON forbids NaN and infinities: " + d10 + " at path " + getPath());
        } catch (NumberFormatException unused) {
            throw new JsonDataException("Expected a double but was " + this.f17331m + " at path " + getPath());
        }
    }

    @Override
    public int p() throws IOException {
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        if (iW == 16) {
            long j10 = this.f17329k;
            int i10 = (int) j10;
            if (j10 == i10) {
                this.f17328j = 0;
                int[] iArr = this.f17316d;
                int i11 = this.f17313a - 1;
                iArr[i11] = iArr[i11] + 1;
                return i10;
            }
            throw new JsonDataException("Expected an int but was " + this.f17329k + " at path " + getPath());
        }
        if (iW == 17) {
            this.f17331m = this.f17327i.readUtf8(this.f17330l);
        } else if (iW == 9 || iW == 8) {
            String strF0 = iW == 9 ? f0(f17322o) : f0(f17321n);
            this.f17331m = strF0;
            try {
                int i12 = Integer.parseInt(strF0);
                this.f17328j = 0;
                int[] iArr2 = this.f17316d;
                int i13 = this.f17313a - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return i12;
            } catch (NumberFormatException unused) {
            }
        } else if (iW != 11) {
            throw new JsonDataException("Expected an int but was " + t() + " at path " + getPath());
        }
        this.f17328j = 11;
        try {
            double d10 = Double.parseDouble(this.f17331m);
            int i14 = (int) d10;
            if (i14 == d10) {
                this.f17331m = null;
                this.f17328j = 0;
                int[] iArr3 = this.f17316d;
                int i15 = this.f17313a - 1;
                iArr3[i15] = iArr3[i15] + 1;
                return i14;
            }
            throw new JsonDataException("Expected an int but was " + this.f17331m + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new JsonDataException("Expected an int but was " + this.f17331m + " at path " + getPath());
        }
    }

    @Override
    public String q() throws IOException {
        String strF0;
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        if (iW == 14) {
            strF0 = g0();
        } else if (iW == 13) {
            strF0 = f0(f17322o);
        } else if (iW == 12) {
            strF0 = f0(f17321n);
        } else {
            if (iW != 15) {
                throw new JsonDataException("Expected a name but was " + t() + " at path " + getPath());
            }
            strF0 = this.f17331m;
        }
        this.f17328j = 0;
        this.f17315c[this.f17313a - 1] = strF0;
        return strF0;
    }

    @Override
    public String r() throws IOException {
        String utf8;
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        if (iW == 10) {
            utf8 = g0();
        } else if (iW == 9) {
            utf8 = f0(f17322o);
        } else if (iW == 8) {
            utf8 = f0(f17321n);
        } else if (iW == 11) {
            utf8 = this.f17331m;
            this.f17331m = null;
        } else if (iW == 16) {
            utf8 = Long.toString(this.f17329k);
        } else {
            if (iW != 17) {
                throw new JsonDataException("Expected a string but was " + t() + " at path " + getPath());
            }
            utf8 = this.f17327i.readUtf8(this.f17330l);
        }
        this.f17328j = 0;
        int[] iArr = this.f17316d;
        int i10 = this.f17313a - 1;
        iArr[i10] = iArr[i10] + 1;
        return utf8;
    }

    @Override
    public JsonReader.Token t() throws IOException {
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        switch (iW) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader.Token.NAME;
            case 16:
            case 17:
                return JsonReader.Token.NUMBER;
            case 18:
                return JsonReader.Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public String toString() {
        return "JsonReader(" + this.f17326h + ")";
    }

    @Override
    public int v(JsonReader.a aVar) throws IOException {
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        if (iW < 12 || iW > 15) {
            return -1;
        }
        if (iW == 15) {
            return X(this.f17331m, aVar);
        }
        int iSelect = this.f17326h.select(aVar.f17320b);
        if (iSelect != -1) {
            this.f17328j = 0;
            this.f17315c[this.f17313a - 1] = aVar.f17319a[iSelect];
            return iSelect;
        }
        String str = this.f17315c[this.f17313a - 1];
        String strQ = q();
        int iX = X(strQ, aVar);
        if (iX == -1) {
            this.f17328j = 15;
            this.f17331m = strQ;
            this.f17315c[this.f17313a - 1] = str;
        }
        return iX;
    }

    @Override
    public void w() throws IOException {
        if (this.f17318f) {
            throw new JsonDataException("Cannot skip unexpected " + t() + " at " + getPath());
        }
        int iW = this.f17328j;
        if (iW == 0) {
            iW = W();
        }
        if (iW == 14) {
            s0();
        } else if (iW == 13) {
            o0(f17322o);
        } else if (iW == 12) {
            o0(f17321n);
        } else if (iW != 15) {
            throw new JsonDataException("Expected a name but was " + t() + " at path " + getPath());
        }
        this.f17328j = 0;
        this.f17315c[this.f17313a - 1] = "null";
    }

    @Override
    public void x() throws IOException {
        if (this.f17318f) {
            throw new JsonDataException("Cannot skip unexpected " + t() + " at " + getPath());
        }
        int i10 = 0;
        do {
            int iW = this.f17328j;
            if (iW == 0) {
                iW = W();
            }
            if (iW == 3) {
                u(1);
            } else {
                if (iW == 1) {
                    u(3);
                } else if (iW == 4) {
                    i10--;
                    if (i10 < 0) {
                        throw new JsonDataException("Expected a value but was " + t() + " at path " + getPath());
                    }
                    this.f17313a--;
                } else if (iW == 2) {
                    i10--;
                    if (i10 < 0) {
                        throw new JsonDataException("Expected a value but was " + t() + " at path " + getPath());
                    }
                    this.f17313a--;
                } else if (iW == 14 || iW == 10) {
                    s0();
                } else if (iW == 9 || iW == 13) {
                    o0(f17322o);
                } else if (iW == 8 || iW == 12) {
                    o0(f17321n);
                } else if (iW == 17) {
                    this.f17327i.skip(this.f17330l);
                } else if (iW == 18) {
                    throw new JsonDataException("Expected a value but was " + t() + " at path " + getPath());
                }
                this.f17328j = 0;
            }
            i10++;
            this.f17328j = 0;
        } while (i10 != 0);
        int[] iArr = this.f17316d;
        int i11 = this.f17313a;
        int i12 = i11 - 1;
        iArr[i12] = iArr[i12] + 1;
        this.f17315c[i11 - 1] = "null";
    }
}
