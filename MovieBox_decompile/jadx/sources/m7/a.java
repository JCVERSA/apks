package m7;

import android.text.TextUtils;
import android.util.Log;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;

public class a extends TypeAdapter {

    static class C0811a {

        static final int[] f66284a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f66284a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66284a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override
    public BigDecimal read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i10 = C0811a.f66284a[jsonReader.peek().ordinal()];
        if (i10 != 1 && i10 != 2) {
            jsonReader.skipValue();
            return null;
        }
        String strNextString = jsonReader.nextString();
        if (TextUtils.isEmpty(strNextString)) {
            return null;
        }
        try {
            return new BigDecimal(strNextString);
        } catch (Exception e10) {
            Log.getStackTraceString(e10);
            return null;
        }
    }

    @Override
    public void write(JsonWriter jsonWriter, BigDecimal bigDecimal) throws IOException {
        jsonWriter.value(bigDecimal);
    }
}
