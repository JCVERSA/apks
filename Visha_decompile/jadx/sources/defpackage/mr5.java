package defpackage;

import android.util.Log;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

public class mr5 extends TypeAdapter {
    @Override
    public Long read2(JsonReader jsonReader) {
        try {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                Log.e("TypeAdapter", "null is not a number");
                return 0L;
            }
            if (jsonReader.peek() == JsonToken.BOOLEAN) {
                Log.e("TypeAdapter", jsonReader.nextBoolean() + " is not a number");
                return 0L;
            }
            if (jsonReader.peek() != JsonToken.STRING) {
                return Long.valueOf(jsonReader.nextLong());
            }
            String strNextString = jsonReader.nextString();
            if (b47.b(strNextString)) {
                return Long.valueOf(Long.parseLong(strNextString));
            }
            Log.e("TypeAdapter", strNextString + " is not a int number");
            return 0L;
        } catch (Exception e) {
            Log.e("TypeAdapter", "Not a number", e);
            return 0L;
        }
    }

    @Override
    public void write(JsonWriter jsonWriter, Long l) {
        if (l == null) {
            try {
                l = 0L;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        jsonWriter.value(l);
    }
}
