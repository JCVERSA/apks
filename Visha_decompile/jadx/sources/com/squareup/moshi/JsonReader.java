package com.squareup.moshi;

import defpackage.jc5;
import defpackage.wb5;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;

public abstract class JsonReader implements Closeable {
    public int b;
    public int[] c = new int[32];
    public String[] d = new String[32];
    public int[] e = new int[32];
    public boolean f;
    public boolean g;

    public enum Token {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Token.values().length];
            a = iArr;
            try {
                iArr[Token.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Token.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Token.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[Token.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[Token.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[Token.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final class b {
        public final String[] a;
        public final Options b;

        public b(String[] strArr, Options options) {
            this.a = strArr;
            this.b = options;
        }

        public static b a(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i = 0; i < strArr.length; i++) {
                    jc5.X(buffer, strArr[i]);
                    buffer.readByte();
                    byteStringArr[i] = buffer.readByteString();
                }
                return new b((String[]) strArr.clone(), Options.of(byteStringArr));
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    public static JsonReader J(BufferedSource bufferedSource) {
        return new f(bufferedSource);
    }

    public abstract double D();

    public abstract int E();

    public abstract long F();

    public abstract String G();

    public abstract Object H();

    public abstract String I();

    public abstract Token K();

    public abstract void L();

    public final void M(int i) {
        int i2 = this.b;
        int[] iArr = this.c;
        if (i2 == iArr.length) {
            if (i2 == 256) {
                throw new JsonDataException("Nesting too deep at " + getPath());
            }
            this.c = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.d;
            this.d = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.e;
            this.e = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.c;
        int i3 = this.b;
        this.b = i3 + 1;
        iArr3[i3] = i;
    }

    public final Object N() {
        switch (a.a[K().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                b();
                while (k()) {
                    arrayList.add(N());
                }
                e();
                return arrayList;
            case 2:
                LinkedHashTreeMap linkedHashTreeMap = new LinkedHashTreeMap();
                d();
                while (k()) {
                    String strG = G();
                    Object objN = N();
                    Object objPut = linkedHashTreeMap.put(strG, objN);
                    if (objPut != null) {
                        throw new JsonDataException("Map key '" + strG + "' has multiple values at path " + getPath() + ": " + objPut + " and " + objN);
                    }
                }
                g();
                return linkedHashTreeMap;
            case 3:
                return I();
            case 4:
                return Double.valueOf(D());
            case 5:
                return Boolean.valueOf(o());
            case 6:
                return H();
            default:
                throw new IllegalStateException("Expected a value but was " + K() + " at path " + getPath());
        }
    }

    public abstract int O(b bVar);

    public abstract int P(b bVar);

    public final void Q(boolean z) {
        this.g = z;
    }

    public final void R(boolean z) {
        this.f = z;
    }

    public abstract void S();

    public abstract void T();

    public final JsonEncodingException U(String str) throws JsonEncodingException {
        throw new JsonEncodingException(str + " at path " + getPath());
    }

    public final JsonDataException V(Object obj, Object obj2) {
        if (obj == null) {
            return new JsonDataException("Expected " + obj2 + " but was null at path " + getPath());
        }
        return new JsonDataException("Expected " + obj2 + " but was " + obj + ", a " + obj.getClass().getName() + ", at path " + getPath());
    }

    public abstract void b();

    public abstract void d();

    public abstract void e();

    public abstract void g();

    public final String getPath() {
        return wb5.a(this.b, this.c, this.d, this.e);
    }

    public final boolean h() {
        return this.g;
    }

    public abstract boolean k();

    public final boolean n() {
        return this.f;
    }

    public abstract boolean o();
}
