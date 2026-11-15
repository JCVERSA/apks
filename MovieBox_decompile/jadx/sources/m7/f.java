package m7;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;

public class f extends TypeAdapter {

    static class a {

        static final int[] f66289a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f66289a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66289a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override
    public Integer read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i10 = a.f66289a[jsonReader.peek().ordinal()];
        if (i10 == 1) {
            try {
                return Integer.valueOf(jsonReader.nextInt());
            } catch (NumberFormatException unused) {
                return Integer.valueOf((int) jsonReader.nextDouble());
            }
        }
        if (i10 != 2) {
            jsonReader.skipValue();
            return null;
        }
        String strNextString = jsonReader.nextString();
        if (strNextString != null && !"".equals(strNextString)) {
            try {
                try {
                    return Integer.valueOf(Integer.parseInt(strNextString));
                } catch (NumberFormatException unused2) {
                    return Integer.valueOf((int) new BigDecimal(strNextString).floatValue());
                }
            } catch (Exception unused3) {
            }
        }
        return null;
    }

    @Override
    public void write(JsonWriter jsonWriter, Integer num) throws IOException {
        jsonWriter.value(num);
    }
}
