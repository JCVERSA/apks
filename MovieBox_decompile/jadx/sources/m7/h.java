package m7;

import com.google.gson.Gson;
import com.google.gson.JsonParser;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

public class h extends TypeAdapter {

    static class a {

        static final int[] f66291a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f66291a = iArr;
            try {
                iArr[JsonToken.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66291a[JsonToken.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f66291a[JsonToken.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f66291a[JsonToken.BEGIN_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static String a(JsonReader jsonReader) {
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
        int i10 = a.f66291a[jsonReader.peek().ordinal()];
        if (i10 == 1 || i10 == 2) {
            return jsonReader.nextString();
        }
        if (i10 == 3) {
            return Boolean.toString(jsonReader.nextBoolean());
        }
        if (i10 == 4) {
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
