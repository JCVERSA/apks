package m7;

import android.text.TextUtils;
import android.util.Log;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

public class d extends TypeAdapter {

    static class a {

        static final int[] f66287a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f66287a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66287a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override
    public void write(JsonWriter jsonWriter, Float f10) throws IOException {
        jsonWriter.value(f10);
    }

    @Override
    public Float read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i10 = a.f66287a[jsonReader.peek().ordinal()];
        if (i10 == 1) {
            return Float.valueOf((float) jsonReader.nextDouble());
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
            return Float.valueOf(Float.parseFloat(strNextString));
        } catch (Exception e10) {
            Log.getStackTraceString(e10);
            return null;
        }
    }
}
