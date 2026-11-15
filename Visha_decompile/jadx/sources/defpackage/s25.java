package defpackage;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;

public class s25 extends TypeAdapter {

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override
    public Integer read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i = a.a[jsonReader.peek().ordinal()];
        if (i == 1) {
            try {
                return Integer.valueOf(jsonReader.nextInt());
            } catch (NumberFormatException unused) {
                return Integer.valueOf((int) jsonReader.nextDouble());
            }
        }
        if (i != 2) {
            jsonReader.skipValue();
            return null;
        }
        String strNextString = jsonReader.nextString();
        if (strNextString == null || "".equals(strNextString)) {
            return null;
        }
        try {
            try {
                return Integer.valueOf(Integer.parseInt(strNextString));
            } catch (Exception unused2) {
                return null;
            }
        } catch (NumberFormatException unused3) {
            return Integer.valueOf((int) new BigDecimal(strNextString).floatValue());
        }
    }

    @Override
    public void write(JsonWriter jsonWriter, Integer num) throws IOException {
        jsonWriter.value(num);
    }
}
