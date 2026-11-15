package m7;

import android.text.TextUtils;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;

public class g extends TypeAdapter {

    static class a {

        static final int[] f66290a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f66290a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66290a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override
    public Long read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i10 = a.f66290a[jsonReader.peek().ordinal()];
        if (i10 == 1) {
            try {
                return Long.valueOf(jsonReader.nextLong());
            } catch (NumberFormatException unused) {
                return Long.valueOf(new BigDecimal(jsonReader.nextString()).longValue());
            }
        }
        if (i10 != 2) {
            jsonReader.skipValue();
            return null;
        }
        String strNextString = jsonReader.nextString();
        if (TextUtils.isEmpty(strNextString)) {
            return null;
        }
        try {
            try {
                return Long.valueOf(Long.parseLong(strNextString));
            } catch (Exception unused2) {
                return null;
            }
        } catch (NumberFormatException unused3) {
            return Long.valueOf(new BigDecimal(strNextString).longValue());
        }
    }

    @Override
    public void write(JsonWriter jsonWriter, Long l10) throws IOException {
        jsonWriter.value(l10);
    }
}
