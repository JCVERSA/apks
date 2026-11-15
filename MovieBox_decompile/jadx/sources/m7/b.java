package m7;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

public class b extends TypeAdapter {

    static class a {

        static final int[] f66285a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f66285a = iArr;
            try {
                iArr[JsonToken.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66285a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f66285a[JsonToken.NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override
    public Boolean read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i10 = a.f66285a[jsonReader.peek().ordinal()];
        if (i10 == 1) {
            return Boolean.valueOf(jsonReader.nextBoolean());
        }
        if (i10 == 2) {
            return Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString()));
        }
        if (i10 == 3) {
            return Boolean.valueOf(jsonReader.nextInt() != 0);
        }
        jsonReader.skipValue();
        return null;
    }

    @Override
    public void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
        jsonWriter.value(bool);
    }
}
