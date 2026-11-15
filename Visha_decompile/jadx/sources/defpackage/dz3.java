package defpackage;

import android.util.Log;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

public class dz3 extends TypeAdapter {
    @Override
    public void write(JsonWriter jsonWriter, Float f) {
        if (f == null) {
            try {
                f = Float.valueOf(0.0f);
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        jsonWriter.value(f.toString());
    }

    @Override
    public Float read2(JsonReader jsonReader) {
        try {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                Log.e("TypeAdapter", "null is not a number");
                return Float.valueOf(0.0f);
            }
            if (jsonReader.peek() == JsonToken.BOOLEAN) {
                Log.e("TypeAdapter", jsonReader.nextBoolean() + " is not a number");
                return Float.valueOf(0.0f);
            }
            if (jsonReader.peek() != JsonToken.STRING) {
                return Float.valueOf(jsonReader.nextString());
            }
            String strNextString = jsonReader.nextString();
            if (b47.a(strNextString)) {
                return Float.valueOf(Float.parseFloat(strNextString));
            }
            Log.e("TypeAdapter", strNextString + " is not a number");
            return Float.valueOf(0.0f);
        } catch (Exception e) {
            Log.e("TypeAdapter", "Not a number", e);
            return Float.valueOf(0.0f);
        }
    }
}
