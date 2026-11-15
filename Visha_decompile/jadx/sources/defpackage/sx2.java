package defpackage;

import android.util.Log;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

public class sx2 extends TypeAdapter {
    @Override
    public void write(JsonWriter jsonWriter, Double d) {
        if (d == null) {
            try {
                d = Double.valueOf(0.0d);
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        jsonWriter.value(d);
    }

    @Override
    public Double read2(JsonReader jsonReader) {
        try {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                Log.e("TypeAdapter", "null is not a number");
                return Double.valueOf(0.0d);
            }
            if (jsonReader.peek() == JsonToken.BOOLEAN) {
                Log.e("TypeAdapter", jsonReader.nextBoolean() + " is not a number");
                return Double.valueOf(0.0d);
            }
            if (jsonReader.peek() != JsonToken.STRING) {
                return Double.valueOf(jsonReader.nextDouble());
            }
            String strNextString = jsonReader.nextString();
            if (b47.a(strNextString)) {
                return Double.valueOf(Double.parseDouble(strNextString));
            }
            Log.e("TypeAdapter", strNextString + " is not a number");
            return Double.valueOf(0.0d);
        } catch (NumberFormatException e) {
            Log.e("TypeAdapter", e.getMessage(), e);
            return Double.valueOf(0.0d);
        } catch (Exception e2) {
            Log.e("TypeAdapter", e2.getMessage(), e2);
            return Double.valueOf(0.0d);
        }
    }
}
