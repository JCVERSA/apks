package defpackage;

import com.google.gson.Gson;
import com.google.gson.JsonParser;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

public class k0a extends TypeAdapter {

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            a = iArr;
            try {
                iArr[JsonToken.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[JsonToken.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[JsonToken.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[JsonToken.BEGIN_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static String a(JsonReader jsonReader) {
        try {
            return new Gson().toJson(JsonParser.parseReader(jsonReader));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public String read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i = a.a[jsonReader.peek().ordinal()];
        if (i == 1 || i == 2) {
            return jsonReader.nextString();
        }
        if (i == 3) {
            return Boolean.toString(jsonReader.nextBoolean());
        }
        if (i == 4) {
            return a(jsonReader);
        }
        jsonReader.skipValue();
        return null;
    }

    @Override
    public void write(JsonWriter jsonWriter, String str) throws IOException {
        jsonWriter.value(str);
    }
}
