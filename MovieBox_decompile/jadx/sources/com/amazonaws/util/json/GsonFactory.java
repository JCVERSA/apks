package com.amazonaws.util.json;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;

final class GsonFactory implements AwsJsonFactory {

    static class AnonymousClass1 {

        static final int[] f18407a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f18407a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18407a[JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18407a[JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18407a[JsonToken.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18407a[JsonToken.NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18407a[JsonToken.BOOLEAN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18407a[JsonToken.NUMBER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18407a[JsonToken.NULL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18407a[JsonToken.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f18407a[JsonToken.END_DOCUMENT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private static final class GsonReader implements AwsJsonReader {

        private final JsonReader f18408a;

        public GsonReader(Reader reader) {
            this.f18408a = new JsonReader(reader);
        }

        @Override
        public void a() throws IOException {
            this.f18408a.beginObject();
        }

        @Override
        public void b() throws IOException {
            this.f18408a.endObject();
        }

        @Override
        public void c() throws IOException {
            this.f18408a.skipValue();
        }

        @Override
        public void close() throws IOException {
            this.f18408a.close();
        }

        @Override
        public boolean d() throws IOException {
            JsonToken jsonTokenPeek = this.f18408a.peek();
            return JsonToken.BEGIN_ARRAY.equals(jsonTokenPeek) || JsonToken.BEGIN_OBJECT.equals(jsonTokenPeek);
        }

        @Override
        public String e() {
            return this.f18408a.nextName();
        }

        @Override
        public String f() throws IOException {
            JsonToken jsonTokenPeek = this.f18408a.peek();
            if (JsonToken.NULL.equals(jsonTokenPeek)) {
                this.f18408a.nextNull();
                return null;
            }
            if (JsonToken.BOOLEAN.equals(jsonTokenPeek)) {
                return this.f18408a.nextBoolean() ? "true" : "false";
            }
            return this.f18408a.nextString();
        }

        @Override
        public boolean hasNext() {
            return this.f18408a.hasNext();
        }

        @Override
        public AwsJsonToken peek() {
            try {
                return GsonFactory.d(this.f18408a.peek());
            } catch (EOFException unused) {
                return null;
            }
        }
    }

    private static final class GsonWriter implements AwsJsonWriter {

        private final JsonWriter f18409a;

        public GsonWriter(Writer writer) {
            this.f18409a = new JsonWriter(writer);
        }

        @Override
        public AwsJsonWriter a() throws IOException {
            this.f18409a.beginObject();
            return this;
        }

        @Override
        public AwsJsonWriter b() throws IOException {
            this.f18409a.endObject();
            return this;
        }

        @Override
        public AwsJsonWriter c(String str) throws IOException {
            this.f18409a.name(str);
            return this;
        }

        @Override
        public void close() throws IOException {
            this.f18409a.close();
        }

        @Override
        public AwsJsonWriter d(String str) throws IOException {
            this.f18409a.value(str);
            return this;
        }
    }

    GsonFactory() {
    }

    public static AwsJsonToken d(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        switch (AnonymousClass1.f18407a[jsonToken.ordinal()]) {
            case 1:
                return AwsJsonToken.BEGIN_ARRAY;
            case 2:
                return AwsJsonToken.END_ARRAY;
            case 3:
                return AwsJsonToken.BEGIN_OBJECT;
            case 4:
                return AwsJsonToken.END_OBJECT;
            case 5:
                return AwsJsonToken.FIELD_NAME;
            case 6:
                return AwsJsonToken.VALUE_BOOLEAN;
            case 7:
                return AwsJsonToken.VALUE_NUMBER;
            case 8:
                return AwsJsonToken.VALUE_NULL;
            case 9:
                return AwsJsonToken.VALUE_STRING;
            case 10:
                return null;
            default:
                return AwsJsonToken.UNKNOWN;
        }
    }

    @Override
    public AwsJsonWriter a(Writer writer) {
        return new GsonWriter(writer);
    }

    @Override
    public AwsJsonReader b(Reader reader) {
        return new GsonReader(reader);
    }
}
