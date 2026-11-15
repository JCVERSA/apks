package com.airbnb.lottie.parser.moshi;

import defpackage.xb5;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;

public abstract class JsonReader implements Closeable {
    public static final String[] h = new String[128];
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

    public static final class a {
        public final String[] a;
        public final Options b;

        public a(String[] strArr, Options options) {
            this.a = strArr;
            this.b = options;
        }

        public static a a(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i = 0; i < strArr.length; i++) {
                    JsonReader.L(buffer, strArr[i]);
                    buffer.readByte();
                    byteStringArr[i] = buffer.readByteString();
                }
                return new a((String[]) strArr.clone(), Options.of(byteStringArr));
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    static {
        for (int i = 0; i <= 31; i++) {
            h[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = h;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public static JsonReader F(BufferedSource bufferedSource) {
        return new com.airbnb.lottie.parser.moshi.a(bufferedSource);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002b  */
    public static void L(BufferedSink bufferedSink, String str) throws IOException {
        String str2;
        String[] strArr = h;
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

    public abstract String D();

    public abstract String E();

    public abstract Token G();

    public final void H(int i) {
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

    public abstract int I(a aVar);

    public abstract void J();

    public abstract void K();

    public final JsonEncodingException M(String str) throws JsonEncodingException {
        throw new JsonEncodingException(str + " at path " + getPath());
    }

    public abstract void b();

    public abstract void d();

    public abstract void e();

    public abstract void g();

    public final String getPath() {
        return xb5.a(this.b, this.c, this.d, this.e);
    }

    public abstract boolean h();

    public abstract boolean k();

    public abstract double n();

    public abstract int o();
}
