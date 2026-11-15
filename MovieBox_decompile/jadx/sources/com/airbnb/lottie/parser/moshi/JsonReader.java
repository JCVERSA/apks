package com.airbnb.lottie.parser.moshi;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;

public abstract class JsonReader implements Closeable {

    private static final String[] f17312g = new String[128];

    int f17313a;

    int[] f17314b = new int[32];

    String[] f17315c = new String[32];

    int[] f17316d = new int[32];

    boolean f17317e;

    boolean f17318f;

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

        final String[] f17319a;

        final Options f17320b;

        private a(String[] strArr, Options options) {
            this.f17319a = strArr;
            this.f17320b = options;
        }

        public static a a(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    JsonReader.y(buffer, strArr[i10]);
                    buffer.readByte();
                    byteStringArr[i10] = buffer.readByteString();
                }
                return new a((String[]) strArr.clone(), Options.of(byteStringArr));
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f17312g[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f17312g;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    JsonReader() {
    }

    public static JsonReader s(BufferedSource bufferedSource) {
        return new b(bufferedSource);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002b  */
    public static void y(BufferedSink bufferedSink, String str) throws IOException {
        String str2;
        String[] strArr = f17312g;
        bufferedSink.writeByte(34);
        int length = str.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i10 < i11) {
                        bufferedSink.writeUtf8(str, i10, i11);
                    }
                    bufferedSink.writeUtf8(str2);
                    i10 = i11 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i10 < i11) {
                    bufferedSink.writeUtf8(str, i10, i11);
                }
                bufferedSink.writeUtf8(str2);
                i10 = i11 + 1;
            }
        }
        if (i10 < length) {
            bufferedSink.writeUtf8(str, i10, length);
        }
        bufferedSink.writeByte(34);
    }

    final JsonEncodingException S(String str) throws JsonEncodingException {
        throw new JsonEncodingException(str + " at path " + getPath());
    }

    public abstract void d();

    public final String getPath() {
        return com.airbnb.lottie.parser.moshi.a.a(this.f17313a, this.f17314b, this.f17315c, this.f17316d);
    }

    public abstract void h();

    public abstract void k();

    public abstract void l();

    public abstract boolean m();

    public abstract boolean n();

    public abstract double o();

    public abstract int p();

    public abstract String q();

    public abstract String r();

    public abstract Token t();

    final void u(int i10) {
        int i11 = this.f17313a;
        int[] iArr = this.f17314b;
        if (i11 == iArr.length) {
            if (i11 == 256) {
                throw new JsonDataException("Nesting too deep at " + getPath());
            }
            this.f17314b = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f17315c;
            this.f17315c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f17316d;
            this.f17316d = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f17314b;
        int i12 = this.f17313a;
        this.f17313a = i12 + 1;
        iArr3[i12] = i10;
    }

    public abstract int v(a aVar);

    public abstract void w();

    public abstract void x();
}
