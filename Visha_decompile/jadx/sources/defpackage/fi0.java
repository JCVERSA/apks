package defpackage;

import android.util.Log;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

public class fi0 extends TypeAdapter {
    @Override
    public Boolean read2(JsonReader jsonReader) {
        try {
            if (jsonReader.peek() == JsonToken.BOOLEAN) {
                return Boolean.valueOf(jsonReader.nextBoolean());
            }
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                Log.e("TypeAdapter", "null is not a boolean");
                return Boolean.FALSE;
            }
            if (jsonReader.peek() == JsonToken.NUMBER) {
                Double dValueOf = Double.valueOf(jsonReader.nextDouble());
                Log.e("TypeAdapter", dValueOf + " is not a boolean");
                return Boolean.valueOf(dValueOf.equals(Double.valueOf(1.0d)));
            }
            if (jsonReader.peek() == JsonToken.STRING) {
                String strNextString = jsonReader.nextString();
                if (b47.a(strNextString)) {
                    return Boolean.valueOf(Double.valueOf(strNextString).equals(Double.valueOf(1.0d)));
                }
                Log.e("TypeAdapter", strNextString + " is not a number");
            }
            return Boolean.FALSE;
        } catch (NumberFormatException e) {
            Log.e("TypeAdapter", e.getMessage(), e);
        } catch (Exception e2) {
            Log.e("TypeAdapter", e2.getMessage(), e2);
        }
    }

    @Override
    public void write(JsonWriter jsonWriter, Boolean bool) {
        if (bool == null) {
            try {
                bool = Boolean.FALSE;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        jsonWriter.value(bool);
    }
}
