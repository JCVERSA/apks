package com.airbnb.lottie.parser.moshi;

import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.CharUtils;

public final class a extends JsonReader {
    public static final ByteString o = ByteString.encodeUtf8("'\\");
    public static final ByteString p = ByteString.encodeUtf8("\"\\");
    public static final ByteString q = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");
    public static final ByteString r = ByteString.encodeUtf8("\n\r");
    public static final ByteString s = ByteString.encodeUtf8("*/");
    public final BufferedSource i;
    public final Buffer j;
    public int k = 0;
    public long l;
    public int m;
    public String n;

    public a(BufferedSource bufferedSource) {
        if (bufferedSource == null) {
            throw new NullPointerException("source == null");
        }
        this.i = bufferedSource;
        this.j = bufferedSource.getBufferField();
        H(6);
    }

    @Override
    public String D() throws IOException {
        String strS;
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        if (iO == 14) {
            strS = T();
        } else if (iO == 13) {
            strS = S(p);
        } else if (iO == 12) {
            strS = S(o);
        } else {
            if (iO != 15) {
                throw new JsonDataException("Expected a name but was " + G() + " at path " + getPath());
            }
            strS = this.n;
        }
        this.k = 0;
        this.d[this.b - 1] = strS;
        return strS;
    }

    @Override
    public String E() throws IOException {
        String utf8;
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        if (iO == 10) {
            utf8 = T();
        } else if (iO == 9) {
            utf8 = S(p);
        } else if (iO == 8) {
            utf8 = S(o);
        } else if (iO == 11) {
            utf8 = this.n;
            this.n = null;
        } else if (iO == 16) {
            utf8 = Long.toString(this.l);
        } else {
            if (iO != 17) {
                throw new JsonDataException("Expected a string but was " + G() + " at path " + getPath());
            }
            utf8 = this.j.readUtf8(this.m);
        }
        this.k = 0;
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return utf8;
    }

    @Override
    public JsonReader.Token G() throws IOException {
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        switch (iO) {
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

    @Override
    public int I(JsonReader.a aVar) throws IOException {
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        if (iO < 12 || iO > 15) {
            return -1;
        }
        if (iO == 15) {
            return P(this.n, aVar);
        }
        int iSelect = this.i.select(aVar.b);
        if (iSelect != -1) {
            this.k = 0;
            this.d[this.b - 1] = aVar.a[iSelect];
            return iSelect;
        }
        String str = this.d[this.b - 1];
        String strD = D();
        int iP = P(strD, aVar);
        if (iP == -1) {
            this.k = 15;
            this.n = strD;
            this.d[this.b - 1] = str;
        }
        return iP;
    }

    @Override
    public void J() throws IOException {
        if (this.g) {
            throw new JsonDataException("Cannot skip unexpected " + G() + " at " + getPath());
        }
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        if (iO == 14) {
            a0();
        } else if (iO == 13) {
            X(p);
        } else if (iO == 12) {
            X(o);
        } else if (iO != 15) {
            throw new JsonDataException("Expected a name but was " + G() + " at path " + getPath());
        }
        this.k = 0;
        this.d[this.b - 1] = "null";
    }

    @Override
    public void K() throws IOException {
        if (this.g) {
            throw new JsonDataException("Cannot skip unexpected " + G() + " at " + getPath());
        }
        int i = 0;
        do {
            int iO = this.k;
            if (iO == 0) {
                iO = O();
            }
            if (iO == 3) {
                H(1);
            } else {
                if (iO == 1) {
                    H(3);
                } else if (iO == 4) {
                    i--;
                    if (i < 0) {
                        throw new JsonDataException("Expected a value but was " + G() + " at path " + getPath());
                    }
                    this.b--;
                } else if (iO == 2) {
                    i--;
                    if (i < 0) {
                        throw new JsonDataException("Expected a value but was " + G() + " at path " + getPath());
                    }
                    this.b--;
                } else if (iO == 14 || iO == 10) {
                    a0();
                } else if (iO == 9 || iO == 13) {
                    X(p);
                } else if (iO == 8 || iO == 12) {
                    X(o);
                } else if (iO == 17) {
                    this.j.skip(this.m);
                } else if (iO == 18) {
                    throw new JsonDataException("Expected a value but was " + G() + " at path " + getPath());
                }
                this.k = 0;
            }
            i++;
            this.k = 0;
        } while (i != 0);
        int[] iArr = this.e;
        int i2 = this.b;
        int i3 = i2 - 1;
        iArr[i3] = iArr[i3] + 1;
        this.d[i2 - 1] = "null";
    }

    public final void N() throws JsonEncodingException {
        if (!this.f) {
            throw M("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    public final int O() throws IOException {
        int[] iArr = this.c;
        int i = this.b;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int iR = R(true);
            this.j.readByte();
            if (iR != 44) {
                if (iR != 59) {
                    if (iR != 93) {
                        throw M("Unterminated array");
                    }
                    this.k = 4;
                    return 4;
                }
                N();
            }
        } else {
            if (i2 == 3 || i2 == 5) {
                iArr[i - 1] = 4;
                if (i2 == 5) {
                    int iR2 = R(true);
                    this.j.readByte();
                    if (iR2 != 44) {
                        if (iR2 != 59) {
                            if (iR2 != 125) {
                                throw M("Unterminated object");
                            }
                            this.k = 2;
                            return 2;
                        }
                        N();
                    }
                }
                int iR3 = R(true);
                if (iR3 == 34) {
                    this.j.readByte();
                    this.k = 13;
                    return 13;
                }
                if (iR3 == 39) {
                    this.j.readByte();
                    N();
                    this.k = 12;
                    return 12;
                }
                if (iR3 != 125) {
                    N();
                    if (!Q((char) iR3)) {
                        throw M("Expected name");
                    }
                    this.k = 14;
                    return 14;
                }
                if (i2 == 5) {
                    throw M("Expected name");
                }
                this.j.readByte();
                this.k = 2;
                return 2;
            }
            if (i2 == 4) {
                iArr[i - 1] = 5;
                int iR4 = R(true);
                this.j.readByte();
                if (iR4 != 58) {
                    if (iR4 != 61) {
                        throw M("Expected ':'");
                    }
                    N();
                    if (this.i.request(1L) && this.j.getByte(0L) == 62) {
                        this.j.readByte();
                    }
                }
            } else if (i2 == 6) {
                iArr[i - 1] = 7;
            } else if (i2 == 7) {
                if (R(false) == -1) {
                    this.k = 18;
                    return 18;
                }
                N();
            } else if (i2 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iR5 = R(true);
        if (iR5 == 34) {
            this.j.readByte();
            this.k = 9;
            return 9;
        }
        if (iR5 == 39) {
            N();
            this.j.readByte();
            this.k = 8;
            return 8;
        }
        if (iR5 != 44 && iR5 != 59) {
            if (iR5 == 91) {
                this.j.readByte();
                this.k = 3;
                return 3;
            }
            if (iR5 != 93) {
                if (iR5 == 123) {
                    this.j.readByte();
                    this.k = 1;
                    return 1;
                }
                int iU = U();
                if (iU != 0) {
                    return iU;
                }
                int iV = V();
                if (iV != 0) {
                    return iV;
                }
                if (!Q(this.j.getByte(0L))) {
                    throw M("Expected value");
                }
                N();
                this.k = 10;
                return 10;
            }
            if (i2 == 1) {
                this.j.readByte();
                this.k = 4;
                return 4;
            }
        }
        if (i2 != 1 && i2 != 2) {
            throw M("Unexpected value");
        }
        N();
        this.k = 7;
        return 7;
    }

    public final int P(String str, JsonReader.a aVar) {
        int length = aVar.a.length;
        for (int i = 0; i < length; i++) {
            if (str.equals(aVar.a[i])) {
                this.k = 0;
                this.d[this.b - 1] = str;
                return i;
            }
        }
        return -1;
    }

    public final boolean Q(int i) throws JsonEncodingException {
        if (i == 9 || i == 10 || i == 12 || i == 13 || i == 32) {
            return false;
        }
        if (i != 35) {
            if (i == 44) {
                return false;
            }
            if (i != 47 && i != 61) {
                if (i == 123 || i == 125 || i == 58) {
                    return false;
                }
                if (i != 59) {
                    switch (i) {
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
        N();
        return false;
    }

    public final int R(boolean z) throws IOException {
        byte b;
        while (true) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (!this.i.request(i2)) {
                    if (z) {
                        throw new EOFException("End of input");
                    }
                    return -1;
                }
                b = this.j.getByte(i);
                if (b == 10 || b == 32 || b == 13 || b == 9) {
                    i = i2;
                }
            }
            this.j.skip(i);
            if (b == 47) {
                if (!this.i.request(2L)) {
                    return b;
                }
                N();
                byte b2 = this.j.getByte(1L);
                if (b2 == 42) {
                    this.j.readByte();
                    this.j.readByte();
                    if (!Y()) {
                        throw M("Unterminated comment");
                    }
                } else {
                    if (b2 != 47) {
                        return b;
                    }
                    this.j.readByte();
                    this.j.readByte();
                    Z();
                }
            } else {
                if (b != 35) {
                    return b;
                }
                N();
                Z();
            }
        }
    }

    public final String S(ByteString byteString) throws IOException {
        StringBuilder sb = null;
        while (true) {
            long jIndexOfElement = this.i.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw M("Unterminated string");
            }
            if (this.j.getByte(jIndexOfElement) != 92) {
                if (sb == null) {
                    String utf8 = this.j.readUtf8(jIndexOfElement);
                    this.j.readByte();
                    return utf8;
                }
                sb.append(this.j.readUtf8(jIndexOfElement));
                this.j.readByte();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(this.j.readUtf8(jIndexOfElement));
            this.j.readByte();
            sb.append(W());
        }
    }

    public final String T() throws IOException {
        long jIndexOfElement = this.i.indexOfElement(q);
        Buffer buffer = this.j;
        return jIndexOfElement != -1 ? buffer.readUtf8(jIndexOfElement) : buffer.readUtf8();
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
    public final int U() throws EOFException {
        String str;
        String str2;
        int i;
        byte b = this.j.getByte(0L);
        if (b == 116 || b == 84) {
            str = BooleanUtils.TRUE;
            str2 = "TRUE";
            i = 5;
        } else if (b == 102 || b == 70) {
            str = BooleanUtils.FALSE;
            str2 = "FALSE";
            i = 6;
        } else {
            if (b != 110 && b != 78) {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i = 7;
        }
        int length = str.length();
        int i2 = 1;
        while (i2 < length) {
            int i3 = i2 + 1;
            if (!this.i.request(i3)) {
                return 0;
            }
            byte b2 = this.j.getByte(i2);
            if (b2 != str.charAt(i2) && b2 != str2.charAt(i2)) {
                return 0;
            }
            i2 = i3;
        }
        if (this.i.request(length + 1) && Q(this.j.getByte(length))) {
            return 0;
        }
        this.j.skip(length);
        this.k = i;
        return i;
    }

    public final int V() throws EOFException {
        char c;
        boolean z = true;
        long j = 0;
        int i = 0;
        char c2 = 0;
        boolean z2 = false;
        boolean z3 = true;
        while (true) {
            int i2 = i + 1;
            if (!this.i.request(i2)) {
                break;
            }
            byte b = this.j.getByte(i);
            if (b != 43) {
                if (b == 69 || b == 101) {
                    if (c2 != 2 && c2 != 4) {
                        return 0;
                    }
                    c2 = 5;
                } else if (b == 45) {
                    c = 6;
                    if (c2 == 0) {
                        c2 = 1;
                        z2 = true;
                    } else if (c2 != 5) {
                        return 0;
                    }
                } else if (b != 46) {
                    if (b < 48 || b > 57) {
                        if (!Q(b)) {
                            break;
                        }
                        return 0;
                    }
                    if (c2 == z || c2 == 0) {
                        j = -(b - 48);
                        c2 = 2;
                    } else if (c2 == 2) {
                        if (j == 0) {
                            return 0;
                        }
                        long j2 = (10 * j) - ((long) (b - 48));
                        z3 &= j > okio.internal.Buffer.OVERFLOW_ZONE || (j == okio.internal.Buffer.OVERFLOW_ZONE && j2 < j);
                        j = j2;
                    } else if (c2 == 3) {
                        c2 = 4;
                    } else if (c2 == 5 || c2 == 6) {
                        c2 = 7;
                    }
                } else {
                    if (c2 != 2) {
                        return 0;
                    }
                    c2 = 3;
                }
                i = i2;
                z = true;
            } else {
                c = 6;
                if (c2 != 5) {
                    return 0;
                }
            }
            c2 = c;
            i = i2;
            z = true;
        }
        if (c2 == 2 && z3 && ((j != Long.MIN_VALUE || z2) && (j != 0 || !z2))) {
            if (!z2) {
                j = -j;
            }
            this.l = j;
            this.j.skip(i);
            this.k = 16;
            return 16;
        }
        if (c2 != 2 && c2 != 4 && c2 != 7) {
            return 0;
        }
        this.m = i;
        this.k = 17;
        return 17;
    }

    public final char W() throws JsonEncodingException, EOFException {
        int i;
        if (!this.i.request(1L)) {
            throw M("Unterminated escape sequence");
        }
        byte b = this.j.readByte();
        if (b == 10 || b == 34 || b == 39 || b == 47 || b == 92) {
            return (char) b;
        }
        if (b == 98) {
            return '\b';
        }
        if (b == 102) {
            return '\f';
        }
        if (b == 110) {
            return '\n';
        }
        if (b == 114) {
            return CharUtils.CR;
        }
        if (b == 116) {
            return '\t';
        }
        if (b != 117) {
            if (this.f) {
                return (char) b;
            }
            throw M("Invalid escape sequence: \\" + ((char) b));
        }
        if (!this.i.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path " + getPath());
        }
        char c = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            byte b2 = this.j.getByte(i2);
            char c2 = (char) (c << 4);
            if (b2 >= 48 && b2 <= 57) {
                i = b2 - 48;
            } else if (b2 >= 97 && b2 <= 102) {
                i = b2 - 87;
            } else {
                if (b2 < 65 || b2 > 70) {
                    throw M("\\u" + this.j.readUtf8(4L));
                }
                i = b2 - 55;
            }
            c = (char) (c2 + i);
        }
        this.j.skip(4L);
        return c;
    }

    public final void X(ByteString byteString) throws IOException {
        while (true) {
            long jIndexOfElement = this.i.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw M("Unterminated string");
            }
            if (this.j.getByte(jIndexOfElement) != 92) {
                this.j.skip(jIndexOfElement + 1);
                return;
            } else {
                this.j.skip(jIndexOfElement + 1);
                W();
            }
        }
    }

    public final boolean Y() throws IOException {
        BufferedSource bufferedSource = this.i;
        ByteString byteString = s;
        long jIndexOf = bufferedSource.indexOf(byteString);
        boolean z = jIndexOf != -1;
        Buffer buffer = this.j;
        buffer.skip(z ? jIndexOf + ((long) byteString.size()) : buffer.size());
        return z;
    }

    public final void Z() throws IOException {
        long jIndexOfElement = this.i.indexOfElement(r);
        Buffer buffer = this.j;
        buffer.skip(jIndexOfElement != -1 ? jIndexOfElement + 1 : buffer.size());
    }

    public final void a0() throws IOException {
        long jIndexOfElement = this.i.indexOfElement(q);
        Buffer buffer = this.j;
        if (jIndexOfElement == -1) {
            jIndexOfElement = buffer.size();
        }
        buffer.skip(jIndexOfElement);
    }

    @Override
    public void b() throws IOException {
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        if (iO == 3) {
            H(1);
            this.e[this.b - 1] = 0;
            this.k = 0;
        } else {
            throw new JsonDataException("Expected BEGIN_ARRAY but was " + G() + " at path " + getPath());
        }
    }

    @Override
    public void close() throws IOException {
        this.k = 0;
        this.c[0] = 8;
        this.b = 1;
        this.j.clear();
        this.i.close();
    }

    @Override
    public void d() throws IOException {
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        if (iO == 1) {
            H(3);
            this.k = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_OBJECT but was " + G() + " at path " + getPath());
    }

    @Override
    public void e() throws IOException {
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        if (iO != 4) {
            throw new JsonDataException("Expected END_ARRAY but was " + G() + " at path " + getPath());
        }
        int i = this.b;
        this.b = i - 1;
        int[] iArr = this.e;
        int i2 = i - 2;
        iArr[i2] = iArr[i2] + 1;
        this.k = 0;
    }

    @Override
    public void g() throws IOException {
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        if (iO != 2) {
            throw new JsonDataException("Expected END_OBJECT but was " + G() + " at path " + getPath());
        }
        int i = this.b;
        int i2 = i - 1;
        this.b = i2;
        this.d[i2] = null;
        int[] iArr = this.e;
        int i3 = i - 2;
        iArr[i3] = iArr[i3] + 1;
        this.k = 0;
    }

    @Override
    public boolean h() throws IOException {
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        return (iO == 2 || iO == 4 || iO == 18) ? false : true;
    }

    @Override
    public boolean k() throws IOException {
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        if (iO == 5) {
            this.k = 0;
            int[] iArr = this.e;
            int i = this.b - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iO == 6) {
            this.k = 0;
            int[] iArr2 = this.e;
            int i2 = this.b - 1;
            iArr2[i2] = iArr2[i2] + 1;
            return false;
        }
        throw new JsonDataException("Expected a boolean but was " + G() + " at path " + getPath());
    }

    @Override
    public double n() throws IOException {
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        if (iO == 16) {
            this.k = 0;
            int[] iArr = this.e;
            int i = this.b - 1;
            iArr[i] = iArr[i] + 1;
            return this.l;
        }
        if (iO == 17) {
            this.n = this.j.readUtf8(this.m);
        } else if (iO == 9) {
            this.n = S(p);
        } else if (iO == 8) {
            this.n = S(o);
        } else if (iO == 10) {
            this.n = T();
        } else if (iO != 11) {
            throw new JsonDataException("Expected a double but was " + G() + " at path " + getPath());
        }
        this.k = 11;
        try {
            double d = Double.parseDouble(this.n);
            if (this.f || !(Double.isNaN(d) || Double.isInfinite(d))) {
                this.n = null;
                this.k = 0;
                int[] iArr2 = this.e;
                int i2 = this.b - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return d;
            }
            throw new JsonEncodingException("JSON forbids NaN and infinities: " + d + " at path " + getPath());
        } catch (NumberFormatException unused) {
            throw new JsonDataException("Expected a double but was " + this.n + " at path " + getPath());
        }
    }

    @Override
    public int o() throws IOException {
        int iO = this.k;
        if (iO == 0) {
            iO = O();
        }
        if (iO == 16) {
            long j = this.l;
            int i = (int) j;
            if (j == i) {
                this.k = 0;
                int[] iArr = this.e;
                int i2 = this.b - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
            throw new JsonDataException("Expected an int but was " + this.l + " at path " + getPath());
        }
        if (iO == 17) {
            this.n = this.j.readUtf8(this.m);
        } else if (iO == 9 || iO == 8) {
            String strS = iO == 9 ? S(p) : S(o);
            this.n = strS;
            try {
                int i3 = Integer.parseInt(strS);
                this.k = 0;
                int[] iArr2 = this.e;
                int i4 = this.b - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException unused) {
            }
        } else if (iO != 11) {
            throw new JsonDataException("Expected an int but was " + G() + " at path " + getPath());
        }
        this.k = 11;
        try {
            double d = Double.parseDouble(this.n);
            int i5 = (int) d;
            if (i5 == d) {
                this.n = null;
                this.k = 0;
                int[] iArr3 = this.e;
                int i6 = this.b - 1;
                iArr3[i6] = iArr3[i6] + 1;
                return i5;
            }
            throw new JsonDataException("Expected an int but was " + this.n + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new JsonDataException("Expected an int but was " + this.n + " at path " + getPath());
        }
    }

    public String toString() {
        return "JsonReader(" + this.i + ")";
    }
}
