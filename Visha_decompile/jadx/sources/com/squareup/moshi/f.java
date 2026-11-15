package com.squareup.moshi;

import java.io.EOFException;
import java.io.IOException;
import java.math.BigDecimal;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.CharUtils;

public final class f extends JsonReader {
    public static final ByteString n = ByteString.encodeUtf8("'\\");
    public static final ByteString o = ByteString.encodeUtf8("\"\\");
    public static final ByteString p = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");
    public static final ByteString q = ByteString.encodeUtf8("\n\r");
    public static final ByteString r = ByteString.encodeUtf8("*/");
    public final BufferedSource h;
    public final Buffer i;
    public int j = 0;
    public long k;
    public int l;
    public String m;

    public f(BufferedSource bufferedSource) {
        if (bufferedSource == null) {
            throw new NullPointerException("source == null");
        }
        this.h = bufferedSource;
        this.i = bufferedSource.getBuffer();
        M(6);
    }

    @Override
    public double D() throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX == 16) {
            this.j = 0;
            int[] iArr = this.e;
            int i = this.b - 1;
            iArr[i] = iArr[i] + 1;
            return this.k;
        }
        if (iX == 17) {
            this.m = this.i.readUtf8(this.l);
        } else if (iX == 9) {
            this.m = c0(o);
        } else if (iX == 8) {
            this.m = c0(n);
        } else if (iX == 10) {
            this.m = d0();
        } else if (iX != 11) {
            throw new JsonDataException("Expected a double but was " + K() + " at path " + getPath());
        }
        this.j = 11;
        try {
            double d = Double.parseDouble(this.m);
            if (this.f || !(Double.isNaN(d) || Double.isInfinite(d))) {
                this.m = null;
                this.j = 0;
                int[] iArr2 = this.e;
                int i2 = this.b - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return d;
            }
            throw new JsonEncodingException("JSON forbids NaN and infinities: " + d + " at path " + getPath());
        } catch (NumberFormatException unused) {
            throw new JsonDataException("Expected a double but was " + this.m + " at path " + getPath());
        }
    }

    @Override
    public int E() throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX == 16) {
            long j = this.k;
            int i = (int) j;
            if (j == i) {
                this.j = 0;
                int[] iArr = this.e;
                int i2 = this.b - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
            throw new JsonDataException("Expected an int but was " + this.k + " at path " + getPath());
        }
        if (iX == 17) {
            this.m = this.i.readUtf8(this.l);
        } else if (iX == 9 || iX == 8) {
            String strC0 = iX == 9 ? c0(o) : c0(n);
            this.m = strC0;
            try {
                int i3 = Integer.parseInt(strC0);
                this.j = 0;
                int[] iArr2 = this.e;
                int i4 = this.b - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException unused) {
            }
        } else if (iX != 11) {
            throw new JsonDataException("Expected an int but was " + K() + " at path " + getPath());
        }
        this.j = 11;
        try {
            double d = Double.parseDouble(this.m);
            int i5 = (int) d;
            if (i5 == d) {
                this.m = null;
                this.j = 0;
                int[] iArr3 = this.e;
                int i6 = this.b - 1;
                iArr3[i6] = iArr3[i6] + 1;
                return i5;
            }
            throw new JsonDataException("Expected an int but was " + this.m + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new JsonDataException("Expected an int but was " + this.m + " at path " + getPath());
        }
    }

    @Override
    public long F() throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX == 16) {
            this.j = 0;
            int[] iArr = this.e;
            int i = this.b - 1;
            iArr[i] = iArr[i] + 1;
            return this.k;
        }
        if (iX == 17) {
            this.m = this.i.readUtf8(this.l);
        } else if (iX == 9 || iX == 8) {
            String strC0 = iX == 9 ? c0(o) : c0(n);
            this.m = strC0;
            try {
                long j = Long.parseLong(strC0);
                this.j = 0;
                int[] iArr2 = this.e;
                int i2 = this.b - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return j;
            } catch (NumberFormatException unused) {
            }
        } else if (iX != 11) {
            throw new JsonDataException("Expected a long but was " + K() + " at path " + getPath());
        }
        this.j = 11;
        try {
            long jLongValueExact = new BigDecimal(this.m).longValueExact();
            this.m = null;
            this.j = 0;
            int[] iArr3 = this.e;
            int i3 = this.b - 1;
            iArr3[i3] = iArr3[i3] + 1;
            return jLongValueExact;
        } catch (ArithmeticException | NumberFormatException unused2) {
            throw new JsonDataException("Expected a long but was " + this.m + " at path " + getPath());
        }
    }

    @Override
    public String G() throws IOException {
        String strC0;
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX == 14) {
            strC0 = d0();
        } else if (iX == 13) {
            strC0 = c0(o);
        } else if (iX == 12) {
            strC0 = c0(n);
        } else {
            if (iX != 15) {
                throw new JsonDataException("Expected a name but was " + K() + " at path " + getPath());
            }
            strC0 = this.m;
            this.m = null;
        }
        this.j = 0;
        this.d[this.b - 1] = strC0;
        return strC0;
    }

    @Override
    public Object H() throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX == 7) {
            this.j = 0;
            int[] iArr = this.e;
            int i = this.b - 1;
            iArr[i] = iArr[i] + 1;
            return null;
        }
        throw new JsonDataException("Expected null but was " + K() + " at path " + getPath());
    }

    @Override
    public String I() throws IOException {
        String utf8;
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX == 10) {
            utf8 = d0();
        } else if (iX == 9) {
            utf8 = c0(o);
        } else if (iX == 8) {
            utf8 = c0(n);
        } else if (iX == 11) {
            utf8 = this.m;
            this.m = null;
        } else if (iX == 16) {
            utf8 = Long.toString(this.k);
        } else {
            if (iX != 17) {
                throw new JsonDataException("Expected a string but was " + K() + " at path " + getPath());
            }
            utf8 = this.i.readUtf8(this.l);
        }
        this.j = 0;
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return utf8;
    }

    @Override
    public JsonReader.Token K() throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        switch (iX) {
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
    public void L() {
        if (k()) {
            this.m = G();
            this.j = 11;
        }
    }

    @Override
    public int O(JsonReader.b bVar) throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX < 12 || iX > 15) {
            return -1;
        }
        if (iX == 15) {
            return Y(this.m, bVar);
        }
        int iSelect = this.h.select(bVar.b);
        if (iSelect != -1) {
            this.j = 0;
            this.d[this.b - 1] = bVar.a[iSelect];
            return iSelect;
        }
        String str = this.d[this.b - 1];
        String strG = G();
        int iY = Y(strG, bVar);
        if (iY == -1) {
            this.j = 15;
            this.m = strG;
            this.d[this.b - 1] = str;
        }
        return iY;
    }

    @Override
    public int P(JsonReader.b bVar) throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX < 8 || iX > 11) {
            return -1;
        }
        if (iX == 11) {
            return Z(this.m, bVar);
        }
        int iSelect = this.h.select(bVar.b);
        if (iSelect != -1) {
            this.j = 0;
            int[] iArr = this.e;
            int i = this.b - 1;
            iArr[i] = iArr[i] + 1;
            return iSelect;
        }
        String strI = I();
        int iZ = Z(strI, bVar);
        if (iZ == -1) {
            this.j = 11;
            this.m = strI;
            int[] iArr2 = this.e;
            int i2 = this.b - 1;
            iArr2[i2] = iArr2[i2] - 1;
        }
        return iZ;
    }

    @Override
    public void S() throws IOException {
        if (this.g) {
            JsonReader.Token tokenK = K();
            G();
            throw new JsonDataException("Cannot skip unexpected " + tokenK + " at " + getPath());
        }
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX == 14) {
            k0();
        } else if (iX == 13) {
            h0(o);
        } else if (iX == 12) {
            h0(n);
        } else if (iX != 15) {
            throw new JsonDataException("Expected a name but was " + K() + " at path " + getPath());
        }
        this.j = 0;
        this.d[this.b - 1] = "null";
    }

    @Override
    public void T() throws IOException {
        if (this.g) {
            throw new JsonDataException("Cannot skip unexpected " + K() + " at " + getPath());
        }
        int i = 0;
        do {
            int iX = this.j;
            if (iX == 0) {
                iX = X();
            }
            if (iX == 3) {
                M(1);
            } else {
                if (iX == 1) {
                    M(3);
                } else if (iX == 4) {
                    i--;
                    if (i < 0) {
                        throw new JsonDataException("Expected a value but was " + K() + " at path " + getPath());
                    }
                    this.b--;
                } else if (iX == 2) {
                    i--;
                    if (i < 0) {
                        throw new JsonDataException("Expected a value but was " + K() + " at path " + getPath());
                    }
                    this.b--;
                } else if (iX == 14 || iX == 10) {
                    k0();
                } else if (iX == 9 || iX == 13) {
                    h0(o);
                } else if (iX == 8 || iX == 12) {
                    h0(n);
                } else if (iX == 17) {
                    this.i.skip(this.l);
                } else if (iX == 18) {
                    throw new JsonDataException("Expected a value but was " + K() + " at path " + getPath());
                }
                this.j = 0;
            }
            i++;
            this.j = 0;
        } while (i != 0);
        int[] iArr = this.e;
        int i2 = this.b;
        int i3 = i2 - 1;
        iArr[i3] = iArr[i3] + 1;
        this.d[i2 - 1] = "null";
    }

    public final void W() throws JsonEncodingException {
        if (!this.f) {
            throw U("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    public final int X() throws IOException {
        int[] iArr = this.c;
        int i = this.b;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int iB0 = b0(true);
            this.i.readByte();
            if (iB0 != 44) {
                if (iB0 != 59) {
                    if (iB0 != 93) {
                        throw U("Unterminated array");
                    }
                    this.j = 4;
                    return 4;
                }
                W();
            }
        } else {
            if (i2 == 3 || i2 == 5) {
                iArr[i - 1] = 4;
                if (i2 == 5) {
                    int iB1 = b0(true);
                    this.i.readByte();
                    if (iB1 != 44) {
                        if (iB1 != 59) {
                            if (iB1 != 125) {
                                throw U("Unterminated object");
                            }
                            this.j = 2;
                            return 2;
                        }
                        W();
                    }
                }
                int iB2 = b0(true);
                if (iB2 == 34) {
                    this.i.readByte();
                    this.j = 13;
                    return 13;
                }
                if (iB2 == 39) {
                    this.i.readByte();
                    W();
                    this.j = 12;
                    return 12;
                }
                if (iB2 != 125) {
                    W();
                    if (!a0((char) iB2)) {
                        throw U("Expected name");
                    }
                    this.j = 14;
                    return 14;
                }
                if (i2 == 5) {
                    throw U("Expected name");
                }
                this.i.readByte();
                this.j = 2;
                return 2;
            }
            if (i2 == 4) {
                iArr[i - 1] = 5;
                int iB3 = b0(true);
                this.i.readByte();
                if (iB3 != 58) {
                    if (iB3 != 61) {
                        throw U("Expected ':'");
                    }
                    W();
                    if (this.h.request(1L) && this.i.getByte(0L) == 62) {
                        this.i.readByte();
                    }
                }
            } else if (i2 == 6) {
                iArr[i - 1] = 7;
            } else if (i2 == 7) {
                if (b0(false) == -1) {
                    this.j = 18;
                    return 18;
                }
                W();
            } else {
                if (i2 == 9) {
                    throw null;
                }
                if (i2 == 8) {
                    throw new IllegalStateException("JsonReader is closed");
                }
            }
        }
        int iB4 = b0(true);
        if (iB4 == 34) {
            this.i.readByte();
            this.j = 9;
            return 9;
        }
        if (iB4 == 39) {
            W();
            this.i.readByte();
            this.j = 8;
            return 8;
        }
        if (iB4 != 44 && iB4 != 59) {
            if (iB4 == 91) {
                this.i.readByte();
                this.j = 3;
                return 3;
            }
            if (iB4 != 93) {
                if (iB4 == 123) {
                    this.i.readByte();
                    this.j = 1;
                    return 1;
                }
                int iE0 = e0();
                if (iE0 != 0) {
                    return iE0;
                }
                int iF0 = f0();
                if (iF0 != 0) {
                    return iF0;
                }
                if (!a0(this.i.getByte(0L))) {
                    throw U("Expected value");
                }
                W();
                this.j = 10;
                return 10;
            }
            if (i2 == 1) {
                this.i.readByte();
                this.j = 4;
                return 4;
            }
        }
        if (i2 != 1 && i2 != 2) {
            throw U("Unexpected value");
        }
        W();
        this.j = 7;
        return 7;
    }

    public final int Y(String str, JsonReader.b bVar) {
        int length = bVar.a.length;
        for (int i = 0; i < length; i++) {
            if (str.equals(bVar.a[i])) {
                this.j = 0;
                this.d[this.b - 1] = str;
                return i;
            }
        }
        return -1;
    }

    public final int Z(String str, JsonReader.b bVar) {
        int length = bVar.a.length;
        for (int i = 0; i < length; i++) {
            if (str.equals(bVar.a[i])) {
                this.j = 0;
                int[] iArr = this.e;
                int i2 = this.b - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
        }
        return -1;
    }

    public final boolean a0(int i) throws JsonEncodingException {
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
        W();
        return false;
    }

    @Override
    public void b() throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX == 3) {
            M(1);
            this.e[this.b - 1] = 0;
            this.j = 0;
        } else {
            throw new JsonDataException("Expected BEGIN_ARRAY but was " + K() + " at path " + getPath());
        }
    }

    public final int b0(boolean z) throws IOException {
        byte b;
        while (true) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (!this.h.request(i2)) {
                    if (z) {
                        throw new EOFException("End of input");
                    }
                    return -1;
                }
                b = this.i.getByte(i);
                if (b == 10 || b == 32 || b == 13 || b == 9) {
                    i = i2;
                }
            }
            this.i.skip(i);
            if (b == 47) {
                if (!this.h.request(2L)) {
                    return b;
                }
                W();
                byte b2 = this.i.getByte(1L);
                if (b2 == 42) {
                    this.i.readByte();
                    this.i.readByte();
                    if (!i0()) {
                        throw U("Unterminated comment");
                    }
                } else {
                    if (b2 != 47) {
                        return b;
                    }
                    this.i.readByte();
                    this.i.readByte();
                    j0();
                }
            } else {
                if (b != 35) {
                    return b;
                }
                W();
                j0();
            }
        }
    }

    public final String c0(ByteString byteString) throws IOException {
        StringBuilder sb = null;
        while (true) {
            long jIndexOfElement = this.h.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw U("Unterminated string");
            }
            if (this.i.getByte(jIndexOfElement) != 92) {
                if (sb == null) {
                    String utf8 = this.i.readUtf8(jIndexOfElement);
                    this.i.readByte();
                    return utf8;
                }
                sb.append(this.i.readUtf8(jIndexOfElement));
                this.i.readByte();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(this.i.readUtf8(jIndexOfElement));
            this.i.readByte();
            sb.append(g0());
        }
    }

    @Override
    public void close() throws IOException {
        this.j = 0;
        this.c[0] = 8;
        this.b = 1;
        this.i.clear();
        this.h.close();
    }

    @Override
    public void d() throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX == 1) {
            M(3);
            this.j = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_OBJECT but was " + K() + " at path " + getPath());
    }

    public final String d0() throws IOException {
        long jIndexOfElement = this.h.indexOfElement(p);
        Buffer buffer = this.i;
        return jIndexOfElement != -1 ? buffer.readUtf8(jIndexOfElement) : buffer.readUtf8();
    }

    @Override
    public void e() throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX != 4) {
            throw new JsonDataException("Expected END_ARRAY but was " + K() + " at path " + getPath());
        }
        int i = this.b;
        this.b = i - 1;
        int[] iArr = this.e;
        int i2 = i - 2;
        iArr[i2] = iArr[i2] + 1;
        this.j = 0;
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
    public final int e0() throws EOFException {
        String str;
        String str2;
        int i;
        byte b = this.i.getByte(0L);
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
            if (!this.h.request(i3)) {
                return 0;
            }
            byte b2 = this.i.getByte(i2);
            if (b2 != str.charAt(i2) && b2 != str2.charAt(i2)) {
                return 0;
            }
            i2 = i3;
        }
        if (this.h.request(length + 1) && a0(this.i.getByte(length))) {
            return 0;
        }
        this.i.skip(length);
        this.j = i;
        return i;
    }

    public final int f0() throws EOFException {
        char c;
        boolean z = true;
        long j = 0;
        int i = 0;
        char c2 = 0;
        boolean z2 = false;
        boolean z3 = true;
        while (true) {
            int i2 = i + 1;
            if (!this.h.request(i2)) {
                break;
            }
            byte b = this.i.getByte(i);
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
                        if (!a0(b)) {
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
            this.k = j;
            this.i.skip(i);
            this.j = 16;
            return 16;
        }
        if (c2 != 2 && c2 != 4 && c2 != 7) {
            return 0;
        }
        this.l = i;
        this.j = 17;
        return 17;
    }

    @Override
    public void g() throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX != 2) {
            throw new JsonDataException("Expected END_OBJECT but was " + K() + " at path " + getPath());
        }
        int i = this.b;
        int i2 = i - 1;
        this.b = i2;
        this.d[i2] = null;
        int[] iArr = this.e;
        int i3 = i - 2;
        iArr[i3] = iArr[i3] + 1;
        this.j = 0;
    }

    public final char g0() throws EOFException, JsonEncodingException {
        int i;
        if (!this.h.request(1L)) {
            throw U("Unterminated escape sequence");
        }
        byte b = this.i.readByte();
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
            throw U("Invalid escape sequence: \\" + ((char) b));
        }
        if (!this.h.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path " + getPath());
        }
        char c = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            byte b2 = this.i.getByte(i2);
            char c2 = (char) (c << 4);
            if (b2 >= 48 && b2 <= 57) {
                i = b2 - 48;
            } else if (b2 >= 97 && b2 <= 102) {
                i = b2 - 87;
            } else {
                if (b2 < 65 || b2 > 70) {
                    throw U("\\u" + this.i.readUtf8(4L));
                }
                i = b2 - 55;
            }
            c = (char) (c2 + i);
        }
        this.i.skip(4L);
        return c;
    }

    public final void h0(ByteString byteString) throws IOException {
        while (true) {
            long jIndexOfElement = this.h.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw U("Unterminated string");
            }
            if (this.i.getByte(jIndexOfElement) != 92) {
                this.i.skip(jIndexOfElement + 1);
                return;
            } else {
                this.i.skip(jIndexOfElement + 1);
                g0();
            }
        }
    }

    public final boolean i0() throws IOException {
        BufferedSource bufferedSource = this.h;
        ByteString byteString = r;
        long jIndexOf = bufferedSource.indexOf(byteString);
        boolean z = jIndexOf != -1;
        Buffer buffer = this.i;
        buffer.skip(z ? jIndexOf + ((long) byteString.size()) : buffer.size());
        return z;
    }

    public final void j0() throws IOException {
        long jIndexOfElement = this.h.indexOfElement(q);
        Buffer buffer = this.i;
        buffer.skip(jIndexOfElement != -1 ? jIndexOfElement + 1 : buffer.size());
    }

    @Override
    public boolean k() throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        return (iX == 2 || iX == 4 || iX == 18) ? false : true;
    }

    public final void k0() throws IOException {
        long jIndexOfElement = this.h.indexOfElement(p);
        Buffer buffer = this.i;
        if (jIndexOfElement == -1) {
            jIndexOfElement = buffer.size();
        }
        buffer.skip(jIndexOfElement);
    }

    @Override
    public boolean o() throws IOException {
        int iX = this.j;
        if (iX == 0) {
            iX = X();
        }
        if (iX == 5) {
            this.j = 0;
            int[] iArr = this.e;
            int i = this.b - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iX == 6) {
            this.j = 0;
            int[] iArr2 = this.e;
            int i2 = this.b - 1;
            iArr2[i2] = iArr2[i2] + 1;
            return false;
        }
        throw new JsonDataException("Expected a boolean but was " + K() + " at path " + getPath());
    }

    public String toString() {
        return "JsonReader(" + this.h + ")";
    }
}
